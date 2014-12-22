namespace :deploy do
  def deploy(env)
    puts "Deploying to #{env}"
    system "TARGET=#{env} bundle exec middleman deploy"
  end

  task :production do
    deploy :production
  end

  task :beta do
    deploy :beta
  end
end
