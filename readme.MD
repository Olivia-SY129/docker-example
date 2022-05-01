# Docker 예시

- Dockerfile 작성법

```docker
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
```

- docker 이미지 빌드 방법

```cmd
docker build .t <name>
```

- docker 컨테이너 생성

```cmd
docker run -—name <컨테이너> -p <컨테이너 port>:<이미지 port> -d <이미지>
```
