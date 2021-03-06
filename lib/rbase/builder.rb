require 'rbase/schema'

module RBase
  LANGUAGE_US_DOS = 0x01
  LANGUAGE_INTL_DOS = 0x02
  LANGUAGE_ANSI_WINDOWS = 0x03
  LANGUAGE_RUSSIAN_DOS = 0x66
  LANGUAGE_RUSSIAN_WINDOWS = 0xc9

  # Create new XBase table file. Table file name will be equal to name with ".dbf" suffix.
  #
  # For list of available options see Table::create documentation.
  #
  # == Example
  #
  #   RBase.create_table 'people' do |t|
  #     t.column :name, :string, :size => 30
  #     t.column :birthdate, :date
  #     t.column :active, :boolean
  #     t.column :tax, :integer, :size => 10, :decimal => 2
  #   end
  #
  # For documentation on column parameters see RBase::Schema.column documentation.
  #
  def self.create_table(name, options = {})
    options[:language] ||= LANGUAGE_US_DOS
    
    schema = Schema.new
    yield schema if block_given?
    
    Table.create name, schema, options
  end

end
