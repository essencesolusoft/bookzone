# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Tech Stack
	Ruby version 3.0.0
	Rails Version 7
	Database :- Postgres


* system dependancies
	* rvm
	* postgres
	* elasticsearch
			
			curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

			echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

			sudo apt update

			sudo apt install elasticsearch


* Database creation
	
		rails db:create
		rails db:migrate

* Database initialization
		
		rails db:seed

* Initial Import Book records
				
		Book.__elasticsearch__.create_index!
		Book.import


