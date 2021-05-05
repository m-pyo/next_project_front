FROM node:14.15-alpine
EXPOSE 3000


# 작업 디렉토리 갱신
COPY . /app

WORKDIR /app

ENV PORT=3000 \
    HOST=0.0.0.0

# 소스 카피
COPY . .

# 의존성 모듈 인스톨
RUN npm install -q

# 웹팩빌드
# RUN npm run build

## Nodejs 실행
# CMD cat execute.sh | tr -d \\r | sh
CMD npm run $EXECUTION_PARAM_ENV

