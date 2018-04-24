Gem::Specification.new do |s|
  s.name = 'rbase-ff'
  s.version = '0.9.3'
  s.summary = 'Library to create/read/write to XBase databases (*.DBF files)'
  s.require_path = 'lib'
  s.files = Dir.glob('**/*').delete_if { |item| item =~ /^\./ }
  s.authors = 'Maxim Kulkin, Leonardo Augusto Pires, Tom Lahti'
  s.email = 'maxim.kulkin@gmail.com, leonardo.pires@gmail.com, uidzip@gmail.com'
  s.homepage = 'http://github.com/uidzip/rbase'
  s.has_rdoc = true

  s.required_ruby_version = '>= 1.9.3'
end
