FROM node:9.6.1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . .
RUN npm install
RUN npm install react-scripts -g
RUN npm run build
EXPOSE 3000
EXPOSE 3333
CMD ["npm", "start"]
