# rubyの3.0.2を使用するようにDockerに指示
FROM ruby:3.0.2
# Dockerのイメージ内でコマンド実行
RUN bundle config --global frozen 1
# 作業ディレクトリを設定
WORKDIR /Users/reo/Documents/sample_perfect_ruby
# 現在の作業ディレクトリにDockerイメージにコピー
COPY Gemfile Gemfile.lock ./
# bundleコマンドを実行
RUN bundle install
# ファイルを実行
CMD ["bundle", "exec", "ruby", "./sample.rb"]
