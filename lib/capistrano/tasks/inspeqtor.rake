namespace :load do
  task :defaults do
    set :inspeqtor_role, -> { :all }
    set :inspeqtor_bin, '/usr/bin/inspeqtorctl'
  end
end

namespace :deploy do
  before :starting, 'inspeqtor:add_default_hooks'
end

namespace :inspeqtor do
  desc 'Pause Inspeqtor monitoring'
  task :start do
    on roles(fetch(:inspeqtor_role)) do
      sudo "#{fetch(:inspeqtor_bin)} start deploy"
    end
  end

  desc 'Resume Inspeqtor monitoring'
  task :finish do
    on roles(fetch(:inspeqtor_role)) do
      sudo "#{fetch(:inspeqtor_bin)} finish deploy"
    end
  end

  task :add_default_hooks do
    after 'deploy:check', 'inspeqtor:start'
    after 'deploy:publishing', 'inspeqtor:finish'
  end
end
