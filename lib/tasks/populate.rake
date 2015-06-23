namespace :populate do
  task articles: :environment do |t|
    10.times.each do
      FactoryGirl.create :article
    end

    puts '>> Populate articles'
  end
end