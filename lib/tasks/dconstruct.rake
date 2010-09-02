require 'pp'

namespace :dconstruct do

    desc "Poll for recent tweets"
    task :poll => :environment do
      TwitterMessages.poll(AppConfig)
    end

end