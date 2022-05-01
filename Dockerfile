FROM node:14

WORKDIR /usr/src/app

# package 관련된 모든 파일 복사
COPY package*.json ./

# 도커는 아무것도 안 깔리고 노드만 있는 상태
RUN npm install

# 모든 파일 복붙
COPY . .

# PORT 번호에 노출
EXPOSE 8080

# node로 index.js 실행
CMD ["node", "index.js"]