#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Members of the Senate (Nigeria)', 'en').member_titles |
     WikiData::Category.new('Category:Women members of the Senate (Nigeria)', 'en').member_titles |
     WikiData::Category.new('Category:Members of the Senate (Nigeria) from Rivers State', 'en').member_titles |
     WikiData::Category.new('Category:Members of the Senate (Nigeria) from Sokoto State', 'en').member_titles |
     WikiData::Category.new('Category:People\'s Democratic Party members of the Senate (Nigeria)', 'en').member_titles |
     WikiData::Category.new('Category:Presidents of the Senate (Nigeria)', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

