# README

Задача:
Реализовать JSON API по учету доходов и расходов пользователя с учетом приведенных ниже требований к реализации:

Конкурентные запросы по изменению баланса пользователя
Выписка по всем операциям пользователя с отбором по периоду (Наименование дохода (расхода), сумма, дата), состояние баланса на начало и конец периода.

Рекомендуемые технологии:
- Rails 5-6
- postgresql
- ruby последней стабильной версии
- rspec

В результате ожидаем получить ссылку на github, репозиторий должен быть открыт для просмотра.
Задача не имеет единственной верной реализации, в случае возникновения вопросов их необходимо решить по своему усмотрению.

репозиторий:
https://github.com/KVexcavator/cash_flow_api

Запуск:
сконфагурировать свой postgres
rails db:create
rails db:migrate
rails db:seed
rails s

Пояснения:
- я вместо курлов пользую httpie https://httpie.io/
- в задаче не указан конкретный период, я применил неделю
- патерн sti в 6-rails применять не рекомендуется, использую булево поле для оделения входящих потоков от исходящих
- как правильно денежный формат поддерживать, пусть у фронтенда голова болит, будем ждать, когда rails начнет тип money поддерживать
- проект не боевой, с тестами и рефакторингом сделал по минимуму

запуск тестов:
bundle exec rspec

модель 1: юзеры (user)
http localhost:3000/api/v1/users
модель 2: денежный поток (cash_flow)
http localhost:3000/api/v1/cash_flows
связь моделей: user -> has_many -> cash_flow


ручка 1: выписка по всем операциям пользователя с отбором по периоду (Наименование дохода (расхода), сумма, дата)
http localhost:3000/api/v1/account_state/:user_id
ручка 2: состояние баланса на начало и конец периода
http localhost:3000/api/v1/total/:user_id