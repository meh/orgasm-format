Kernel.load 'lib/orgasm/format/version.rb'

Gem::Specification.new {|s|
	s.name         = 'orgasm-format'
	s.version      = Orgasm::Format.version
	s.author       = 'meh.'
	s.email        = 'meh@paranoici.org'
	s.homepage     = 'http://github.com/meh/orgasm-jit'
	s.platform     = Gem::Platform::RUBY
	s.summary      = 'Executable format handling for orgasm.'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']

	s.add_dependency 'orgasm'
	s.add_dependency 'retarded'

	s.add_development_dependency 'rake'
	s.add_development_dependency 'rspec'
}
