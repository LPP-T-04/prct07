task :default => :bin

desc "Ejecutar el programa principal"
task :bin do
	sh "rspec -I. lib/frac_main.rb"	
end

desc "Ejecutar las espectativas de la clase Frac"
task :spec do
	sh "rspec -I. spec/frac_spec.rb"	
end

desc "Ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/frac_spec.rb --format documentacion"	
end
