# Step Project 2: MVP застосунок на Java  - ***[Tinder](http://tinderproject.herokuapp.com)***

Дані для авторизації (email, password):
* 'john@gmail.com', '12345'
* 'mary@gmail.com', '11111'
* 'tom@gmail.com', 'qwert'
* 'anna@gmail.com', '22222'
* 'alex@gmail.com', '43212'
* 'don@gmail.com', '22ss222'
* 'nora@gmail.com', 'dffe55'
* 'kevin@gmail.com', '2ddg222'
* 'kity@gmail.com', '840629'
* 'harry@gmail.com', 'trewq'

## Виконанні завдання 

Розроблено MVP додаток емулюючий сервіс знайомств Tinder.<br>
#### Список робочих ендпоінтів у додатку та функціонал:
- ###### /users 
  Показує профіль людини, що складається з імені та фотографії / картинки. Дозволяє здійснити вибір профілю, що сподобався користувачу шляхом натискання кнопок Yes/No. Після вибору (натискання кнопки) показує користувачу наступний профіль. Коли всі існуючи профілі будуть "пролайкані", виконується перехід на сторінку /liked.<br>
- ###### /liked 
  Відображає список профілів обраних ("лайкнутих") користувачем. При натисканні на фото або ім'я в профілі, виконується перехід на чат-сторінку "/messages/{id}".
- ###### /messages/{id} 
  Показує історію листування між користувачами. Дозволяє надсилання нових повідомлень (метод POST). Нові повідомлення відображаються в чаті в реальному часі.
- ######  /login
  Дозволяє користувачеві залогінитись у додаток (використовується метод POST).
#### Додатковий функціонал:
- Реалізовано механізм філтрації (на базі HttpFilter), який перенаправляє на сторінку логіна незалогіненого користувача.
#### Інструменти та технології:
- <b>[Bootstrap.](https://getbootstrap.com/)</b> Використані Bootstrap шаблони як основа для всіх веб-сторінок.
- <b>[Apache Freemarker.](https://freemarker.apache.org/)</b> Використано шаблонізатор Freemarker template для виведення динамічних даних на HTML-сторінках.
- <b>[PostgreSQL.](https://www.postgresql.org/)</b> Всі дані про користувачів, їх лайки, історія повідомлень зберігаються в базі даних PostgreSQL

****
### Валерій Швець (sxcrest)
- Сервлети - LikedServlet, RootServlet, LogoutServlet.
- Збірка проєкту. Конфігурація деплою на Heroku.

### Кобець Олександр
- Частина проєкту, що забезпечує емуляцію функціонування чату (вивод історії листування, та додавання нових месенджів):
  - сервлет MessageServlet;
  - сервіс MessageService;
  - ДАО - MessageDataBaseDao;
  - сутності Message, Chat;
  - адаптування templates chat_empty.ftl / chat_exist.ftl під вивід даних з застосування шаблонізатора Apache FreeMarker.
- розробка логичної конфигурації (схеми) бази данних.  

### Хомич Ольга
- Сервлети: UsersServlet, StaticContentServlet, LoginServlet, RedirectToServlet - відповідні сутності, дао та сервіси.
- HTTP Filter, Cookies
- DB migration

# Застосунок
***[Посилання Heroku](http://tinderproject.herokuapp.com)***

