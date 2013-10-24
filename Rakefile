task :default => :spec


desc "Ejecutar las espectativas de la clase Frac"
task :spec do
	sh "rspec -I. spec/frac_spec.rb"	
end

desc "Ejecutar el programa principal"
task :bin do
	sh "ruby -I. lib/frac_main.rb"	
end

desc "Ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/frac_spec.rb --format documentation --colour"	
end

desc "Ejecutar con documentacion"
task :html do
	sh "rspec -I. spec/frac_spec.rb --format documentation --format html --out report.html"
end
