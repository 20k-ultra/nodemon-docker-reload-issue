Sample NodeJS API w/ Nodemon hot-reload issue
==================================

Made this to help reproduce issue with Nodemon unable to reload node script because port is still used which is discussed [here](https://github.com/remy/nodemon/issues/1477).

**To see Nodemon working:**
```
npm install
npm run dev
```
then make changes to `src/index.js` and app will reload successfully.

**To see Nodemon break:**
```
docker-compose up
```
then make changes to `src/index.js`  and app will throw error but is still serving. This can be seen by running:

 `curl -I localhost:8080`

If you want to get bash access to the container do:
```
docker exec -it nodemon_nodejs /bin/bash
```


### **Host:**
- Docker version 18.09.0, build 4d60db4
- docker-compose version 1.20.1, build 5d8c71b
- nodejs v8.11.1
- npm 6.4.1

### **Docker container is using:**
- nodejs v8.11.4
- npm 5.6.0

