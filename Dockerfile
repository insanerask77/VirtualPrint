FROM node
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 8081
CMD npm run app

# docker build -t tiktok_printer .
# docker run -dp 8081:8081 --rm --name tiktok_printer tiktok_printer