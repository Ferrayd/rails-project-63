install:
	bundle install

lint:
	bundle exec rubocop
	
test:
	bundle exec rspec
	bundle exec rake test