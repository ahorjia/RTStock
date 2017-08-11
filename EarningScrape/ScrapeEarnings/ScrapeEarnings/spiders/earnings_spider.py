import scrapy


class QuotesSpider(scrapy.Spider):
    name = "earnings"

    def start_requests(self):
        urls = [
            'http://www.nasdaq.com/earnings/earnings-calendar.aspx?date=2017-Aug-03',
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        page = response.url[-11]
        filename = 'earnings%s' % page
        with open(filename, 'wb') as f:
            f.write(response.body)
        self.log('Saved file %s' % filename)
