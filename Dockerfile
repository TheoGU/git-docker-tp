FROM node:13.12.0-alpine

WORKDIR /app/git-react-app

COPY /app/git-react-app/package.json ./
COPY /app/git-react-app/package-lock.json ./

RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g 

COPY /app/git-react-app/ /app/git-react-app/ 

CMD ["npm", "start"]