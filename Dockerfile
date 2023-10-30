# Node.js v18을 사용하기 위해 공식 Node 이미지를 선택합니다.
FROM node:20.9.0-alpine

# 작업 디렉터리를 설정합니다.
WORKDIR /app

# 프로젝트의 package.json 및 package-lock.json 파일을 복사합니다.
COPY package*.json ./

# 프로젝트 종속성을 설치합니다.
RUN npm install

# 애플리케이션 소스 코드를 복사합니다.
COPY . .

# 컨테이너가 시작될 때 실행할 명령을 지정합니다.
CMD ["npm", "start"]