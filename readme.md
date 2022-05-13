## PRUEBAS E2E AL APLICATIVO GHOST, CON LA HERRAMIENTA DE PRUEBAS KRAKEN VERSION 4.41.3 ##

### Para la ejecución de Ghost:

	1) Instalar Ghost en su version 4.41.3 de manera local siguiendo los pasos del tutorial: https://misovirtual.virtual.uniandes.edu.co/codelabs/ghost-local-deployment/index.html 
	2) Ingresar al link con el que quedo instalada la aplicación GHOST
	3) Crear un sitio nuevo con nombre MISO-Pruebas, usando las credenciales:
		Usuario:  usuario@ghost.com
		Contraseña: Usuario1234567
	4) Para la ejecución de los escenarios con cada una de las herramientas planteadas es necesario que la aplicación sea desplegada desde 0
	
	
### Para instalar Kraken y ejecutar los escenarios de pruebas: 
	 
	1)npm install kraken-node -g
	2)crear una carpeta donde va estar kraken (por ejemplo pruebas_kraken)
	3)ingresar a la carpeta por la consola
	4) clonar el repositorio https://github.com/ErikBernal94/KrakenTestingMiso (git clone 	https://github.com/ErikBernal94/KrakenTestingMiso.git)
	5) ingresar a la carpeta cd KrakenTestingMiso
	6) Validar que la URL de ghost coincida con el parametro <<GHOST-URL>> alijado en el archivo properties.json
	6)Ejecutar kraken-node run
	7)Si al correr el conmando kraken-node run aparece este error "Error: 
		  You appear to be executing an install of cucumber (most likely a global install)
		  that is different from your local install (the one required in your support files).
		  For cucumber to work, you need to execute the same install that is required in your support files.
		  Please execute the locally installed version to run your tests."

		  dentro del directorio donde se corre el comando kraken-node gen
		  ejecutar npm init (aqui pregunta sobre varias opciones de configuracion , en mi caso le di enter a todo),
		  luego npm install kraken-node y por ultimo npm install 
		nota : se debe tener instalado ADB (Mac: https://stackoverflow.com/questions/31374085/installing-adb-on-macos, Windows: https://www.youtube.com/watch?v=tYY7FTV31vM&ab_channel=IrsealH%26S)

	7) copiar la URL donde se esta ejecutando ghost, el archivo properties.json del repositorio en la carpeta KrakenTestingMiso, "GHOST-URL" = "URL DE GHOST"
	8)Ejecutar Kraken, 
		para windows:
			- Los escenarios de pruebas se ejecutan uno a uno, por esto es necesario ir moviendo, de a un archivo, los archivos alojados en la carpeta <<Scenarios>> 
			a la carpeta <<features>>, 
			- Ejecutar la prueba con el comando <<npx kraken-node run>> 
			- Devolver el archivo probado a la carpeta <<Scenarios>>
			-Repetir los pasos anteriores para cada uno de los archivos alojados en la carpeta <<Scenarios>>
		Para Mac:
			- Los escenarios pueden ser ejecutados al mismo tiempo, para ello se mueven todos los archivos alojados en la carpeta <<Scenarios>> 
			a la carpeta <<features>>  
			- En la carpeta raiz ejecutar el comando <<./node_modules/kraken-node/bin/kraken-node run>>


## PRUEBAS E2E AL APLICATIVO GHOST, CON LA HERRAMIENTA DE PRUEBAS KRAKEN VERSION 3.42.0 ##

Para realizar las pruebas VRT (Visual Regression Testing), se debe geenerar los screenshots para la version anterior, 3.42.0 de ghost.
Para esto, es necesario instalar ghost en esta version especifica y ejecutar los escenarios de pruebas ajustados para el cambio de version.
A continuación, describimos los pasos para ejecutar los escenarios ajustados dentro de este repositorio.

### Para la ejecución de Ghost:
 Nota: Si tiene una version de ghost diferente instalada debe desintalarla, puede usar el comando ghost uninstall dentro de la carpeta donde tiene
 instaldo Ghost y desea removerlo. (Más info https://ghost.org/docs/ghost-cli/)
	
	1) Instalar Ghost en su version 3.42.0 de manera local siguiendo los pasos del tutorial: https://misovirtual.virtual.uniandes.edu.co/codelabs/ghost-local-deployment/index.html (Para una version especifica peude usar : "ghost install 3.42.0 --local" )
	2) Ingresar al link con el que quedo instalada la aplicación GHOST
	3) Crear un sitio nuevo con nombre MISO-Pruebas, usando las credenciales:
		Usuario:  usuario@ghost.com
		Contraseña: Usuario1234567
	4) Para la ejecución de los escenarios con cada una de las herramientas planteadas es necesario que la aplicación sea desplegada desde 0
	
	
