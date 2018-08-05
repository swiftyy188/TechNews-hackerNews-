class ItemsController < ApplicationController
	def index
		url = "https://hacker-news.firebaseio.com/v0/"
		response = HTTParty.get(base_uri + 'topstories.json')
		response = response.parsed_response
		@itemsList = []

		response[0...2].each { |item|
			listItem = HTTParty.get(url + 'topstories.json')
			listItem = listItem.parsed_response
			listItem['shortUrl']=parseHostUrl(listItem['url'])
			listeItem['timeDifference']=Time.at(listItem['time'])
			@items.push(listItem)
		}
	end
	def parseHostUrl(url)
		return URI.parse(url).host;
	end
end
