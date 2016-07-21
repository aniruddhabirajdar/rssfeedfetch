require 'rails_helper'


describe Feed do



  it 'Adds entries for feed url' do
    feed= Feed.create(name: "test",:url=>"http://www.ruby-lang.org/en/feeds/news.rss")
    expect(feed.entries).not_to be_empty
  end
  
  it 'remives all entries ' do
    feed= Feed.create(name: "test",:url=>"http://www.ruby-lang.org/en/feeds/news.rss")
    feed.destroy
    expect(Entry.where(feed_id: feed)).to be_empty
  end



  end