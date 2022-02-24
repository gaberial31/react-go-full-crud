# # pull the base image
# FROM node:alpine

# # set the working direction
# WORKDIR /app

# # add `/app/node_modules/.bin` to $PATH
# ENV PATH /app/node_modules/.bin:$PATH

# # install app dependencies
# COPY package.json ./

# COPY package-lock.json ./

# RUN npm install

# # add app
# COPY ./ ./

# RUN npm run build
# # start app
# #CMD ["npm", "run", "start"]


FROM nginx:1.15.2-alpine
COPY ./build /var/www
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]