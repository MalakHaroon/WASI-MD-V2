FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm i && npm i -g qrcode-terminal

COPY . .

EXPOSE 5000

CMD ["npm","start" ]


#CMD ["node", "gifted/gifted.js"]





#FROM quay.io/sampandey001/secktor

#RUN git clone https://github.com/Itxxwasi/WASI-MD-V2.git /root/Itxxwasi

# Clear npm cache and remove node_modules directories
#RUN npm cache clean --force
#RUN rm -rf /root/Itxxwasi/node_modules

# Install dependencies
#WORKDIR /root/Itxxwasi
#RUN npm install

# Add additional Steps To Run...
#EXPOSE 3000
#CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/Itxxwasi/node_modules
