# Используем образ Ruby
FROM ruby:latest

# Устанавливаем переменную окружения для запуска в непрерывном режиме
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Копируем файлы приложения в образ
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Копируем остальные файлы приложения
COPY . .

# Запускаем команду для запуска приложения
CMD ["ruby", "Task.rb"]
