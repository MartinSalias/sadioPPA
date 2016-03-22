#SADIO - Taller de Practicas de Programacion Agil

Este repositorio corrsponde al ejercicio desarrollado durante el taller.

Para poder probar, ejecutar y/o continuar el ejercicio se requiere:

- Instalar Ruby 1.9.3 (ver [Pagina oficial](https://www.ruby-lang.org/en/downloads/))

- Clonar este repositorio o descargarlo como ZIP file (ver dentro de esta misma pagina)

- Sobre el directorio de trabajo (sadioPPA), instalar Bundler:

      gem install bundler

- Instalar las dependencias del proyecto:

      bundle install


----
Ya esta todo el entorno disponible.

Para ejecutar las specs (o pruebas unitarias):

      rspec

Para ejecutar las features (o pruebas de aceptacion):

     cucumber

Para ejecutar la aplicacion:

     ruby app.rb
(y abrir el browser en localhost:4567)

----
Equivalentes de las herramientas que utilizamos en otras plataformas o lenguajes:

- Cucumber:  https://cucumber.io/docs

- rSpec:
  - Java:
    - http://jbehave.org/
    - https://code.google.com/archive/p/spock/
  - .NET:
    - https://code.google.com/archive/p/spock/
    - http://www.nunit.org
  - PHP:
    - www.phpspec.net
    - https://phpunit.de/
    
