# ���������� ����� Ruby
FROM ruby:latest

# ������������� ���������� ��������� ��� ������� � ����������� ������
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# �������� ����� ���������� � �����
COPY Gemfile Gemfile.lock ./
RUN bundle install

# �������� ��������� ����� ����������
COPY . .

# ��������� ������� ��� ������� ����������
CMD ["ruby", "Task.rb"]
