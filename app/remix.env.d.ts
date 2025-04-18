/// <reference types="@remix-run/dev" />
/// <reference types="@remix-run/node" />

declare namespace NodeJS {
    interface ProcessEnv {
      WEATHER_API_KEY: string;
      REDIS_URL: string;
    }
  }