module RssFeedParser
  require 'rss'
  module ClassMethods
    
    def get_rss_response url     
      all_feeds=open(url) do |rss|
        feed = RSS::Parser.parse(rss)
      end
      all_feeds.items
    end
    
    
    def get_entry_from_rss_feeds url
      rss_items = []
      response = get_rss_response url
      response.each do |rss_record|
        rss_items << {title: rss_record.title,
          content: rss_record.description,
          url: rss_record.link,
          guid: rss_record.guid.content,
          author: rss_record.author,
          published: rss_record.pubDate                                             
        }
        
      end
      rss_items
    end


  end
  
  
  def self.included(receiver)
    receiver.extend ClassMethods
  end
  
end