class Feed < ActiveRecord::Base
  has_many :entries ,:dependent => :destroy
  include RssFeedParser
  
  def add_entries
    entries=Feed.get_entry_from_rss_feeds(self.url)
    entries.each do |feed|
    duplicate_record = self.entries.find_by_guid(feed[:guid])
      self.entries.build(feed) if duplicate_record.nil?
    end      
  end
  
  def remove_entries
    self.entries.destroy_all    
  end
  
  
  def self.reload_all
     Feed.all.map(& :add_entries)
  end
  
 before_save :remove_entries, if: :url_changed? 
 before_save :add_entries
   
end
