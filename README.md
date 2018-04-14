rbase-ff
========

ChangeLog
* 2018-04-14 Reading was broken due to relying on offset data in record data, which may be inaccurate.
* 2018-04-14 No longer necessary to require 'date' separately
* 2018-04-14 Added [] method to record; you can now do record[:field_name]
instead of record.field_name


rbase gem (working with dbf files) for ruby 1.9.3+ (iconv removed, some fixes)

I have copied this gem, made some minor changes, and pushed it to rubygems for public installation.  There are many forks of this on github, but no one has bothered to push it to rubygems that I can find.  This version is found on rubygems.org as rbase-ff.  I will continue to maintain this version and keep the rubygems version updated from here.  -- Tom L.

How to write a DBF
==================

```ruby
require 'rubygems'
require "date"
require "rbase"

RBase.create_table 'people' do |t|
  t.column :name, :string, :size => 30
  t.column :birthdate, :date
  t.column :active, :boolean
  t.column :tax, :integer, :size => 10, :decimal => 2
end

RBase::Table.open 'people' do |t|
  t.create name: 'People-1', birthdate: Date.new(2017,1,2), active: true, tax: 5.2
  t.create name: 'People-2', birthdate: Date.new(2018,1,2), active: true, tax: 6.2
  t.create name: 'People-3', birthdate: Date.new(2019,1,2), active: true, tax: 7.2
  t.create name: 'People-4', birthdate: Date.new(2020,1,2), active: true, tax: 8.2
end
```

How to read a DBF
=================

```ruby
RBase::Table.open 'people'.each do |record|
  puts record.name
  puts record.birthdate
  puts record.active
  puts record.tax
end
```
