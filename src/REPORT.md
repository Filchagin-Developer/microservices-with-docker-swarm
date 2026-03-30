# PART 1.

## Task 1.1
### Написал Dockerfile микросервисам, собрал их. Прикладываю скриншот с их размерами.
![Скриншот 1](../images/screen1.png)

## Task 1.2
### Написал docker-compose , пробросил порты к gateway и service.

## Task 1.3
### Собрал веб-сервис с помощью docker-compose build
### Развернул с помощью docker-compose up
![Список удачно собранных контейнеров](../images/screen2.png)
![Список запущенных контейнеров](../images/screen3.png)

## Task 1.4
### Прогнал заготовленные тесты в postman
![Тесты успешно пройдены](../images/screen1.4.png)

# PART 2.

## Task 2.1
### Установил и инициализировал vagrant с помощь команд: 
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/hashicorp-vagrant 
vagrant init
```
### Написал vagrantfile, расшарил папку с кодом на хосте, запустил, вывел содержимое машины,удалил
![Выполненные команды](../images/2.1.png)

# PART 3.

## Task 3.1
### Написал vagrantfile для мэнджера и 2 воркеров
### Написал shell скрипты для установки инициализации и подключения к докер сварм

## Task 3.2 Загрузил образы в docker hub с помощью команд:
```bash
docker login
docker tag .....
docker push ....
```

## Task 3.3
### Поднял виртуальные машины с помощью команды vagrant up.
### Перенес docker-compose на manager
### Развернул сервис с помощью команды docker stack deploy -c docker-compose.yml <nameapp>
![Вирт машины и Сервисы успешно работают](../images/3.4.png)


## Task 3.4 - 3.5
### Настроил прокси на базе nginx
### Прогнал тесты в Postman
![Тесты успешно пройдены](../images/3.5.png)

## Task 3.6
![Распределение сервисов по узлам](../images/3.6.png)

## Task 3.7
![Развернул Portainer](../images/3.7.1.png)
![Ноды и сервисы в Portainer](../images/3.7.2.png)
