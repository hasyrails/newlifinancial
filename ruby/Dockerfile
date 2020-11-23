FROM ruby:2.6.4

# 必要なパッケージのインストール
RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev

# yarnのインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y yarn

# Nodeのインストール
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
  apt-get install -y nodejs

# ==========ここから追加する==========
RUN mkdir /app
RUN cd /app
RUN gem install bundler
COPY ./rails_sikaku_calendar/ /app
WORKDIR /app

EXPOSE 3000
# ==========ここまで追加する==========

# 実行したいコマンド
CMD ["/bin/bash"]
