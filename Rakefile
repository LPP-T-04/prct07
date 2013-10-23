task :default => :spec

desc "Ejecutar las espectativas de la clase Frac"
task :spec do
	sh "rspec -I. spec/frac_spec.rb"	
end

desc "Ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/frac_spec.rb --format documentacion"	
end
