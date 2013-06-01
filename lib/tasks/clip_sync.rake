require 'clip_importer'

namespace :clip_sync do
  desc 'sync all missing clips from Railscasts.com'
  task :railscasts => :environment do
    total = ClipImporter.import_railscasts
    puts "There are now #{total} clips from Railscasts.com"
  end
end