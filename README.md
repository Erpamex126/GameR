# Modelo Relacional para una Pagina de Juegos

## Integrantes/Autor
Matias Vanegas Cortes
Emmanuel Restrepo Perez
10°C

## usuario(user)
	id(PK) Primary Key / LLave Primaria (Alfanumerico)
    name: Nombre del usuario (Texto)
    email: Correo del usuario (Alfanumerico)
    password: Contraseña del usuario (Alfanumerico)
    trophies: Trofeos del usuario (Alfanumerico)
    
## juego(games)
    id (PK): Identificador único del juego (Alfanumerico)
    name: Nombre del juego (Texto)
    gener: Genero del juego (Alfanumerico)
    duration: Duracion del juego (Alfanumerico)
    price: Precio del juego (Alfanumerico)
    qualification: Calificacion del juego (Alfanumerico)
    comment_id (FK): Comentario del juego (Alfanumerico)

## genero(gener)
    id (PK): Identificador único del genero (Alfanumerico)
    name: Nombre del genero (Texto)
    Game_id (FK): Genero del juego (Alfanumerico)

## comentario(comment)
    id (PK): Identificador único del comentario (Alfanumerico)
    name: Nombre del comentario (Texto)
    qualification: Calificacion del comentario (Alfanumerico )
    user_id (FK): Usuario que comento (Alfanumerico)

## desarrollador(developer)
    id (PK): Identificador único del desarrollador (Alfanumerico)
    name: Nombre del desarrollador (Texto)
    catalog: Catalogo de juegos del desarrollador (Alfanumerico)
    qualificatio: Calificacion del desarrollador (Alfanumerico)
    Game_id (FK): Juego del desarrollador(Alfanumerico)

Relaciones 🎮Un juego puede tener un solo desarrollador, pero un desarrollador puede tener muchos juegos (Relación uno a muchos entre juego y desarrollador).

🎮Un usuario puede comentar en muchos jeugos, y un juego puede ser comentado por muchos usuarios  (Relación muchos a muchos entre juego y usuario, implementada mediante la entidad comentario).