### Para instalar Kraken y ejecutar los escenarios de pruebas: 
	Nota: Si ya tiene este repositorio local puede omitir los siguientes pasos y comenzar en el paso 8.

	1)npm install kraken-node -g
	2)crear una carpeta donde va estar kraken (por ejemplo pruebas_kraken)
	3)ingresar a la carpeta por la consola
	4) clonar el repositorio https://github.com/ErikBernal94/KrakenTestingMiso (git clone 	https://github.com/ErikBernal94/KrakenTestingMiso.git)
	5) ingresar a la carpeta cd KrakenTestingMiso
	6) Validar que la URL de ghost coincida con el parametro <<GHOST-URL>> alijado en el archivo properties.json
	6)Ejecutar kraken-node run
	7)Si al correr el conmando kraken-node run aparece este error "Error: 
		  You appear to be executing an install of cucumber (most likely a global install)
		  that is different from your local install (the one required in your support files).
		  For cucumber to work, you need to execute the same install that is required in your support files.
		  Please execute the locally installed version to run your tests."

		  dentro del directorio donde se corre el comando kraken-node gen
		  ejecutar npm init (aqui pregunta sobre varias opciones de configuracion , en mi caso le di enter a todo),
		  luego npm install kraken-node y por ultimo npm install 
		nota : se debe tener instalado ADB (Mac: https://stackoverflow.com/questions/31374085/installing-adb-on-macos, Windows: https://www.youtube.com/watch?v=tYY7FTV31vM&ab_channel=IrsealH%26S)

	7) copiar la URL donde se esta ejecutando ghost, el archivo properties.json del repositorio en la carpeta KrakenTestingMiso, "GHOST-URL" = "URL DE GHOST"
	8)Ejecutar Kraken,
        - Mover el archivo <<step.js>>  ubicado en "features/web/step_definitions/step.js" a "/scenarios".
        - Ingresar a la carpeta <<scenarios-version-3-42>>, mover el archivo step.js ubicado en esa carpeta a "/scenarios".
		para windows:
			- Los escenarios de pruebas se ejecutan uno a uno, por esto es necesario ir moviendo, de a un archivo, los archivos alojados en la carpeta <<scenarios-version-3-42>> 
			a la carpeta <<features>>, 
			- Ejecutar la prueba con el comando <<npx kraken-node run>> 
			- Devolver el archivo probado a la carpeta <<scenarios-version-3-42>>
			-Repetir los pasos anteriores para cada uno de los archivos alojados en la carpeta <<Scenarios>>
		Para Mac:
			- Los escenarios pueden ser ejecutados al mismo tiempo, para ello se mueven todos los archivos alojados en la carpeta <<scenarios-version-3-42>>
			a la carpeta <<features>>  
			- En la carpeta raiz ejecutar el comando <<./node_modules/kraken-node/bin/kraken-node run>>




### Funcionalidades: 

	1) Crear un nuevo post(publicación)
	
	Crear un nuevo post, ingresando título, descripción y la posibilidad de agregar una imagen, también permite previsualizar la publicación que se va a realizar.
	Para acceder a esta funcionalidad es necesario estar autenticado en la aplicación, se accede a la lista de Posts (funcionalidad 2) 
	y en la parte superior derecha se selecciona el botón “New Post”.

	
	2)	Crear Page o Página
 
	Permite crear una página con la opción de agregar título, contenido e imagen. Esta página será accesible desde la barra de navegación del sitio creado, 
	lo cual la hace diferente de un post.
	Para acceder a esta funcionalidad es necesario estar autenticado en la aplicación, el ingreso está ubicado en la barra lateral izquierda, sección Pages, 
	en la vista desplegada se hace click sobre el botón “New page” ubicado en la parte superior derecha.
	
	3) Agregar un miembro 
 
	Agrega un nuevo miembro al proyecto, es necesario ingresar nombre y correo de la persona a invitar. Esta funcionalidad tiene como finalidad habilitar 
	la visualización del sitio por parte de un nuevo miembro y la recepción de información cada que se cree un nuevo post (sí esta funcionalidad está habilitada).
	Para acceder a esta funcionalidad es necesario estar autenticado en la aplicación, el ingreso se visualiza en la barra lateral izquierda, 
	sección Members, en la vista desplegada se hace click sobre el botón “New member” ubicado en la parte superior derecha.

	4) Listar post (publicación)
	
	La aplicación permite obtener una lista de los posts realizados anteriormente en el sitio web administrado, esta lista contiene el título, 
	el creador, la fecha, el estado, entre otras características de los posts.
	Esta funcionalidad permite filtrar y organizar los posts por algunas de sus características.
	Para acceder a esta funcionalidad es necesario estar autenticado en la aplicación. El ingreso se visualiza en la barra lateral izquierda, sección Posts

	
	5) Listar página
	
	Permite listar las Pages o Páginas creadas y filtrarlas.
	Para acceder a esta funcionalidad es necesario estar autenticado en la aplicación, el ingreso está ubicado en la barra lateral izquierda, sección Pages.
	
