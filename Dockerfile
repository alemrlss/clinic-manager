
# Stage de Desarrollo 
FROM node:19-alpine3.15 as dev
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
CMD [ "npm", "run", "start:dev" ]

# Stage para instalar dependencias de desarrollo
FROM node:19-alpine3.15 as dev-deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

# Stage de construcción
FROM node:19-alpine3.15 as builder
WORKDIR /app
COPY --from=dev-deps /app/node_modules ./node_modules
COPY . .
# RUN npm run test (Si se tienen pruebas)
RUN npm run build

# Stage para instalar dependencias de producción
FROM node:19-alpine3.15 as prod-deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --only=production

# Stage de Producción
FROM node:19-alpine3.15 as prod
EXPOSE 3000
WORKDIR /app
ENV APP_VERSION=${APP_VERSION}
COPY --from=prod-deps /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist

CMD [ "node","dist/main.js"]