#from

FROM nginx:alpine

WORKDIR /app

COPY  ./ ./  
#copy files form the local machine 

EXPOSE 8080



#CMD [ "executable" ]