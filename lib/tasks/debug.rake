namespace :debug do

  desc "Restarts passenger if in debug mode"
    task :restart do
    system("touch tmp/restart.txt")
    system("touch tmp/debug.txt") if ENV["DEBUG"] == 'true'
  end

end