## Getting Started
1. Clone repo: `git clone git@github.com:josephbhunt/active-storage-demo.git`
2. `docker-compose build`
3. `docker-compose up`

## Adding ActiveStorage
1. Install ActiveStorage: `rails active_storage:install`
2. You now have a migration in `db/migrate`.
3. Run the migration: `rails db:migrate`
4. This adds two tables to your db, which ActiveStorage will use. `active_storage_blobs` and `active_storage_attachments`
5. You should also have a `config/storage.yml` file. That's where you configure your storage options.
6. You can set which storage to use per environment in the environments files. See `config/environments/development.rb` and look at the `config.active_storage.service` setting. By default it references the `local` storage.
7. Active storage has built in storage adapters for common storage options like S3. See `config/storage.yml` for commented examples.

