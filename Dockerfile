# Node docker file
FROM node

WORKDIR /node_docker

COPY . .

# SHELL FORM
RUN npm install

ENV PORT=3000

EXPOSE 3000

# EXEC FORM
CMD [ "npm", "start" ] 
# Also can be used but starts new shell session
# CMD npm start