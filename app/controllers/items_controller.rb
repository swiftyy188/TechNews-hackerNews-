class ItemsController < ApplicationController
	def index
		url = "https://hacker-news.firebaseio.com/v0/"
		response = HTTParty.get(url + 'topstories.json')
		response = response.parsed_response
		@items = []

		response[0...2].each { |item|
			listItem = HTTParty.get(url + 'item/' + item.to_s + '.json')
			listItem = listItem.parsed_response
			@items.push(listItem);
		}
	end
	# https://hacker-news.firebaseio.com/v0/item/17685358.json
	def parseHostUrl(url)
		return URI.parse(url).host;
	end
end
