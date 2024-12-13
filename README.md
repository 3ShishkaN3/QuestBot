# Квестовый бот для Подземелий Колодца

## Описание

Этот бот предназначен для создания и управления кастомными квестами в рамках гильдий "Подземелья Колодца".

Бот поддерживает:

- Создание квестов с пользовательскими условиями.
- Учет выполнения квестов игроками.
- Начисление гильдейских баллов за выполнение квестов.
- Настраиваемую логику проверки выполнения условий.

## Функциональность

- **Администраторы:** Владельцы бота могут назначать администраторов, которые управляют квестами.
- **Квесты:** Поддержка создания сложных условий, включая логи на основе действий игроков.
- **API ВКонтакте:** Интеграция с API ВКонтакте для взаимодействия с игроками.

## Структура проекта

```bash
project/
├── requirements.txt
├── src/
│   ├── bot/
│   │   ├── admin.py
│   │   ├── bot.py
│   │   ├── __init__.py
│   │   ├── logger.py
│   │   └── quest.py
│   ├── database/
│   │   ├── db_manager.py
│   │   ├── __init__.py
│   │   └── migrations/
│   ├── __init__.py
│   ├── main.py
│   ├── models/
│   │   ├── __init__.py
│   │   ├── quest_model.py
│   │   └── user_model.py
│   ├── services/
│   │   ├── __init__.py
│   │   ├── log_service.py
│   │   ├── quest_service.py
│   │   ├── reward_service.py
│   │   └── vk_service.py
│   ├── settings/
│   │   ├── config.py
│   │   └── __init__.py
│   └── utils/
│       ├── helpers.py
│       ├── __init__.py
│       └── validators.py
└── tests/
    ├── test_bot.py
    ├── test_logger.py
    ├── test_models.py
    ├── test_quest.py
    └── test_services.py
```

## Установка

1. Клонируйте репозиторий:

   ```bash
   git clone https://github.com/3ShishkaN3/QuestBot.git
   ```

2. Перейдите в папку проекта:

   ```bash
   cd QuestBot
   ```

3. Установите зависимости:

   ```bash
   pip install -r requirements.txt
   ```

4. Настройте переменные окружения в файле `.env`:

   ```env
   VK_TOKEN=ваш_токен
   DB_URL=sqlite:///project.db
   ```

5. Запустите бота:

   ```bash
   python -m src.main.py
   ```

## Тестирование

Запуск тестов:

```bash
pytest tests/
```

## Docker

### Сборка контейнера

```bash
docker build -t quest-bot .
```

### Запуск контейнера

```bash
docker run --env-file .env -p 8080:8080 quest-bot
```

## Лицензия

Этот проект лицензирован по [MIT License](LICENSE).
