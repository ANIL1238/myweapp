#from

FROM nginx:alpine

WORKDIR /app

COPY  ./ ./  
#copy files form the local machine 

EXPOSE 80



#CMD [ "executable" ]
