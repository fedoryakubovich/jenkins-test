FROM node:lts-alpine as client

ARG REACT_APP_BASE_URL

WORKDIR /app
COPY . .
RUN npm ci

RUN echo "REACT_APP_BASE_URL: $REACT_APP_BASE_URL"
RUN npm run build