FROM node:20-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm ci
RUN npm install -g @angular/cli
COPY . .
ARG NODE_ENV=production
ARG BUILD_PATH=/app/dist/production/calendarios
RUN if [ "${NODE_ENV}" = "DEV" ] ; then \
    ng build --configuration=development ; \
    elif [ "${NODE_ENV}" = "QA" ] ; then \
    ng build --configuration=qa ; \
    else \
    ng build --configuration=production ; \
    fi

FROM nginx:stable-alpine
ARG BUILD_PATH=/app/dist/production/calendarios
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build "${BUILD_PATH}" /usr/share/nginx/html
