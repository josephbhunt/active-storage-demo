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

### Reference
Check out the Rails ActiveStorage docs here https://edgeguides.rubyonrails.org/active_storage_overview.html

## Challenge
Your challenge is to add the code necessary to have the features described below.

### Attaching a file
1. A user should be able to attach one photo of a pet.

### Attach multiple files
1. A user should be able to attach multiple photos of a pet.

### Removing a file
1. A user shoul dbe able to delete any photo they have attached to a dog or a cat.

### Link to file
1. A user should be able to get a link to any of their photos that will go directly to the photo.

### Download file
1. A user should be able to download photos of their cats and dogs.

## Bonous Points
### Resize file with Image magic
1. Storing the originial photos takes up too much space! When a user uploads a photo of a cat or dog the application should create thumbnail (100px x 100px, 72dpi) and a large (400px x 400px, 72dpi) image. The originaly should not be saved.
2. Find help here https://edgeguides.rubyonrails.org/active_storage_overview.html#transforming-images