### Escenarios:

	1) Crear post y publicarlo.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post.
		
	Validación:
		- Existencia del post publicado en la lista de posts.
		
	2) Crear post y no publicarlo
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post y no publicarlo.
		
	Validación:
		- Existencia del post publicado en la lista de posts con marca de no publicado.
		
	3) Crear post, modificarlo y publicarlo.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post.
		- Volver a la lista de posts. 
		- Seleccionar el post publicado. 
		- Modificar el post. 
		- Publicar el post modificado.
		
	Validación:
		- Existencia del post publicado en la lista de posts con el nombre editado.
		
	4) Crear post, modificarlo, quitar la publicación, editarlo y no publicarlo.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post.
		- Volver a la lista de posts. 
		- Seleccionar el post publicado. 
		- Marcar el post para que se baje la publicación.
		- Modificar el post. 
		
	Validación:
		- Existencia del post publicado en la lista de posts no publicados con el nombre editado.
		
	5)  Crear post, eliminar post.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post.
		- Volver a la lista de posts. 
		- Seleccionar el post publicado. 
		- Eliminar el post. 
		
	Validación:
		- No existencia del post publicado en la lista de posts.
		
	6) Crear página y publicarla.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página.
		
	Validación:
		- Existencia de la página publicada en la lista de páginas.
		
	7) Crear página y no publicarla
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página y no publicarla.
		
	Validación:
		- Existencia de la página publicada en la lista de páginas con marca de no publicada.
		
	8) Crear página, modificarla y publicarla.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página.
		- Volver a la lista de páginas. 
		- Seleccionar la página publicada. 
		- Modificar la página. 
		- Publicar la página modificada.
		
	Validación:
		- Existencia de la página publicada en la lista de páginas con el nombre editado.
		
	9) Crear página, modificarla, quitar la publicación, editarla y no publicarla.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página.
		- Volver a la lista de páginas. 
		- Seleccionar el página publicada. 
		- Marcar la página para que se baje la publicación.
		- Modificar la página. 
		
	Validación:
		- Existencia de la página publicado en la lista de páginas no publicados con el nombre editado.
		
	10)  Crear página, eliminar página.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página.
		- Volver a la lista de páginas. 
		- Seleccionar la página publicada. 
		- Eliminar la página. 
		
	Validación:
		- No existencia de la página publicada en la lista de páginas. 
		
	11) Crear post y agendar su publicación
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post y agendarlo para publicar.
		
	Validación:
		- Existencia del post publicado en la lista de posts agendados para publicar.
		
	12) Crear post, modificarlo, revisarlo en la vista del sitio
	Pasos:
		- Autenticarse en la aplicación
		- Crear un post
		- Verificar que exista en la lista de post
		- Modificar el post creado
		- Ir a la vista del sitio

	Validación: 
		- Exista el post modificado en la vista del sitio
	
	13) Crear página, publicarla y filtrar por publicadas.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página.
		- Volver a la lista de páginas
		- Filtrar por páginas publicadas
		
	Validación:
		- Existencia de la página publicada en la lista filtrada de páginas.
		
	14) Crear página, no publicarla y filtrar por no publicadas.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear una página y no publicarla.
		- Volver a la lista de páginas
		- Filtrar por páginas no publicadas
		
	Validación:
		- Existencia de la página publicada en la lista filtrada de páginas.
		
	15) Crear post, publicarlo y filtrar por publicados.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post.
		- Volver a la lista de posts
		- Filtrar por posts publicados
		
	Validación:
		- Existencia del post publicado en la lista filtrada de posts.
		
	16) Crear post, no publicarlo y filtrar por no publicados.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un post y no publicarlo.
		- Volver a la lista de posts
		- Filtrar por posts no publicados
		
	Validación:
		- Existencia del post publicado en la lista filtrada de posts.
	
	17) Ver actividad del sitio
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Ingresar a la visualizacion de la actividad del sitio.
		
	Validación:
		- El sitio no debe tener ningun registro de actividad.
		
	18)  Crear, modificar, despublicar y agenda el post
	Pasos: 
		- Autenticarse en la aplicación
		- Crear un post y publicarlo
		- Modificar el post y verificar 
		- Despublicar el post y verificar
		- Modificarlo y agendarlo para su publicación

	Validación:
		- Verificar en la lista de post, que este publicado con el tag de Scheduled

	
	19) Crear miembro.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un miembro.
		
	Validación:
		- Existencia del miembro en la lista de miembros.
		
	20) Crear miembro y con correo invalido
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un miembro con correo invalido.
		
	Validación:
		- Alerta por error en el correo ingresado.
		
	21) Crear miembro, modificar por correo invalido y corregir correo.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un miembro.
		- Volver a la lista de miembros. 
		- Seleccionar el miembro creado. 
		- Modificar el miembro con correo invalido. 
		- Corregir el correo invalido del miembro.
		- Guardar cambios
		
	Validación:
		- Existencia del miembro en la lista de miembros.
		
	22)  Crear miembro, eliminar miembro.
	
	Pasos: 
		- Autenticarse en la aplicación.
		- Crear un miembro.
		- Volver a la lista de miembros. 
		- Seleccionar el miembro publicado. 
		- Eliminar el miembro. 
		
	Validación:
		- No existencia del miembro publicado en la lista de miembros.
	
