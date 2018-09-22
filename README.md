## Getting Started
1. Clone repo: `git clone git@github.com:josephbhunt/active-storage-demo.git`
2. `docker-compose build`
3. `docker-compose up`

## Adding ActiveStorage
1. Install ActiveStorage in the docker container: `docker exec active-storage-demo_web_1 rails active_storage:install`
2. You now have a migration in `db/migrate`.
3. Create the database in the docker container: `docker exec active-storage-demo_web_1 rails db:create`
4. Run the migration in the docker container: `docker exec active-storage-demo_web_1 rails db:migrate`
5. This adds two tables to your db, which ActiveStorage will use. `active_storage_blobs` and `active_storage_attachments`
6. You should also have a `config/storage.yml` file. That's where you configure your storage options.
7. You can set which storage to use per environment in the environments files. See `config/environments/development.rb` and look at the `config.active_storage.service` setting. By default it references the `local` storage.
8. Active storage has built in storage adapters for common storage options like S3. See `config/storage.yml` for commented examples.

### Reference
Check out the Rails ActiveStorage docs here https://edgeguides.rubyonrails.org/active_storage_overview.html

## Challenge
Your challenge is to add the code necessary to have the features described below.

### Attaching a file
1. A user should be able to attach one photo of a pet.

### Attach multiple files
1. A user should be able to attach multiple photos of a pet.
HINT: Use the following example form option to upload multiple files.
`<%= form.file_field :photos, multiple: true %>`
You will also have to modify the index page to show your photos. Try just looping through them and displaying them as an unordered list in a <td></td>.

### Removing a file
1. A user should be able to delete any photo they have attached to a pet.
2. Put the delete button in the "Delete Photos" column. It should just delete all the photos for that pet.
HINT: Look at rails's `button_to` helper method.

### Link to file
1. A user should be able to get a link to any of their photos that will go directly to the photo.
2. Put the link to the file under the "View Photos" column.

### Download file
1. A user should be able to download photos of their pets.
2. Put the link under the "Download File" column.
HINT: Take a look at rails_blob_path in the docs. This can be done with one line of code. There is no need to set up a controller action and new route.

## Bonous Points
### Resize file with Image magic
1. Storing the originial photos takes up too much space! When a user uploads a photo of a cat or dog the application should create thumbnail (100px x 100px, 72dpi) and a large (400px x 400px, 72dpi) image. The original should not be saved.
2. Find help here https://edgeguides.rubyonrails.org/active_storage_overview.html#transforming-images
