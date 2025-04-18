import Redis from "ioredis";

const API_KEY = process.env.WEATHER_API_KEY;
const redis = new Redis(process.env.REDIS_URL);
const TEN_MINUTES = 10 * 60; // 10 minutes in seconds

interface FetchWeatherDataParams {
  lat: number;
  lon: number;
  units: string;
}

export async function fetchWeatherData({
  lat,
  lon,
  units,
}: FetchWeatherDataParams) {
  const baseURL = 'https://api.openweathermap.org/data/2.5/weather';
  const queryString = `lat=${lat}&lon=${lon}&units=${units}&appid=${API_KEY}`;
  const cacheKey = `weather:${queryString}`;

  // Check Redis cache
  const cached = await redis.get(cacheKey);
  if (cached) {
    console.log(`Cache hit for ${cacheKey}`);
    return JSON.parse(cached);
  }

  // Fetch from API if cache miss
  const response = await fetch(`${baseURL}?${queryString}`);
  const data = await response.json();
  await redis.set(cacheKey, JSON.stringify(data), "EX", TEN_MINUTES);
  console.log(`Cache miss for ${cacheKey}`);
  return data;
}

export async function getGeoCoordsForPostalCode(
  postalCode: string,
  countryCode: string,
) {
  const url = `https://api.openweathermap.org/geo/1.0/zip?zip=${postalCode},${countryCode}&appid=${API_KEY}`;
  const response = await fetch(url);
  const data = await response.json();
  return data;
}