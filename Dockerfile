FROM mhart/alpine-node:6
ENV PORT 8888
EXPOSE 8888
CMD ["node", "index.js"]
ENV WORKINGDIR /app 
WORKDIR ${WORKINGDIR}
ADD package.json $WORKINGDIR/package.json
ARG NPM_TOKEN
RUN npm install
ADD . ${WORKINGDIR}
