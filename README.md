# rbwld
rbwld is a small DSL for creating DokuWiki compatible lists of links.

Think of it like a declarative bookmark manager. The central `Links` instance
contains `Category` instances which represent categories and subcategories of links.
Within each `Category` you can have more categories along with `Link` instances which
represent individually listed websites. The output is directly usable within DokuWiki.

# usage
```ruby
require_relative 'wld'

links = Links.new do
  category "Search Engines" do
    link "Google", "https://google.com", nil
    link "DuckDuckGo", "https://duckduckgo.com", "Private search engine"
  end
end
```

This results in the following markup:
```
====== Search Engines ======
  * [[https://google.com|Google]]
  * [[https://duckduckgo.com|DuckDuckGo]] -- Private search engine
```
