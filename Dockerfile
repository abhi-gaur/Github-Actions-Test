FROM node:18

WORKDIR /app  # Ensure this is set before COPY

COPY package.json package-lock.json ./

RUN npm install

COPY . .

CMD ["node", "index.js"]

