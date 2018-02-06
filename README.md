rbase
=====

rbase gem (working with dbf files) for ruby 1.9.3 (iconv removed, some fixes)

How to use
==========

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
