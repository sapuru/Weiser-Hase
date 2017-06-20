<%-- 
    Document   : guerreroDos
    Created on : Jun 20, 2017, 8:03:16 PM
    Author     : aymara
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weiser Hase</title>

        <script src="http://olado.github.io/doT/doT.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script src="../js/dedalus.js"></script>
        <script src="../js/dedalus-web.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative|Josefin+Slab" rel="stylesheet">
        <link rel="stylesheet" href="../css/story.css"> <!--estilo general del juego -->
        <script src="../js/Dados.js"></script><!--para llamar el script de los dados-->
        <link href="../css/Dados.css" rel="stylesheet" type="text/css"><!--llamamos a la carpeta css para los estilos de los dados-->

    </head>
    <body>
        <div id="story">

            <initscript>
            </initscript>

            <beforeEveryThing>
            </beforeEveryThing>

            <beforeEveryPageTurn>
            </beforeEveryPageTurn>

            <beforeEveryParagraphShown>
            </beforeEveryParagraphShown>

            <afterEveryThing>
            </afterEveryThing>

            <afterEveryPageTurn>
            </afterEveryPageTurn>

            <afterEveryParagraphShown>
            </afterEveryParagraphShown>

            <!-- Novel -->
            <title>Capítulo 1 - Rastros del Legado Perdido</title>

            <!-- Objects -->

            <obj id="mapa" inventoryName="Mapa">
                <action id="Examinar">
                    <span style="italic">insertar aquí ilustración con el mapa</span>
                </action>

                <action id="Guardar">
                    <when>!story.isInInventory('mapa')</when>
                    Guardo el mapa, me va a ser de utilidad.
                    {{ story.putInInventory('mapa'); }}
                </action>
            </obj>

            <obj id="cristalAlma" inventoryName="Cristal de Alma">
                <action id="Examinar">
                    <span style="italic">"Los cristales de alma se unen a la persona que los toca, conservando su esencia, para que si en caso de que esa persona perezca darle otra oportunidad, y as? cambiar su destino, pero el cristal solo es capaz de devolver la vida dos veces. Por lo que recuerda posible usuario de piedra de alma, aprende de tu errores y no los repitas, no podr?s repetir tus errores eternamente."</span>
                </action>

                <action id="Guardar">
                    <when>!story.isInInventory('cristalAlma')</when>
                    Mejor lo llevo, por las dudas!
                    {{ story.putInInventory('cristalAlma'); }}
                </action>
                <action id="Usar">
                <when>story.isInInventory('cristalAlma')</when>
                {{ story.removeFromInventory('cristalAlma'); }}
                <p><turn to="pag2">Utiliza la nueva oportunidad sabiamente</turn></p>
                </action>
            </obj>

            <obj id="llaveGemaRoja" inventoryName="Llave Gema Roja 'E'">
                <action id="Examinar">
                    <span style="italic">Es un cofre con una llave de forma rara dentro, el diseño de la llave consiste en la parte trasera adornada con una pequeña gema roja dentro de lo que parece ser remolino tallado, mientras que la parte delantera parece una especie de E"</span>
                </action>

                <action id="Guardar">
                    <when>!story.isInInventory('llaveGemaRoja')</when>
                    Guardo la llave, puede ser útil.
                    {{ story.putInInventory('llaveGemaRoja'); }}
                </action>
                <action id="Usar">
                <when>story.isInInventory('llaveGemaRoja')</when>
                {{ story.removeFromInventory('llaveGemaRoja'); }}
                </action>

            </obj>


            <obj id="llaveGemaAzul" inventoryName="Llave Gema Azul 'T'">
                <action id="Examinar">
                    <span style="italic">La llave tiene una gema de color azul y la parte delantera tiene forma de T.</span>
                </action>

                <action id="Guardar">
                    <when>!story.isInInventory('llaveGemaAzul')</when>
                    Guardo la llave, puede ser útil.
                    {{ story.putInInventory('llaveGemaAzul'); }}
                </action>
                <action id="Usar">
                <when>story.isInInventory('llaveGemaAzul')</when>
                {{ story.removeFromInventory('llaveGemaAzul'); }}
                </action>
            </obj>

            <obj id="mazoAntiguo" inventoryName="Mazo Antigüo">
                <action id="Examinar">
                    <span style="italic">Tiene una inscripción que dice "Tu determinación será capaz de doblegar su espíritu y avanzar"</span>
                </action>

                <action id="Guardar">
                    <when>!story.isInInventory('mazoAntiguo')</when>
                    Guardo el mazo, es un buen recordatorio.
                    {{ story.putInInventory('mazoAntiguo'); }}
                </action>

                <action id="Usar">
                <when>story.isInInventory('mazoAntiguo')</when>
                {{ story.removeFromInventory('mazoAntiguo'); }}
                {{ story.disable('mazoAntiguo'); }}
                </action>
            </obj>

            <objt id="solo_una_nota" inventoryName="Nota">
              <action id="Examinar">
                <span style="italic">“El contenido del cofre, no te servirá a ti.”<br>
                      ¿¡Pero que mie-demonios significa esto!? <br>
                      ¿¡Es alguna clase de broma de mal gusto!? </span>
              </action>
            </objt>

            <objt id="espada_curva" inventoryName="Espada Hoja Curva">
              <action id="Examinar">
                  <span style="italic">Es una espada con la hoja curva, la empuñadura de la espada cuenta con un cubre mano delgado, de color oxido.</span>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('espada_curva')</when>
                  GQuedo fascinado por su aspecto, esta espada es perfecta, al menos hasta que encuentre la espada.
                  {{ story.putInInventory('espada_curva'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('espada_curva')</when>
              {{ story.removeFromInventory('espada_curva'); }}
              {{ story.disable('espada_curva'); }}
              </action>
            </objt>

            <objt id="lanza_de_la_justicia" inventoryName="Lanza de la Justicia">
              <action id="Examinar">
                                        <p>La caja tiene algo escrito: <br>
                    <h3>“La lanza de la justicia brindara a su portador el poder para derrotar a las sombras y proteger la esperanza de todos, aun en la muerte tu espíritu guerrero te permitirá acabar con la maldad.”</h3>
                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('lanza_de_la_justicia')</when>
                  Es demasiado exagerado para mi gusto, pero la llevare en mano por si acaso.<br>
                  Un arma es un arma después de todo y si es tan poderosa como dice en la inscripción me servirá.<br>
                  {{ story.putInInventory('lanza_de_la_justicia'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('lanza_de_la_justicia')</when>
              {{ story.removeFromInventory('lanza_de_la_justicia'); }}
              {{ story.disable('lanza_de_la_justicia'); }}
              </action>
            </objt>

            <objt id="capa" inventoryName="Capa">
              <action id="Examinar">
                <p>Está algo desgastada<br>

                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('capa')</when>
                  <p>Mejor la llevo.</p>
                  {{ story.putInInventory('capa'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('capa')</when>
              {{ story.removeFromInventory('capa'); }}
              {{ story.disable('capa'); }}
              </action>
            </objt>

            <objt id="Paradoxia" inventoryName="Paradoxia">
              <action id="Examinar">
                <p>No tiene imperfecciones pero a la vez esta exento de algún tipo de perfección.<br>
                Es totalmente perfecto sin ninguna falla en su lisa superficie, pero es imperfecto porque carece de significado, nombre o historia por su falta de detalles, grabados o dibujos no es perfecta ya que no tiene significado.<br>
                Sin significado, aun siendo un objeto tan poderoso es totalmente inútil para su portador.<br>
                ¿Tiene algún sentido? Su perfección es la causa de su imperfección.<br>
                Pese a no conocer el nombre del escudo, todos esos pensamientos y declaraciones sin sentido recorren mi mente y me arrastran hacia las profundidades de una contradicción interminable.<br>
                -	¿Que acaba de pasar? – por un momento me perdí pensando en contradicciones y cosas sin algún sentido.<br>
                -	Oh, parece que fuiste cautivado por Paradoxia – exclamada mi acompañante, mientras señala el escudo.<br>
                -	¿Paradoxia? – Jamás escuche de un escudo que sea llamado Paradoxia.<br>
                -	Un escudo que anula causa y efecto, mediante una contradicción lógica<br>
                -	¿una contradicción dices? – en pocas palabras anulara el significado de lo que sea mediante una contradicción a su existencia.<br>
                -	Es un articulo realmente poderoso joven Draicon, deberías conservarlo.
                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('Paradoxia')</when>
                  <p>          No soy un gran fanático de los escudo pero si es tan poderoso lo conservare. Oh otra contradicción.
                              -	Je je – una pequeña risa se me escapa.
                              -	Mm. ¿Sucede algo Draicon?
                              -	Em. No realmente, simplemente algo me pareció gracioso..</p>
                  {{ story.putInInventory('Paradoxia'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('Paradoxia')</when>

              </action>
            </objt>


            <objt id="colgante" inventoryName="Colgante">
              <action id="Examinar">
                <p> Un colgante de estas características puede ser muy útil, dice Nedmass, simplemente me alivia que tú lo poseas.<br> <br>

                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('colgante')</when>
                  <p>Debo mantener el ojo encima de Nedmass y ocultar bien el pendiente, ya sé que podría suceder si Nedmass trama algo. No caeré en un cliché tan viejo.</p>
                  {{ story.putInInventory('colgante'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('colgante')</when>
              {{ story.removeFromInventory('colgante'); }}
              {{ story.disable('colgante'); }}
              </action>
            </objt>


            <objt id="Espada_Avalon" inventoryName="Espada de Avalon">
              <action id="Examinar">
                <p> Al tomar la espada, todo se desvanece..<br> <br>

                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('Espada_Avalon')</when>
                  <p></p>
                  {{ story.putInInventory('Espada_Avalon'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('Espada_Avalon')</when>
              {{ story.removeFromInventory('Espada_Avalon'); }}
              {{ story.disable('Espada_Avalon'); }}
              </action>
            </objt>


            <objt id="Abrigo_Nedmass" inventoryName="Abrigo Nedmass">
              <action id="Examinar">
                <p>Ya no necesitaré mi vieja capa de noche<br> <br>

                  </p>
              </action>

              <action id="Guardar">
                  <when>!story.isInInventory('Abrigo_Nedmass')</when>
                  <p></p>
                  {{ story.putInInventory('Abrigo_Nedmass'); }}
              </action>

              <action id="Usar">
              <when>story.isInInventory('Abrigo_Nedmass')</when>
              {{ story.removeFromInventory('capa'); }}
              </action>
            </objt>



            <!-- Pages -->
            <page id="intro">

                <p>Despierto con el armonioso canto de los pájaros y el saludo del sol en mis ojos.<br>
                    - Ese sueño - se me escapan esas palabras mientras lentamente me siento sobre mi cama y refriego con mi mano el ojo aun somnoliento<br>
                    - ¿Cuál será su significado?  <br>
                    Luego de reflexionar un poco pensando el significado del sueño, me levanto de mi cama, luego de estirar un poco simplemente digo:<br>
                    - Es demasiado temprano para pensar en cosas tan complicadas mejor lo pienso mas tarde.<br>
                    Luego de cambiarme y colocarme mi saco de color blanco, me dirijo hacia la puerta. No puedo evitar sentir que estoy olvidando algo, pero decido ignorar ese sentimiento y salgo de mi habitación para empezar un día tranquilo, aunque lamentablemente soy recibido con un grito que casi me deja sordo.<br>
                </p>
            </page>

            <page id="dummyPage" class="first">
                <p><show paragraph="parrafo2">continuar</show>.</p>

                <paragraph id="parrafo2">
                    <p> -¡Draicon! ¡¿Tienes idea de lo tarde que es?! ? y lamentablemente sé a quien pertenece esa voz nada amigable.<br>
                        - B-Buenos días Flora! - trato de responder con tranquilidad frente a la bestia que me embosco en la puerta de mi habitación - ¿Cómo amaneciste?<br>
                        - Realmente lo olvidaste ¿cierto? - me pregunta mi malhumorada hermana, mientras trata de recuperar la compostura.<br>
                        Eh, olvidar qué... ¿Qué pude haber olvidado?<br>
                        Hoy no había practica de esgrima ni clases de ningún tipo, no recuerdo quedar en verme con el mago Wave, aunque no creo que eso provoque que me grite así por la mañana poniendo en riesgo su imagen, una muchacha tranquila incapaz de perder la calma ante ninguna situación, esto debe de ser más serio. Debo pensar y rápido.<br>
                        - Sabía que lo olvidarías! - no puedo evitar sentir decepción en su voz.<br>
                        - No creo que sea algo demasiado importante o tan serio para que grites tanto. </p>

                    <p><turn to="pag2">Página Siguiente</turn></p>
                </paragraph>
            </page>

            <page id="pag2">

                <p>Flora es mi hermana mayor la gran heredera del trono y siempre viste de morado, por alguna razón, es buena en esgrima y en lo que a la educación se refiere, siempre actúa frente a los demás cambiando su forma de ser, pero es realmente aterradora cuando se enoja.<br>
                    Su personalidad no es el problema, sino su incre?ble sentido de la responsabilidad cumple y obliga a los demás a cumplir, o en este caso en particular me lo echa a la cara de un grito.<br>
                    -Hoy es el aniversario de su muerte.<br>
                    -Oh realmente lo olvidé! no puedo creer que olvide algo tan importante.<br>
                    -Lo siento debí prestar más atención a la fecha.<br>
                    Hoy se cumplen 15 años desde la muerte de mi madre. Murió en la guerra en contra de Nicro, el dragón de la muerte y las enfermedades, no se sabe con exactitud por qué Nicro se rebeló en contra de los demás dragones y trato de acabar con toda la vida en el continente. Hay quienes dicen que trató de eliminar todo rastro de vida en el continente y adueñarse de los secretos rúnicos de los antiguos pueblos que habitaban Los Prados, pero ¿Para qué?<br>
                    En cualquier caso hoy se recuerda el día en que la guerra termino después de tres años de muerte y desdicha, todos en el reino y en los pueblos vecinos honran a los que murieron a causa de esa guerra. Eso explicaría el grito de Flora, ella conoció a mi madre por más tiempo que yo.<br>
                </p>
                <p><show paragraph="parrafo4">continuar</show>.</p>

                <paragraph id="parrafo4">
                    <p> -¿Ahora entiendes porque nuestro padre te pidió que fueras a verlo a la biblioteca en la mañana?<br>
                        -La verdad no entiendo el por qué. No voy a mentirle, si lo descubre se alterará aún mas.<br>
                        -Eres un imbécil, pero por lo menos eres sincero al respecto - Al final se enojo, pero supongo que no tanto.<br>
                        -Tu palabras me hieren Flora, no sabía que podías ser tan cruel conmigo - hago un comentario en tono de broma, para relajar el ambiente y ver si su humor mejora pero -<br>
                        -Debemos seguir con la búsqueda de la espada del guerrero que combatió junto a los dragones en la guerra contra Nicro - me ignoró totalmente y continuó con lo que tenía que decirme.<br>
                        Es cierto hace unos meses mi padre organizó una reunión en la que explicaba que debíamos recuperar la armadura, el escudo y la espada del guerrero Dragón, sinceramente no entiendo que tienen de especial, pero supongo que algo será.<br>
                        Hasta ahora recuperamos el escudo y gran parte de la armadura pero aun nos faltan los guantes de la armadura y la espada.  </p>
                    <p><turn to="pag3">Página Siguiente</turn></p>
                </paragraph>


            </page>


            <page id="pag3">

                <p>  Hay rumores de que la espada es tan fría que necesitas los guantes de su antiguo portador para poder usarla, yo no creo en esas historias pero por alguna razón la gran mayoría de las personas del reino s?.<br>
                    - Bueno mejor voy a la biblioteca a ver a nuestro padre.<br>
                    -Si, mejor date prisa y no lo hagas esperar.<br>
                    Con eso dicho parto hacia la biblioteca a ver a mi padre, mi padre es Hercio Drac el rey de toda Altaria, nuestro castillo esta a los pies del monte Reinheit y se extiende mas allá del bosque Altum hacia el pueblo Feuer, después se encuentra lo que la gente llama Los Prados una llanura casi infinita a la vista con cientos de lugares aun por descubrir, según los libros de literatura antigua los pueblo rúnicos como los Militum un pueblo de guerreros que utilizaban las runas ancestrales como armas para su expansión, y los Meisters increíbles arquitectos que maravillaron a los primeros exploradores que llegaron al continente hace ya mucho tiempo, habitaban gran parte de Los Prados.<br>
                    Ahora mismo no se sabe que fue de aquellos pueblos ancestrales, solo quedan restos de su antiguo estilo de vida, aun se conservan algunas tradiciones del antiguo pueblo de los Zuerts lo que originalmente habitaban este sector antes de el reino de Altaria y de los que según mi padre descendemos. El mago Wave dice que por mis venas corre la sangre de Velix el capitán del navío de colonización de la corona imperial. <br>
                </p>
                <p><show paragraph="parrafo6">continuar</show>.</p>

                <paragraph id="parrafo6">
                    <p> Al llegar a la puerta de la biblioteca puedo oír a mi padre al otro lado conversando con Wave, aparentemente están hablando de la búsqueda de la espada.<br>
                        -Sabes que es lo correcto y aun así dudas - le dice Wave a mi padre con un tono de desaprobación.<br>
                        -Como no esperas que no dude, cuando estoy a punto de enviar a mi hijo en una búsqueda suicida - reprocha mi padre ante la declaración de Wave.<br>
                        -Es su destino y tú lo sabes Hercio, no puedes seguir esquivando la verdad - agrega Wave con un tono más firme.<br>
                        -Lo sé y eso es lo que me preocupa, es el legado que ella dejó, pero es una gran carga para alguien que apenas cumplió veinte años la semana pasada - dice mi padre con un tono de tristeza. <br>
                        -Mira Hercio sé que lo que te preocupa es la Torre, pero el debe hacerlo, esa espada le perteneció desde su nacimiento, ahora debe reclamarla.<br>
                        Al darme cuenta que el ambiente tenso que emana de la biblioteca se fue procedo a la misma.<br>
                        -Buenos días padre, Wave - saludo a mi padre y al mago real con naturalidad, tratando de ocultar el hecho que escuche la conversación anterior.<br>
                        Ah Draicon al fin llegas, ven siéntate.
                    </p>

                    <p><turn to="pag4">Página Siguiente</turn></p>
                </paragraph>


            </page>

            <page id="pag4">

                <p>Mi padre me invita a la mesa central de la biblioteca, una mesa de madera con un enorme mapa en el centro con todos los lugares de interés. Mientras me siento el mago Wave empieza con la explicación del porque me citaron en la biblioteca.<br>
                    -Hoy te citamos en la biblioteca, por la naturaleza de la misión que te encomendaremos.<br>
                    - Como sabes hijo, aun nos faltan algunos fragmentos del equipo del guerrero dragón - agrega mi padre.<br>
                    -Si, los guanteletes y la espada - prosigue Wave - tú debes recuperar sus guantes y espada, que se encuentran en la torre Amnant.<br>
                    -No sabemos con exactitud que puedas encontrar dentro de la torre - agrega Wave - no te mentiré Draicon, es una misión peligrosa pero solo tú puedes llevarla a cabo.<br>
                    -Entenderé sino puedes hacerlo Draicon - dice mi padre con un tono de preocupación - si lo deseas puedo envi...<br>
                    -No, lo haré padre - detengo a mi padre antes de que prosiga - esto no será distinto a cuando ayude a buscar los demás fragmentos de la armadura.<br>
                    -De hecho, si lo será - agrega Wave.<br>
                    -¿A qué te refieres Wave? - no me gusta hacia dónde va esto.<br>
                    -Debes ir solo Draicon.<br>
                </p>
                <p><show paragraph="parrafo8">continuar</show>.</p>

                <paragraph id="parrafo8">
                    <p>¿Solo? No tengo la suficiente experiencia en batalla como para enfrentar lo que sea que este dentro de esa torre, pero ya dije que si. Por no mencionar lo que mi padre y Wave estaban discutiendo, debo hacerlo y lograr recuperar esa espada.<br>
                        -No importa si debo ir solo, lo hare.<br>
                        -Que no se hable mas entonces - concluye Wave - partirás hacia la torre ahora mismo.<br>
                        -Supongo que no hay nada más que decir al respecto - agrega mi padre - hay un caballo, ya listo, en el establo.<br>
                        -Aquí tienes un <interact with="mapa">mapa</interact>, te deseo suerte Draicon - concluye mi padre, aun preocupado.<br>
                    Supongo que solo queda ponerme en marcha hacia la torre.<br>
                    Pero primero busco el equipo necesario para el viaje, creo que para hacer una fogata necesito semillas de Flor ígnea, una pequeña cantimplora, además de un poco de cuerda y una manta lo suficientemente grande para improvisar un pequeño refugio y creo que llevare una espada de la armería, solo por si acaso.<br>

                    </p>


                    <p><turn to="pag5">Página Siguiente</turn></p>
                </paragraph>
            </page>


            <page id="pag5">

                <p>Según los reportes de los exploradores la torre esta a un día y medio del castillo y es posible armar un pequeño campamento en el templo Percusor, una edificación de forma rectangular con una puerta que no da a ningún cuarto, solo al horizonte.<br>
                    El viaje hacia a la torre no fue nada especial, al llegar a un pequeño poblado de camino hacia la torre comí un poco y rellene la cantimplora y continué mi viaje.<br>
                    Al acercarse la noche puedo alcanzar a ver el templo Precursor, al llegar al templo, dejo al caballo atado en donde pienso armar mi campamento, busco unas ramas y las ato de forma que al ponerles la manta encima cree un refugio para poder pasar la noche, para crear una fogata utilizo las semillas de flor ígnea,
                    dado que si pones varias sobre la madera esta se prendera fuego, con el campamento listo, ahora que solo queda descansar.<br>
                <p><show paragraph="parrafo10">continuar</show>.</p>

                <paragraph id="parrafo10">
                    <p>Pero, no puedo evitar pensar lo que me espera en esa torre, qué tipo de peligros habitaran el interior de la torre, la incesante cantidad de trampas y acertijos que me esperan.
                        Perdido en mis pensamientos sobre la torre caigo dormido.</p>


                    <p><turn to="pag6">Página Siguiente</turn></p>
                </paragraph>
            </page>

            <page id="pag6">

                <p>Esta sensación, ¿Dónde estoy?, todo esta vacio y hace frio, no puedo ver nada a mi alrededor y creo que estoy cayendo.<br>
                    -Un segundo, ¿No estaré muerto verdad? - se me escapan esas palabras debido a la exaltación.<br>
                    Pero la obscuridad a mi alrededor se convierten en imágenes, tres dragones de color blanco y uno más grande detrás, Nova la madre celestial, los elementos hielo, aire y luz combatiendo entre sí, uno se alza victorioso y reclama el poder de Nova.<br>
                    Es un ciclo de odio sin fin.
                </p>
                <p><show paragraph="parrafo12">continuar</show>.</p>

                <paragraph id="parrafo12">
                    <p>No recuerdo el resto del sueño, pero no puedo olvidar ese sentimiento de odio y resentimiento, entre aquellos que combaten por el poder de Nova.<br>
                        Despierto en la mañana, los pájaros cantan con la misma alegría de siempre, y la torre es visible en el horizonte, voy a dejar el campamento armado para cuando regrese con la espada. Con eso dicho subo al caballo y retomo el viaje.<br>
                        Finalmente llego a la torre, en la puerta de piedra negra están grabadas las siguientes palabras.<br>
                    <p><show paragraph="parrafo13">leer la inscripción</show>.</p>

                </paragraph>

                <paragraph id="parrafo13">
                    <h3>"He aquí el Amnant, el templo del cielo y la tierra, aquellos que están en busca de tesoros de poder inimaginable y no teman a las sombras, entren y encuentren el poder que tanto anhelan."</h3>
                    <img src="../imagenes/Entrada.jpg" style="width:800px;">
                    <p>- muy exagerado en mi opinión.</p>
                    <p><turn to="pag7">Página Siguiente</turn></p>
                </paragraph>


            </page>

            <page id="pag7">
                <p>Al leer en voz alta las letras de la gran puerta de piedra negra brillan y la puerta se abre lentamente con un sonido de movimiento pesado, al abrirse la puerta puedo sentir el aire frio del apenas iluminado pasillo frente a mí, un limitado número de antorchas, tomo una antorcha encendida y procedo a investigar la torre, luego de avanzar por el pasillo llego a un salón circular mejor iluminado hay tres puertas, la central es la más grande de las tres y un es un tanto peculiar la demás puertas en la sala son de madera, pero esta puerta es de metal, es como si estuviera reforzada para mantener algo adentro, además de que tiene una palabra extraña cuyo significado no entiendo. Sin mencionar que en la palabra faltan algunas letras.
                </p>


                <p><show paragraph="parrafo14">continuar explorando</show>.</p>
                <paragraph id="parrafo14">
                    <p>No me da mucha confianza, junto a la puerta hay un cristal de color verde marino, creo que leí un poco acerca de ese cristal, es un <interact with="cristalAlma">cristal de alma</interact>
                    </p>
                    <p><turn to="pag8">Página Siguiente</turn></p>
                </paragraph>
            </page>

            <page id="pag8">
                <p> Antes de aventurarme por la puerta central investigo un poco... </p>

                <p><show paragraph="puertaDerecha">Explorar puerta de la derecha</show>.</p>

                <paragraph id="puertaDerecha">
                    <p>Al abrir la puerta de madera un extraño olor comienza a emanar.<br>
                        Cuando ingreso al cuarto no puedo distinguir nada debido a la obscuridad, cuando observo un poco puedo ver una antorcha al lado derecho de la puerta por la que ingresé a la habitación,
                        al prender la antorcha apagada que esta junto a la puerta puedo ver con más claridad en la obscura habitación y por fin descubro la fuente de ese extraño olor.</p>

                    <p>Es una extra?a masa de baba de color azul, un Limo, pese a la súbita iluminación del cuarto el Limo aun no se percata de mi presencia, y al observarlo bien puedo ver que tiene algo en su interior.
                        Pese a mi poca experiencia en batalla podría vencer al Limo para conseguir lo que sea que tenga en su interior, tal vez me sea de utilidad.<br>
                        El limo parece percatarse de mi presencia y empieza a retorcerse, a contraerse, como si me estuviera advirtiendo que no me acercara. Avanzo hacia el limo con mi espada en mano y *Scuash* al golpearlo el limo se retuerce, *Scuash* golpeo nuevamente, enseguida noto que mi espada se ve rara.<br>
                        Según parece el Limo derrite mi espada cada vez que esta lo golpea, pero el Limo se debilita perdiendo tamaño y consistencia, por lo que golpeo una vez más *Scuash*. <br>
                        El Limo se deshace, o mejor dicho se derrite, dejando tras de sí el <interact with="llaveGemaRoja">contenido de su estomago</interact>.
                    </p>
                    <p><turn to="pag8">Salir de la habitacion</turn></p>

                </paragraph>
                <p><show paragraph="puertaIzquierda">Explorar puerta de la izquierda</show>.</p>
                <paragraph id="puertaIzquierda">
                    <p>al ingresar al cuarto y luego de encender la antorcha, compruebo que no haya alguna criatura dentro del cuarto.<br>
                        El cuarto de por si no tiene nada en especial salvo por una pequeña tablilla con un acertijo en ella, luego de resolver el acertijo oigo un sonido como de engranaje detrás de la tablilla.
                    <p> La tablilla se abre a medida que los engranajes giran, cuando la tablilla se detiene dentro <interact with="llaveGemaAzul">encuentro una llave</interact> y un <interact with="mazoAntiguo">mazo antiguo</interact> que parecía estar hecho de un material distinto al metal</p>
                    </p>
                    <p><turn to="pag8">Salir de la habitacion</turn></p>
                </paragraph>

                <p><show paragraph="puertaCentral">Explorar puerta central</show>.</p>
                <paragraph id="puertaCentral">
                    <p>Coloco las llaves en el orificio que corresponden primero <interact with="llaveGemaAzul">coloco la llave con la gema azul</interact> y luego <interact with="llaveGemaRoja">la de gema roja</interact>, pero sigo sin entender la palabra "Retav".
                    <p> ¿Qué significa eso?<br>
                        Luego de pensar un poco, opte por acomodarlo al azar, sin conseguir nada.<br>
                        Seguí investigando para ver si conseguia algo, encontre una palabra en Latin escrita en la tablilla que abrí en la habitación izquierda, al pensar un poco y confirmar que ambas poseían las mismas letras intente acomodar las letras en la puerta de metal para formar la misma palabra y al girar las llaves la puerta finalmente cedió.</p>
                    </p>
                    
                    <%
    Random aleatorio = new Random();
    String[] palabra = {"mitologia", "coca cola", "casa"};
    String palabraActual = null;
    ArrayList entrada = new ArrayList();
    ArrayList salida = new ArrayList();
    for (int i = 0; i < palabra.length; i++) {
        Random ran = new Random();
        int a = ran.nextInt(3);
        palabraActual = palabra[0];

    }
    String palabraFinal = "";
    int cont = 0;
    int num = 0;
    while (true) {
        try {
            entrada.add(palabraActual.charAt(num));
            num++;

        } catch (Exception e) {
            //out.print("error2");
            break;
        }
    }
    int tamano = entrada.size();
    while (salida.size() != tamano) {
        int numal = aleatorio.nextInt(entrada.size());
        salida.add(entrada.remove(numal));
    }
    for (Object l : salida) {
        palabraFinal += l;

    }
    do {
        String ana;
        ana = request.getParameter("palabraFinal");
        //palabraFinal = request.getParameter("palabraFinal");
        //ana = palabraFinal;
        //palabraFinal = request.getParameter("palabraFinal");
        // out.print(palabraFinal);
        //ana = JOptionPane.showInputDialog(palabraFinal);
        if (palabraActual.equals(ana)) {

            out.print("ok");

            //JOptionPane.showMessageDialog(null, "Perfecto");
            cont = 3;
        } else {

            //out.print("mall");
            //JOptionPane.showMessageDialog(null, "Mal, Intente pensar mas, usted puede");
            cont++;
        }
    } while (cont != 3);
%>

            <form method="Post" action="guerreroDos.jsp" autocomplete="off">
                <label>Ordene el anagrama</label><br><br><!--TITULO-->
                <label><%=palabraFinal%></label><!--NOS MUESTRA LA PALABRA DESORDENADA pero no puedo ponerla jejejje-->

                <p><input name ="palabraFinal" type="text" id="palabraFinal"></p><!--PALABRA INGRESADA CORRECTAMENTE-->
                
                
                
                <input type="submit" value="Ingresar palabra">
               
                <!--<script> alert('bien');</script>-->
                <br><!--BOTON VALIDAR-->
            </form>


                    <p><turn to="pag9">Página Siguiente</turn></p>
                </paragraph>

            </page>


            <page id="pag9">

                <p> Era una sala un poco más grande que la sala anterior, por suerte estaba iluminada pero no por antorchas, sino por unos objetos raros adheridos a la pared que brillaban con una luz blanca brillante era como la luz de la luna llena.</p><br>
                <paragraph id="parrafo15">
                    <p>
                        En el centro de la habitación había una sección elevada con una escalera de piedra en esa sección elevada hay algo parecido a una mesa con flores blancas a su alrededor que relucían con la luz blanca de los extraños objetos en la pared.<br>
                        Al acercarme puedo sentir un crujido bajo mis pies, no puedo distinguir que lo provoca, dado que la antorcha que poseía anteriormente se apago ahora solo me queda guiarme por la tenue luz blanca de la habitación.<br>
                        Ya a los pies de la escalera, siento un escalofrió y al ver hacia atrás no logro ver nada raro por lo que prosigo a  subir hacia la sección, en la mitad de la escalera oigo un ruido detrás de mí, al darme la vuelta pude ver que causaba ese extraño sonido.<br>
                        Como no lo pensé que mas podría causar ese sonido, esqueletos, todos los que aparentemente estaban en el suelo se están poniendo de pie y vienen hacia mí.<br>
                        Sus cuencas oculares brillan con un extraño color carmesí<br>
                        Ahora todo tiene sentido, eso que está en la sección elevada no es una mesa, es un ataúd. Que se supone que haga ahora, mi espada no será suficiente para vencerlos, después de la pelea con el limo quedo en mal estado.<br>
                        Mejor sigo adelante con suerte podre pensar en algo, no son muy rápidos, al llegar al ataúd puedo leer una inscripción.<br>

                    </p>
                </paragraph>
                <p><show paragraph="parrafo16">continuar</show>.</p>
                <paragraph id="parrafo16">
                    <h3>“Aquí yace el Maestre David Corazón de cristal, el cual en su bondad fue el  responsable de la construcción de nuestro puente al cielo, nosotros protegeremos tu Corazón aun después de la misma muerte”</h3>
                    <p> -	¿Corazón? ¡Eso es!</p>
                    <p>Utilice mi demacrada espada para poder romper la cerradura del ataúd.</p>
                    <p>*¡Crash!* </p>
                    <p> La espada se hace pedazos junto con la cerradura, al sacar la tapa del ataúd encuentro el esqueleto de David y en el pecho una extraña gema de color carmesí brillaba con intensidad, <interact with="mazoAntiguo">Usar el mazo para golpear el corazón de David.</interact> <br>
                        
                    
                    </p>
                    
                                             <span id="die1" class="dice">0</span>
                                                                            <span id="die2" class="dice">0</span>
                                                                            <span id="die3" class="dice">0</span>
                                                                            <span id="die4" class="dice">0</span>
                                                                            <button id="boton">Tirar Dados</button><!--CONDICIONAMOS UN BOTON-->
                                                                            <h1 id="status" style="clear:left;"></h1>
                                                                            <h1 id="status2" style="clear:left;"></h1>
                                                                            <h2 id="status3" style="clear:left;"></h2>
                    
                    <p>*Clanck**Clanck**Clanck* <br>
                                                                            
                        Los golpes resonaban en toda la habitación pero la gema no se rompía, podía sentir el paso de los esqueletos por la escalera me pareció que su ritmo aumento dado que eran mas rápidos que hace un momento.<br>
                        *Clanck**Clanck**Clanck*<br>
                        Mi respiración se agitaba a medida que cada golpe parecía no ser efectivo.<br>
                        -   Vamos, vamos, vamos!!!<br>
                        *Clanck**Clanck**Clanck*<br>
                        Mi corazón se acelera a oír entre golpes la marcha mortal de los esqueletos.<br>
                        -   Rómpete de una vez pedazo de porquería brillante.<br>
                        *Clanck**Clanck**Clanck*<br>
                        Cada vez con más desesperación golpeo la gema, el carmesí de las cuencas de los esqueletos inunda la habitación.<br>
                        -  ah….ah…..ah….ROMPETE!!!!<br>

                    </p>
                    <p><turn to="pag10">Página Siguiente</turn></p>
            </page>
            <page id="pag10">

                <p>*¡CRASHHHH!*</p>

                <p>
                    El cristal se rompe en pedazos junto con el martillo antiguo, el carmesí se desvanece de la habitación y al unisonó todos los esqueletos caen al suelo.<br>
                    Al contemplar eso, solo puedo caer arrodillado para recuperar el aliento suelto la empuñadura del martillo y me apoyo de espaldas al ataúd de David.<br>
                    -	Ese cristal……<br>
                    Sin duda ese cristal tenia propiedades obscuras, solo los nigromantes son capaces de controlar a los muertos de esa forma.<br>
                    Creo que David era algo más que solo un arquitecto.<br>

                </p>
                <p><show paragraph="parrafo17">continuar</show>.</p>

                <paragraph id="parrafo17">
                    -	Eso explicaría como terminaste esta maldita torre<br>
                    -	Ha ha….<br>
                    El aliento apenas me alcanza para reír un poco<br>
                    -	Q-Que bien que tome ese mazo <br>
                    Me felicito a mi mismo antes de continuar con la búsqueda de la espada, creo que de no haber tomado el mazo, ahora mismo estaría muerto.<br>
                    Subo por unas escaleras y llego a una puerta metálica, por suerte al empujarla esta se mueve sin activar ninguna trampa y sin necesidad de ningún acertijo.<br>
                    <p><turn to="pag11">Página Siguiente</turn></p>
                </paragraph>

            </page>
            <page id="pag11">
                <p>

                    Al atravesar la puerta llego a una sala de igual tamaño que la anterior pero esta tiene, por suerte, unas ventanas amplias que iluminan toda la sala.<br>
                    Puedo distinguir pinturas en las paredes muestran a David comandando a los que parecen ser trabajadores, mientras sostiene la Gema de brillo carmesí.<br>
                    -	Asique realmente utilizaste a los muertos para terminar esta torre, David usted es diabólico.<br>
                    Luego de decir eso proseguí a investigar la sala del segundo piso.<br>

                </p>
                <p>
                    Ahora hay cinco puertas una central metálica al igual que la anterior, dos de madera que probablemente vayan hacia una habitación con algo útil, además de dos puertas de algo que parece ser Ébano.
                </p>
                <p><show paragraph="puertaIzquierdaMadera">Explorar puerta de madera de la izquierda</show>.</p>
                <paragraph id="puertaIzquierdaMadera">
                    <p>Al igual que la sala principal del segundo piso tiene buena iluminación pese a ser un cuarto pequeño,
                        aquí hay un <interact with="solo_una_nota">cofre vacío abierto</interact> </p>
                    <p><turn to="pag11">Salir de la habitacion</turn></p>
                </paragraph>
                <p><show paragraph="puertaDerechaMadera">Explorar puerta de madera de la derecha</show>.</p>
                <paragraph id="puertaDerechaMadera">
                    <p>Cuando entro a la habitación encuentro un armario, dentro encuentro una <interact with="espada_curva">espada</interact>.</p>

                    <p><turn to="pag11">Salir de la habitacion</turn></p>

                </paragraph>
                <p><show paragraph="puertaDerechaEbano">Explorar puerta de ebano de la derecha</show>.</p>
                <paragraph id="puertaDerechaEbano">
                    <p>
                        Algunas  secciones de la puerta parecen haber sido derretidas con alguna sustancia, la sala detrás de la puerta es exactamente igual.<br>
                        Al ingresar a la habitación de la derecha veo que hay algunas botellas pequeñas y varios objetos de procedencia natural como yerbas, hongos, y algunos de procedencia natural.<br>
                        Creo que lo que sea que elaboraron con esos ingredientes derritió la puerta de ébano, ¡Sorprendente, es un nivel de alquimia muy alto!.

                    </p>
                    <p><turn to="pag11">Salir de la habitacion</turn></p>


                </paragraph>
                <p><show paragraph="puertaIzquierdaEbano">Explorar puerta de ebano de la izquierda</show>.</p>
                <paragraph id="puertaIzquierdaEbano">
                    <p>
                        Oigo un siseo, esto no me gusta abro un poco la puerta y eventualmente el origen del sonido está ahí. Una maldita serpiente, por qué tenía que ser una serpiente !!??.<br>
                        La serpiente detecta mi presencia dado que sus ojos amarillos se centran en mí. Es bastante grande, de un color negro, la esencia a muerte la rodea.<br>
                        La serpiente trata de atacarme, pero de alguna forma logro evitar ese ataque y la serpiente sale de la habitación.<br>
                        Tomo coraje y reviso la sala en busca de la serpiente, pero no la encuentro, creo que fue un golpe de suerte. <br>
                        Nuevamente reviso la habitación en la que se encontraba la serpiente y encuentro un cofre largo, dentro hay una especie de <interact with="lanza_de_la_justicia">lanza extraña de color azul</interact>.<br>
                    </p>
                    <p><turn to="pag11">Salir de la habitacion</turn></p>

                </paragraph>
                <p><show paragraph="puertaCentral">Explorar puerta central</show>.</p>
                <paragraph id="puertaCentral">
                    <!--Acertijo-->
                    <p>
                        Dentro hay una sala que a diferencia de las anteriores la única luz que entra es la de un toma luz en el techo de la sala que ilumina una armadura de color negro que esta sentando sobre un trono hay varias armas rotas: lanzas, espadas, hachas, mazas, restos de escudos, sin mencionar los restos de los propietarios de las armas.
                    </p>
                    <p>
                        Al ingresar al cuarto la puerta detrás de mí se cierra con un estruendo.
                    </p>
                    <p><turn to="pag12">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag12">
                <p>El aire dentro de la habitación se mueve con fuerza </p>
                <p>
                    -	¡GOAHHHHHHHHHHHHHHHHHHHH!<br>
                    La extraña armadura antes inmóvil dio un salto en mi dirección.<br>
                    -	¿¡….!?  <br>
                    Logro esquivar a la armadura que apuntaba a mi cuello, de no haber rodado habría tenido mi garganta desgarrada.<br>
                    -	¡AHHHHHHHHHHHHH!<br>
                    La armadura se abalanza nuevamente hacia mí pero esta vez luego de esquivarlo esta me lanza hacia el otro extremo de la habitación de una patada.<br>
                    -	¡Guah…!<br>
                    -	¡GOAHHHHHHHHH!<br>
                    ¡No sé como contraatacar debido a su velocidad! La espada seria una opción pero por su velocidad no podre abanicar con la suficiente fuerza para hacerle daño, la lanza serviría para mantener la serviría para mantener la distancia, pero con la velocidad irreal de esa armadura la distancia importa poco.<br>
                    La armadura ataca nuevamente, acorta nuestra distancia en segundo, ahora su objetivo es mi cabeza.<br>
                    -	¡GOAHHHHHHHHHHHH!<br>
                    -	¡……!<br>
                    Ruedo para evitar el golpe que acaba de perforar la pared, si comparo el golpe que la armadura acaba de darle a la pared, si me hubiera dado habría sido como golpear un melón con un mazo de guerra.<br>
                    Creo que utilizare la lanza servirá, hora del contraataque, tomo la lanza con ambas manos y me preparo para el ataque de la armadura.<br>
                    -	¡NO DEJARE QUE PASES! – proclama la armadura<br>
                    La armadura se lanza hacia mí nuevamente pero no huiré mas atravesare el pecho de la armadura, un solo golpe y todo se decidirá……<br>
                    <img src="imagenes/Malvado.jpg">
                </p>
                <p><show paragraph="parrafo18">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo18">
                    <p>
                        -	¡GOAHHHHHHHHHH!<br>
                        *SAZ* <br>
                        La lanza atraviesa el pecho de la armadura que se detiene.<br>
                        -	Ha….ah.ah – trato de recuperar el aliento<br>
                        Pero… esto aun no termina la armadura aun intenta con el ultimo estivo de energía que le queda en alcanzarme,<br>
                        -	¡GOAAAAHHHHHH!<br>
                        Todo lo que puedo hacer ahora es sostener la lanza hasta que a la armadura no le quede nada de vida.<br>
                        -	¡GOAAHHHHHH!<br>
                        La armadura ruge de ira y desesperación al no poder alcanzarme, si dependiera de mi fuerza ya lo habría hecho pero al estar contra la pared esta sostiene a la armadura, lo único que yo hago es sostenerla.<br>
                        -	¡GOAAHHHHHHHHHHHH!<br>
                        Ruje por última vez la armadura antes de caer inerte, empujo a la armadura para liberarla de la lanza, cuando cae al piso con un sonido seco todo parece haber terminado.<br>
                        -	Ah….ah...ha<br>
                        Aun no recupero completamente el aliento, esta vez casi muero y solo es el acceso al tercer piso, no puedo imaginarme que me espere más adelante.<br>
                        Pese a estar un poco desalentado por lo que me espera, decido levantarme y continuar hacia la puerta del tercer piso.<br>
                        -	¡Guh!<br>
                        Repentinamente soy tomado del cuello desde atrás, jalado hacia la pared.<br>
                        ¡¡Es la maldita armadura que se niega a desaparecer!!<br>
                        Me sofoco……<br>
                        Me ha levantado del suelo con solo una mano.<br>
                        -	¡…Gah!<br>
                        Está aplicando aun más fuerza, me romperá el cuello si no pienso en algo rápido.<br>
                        <img src="imagenes/Pelea.jpg">

                    </p>
                    <p><turn to="pag13">Página Siguiente</turn></p>
                </paragraph>

            </page>
            <page id="pag13">
                <p>
                    Al oír los extraños sonidos de metal cayendo noto que la fuerza del agarre de la armadura decae luego de cada sonido de metal golpeando el suelo.<br>
                    Al lograr abrir un poco los ojos veo que su brazo izquierdo fue el responsable del primer sonido, luego le siguió la hombrera, su casco, la hombrera derecha.<br>
                    Llegado un momento logro liberarme y la armadura retrocede, aun deshaciéndose parece querer abalanzarse nuevamente sobre mí pero sus piernas no aguantan y colapsan.<br>
                    Aun sin sus piernas la armadura trata de alcanzarme hasta que una luz que no pude ver anteriormente desaparece y la armadura finalmente cesa sus intentos de atacarme.<br>
                    Al revisar el interior de la armadura noto que hay un esqueleto dentro…. <br>
                </p>
                <p><show paragraph="parrafo19">continuar</show>.</p>
                <paragraph id="parrafo19">
                    <p>
                        Pero no está completo, al esqueleto le falta el brazo izquierdo, media pierna y el cráneo esta desfigurado.<br>
                        Aparentemente cuando perfore el pecho de la armadura rompí algo, ya que hay restos de cristal en el suelo de donde saque el torso de la armadura.<br>
                        -	Ah … ah...ha….ah <br>
                        Realmente es un lugar tétrico, ahora entiendo el porqué la espada fue guardada en esta torre, es casi imposible de superar.<br>
                        No perderé más tiempo reflexionando sobre la armadura mejor continuo hacia la siguiente sala.<br>
                        Atravieso la puerta hacia el tercer piso, y lo que veo no es nada normal.<br>

                    </p>
                    <p><turn to="pag14">Página Siguiente</turn></p>
                </paragraph>

            </page>

            <page id="pag14">

                <p>
                    En contraste con los dos cuarto anteriores, el tercer piso es un lugar lleno de vegetación y vida.<br>
                    El diseño y tamaño de la sala es exactamente igual a los anteriores, pero en el centro hay una especie de fuente de mármol que expulsa agua.<br>
                    Las puertas que dan a las otras salas son de roca caliza que tienen grabado una persona y alguna especie de criatura con cuerpo de león, alas y rostro femenino.<br>
                    La criatura parece decirle algo a la persona frente a ella, pero parece que la persona en cuestión dice algo que disgusta a la criatura y ésta lo devora.<br>
                    ¡Qué morboso!.
                </p>
                <p><show paragraph="puertaIzquierda">Explorar puerta de la izquierda</show>.</p>
                <paragraph id="puertaIzquierda">
                    <p>
                        Encuentro lo que parece ser una especie de <interact with="capa">capa con capucha</interact>.
                    </p>
                    <p><turn to="pag14">Salir de la habitacion</turn></p>

                </paragraph>
                <p><show paragraph="puertaDerecha">Explorar puerta de la derecha</show>.</p>
                <paragraph id="puertaDerecha">
                    encuentro un gran pedestal con una inscripción en ella.<br><br>
                    <h3>“Una vez serviste con lealtad a Cetina la guerrera inmortal. Ahora que has completado tu labor y has dado descanso a tu antiguo compañero es tu momento de por fin descansar, oh Justicia”</h3><br>
                    El pedestal rebosa de una extraña energía mágica.<br><br>
                    -	¿Justicia? No recuerdo encontrar nada o a nadie con ese nombre en las salas anteriores.<br><br>
                    Un momento ¿‘Lanza de la justicia’?<br><br>
                    Eso seria muy conveniente, pero lo intentare de cualquier forma.<br><br>
                    Al acercar la lanza al pedestal la punta de la lanza brilla con gran intensidad.<br>
                    -	Realmente curioso ¿no?<br><br>
                    -	¡…….!<br><br>
                    Una extraña voz proviene del techo, instintivamente salto hacia atrás.<br>
                    -	No hay necesidad de asustarse así<br><br>
                    -	Jajajajajaja<br><br>
                    La extraña voz ríe al ver mi reacción.<br><br>
                    -	¿! Quién eres tú!? – pregunto con fuerza tratando de ocultar mi exaltación.<br><br>
                    Algo sale de la habitación lentamente y dice.<br><br>
                    -	Mi nombre, muchacho, es Nedmass – mientas se presenta realiza una pequeña reverencia.<br><br>
                    Nedmass es un pequeño ser flotante de color naranja con una extensa sonrisa en su rostro y ojos azabache, parte de su cuerpo esta cubierto con vegetación, creo que a modo de ropa.<br><br>
                    -	¿Y cuál es tu nombre?, joven portador de la Lanza de Cetina – me pregunta Nedmass con una enorme sonrisa<br><br>
                    -	Mi nombre es Draicon.<br><br>
                    -	Y dime joven Draicon, ¿qué te trae al puente entre la tierra y el cielo?<br><br>
                    -	He venido por la espada del guerrero dragon.<br><br>
                    -	Hm… Espada, espada. ¿es una espada con escritura rúnica en su hoja y que la protección es, convenientemente, una boca de dragon? – Nedmass hace gestos con sus manos mientras describe, con una exactitud aterradora la espada que he venido a buscar.<br><br>
                    Asiento con la cabeza, lo que parece satisfacer a Nedmass el cual dibuja una gigante sonrisa en su rostro.<br><br>
                    -	Ah, si la he visto joven muchacho, pero temo que aun te falta un poco para encontrarla – exclama el peculiar ser.<br><br>
                    -	Me ayudarías mucho, si me dices en donde se encuentra.<br><br>
                    -	Oh por supuesto, mi querido amigo, nada me haría mas feliz.<br><br>
                    Realmente es un alivio poder conseguir algo de información clara, para variar.<br><br>
                    -	Te comento, joven Draicon, la espada que tu estas buscando se encuentra en el quinto piso de esta torre.<br><br>
                    -	Pero no se si realmente llegaras a ella.<br><br>
                    No me gusta hacia donde va esto.<br><br>
                    -	Sabes primero debes pasar a la Esfinge que se encuentra tras esa puerta enorme.<br><br>
                    -	Como puedo derrotarla Nedmass.<br><br>
                    -	Es muy sencillo de hecho, solo tienes que responder un acertijo.<br><br>
                    ¿Un acertijo? No suena muy difícil, si lo comparas con todo lo que pase anteriormente.<br><br>
                    -	Se lo que debes estar pensando muchacho. ‘Es solo un acertijo, nada que temer’, tal vez tengas razón pero, si por alguna extraña razón, llegases a responder de manera errónea. Ella no dudara ni por un segundo en devorarte.<br><br>
                    Nedmass dice todo eso con una sonrisa, no puedo evitar sentir un pequeño escalofrió subirme por la espalda.<br><br>
                    -	¡Ah!, pero no debes temer muchacho. – agrega Nedmass con entusiasmo – yo el gran Nedmass te ayudare.<br><br>
                    -	¿Me ayudaras? – no puedo evitar sentirme sorprendido.<br><br>
                    -	Pero por supuesto muchacho, la esfinge y yo somos muy buenos amigos – proclama Nedmass con orgullo en su voz.<br><br>
                    -	¿Cómo lo harás? <br><br>
                    -	¿Hacer que joven muchacho?<br><br>
                    -	¿Cómo me ayudaras?<br><br>
                    -	Ah por supuesto, yo, joven muchacho, te diré el acertijo y la respuesta.<br><br>
                    ¿El acertijo y su respuesta? Increíble, eso es más que una simple ayuda, prácticamente me está salvando de una muerte segura.<br><br>
                    -	¿Estas listo?<br><br>
                    -	Si, por supuesto que si – no puedo evitar emocionarme por esto.<br><br>
                    -	Aquí va, ‘¿Que es, lo que el que lo fabrica no lo necesita, el que lo compra no lo usa y a quien se lo regalan duerme en el?’<br><br>
                    -	¿Qué es eso?<br><br>
                    -	Un ataúd, joven muchacho, el fabricante no lo necesita, puesto que aun esta vivo. El que lo compra no lo utiliza porque efectivamente sigue vivo, y el difunto dormirá en el eternamente.<br><br>
                    -	Es bastante simple, una vez lo piensas bien, ¿no lo crees joven?<br><br>
                    De hecho, jamás me lo imagine, pero eso será de gran ayuda.<br><br>
                    -	De acuerdo, ahora me siento preparado para enfrentar esa prueba, te lo agradezco inmensamente Nedmass.<br><br>
                    -	Ah sido un gran placer ayudarte muchacho, pero, ¿te molestaría si te pregunto algo?<br><br>
                    -	No me molesta, ¿Qué necesitas?<br><br>
                    -	Sabes, merodear por la torre es bastante aburrido a veces, por lo que quería saber era si. ¿Te molestaría que te acompañara?<br><br>
                    Creo que eso se veía venir, pero su compañía realmente me servirá.<br><br>
                    El conoce esta torre mejor que yo y su conocimiento me ayudara mucho.<br><br>
                    -	Claro, tu ayuda me servirá de mucho.<br><br>
                    -	No te arrepentirás joven muchacho, te lo aseguro.<br><br>
                    Con un apretón de manos sellamos nuestra amistad.<br><br>
                    -	De acuerdo hora de continuar, veamos cual es el acertijo de la puerta esta vez.<br><br>
                    <p><turn to="pag14">Salir de la habitacion</turn></p>

                </paragraph>
                <p><show paragraph="puertaCentral">Revisar puerta central</show>.</p>
                <paragraph id="puertaCentral">
                    <p>
                        -	De acuerdo hora de continuar, veamos cual es el acertijo de la puerta esta vez.<br><br>
                        -	Parece un anagrama, joven Draicon.<br>
                        -	Es verdad, pero falta una letra, otra vez.<br>
                        -	De hecho, joven, ya tienes en tu poder la letra faltante.<br>
                        -	¿Que quieres decir?<br>
                        -	La lanza es la clave.<br>
                        ¿La lanza? A decir verdad la punta de la lanza es en forma de V.<br>
                        ¿No será que lo que hace el pedestal es darme la letra que falta?<br>
                        -	Parce que ya lo notaste. ¿No es asi?<br>
                        -	El pedestal.<br>
                        -	Exacto.<br>
                        -	Por cierto Nedmass.<br>
                        -	Dime, joven.<br>
                        -	¿Por que, cuando estaba por poner la lanza en el pedestal, dijiste que era algo curioso?<br>
                        -	Nada en especial. Me llamo la atención, el que para poder abrir la puerta deberías destruir el arma mas poderosa de la torre.<br>
                        -	¿Mas poderosa?<br>
                        -	Efectivamente, esa lanza, La Lanza de la Justicia. Es la llave para poder completar el anagrama de la puerta y también el arma que utilizo Cetina para proteger esta torre y a todos los que habitaban Los Prados.<br>
                        -	Ciertamente, es una lástima, pero no me queda otra opción. Necesito llegar al quinto piso.<br>

                    </p>
                    <p><show paragraph="puertaDerecha2">Regresar a la puerta Derecha</show>.</p>
                    <paragraph id="puertaDerecha2">
                        <p>
                        -	Ah, por cierto, en cuanto coloques la lanza en el pedestal retrocede un poco.<br>
                        -	…de acuerdo…<br>
                        Ahora si estoy nervioso. ¿Qué pasara una vez que coloque? ¿Acaso explotara?<br>
                        Acerco temblorosamente la lanza al pedestal, al colocarla el pedestal comienza a brillar en respuesta a la lanza.<br>
                        No puedo evitar asustarme, salgo de la habitación rápidamente y cierro la puerta con fuerza. Poniendo mi cuerpo para sostenerla en caso de que el interior de la habitación explotase.
                        *chiiiiiiiiiiiiiiiiiiiiiiiiiiss*<br>
                        El sonido agudo aumente, solo cierro mis ojos y espero lo mejor<br>
                        *chiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiss**Clanck*<br>
                        Ahora solo queda silencio.<br>
                        -	Disculpa, joven Draicon, ¿Qué haces?<br>
                        -	¿eh? ¿Que parece que hago? Sostengo la puerta, en caso de que haya una explosión dentro.<br>
                        -	Hm ,ciertamente eso parece, pero en el hipotético caso de que hubiera una explosión. Eso de sostener la puerta con tu espalda es peligroso, te podrías haber lastimado, joven Draicon.<br>
                        De hecho, si lo pienso mejor, realmente eso fue una mala idea.<br>
                        No es como si mi cuerpo hubiera sido suficiente para resistir la fuerza de la explosión.<br>
                        -	Em.. mejor veo que paso con la lanza<br>
                        Tratando de esconder mi vergüenza, volteo rápidamente y abro la puerta para ver que acaba de ocurrir.<br>
                        Aparentemente la punta de la lanza se separo de forma limpia de el resto del arma, solo queda una especie de vara con inscripción rúnica.<br>
                        -	Que fáciles son las cosas, si se usa un poco de magia ¿No lo crees?<br>
                        -	De hecho si, bastante.<br>
                        </p>
                        <p><show paragraph="puertaCentral2">Explorar puerta central</show>.</p>
                        <paragraph id="puertaCentral2">
                            <p> Coloco la letra faltante</p>
                            <p><turn to="pag15">Página Siguiente</turn></p>
                        </paragraph>
                    </paragraph>

            </page>
            <page id="pag15">
                <p>
                    La puerta se abre con un ruido pesado.
                </p>

                <p><show paragraph="parrafo20">Continuar</show>.</p>

                <paragraph id="parrafo20">
                    <p>
                        -	¿Quién se atreve a entrar a la torre maldita? – una bella pero imponente voz, preguntando quien soy.<br>
                        -	Oh bella esfinge, tan bella y feroz como siempre<br>
                        -	¿Nedmass? ¿Qué quieres ahora, no te basta con molestarme con tus charlas sin sentido?<br>
                        -	Vamos no digas eso, ¿Acaso no te divierte el charlar conmigo?<br>
                        -	Te lo he dicho miles de veces y te lo repetiré ahora, no lo disfruto. Asique deja de molestarme con tus balbuceos.<br>
                        -	Oh que cruel eres y yo que lo hacía por ti.<br>
                        -	¿Por mi? No necesito nada de un bufón charlatán como tú. ¿Y que crees que estás haciendo abriendo las puertas hacia los pisos superiores?<br>
                        Creo que esto se está saliendo de control, mejor intervengo.<br>
                        -	De hecho yo abrí la puerta.<br>
                        -	Mmm. ¿y quién eres tú?<br>
                        -	Mi nombre es Draicon.<br>
                        Trato de responder con confianza.<br>
                        -	Entonces, Draicon. ¿Qué es lo que quieres?<br>
                        -	Quiero que me dejes pasar al siguiente piso<br>
                        -	¿Qué? ¿No es obvio? – Nedmass hace un pregunta totalmente fuera de lugar.<br>
                        Los ojos de la esfinge se ensanchan con disgusto, pero no se si por mi declaración, o por el comentario de Nedmass.<br>
                        -	Que así sea joven aventurero. Si al siguiente piso deseas ingresar, la respuesta a mi acertijo deberás acertar.<br>
                        -	Ohh – exclama Nedmass, mientras aplaude a la esfinge – sabes muchacho, ella lleva practicando eso desde hace bastante tiempo.<br>
                        -	¡Cierra el hocico, maldito gusano repugnante! – no se si su voz esta llena de ira o de vergüenza por lo que dijo mi acompañante.<br>
                        La esfinge, al recuperarse, dirige su mirada hacia mi y recita el acertijo.<br>
                        Pero no puedo evitar notar algo raro en el acertijo.<br>
                    </p>
                    <p><show paragraph="parrafo21">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo21">
                    <p>
                        -	Disculpa esfinge. ¿Podrías repetirlo?<br>
                        -	Solo lo diré una vez mas.<br>
                        Mi proceso mental se detiene.<br>
                        Luego de que la esfinge repite el acertijo mi sospechas se confirman.<br>
                        El acertijo que me dijo Nedmass es totalmente distinto al que acaba de recitar la esfinge.<br>
                        Veo de reojo a Nedmass quien me guiña el ojo con confianza.<br>
                        La respuesta es…<br>
                        Luego de darle mi respuesta a la esfinge esta queda en silencio un momento. Y luego dice.<br>
                        -	Han pasado muchos años desde que alguien dijo la respuesta correcta al acertijo. Bien muchacho puedes continuar.<br>
                        Al momento de decir eso la esfinge desaparece en un pequeño tornado de arena.<br>
                        *cof**cof**cof*<br>
                        Nedmass y yo tosemos, debido a la cantidad de arena que se levanta.<br>
                        En cuanto el pequeño tornado desaparece puedo oír a Nedmass.<br>
                        -	¡Puagh! Realmente detesto cuando hace eso, realmente a veces es tan desconsiderada. Ni siquiera se despidió.<br>
                        -	Sabes Nedmass.<br>
                        -	Dime joven Draicon.<br>
                        -	El acertijo que dijo la esfinge era totalmente distinto al que me dijiste tu.<br>
                        -	¿Tu crees? Para mi eran lo mismo, de cualquier forma cada cierto tiempo cambia el acertijo. ¿Tal vez fue eso? ¿no lo crees?<br>
                        -	Sabes, podría haber mencionado eso antes. ¿No te parece?<br>
                        -	Debo pedirte disculpas joven Draicon – dice Nedmass mientras hace una pequeña reverencia – pero la emoción de tener un compañero, después de tanto tiempo me hizo olvidar algo tan importante.<br>
                        Creo que realmente lo lamenta, por suerte el acertijo fue sencillo, por lo que no creo que deba darle tanta importancia.<br>
                        Aceptando las disculpas de Nedmass procedo al siguiente cuarto.<br>

                    </p>
                    <p><turn to="pag16">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag16">
                <p>
                    El cuarto piso golpea mis ojos con una luz demasiado brillante.
                </p>
                <p>
                    Tal vez es el hecho de que estoy en el cuarto piso, pero la luz es mas brillante que en los pisos anteriores, sin mencionar que hace mas calor aquí.<br>
                    Las paredes son de un blanco que refleja la luz y hace mas difícil ver con claridad, es como un cuarto con espejos en sus paredes que reflejan la luz entrante hacia mis ojos.<br>
                    Realmente cambia demasiado, las puertas que separan esta sala de las demás son de un granito solido con dibujos tallados.<br>
                    Trato de ver lo que los dibujos tallados en el granito, pero debido al desgaste que sufrieron no puedo reconocer nada.<br>
                </p>
                <p>
                    -	El Tiempo es inestable en este cuarto, es como si tuviera voluntad propia – dice Nedmass, como si estuviera leyendo algo – Los hermanos abayomi y abise, guardianes del tiempo protegerán el paso a los archivos y al conocimiento prohibidos que contienen.<br>
                    -	¿Estás leyendo eso Nedmass? – pregunto, realmente me da curiosidad.<br>
                    -	Ah, pido disculpas. Es que parecía no poder comprender los grabados.<br>
                    -	No necesitas disculparte, ciertamente está demasiado degastado. Y no puedo diferenciar que es lo que está grabado.<br>
                    Supongo que quitando el accidente del acertijo, el que pueda entender las diferentes lenguas grabadas en este caso es de mucha utilidad.<br>

                <p><show paragraph="parrafo22">continuar</show>.</p>
                </p>
                <paragraph id="parrafo22">

                    <p><show paragraph="puertaDerecha">Explorar puerta de la derecha</show>.</p>
                    <paragraph id="puertaDerecha">
                        <p>
                            Al mover, con algo de dificultad, la puerta de la habitación de la derecha,
                            en su interior encuentro un pedestal oxidado y encima de el reposa una  espada un tanto desgastada a primera vista.<br>
                            Realmente no estaría nada mal un arma secundaria luego de perder la lanza, una segunda arma estaría genial para enfrentar cualquier adversidad que se pueda presentar.<br>
                            Al intentar tomar la espada, la hoja de la misma cruje y se desmorona lo único que puedo hacer es mirar mis esperanzas de facilitar todo hacerse pedazos ante mis ojos.<br>
                            -	Que mala suerte que tengo – hago esa declaración ante lo sucedido.<br>
                            -	Realmente no es mala suerte, el tiempo hizo estragos sobre la espada. Aunque la hubieras podido tomar, no te habría servido de nada.<br>
                            Aunque las palabras de Nedmass tienen sentido, no puedo evitar sentirme deprimido por lo ocurrido.<br>
                            -	Como sea, mejor continúo – siento que si sigo pensando mucho al respecto me deprimiré mas<br>
                        </p>
                    </paragraph>

                    <p><show paragraph="puertaIzquierda">Explorar puerta de la izquierda</show>.</p>
                    <paragraph id="puertaIzquierda">
                        <p>
                            La atmosfera cambia del lado izquierdo de la sala, mientras que en la parte derecha de la sala todo esta desgastado o destrozado por el paso del tiempo.<br>
                            En al lado izquierdo todo parece nuevo, los grabados en la puerta se ven claramente y la puerta de la habitación realmente es de madera, y no de una madera que parece más piedra que otra cosa.<br>
                            Al ingresar a la habitación encuentro sobre una mesa de madera un <interact with="Paradoxia">escudo</interact> un tanto peculiar.<br>


                        </p>
                    </paragraph>
                    <p><show paragraph="puertaCentral">Explorar puerta central</show>.</p>
                    <paragraph id="puertaCentral">
                        <p>
                            Bajo lo que parece ser la cabeza de un animal tallado en metal obscuro hay un anagrama en un idioma que nunca he visto antes.<br>
                            -	Dime Nedmass. ¿Sabes que idioma es este? – Tal vez Nedmass sepa algo.<br>
                            -	Déjeme ver…<br>
                            Nedmass hecha un vistazo a el anagrama, luego de un rato voltea hacia mi y dice<br>
                            -	Es un antiguo idioma de un pueblo de otro mundo, que hace cientos de años visito nuestro mundo.<br>
                            Quedo boquiabierto. ¿Cómo esperan que resuelva esto? ¿Si ni siquiera entiendo el idioma?<br>
                            -	¿De otro mundo dices?<br>
                            Realmente no se si pueda creer que una civilización de otro mundo, vino y desapareció así sin mas.<br>
                            -	Si, ese pueblo ayudó a construir esta torre.<br>
                            Eso explicaría como la arquitectura del cuarto cambiase tanto, con respecto a los pisos anteriores.<br>
                            -	Y. ¿Cómo llegaron a nuestro mundo? – creo que lo que mas me importa ahora, es saber como es posible que llegaran a nuestro mundo.<br>
                            -	Nadie sabe con certeza, joven muchacho. Hay leyendas que dicen que en una isla lejana había unas edificaciones de diseño particular que apuntaban al cielo conectando su mundo con el nuestro. Otros dicen que simplemente aparecieron en nuestro mundo un día, y así como aparecieron, desaparecieron sin dejar rastro.<br>
                            Ciertamente hay libros de historia que mencionan islas hundiéndose, pero jamás escuche de edificaciones como las que menciona Nedmass.<br>
                            -	Dime una última cosa Nedmass, como se llamaba el pueblo.<br>
                            -	Creo que era algo como: Edicios o tal vez Eticios. Era algo así, joven muchacho.<br>
                            -	¿Entiendes su idioma? – si Nedmass es capaz de entender el idioma de ese pueblo, será de gran ayuda.<br>
                            -	Creo recordar algo de su idioma, si no es problema intentare leerlo.<br>
                            Haciendo un gesto de “Procede” dejo que Nedmass se acerque a la puerta y pueda leer mejor lo que allí esta escrito.<br>
                            Luego de leer y meditar por un momento Nedmass se voltea haci mi y me dice.<br>
                            -	Apartemente es una palabra clave al ordenarla y pronunciarla en nuestro idioma la puerta cederá.<br>
                            -	Entonces no solo debo ordenar una palabra que no entiendo sino que además ¿debo traducirla?<br>
                            -	Ciertamente, pero no te preocupes muchacho, yo el Gran Nedmass, conocedor de la lengua Epicia te ayudare a superar este difícil obstáculo.<br>

                        </p>
                        <p><turn to="pag17">Página Siguiente</turn></p>
                    </paragraph>

                </paragraph>
            </page>
            <page id="pag17">
                <!--anagrama-->
                <p>
                    La peculiar puerta central se abre y un aire frio sale del interior, la sensación del aire en mi rostro me recuerda el momento en que abri la puerta para ingresar a la torre.
                </p>

                <paragraph id="parrafo23">
                    <p>
                        Parece que me quede parado con cara de pasmado un buen rato ya que puedo escuchar a Nedmass apurándome para que entre en la sala que lleva al quinto piso.<br>
                        -	Joven Draicon, no es momento de quedarse parado admirando la sala, hay que seguir adelante. O de lo contrario el le arrebatara el objeto que te protege.<br>
                        Eso ultimo es lago raro, ese alguien que me arrebatara lo que sea que el guardián de este piso proteja. ¿Sera el mismo que dejo la nota en aquel cofre?<br>
                        Avanzo al interior de la sala.<br>
                        A diferencia de la sala anterior esta no esta tan bien iluminada, salvo por cinco toma luces y varias antorchas todos puestos a lo largo de la sala que esta claramente destrozada por el paso del tiempo.<br>
                        Pero hay algo extraño en esta sala, la puerta de acceso al siguiente piso o el guardián de la misma, no están.<br>
                        -	¿Y la puerta? – no puedo evitar preguntar eso en voz alta.<br>
                        -	Es curioso, según recuerdo una puerta llena de grabados debería estar ahí – dice Nedmass señalando hacia el suelo en el centro de la sala.<br>

                    </p>
                    <p><show paragraph="parrafo24">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo24">
                    <p>
                        Esto es malo, si no puedo encontrar la puerta, no podre avanzar hacia el piso donde se encuentra.<br>
                        Pero, como es posible que la puerta este en el suelo<br>
                        -	¿Estas seguro que la puerta estaba ahí?<br>
                        -	Claro, ¿Por qué lo preguntas?<br>
                        -	Es que, si esta en el piso, como lleva hacia arriba. ¿No es contradictorio?<br>
                        -	Joven Draicon. ¿No te estará afectando el escudo?<br>
                        No creo que realmente el escudo me este afectando tanto, creo.<br>
                        En cualquier caso necesito encontrar la entrada al siguiente piso.<br>
                        *Boom*<br>
                        -	¡…..!<br>
                        Todo se empieza a mover de un lado al otro, como si de un terremoto se tratara.<br>
                        -	Eso sonó como una explosión y vino del piso de abajo.<br>
                        Cuando me dirijo a la sala anterior el polvo levantado por la explosión, y entre el polvo y escombro está una silueta encapuchada.<br>

                    </p>
                    <p><turn to="pag18">Página Siguiente</turn></p>

                </paragraph>
            </page>
            <page id="pag18">
                <p>
                    -	Hm, realmente lograste llegar tan lejos – realmente siento sorpresa en sus palabras, no es ironía, realmente me dio por muerto.
                </p>
                <paragraph id="parrafo25">
                    <p>
                        -	¿Quien se supones que eres tu?<br>
                        -	Mi identidad no es de tu incumbencia, pero lo que si puedes saber es que puedo ayudarte en el piso del tiempo – expresa la figura encapuchada con soberbia en sus palabras.<br>
                        Realmente no me agrada.<br>
                        -	Apresúrate, en esta torre el tiempo es demasiado valioso como para desperdiciarlo – me apresura el extraño individuo mientras procede a la sala sin puerta.<br>
                        -	¿Qué opinas Nedmass? – le pregunto a mi compañero que, por alguna razón, permaneció en silencio.<br>
                        -	En mi humilde opinión, yo diría que debes escucharlo, parece conocer más de esta torre que nosotros – declara mi compañero mientras se rasca la cabeza.<br>
                        -	Realmente el sabrá mas de la torre que tu, que has vivido todo durante no se cuanto en la torre.<br>
                        -	De hecho, joven Draicon, mi existencia inicio en cuanto la torre se vio su construcción finalizada – mentiría si dijera que no lo supuse – conozco la torre de arriba abajo, ya que yo puedo moverme entre sus niveles con total libertad. Jamás tuve la necesidad de abrir puertas o resolver acertijos, por lo que no conozco cómo funciona la torre. Salvo por algunos casos particulares que descifre por aburrimiento.<br>
                        -	Pero, entonces. ¿Como conocías el idioma de la puerta? – si dice que no tuvo necesidad de utilizar las puertas. ¿Cómo supo sobre la civilización ayudo en la construcción de la torre?, si para ese momento el no existía.<br>

                    </p>
                    <p><show paragraph="parrafo26">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo26">
                    <p>
                        -	¿Recuerdas que te comente que la espada estas buscando se encuentra en el quinto piso de la torre?<br>
                        Con un movimiento de la cabeza le respondo que si a Nedmass.<br>
                        -	Bueno en la quinta planta de la torre se encuentran los archivos de la torre, una biblioteca que contiene el conocimiento antiguo y tesoros de un poder increíble.<br>
                        -	Entonces tiene sentido.<br>
                        Eso explicaría el porqué esta extraña persona quiere cooperar conmigo.<br>
                        Si es el responsable de derretir la puerta de ébano y hacer volar gran parte de la puerta de este piso. Entonces lo que está buscando es el conocimiento de los archivos de la torre.<br>
                        Pero su ayuda me beneficiara también a mí, si con su ayuda consigo llegar al quinto piso, podre recuperar la espada del guerrero dragón y salir de esta torre.<br>
                        Voy a la sala donde mi extraño colaborador me espera. Quien al percatarse de que estoy ahí voltea en mi dirección y dice:<br>
                        -	Te tomaste tu tiempo – Exclama el encapuchado.<br>

                    </p>
                    <p>
                        -	Me quede pensando algo.<br>
                        -	Bien es hora de encontrarnos con el guardián de esta sala – declara, mientras voltea hacia adelante.<br>
                        -	Pero como lo haremos no hay ninguna puerta aquí.<br>
                        -	No se a que te refieres, la “puerta” esta justo aquí – dice mientras señala a una plataforma circular que sobresale del suelo de la sala.<br>
                        -	¿A que te refieres?<br>

                    </p>
                    <p><turn to="pag19">Página Siguiente</turn></p>
                </paragraph>

            </page>
            <page id="pag19">
                <p>
                    -	Veo que aun no lo descifras, enserio. ¿Realmente viniste a esta torre sin saber nada de ella?<br>
                    -	….
                </p>
                <paragraph id="parrafo27">
                    <p>
                        No puedo discutir su declaración ya que no ha dicho nada que sea falso, en mi apuro por recuperar la espada, no investigue nada sobre la torre.<br>
                        -	Sabes, al menos. ¿hacia dónde lleva la puerta?<br>
                        -	Si, lleva a los archivos de la torre.<br>
                        -	Correcto, pero dime. ¿al menos pensaste cual grande es la habitación de los archivos?<br>
                        -	Realmente no, pero debe ser como las demás salas. ¿No?<br>
                        -	 Error, la cantidad de información almacenada en los archivos de la torre no puede ser almacenada en una sala tan pequeña – Eso es raro, cuando vi por primera vez la torre desde el Templo Precursor, no vi una sección que fuera más grande que las demás.<br>
                        -	¿Entonces qué? ¿Fue llevada a otra dimensión? – hago una pregunta irónica a mi tutor.<br>
                        -	Exacto, esta plataforma no llevara a una dimensión conocida como el quinto piso de la torre, allí encontraremos los archivos.<br>
                        -	….. – quedo sin palabras ante la declaración de mi colega encapuchado.<br>
                        -	Si no me crees, pregúntale al espíritu que te acompaña.<br>
                        -	¿Espíritu?<br>
                    </p>
                    <p><show paragraph="parrafo28">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo28">
                    <p>
                        Nedmass quien estaba en silencio haciendo movimientos de nado en el aire se percata que lo estoy mirando.<br>
                        -	Es cierto, joven Draicon – exclama Nedmass, mientras continua con los movimientos en dirección a mí – el quinto piso se encuentra en otro plano existencial.<br>
                        -	¿Y porque no me lo dijiste antes Nedmass? – le pregunto a Nedmass con enojo.<br>
                        -	Por un sencillo motivo, joven, nunca preguntaste – dice Nedmass mientras se acerca y toca la punta de mi nariz con su dedo índice.<br>
                        -	¡Tu…!<br>
                        -	Oye niño, cubre tus ojos.<br>
                        Justo cuando estaba por decirle algunas verdades a Nedmass el encapuchado me dice que me cubra, antes de que un destello de luz llene la sala entera.<br>
                        Al momento en que la luz se disipa la plataforma en el suelo expulsa una columna de luz hacia el techo, la cual es de un color azulado y expulsa extrañas imágenes pequeñas.<br>
                        -	Bien. ¿A qué esperas? Aparece de una vez – grita mi encapuchado acompañante a la columna de luz.<br>
                        -	HM, ESA IMPACIENCIA TE LLEVARA A TU DESTRUCCION<br>

                    </p>
                    <p><turn to="pag20">Página Siguiente</turn></p>
                </paragraph>

            </page>
            <page id="pag20">
                <p>Una voz con eco se escucha en toda la sala.</p>
                                    <p><show paragraph="parrafo29">continuar</show>.</p>
                <paragraph id="parrafo29">
                    <p>
                        -	¿QUE ES LO QUE QUIEREN? ¿QUE VALE TANTO PARA SACRIFICAR SUS VIDAS? – pregunta la extraña voz, mientras una sombra empieza a aparecer dentro de la columna.<br>
                        -	Lo único que debe interesarte es el hecho de que si no te apartas acabaremos con tu existencia, guardián de los archivos.<br>
                        Yo solo puedo guardar silencio, estoy perplejo ante lo que mis ojos contemplan.<br>
                        El propietario de esa silueta dentro del portal hacia el quinto piso es una criatura de forma humana, su cara esta desfigurada es como si hubieran tomado dos rostros y los hubieran presionado uno contra el otro, hasta que esto se fundieran, su cuerpo está cubierto por una extraña manta de un color blanco gastado, además posee un collar circular con lo que parece ser un reloj de arena. Y en su ante brazo se encuentra restos de una mano, como si esta hubiera querido salir a la superficie por la fuerza.<br>
                        Al hablar pareciera que se escuchan dos voces y sus ojos nos observan a ambos mientras hablan.

                    </p>
                    <p><show paragraph="parrafo30">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo30">
                    <p>
                        -	HM HM JAJAJAJAJA – la criatura ríe.<br>
                        -	VALIENTES PALABRAS PARA ALGUIEN QUE ESTA APUNTO DE CONVERTIRSE EN POLVO.<br>
                        -	De acuerdo niño, aquí entras tu – dice el encapuchado mientras me mira.<br>
                        -	¿eh? ¿a qué te refieres con eso?<br>
                        -	El escudo, Paradoxia, utilízalo contra el – exclama en repuesta mientras señala mi recién adquirido escudo.<br>
                        -	¿cómo?<br>
                        -	En cuanto exhale su aliento en contra de nosotros, apuntalo en su dirección.<br>
                        Luego de darme esas instrucciones, el encapuchado retrocede y se pone a cubierto.<br>
                        -	REGRESEN AL POLVO ESCORIAS – la criatura grita eso mientras se inclina en nuestra dirección y exhala lo que pareciera ser una tormenta de arena.
                        -	¡Ahora! --

                    </p>
                    <p><turn to="pag21">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag21">
                <p>  El encapuchado me da la señal y sostengo a <interact with="paradoxia">paradoxia</interact> en dirección al ataque de la criatura.</p>
                                    <p><show paragraph="parrafo31">...</show>.</p>
                <paragraph id="parrafo31">
                    <p>
                        Cuando la tormenta de arena toca la superficie de mi escudo, ésta desaparece, como si de una ilusión se tratara.<br>
                        -	¡¿Cómo ES ESTO POSIBLE?! ¡¿QUE TIPO DE TRUCO DE MAL GUSTO ES ESTE?!<br>
                        -	¡Es nuestra oportunidad! – luego de decir eso el encapuchado apunta su mano abierta hacia la criatura, y luego de recitar algo en una lengua extraña lanza un destello que golpea a la criatura.<br>
                        -	¡GAAH! – la criatura grita de dolor mientras retrocede.<br>
                        Palpitar. Palpitar.<br>
                        Mi Ritmo cardiaco se acelera.<br>
                        No se si será el miedo o la emoción, pero no puedo moverme<br>
                        Mi piernas no quieren moverse.<br>
                        Una voz en mi interior me grita que corra. Que olvide todo y CORRA<br>
                        Esta criatura no es nada parecido a los guardianes anteriores.<br>
                        Corre ¡CORREEEEE!
                    </p>
                    <p><show paragraph="parrafo32">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo32">
                    <p>
                        -	¿¡A que esperas!? ¡ataca!<br>
                        El grito del mago a mi lado me devuelve a la realidad.<br>
                        Tomo la espada que conseguí con anterioridad y me posiciono para abalanzarme sobre la criatura.<br>
                        -	¡¡¡DESAPAREZCAN!!! – la criatura grita con rabia y se prepara para repetir su ataque.<br>
                        -	¡Detrás de mi! – le doy la orden al mago con capucha<br>
                        -	¡¡¡MUERAN!!!<br>
                        La criatura ataca nuevamente con lo que parece ser una tormenta de arena.<br>
                        Repito el proceso anterior y disipo la tormenta de arena con el toque de <interact with="paradoxia">mi escudo</interact>.<br>
                        -	Dale el golpe de gracia y acabemos con esto – murmura el mago detrás de mí.<br>
                        El mago lanza una pequeña botella hacia la criatura y al golpear el piso explota lanzando una nube de humo negro.<br>
                        Con la vista de la criatura obstruida, corro hacia ella y le atravieso el pecho con la espada.<br>
                        -	NO….NO….<br>
                        La criatura niega lo que acaba de pasar, pero lo raro es que no es un tono de desesperación, sino mas de sorpresa.<br>
                        -	NO… ¡NO PUEDO CREER LO ESTUPIDO QUE ERES!<br>

                    </p>
                    <p><turn to="pag22">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag22">
                <p>
                    Tras gritar esas palabras la criatura me golpea haciéndome retroceder por el impacto.<br>
                    -	¿¡Pero qué!? Cómo puede seguir vivo cuando le atravesé el pecho.<br>

                </p>
                          <p><show paragraph="parrafo33">continuar</show>.</p>
                <paragraph id="parrafo33">
                    <p>
                        Pero al mirar la espada, noto que la parte que toco el cuerpo de la criatura, se está fragmentando hasta que solo queda el mango.<br>
                        -	¡Demonios! Pensé que solo era una exageración – con un chasquido de su lengua el mago que se encuentra a mi lado se queja.<br>
                        -	¿A qué te refieres?<br>
                        -	Las leyendas dicen que el guardián del tiempo, es una existencia etérea, es decir que no tiene cuerpo físico.<br>
                        -	Entonces. ¿Es una especie de fantasma? – Si ese es el caso esto será mucho más complicado.<br>
                        -	 De hecho no, es una singularidad temporal. Es un ente que quedo atrapado en el flujo del tiempo presente, pasado y futuro.<br>
                        -	Eso es mucho más complejo que solo un fantasma entonces.<br>
                        Debo pensar rápido o todo este viaje habrá sido para nada.<br>
                        No es un fantasma, sino una singularidad temporal atrapada entre el pasado el presente y el futuro, y todo lo que toca es atrapado por la ley temporal y hecho añicos.<br>
                        Ley temporal…. ¡Eso es!<br>
                    </p>
                    <p><show paragraph="parrafo34">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo34">
                    <p>
                        -	Dime. ¿tienes alguna otra detracción? – necesito acercarme de nuevo para poder llevar a cabo mi plan.<br>
                        -	Me quede sin nada, pero puedo crear un destello que lo ciegue por unos segundos.<br>
                        -	Eso sirve también, hazlo a mi señal.<br>
                        Moviendo la cabeza a modo de respuesta, mi compañero se prepara para lanzar el hechizo de luz.<br>
                        -	Sabes, joven Draicon – dice Nedmass quien permaneció en silencio toda la batalla – si harás lo que creo que harás, puede que el tesoro que el guardián posee sea destruido también.<br>
                        ¿Tesoro? ¿Se refiere al colgante que posee la criatura?<br>
                        No hay tiempo para eso, ahora mismo mi prioridad es acabar con este obstáculo y encontrar la espada. Ese collar no vale nada para mí.<br>
                        -	ES HORA DE QUE ACABEMOS CON ESTO. ¡DESAPAREZCAN! – grita la criatura preparando una vez más su ataque.<br>
                        -	¡Ahora! – doy la señal a mi compañero para que realice la distracción.<br>
                        Luego con un “haaaaa” el mago crea un destello de luz que aturde a la criatura y deja una oportunidad para que me acerque.<br>
                        -	¡Ahora sí!<br>
                        Corro hacia la criatura que cubre su rostro con su brazo y salto hacia ella.<br>
                        -	¿PERO QUE?<br>

                    </p>
                    <p><turn to="pag23">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag23">
                <p>La criatura no puede decir nada más, ya que atraviezo su cuello con mi <interact with="escudo">escudo</interact> separando casi completamente su cabeza del cuerpo.<br>
                    Si esta criatura esta en un espacio temporal que la hace intangible, simplemente debo anular ese hecho y destruir su significado.
                </p>
                <paragraph id="parrafo35">
                    <p>
                        -	¿Eh? – puedo oír la sorpresa en la voz de mi colaborador, mientras observa lo que acaba de ocurrir.<br>
                        -	Date prisa y desaparece. – digo eso mientras observo los ojos de la criatura que están abiertos completamente.<br>
                        Como sucedió con su ataque de arena, la criatura se convierte en polvo y desaparece.<br>
                        Cuando la criatura desaparece oigo el sonido de algo golpeando el suelo.<br>
                        Al mirar de donde provenía el sonido puedo ver el collar que la criatura portaba.<br>
                        -	Oye. ¿Qué es esto?<br>
                        -	La causa de la existencia de esa criatura – responde el mago encapuchado mientras se acerca al portal del que salió la criatura – el porqué averígualo en los archivos.<br>
                        -	Haciendo un gesto de despedida con la mano, el encapuchado entra al portal.<br>
                        Mientras observo su silueta desaparecer, Nedmass se acerca y dice.<br>

                    </p>
                    <p><show paragraph="parrafo36">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo36">
                    <p>
                        -	Por un momento creí que harías pedazos el colgante.<br>
                        -	Sabes pareciera que tienes mucho interés en el – realmente sospechoso.<br>
                        -	Al contrario, un objeto con cualidades como las de ese <interact with="colgante">colgante</interact> son muy raros hoy en día.<br>
                        -	De acuerdo, hora de seguir con esto.<br>
                        Dicho eso avanzo hacia el portal.<br>
                    </p>
                    <p>
                        Una sensación de relajamiento y picazón me invade mientras soy tele transportado al quinto piso, el lugar donde se encuentra lo que he venido a buscar.<br>
                        Un destello de luz, seguido de un sonido de *Zip* es lo que me recibe al entrar en el quinto piso<br>
                        Como dijo el mago encapuchado en aquel momento, es algo totalmente distinto a lo que vi anteriormente.
                    </p>
                    <p><turn to="pag24">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag24">
                <paragraph id="parrafo37">
                    <p>
                        Es un lugar lleno de estanterías de gran tamaño repletas de pergaminos y libros, mesas de marfil con objetos que solo pude ver en libros y otros que jamás vi. Esferas con lo que parece ser energía dentro, dan la sensación de que al mínimo roce estas explotarían liberando la energía que traen dentro.<br>
                        No hay techo, en su lugar hay un vacio marino infinito con puntos blancos que parecen constelaciones, el suelo en mis pies parece cristal por el cual se puede ver un vacio obscuro, es como si el mundo se acabase a mis pies.<br>
                        No se cuán grande es este lugar, pero creo que tardaría años en poder recorrerlo todo.
                    </p>
                    <p><show paragraph="parrafo38">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo38">
                    <p>
                        -	Es un lugar increíble. ¿no lo crees Nedmass?<br>
                        Pero no hay respuesta, al buscar a Nedmass noto que desapareció.<br>
                        -	¿Dónde estarás?<br>
                        Decido esperar unos minutos a que Nedmass aparezca o regrese de donde haya ido.<br>
                        -	…<br>
                        Pero no hay rastro de él. Por lo que decido continuar, Nedmass es capaz de volar por lo que me encontrara fácilmente una vez que termine lo que sea que esté haciendo.<br>
                        Camino un buen rato por la biblioteca casi infinita y al ver de reojo un libro leo “Colgante del tiempo”, por lo que decido leerlo.
                    </p>
                    <p><turn to="pag25">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag25">
                <h3><span class="font-style:italic">“Durante la construcción del Amnant, el templo del cielo y la tierra, la gran creación de David Corazón de Cristal, estalló un conflicto entre los encargados de custodiar el salón del tiempo, Abayomi y Abise, los gemelos que descubrieron los secretos para controlar el manto del tiempo.<br>
                    Ambos hermanos, en conjunto crearon un artefacto capaz de desafiar el paso del tiempo, lucharon entre ellos por el collar. El collar fue nombrado ‘Paradigma de lo inamovible’ ya que el tiempo de su portador se detenía completamente y nada podía ponerlo en marcha.<br>
                    A menos que el portador del collar se lo quitase, el efecto duraría eternamente, ambos hermanos querían poseer tan magnífico artefacto.   Pero su conflicto estaba interfiriendo con la construcción del templo. <br>
                    El señor de la forja creo dos artículos que superaban al Paradigma de lo inamovible, Paradoxia el escudo capaz de anular el significado o la existencia de cualquier singularidad, magia o invocación y la espada del Escorpión cuya fuerza era capaz de romper la tela de la realidad misma.<br>
                    Pero los gemelos rechazaron el regalo, aun querían el fruto del trabajo de toda una vida. Los hermanos siguieron disputándose el artefacto temporal. Hasta que un día, mientras los hermanos peleaban por el collar, Cetina quien estaba cansada de las disputas de los hermanos, les arrojo el escudo de Abayomi.
                    Paradoxia reacciono al colgante que los hermanos sostenían y al comenzar a suprimir el significado del objeto los hermanos se vieron envueltos en un torbellino espacio temporal fundiendo sus cuerpos y volviéndose una abominación.<br>
                    David al saber lo ocurrido, confino a los hermanos ahora conocidos como Paradox a permanecer encerrados en la biblioteca dimensional para buscar una solución a su prisión temporal. Vigilando la entrada a la biblioteca de la torre y mantener alejado el "Paradigma de lo inamovible" lejos de las manos de los mortales.”</span>
                </h3>
                <p><turn to="pag26">Página Siguiente</turn></p>
            </page>
            <page id="pag26">
                <p>-	Whoa, realmente eso fue karma – se me escapan las palabras luego de leer eso.<br>
                    Al dejar el libro en su lugar junto a este se encuentra un libro que se titula “El templo de la tierra y el cielo”
                </p>
                <paragraph id="parrafo39">
                    <p> Al leer un poco noto que es un libro que explica cómo funciona la torre, según el libro cada cierto tiempo los pisos de la torre se mueven cambiando de posición. Entonces eso significa que de haber venido en otro momento la torre no sería igual a como la encontré.<br>
                        Es realmente interesante. Aunque siento que estoy distrayéndome demasiado, mejor sigo buscando la espada.
                    </p>
                    <p><show paragraph="parrafo40">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo40">
                    <p>
                        Al continuar caminando por la biblioteca luego de un rato de caminata, diviso una espada que concuerda perfectamente con la descripción de la espada del guerrero Dragón.<br>
                        La espada está en su funda y descansa en un pedestal dentro de una caja de cristal, el pedestal tiene una placa con una inscripción en ella y un libro abierto que flota sobre el pedestal.
                    </p>
                    <p><turn to="pag27">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag27">
                <p>La placa de metal dice lo siguiente:</p>
                <h3>“Aquí reposa La Hoja Celestial y luego renombrada Ice Bite para su siguiente portador, el arma que utilizo Jazmín la campeona de los Dragones en la guerra contra Nicro el Dragón de la muerte.
                    Elegida de Nova la Madre Celestial. Y la que selló con su propia muerte la alianza entre las bestias y humanos”</h3>
                <p>El tiempo se congela.<br>
                    -	J-Jazmín…  - es el nombre de mi madre….<br>
                    -	Eso significa que el guerrero que vi en mis sueños era mi madre….
                </p>
                <p><show paragraph="parrafo41">continuar</show>.</p>
                <paragraph id="parrafo41">
                    <p>
                        Esto….esto no puede ser verdad, mi madre jamás lucho…. Ella murió de una enfermedad al corazón… ¿cómo es posible?<br>
                        -	Ice bite, Mordedura de Hielo…<br>
                        Eso me recuerda algo que mi hermana me conto cuando era niño…<br>
                        -	Flora, flora – generalmente cada vez que encontraba algo en un libro se lo mostraba a mi hermana.<br>
                        -	¿Hm? ¿Qué sucede enano? – ella siempre me llamaba así, recuerdo que eso siempre me molestaba, pero ella siempre decía que era con cariño.<br>
                        -	Oye no me llames así, no soy tan enano.<br>
                        -	¿Enserio? Desde mi punto de vista eres como una hormiga.<br>
                        -	¡Cállate! – decía eso mientras agitaba mis brazos.
                    </p>
                    <p><turn to="pag28">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag28">
                <p>-	Entonces, ¿Qué querías?</p>
                                <p><show paragraph="parrafo42">continuar</show>.</p>
                <paragraph id="parrafo42">
                    <p>
                        -	¡Ah sí! Dime que es una Mordedura de Hielo. ¿Duele mucho?<br>
                        -	Jajaja, no tonto, no es una mordedura de alguien. Mordedura de Hielo es el título que le dan los guerreros dragon a su arma, en este caso sería el arma de un guerrero Dragón que porta a Avalon el dragón del hielo.<br>
                        -	Entonces. ¿cómo le llamarías a tu arma?<br>
                        -	Yo soy la portadora de Niven El dragon veneno, lo anteriores portadores de Niven nunca pusieron un nombre en especial a sus armas, pero en mi caso sería Estoque toxico, por mi estilo de pelea.<br>
                        -	¡¡¡WHOA!!!! Espero tener un arma como Mordedura de Hielo algún día – Realmente jamás imagine que se haría real ese sueño.<br>
                        -	Seguro que si Draicon, algún día tal vez.

                    </p>
                    <p><show paragraph="parrafo43">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo43">
                    <p>
                        Entonces a eso se refería Wave cuando dijo que ahora me pertenecía, realmente soy un portador de Avalon. Nunca sentí algo raro en mi o una voz que me hablase, aunque eso ultimo habría sido perturbador.<br>
                        Al acercarme al pedestal de cristal siento un sentimiento extraño en mi pecho, pareciera que la espada me estuviera llamando.<br>
                        Tomo el libro que esta flotando encima del pedestal y leo la pagina que está ahí.<br>
                    </p>
                    <h3>“Jazmín quien sacrificó su propia vida para derrotar al dragón renegado Nicro, para preservar la de todos en el mundo, aseguró una vida de paz y prosperidad tanto como para las Bestias Divinas.
                        Las Bestias divinas se ofrecieron en cuerpo y alma, para recompensar el sacrificio de Jazmín, a aquellos que posteriormente serian llamados
                        ‘Portadores’ guerreros que contarían con la bendición y el obsequio de poder de la bestia que los escogieran.”</h3>
                        <img src="imagenes/Dragones.jpg">
                    <p><turn to="pag29">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag29">
                <p>
                    El resto es simplemente un relato de cómo la Hermandad del Fénix trato de apoderarse de la torre y fallaron. Decayendo en número y pasando a ser no más que un mito.<br>
                    De acuerdo no lo pospondré mas, hora de recuperar el arma de mi madre.<br>
                    Al tocar el cristal del pedestal éste destella mostrando lo que parece ser un grupo de números, de ceros y unos para ser más preciso.<br>
                    -	Eso es una palabra escrita en código binario joven Draicon.<br>
                    -	¡Hiiiii...! – hago un ruido extraño ante las sorpresivas palabras que alguien murmura en mi oído.<br>
                    -	Oh. Deja vu – dice el extraviado Nedmass mientras ríe.<br>
                    -	¿¡Podrías dejar de hacer eso!? ¡Casi me da un infarto!<br>
                    -	Oh lo lamento, pero parecías no saber bien lo que era este acertijo.<br>
                    De hecho debo darle la razón a Nedmass, esto realmente se siente como un deja vu.

                </p>
                <p><show paragraph="parrafo44">continuar</show>.</p>
                <paragraph id="parrafo44">
                    <p>
                        -	Trata de decirme que estas cerca antes de hablarme, o de lo contrario me mataras del susto.<br>
                        -	Realmente lo siento joven Draicon.<br>
                        -	¿Código binario dices?<br>
                        -	Exactamente. ¿Ves que cada cierta cantidad de numero hay un espacio?<br>
                        -	Si<br>
                        -	Ahí está escrita una palabra, que al pronunciarla abrirá el sello que tiene la caja de cristal.<br>
                        -	Mm. De acuerdo lo intentare, pero antes de eso. ¿En dónde estabas Nedmass?<br>
                        -	Oh si, estuve siguiendo al mago con capucha, mientras avanzaba por la biblioteca. Por cierto el ya resolvió el acertijo para avanzar al sexto piso y derroto al forjador en su prueba. por lo que, cuando termines aquí, te guiare hacia el portal para que lo atravieses<br>
                        -	Entiendo gracias por la información Nedmass.<br>
                        -	No hay porque.<br>
                        Tras decir la palabra escrita en código binario y liberar el sello el cristal alrededor de la caja desaparece, como si de una ilusión se tratase.<br>

                        <interact with="espada_Avalon">Espada de Avalon</interact>

                    </p>
                    <p><turn to="pag30">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag30">
                <p>
                    -	¿Hm? Así que finalmente despiertas niño – una voz resuena en mi mente. Pero ¿Quién es?
                </p>
                <paragraph id="parrafo45">
                    <p>
                        -	Te preguntas ¿Quién soy? – la voz lee mis pensamientos mientras sigue hablando.<br>
                        -	Soy Avalon El Dragon de Hielo y te escogí a ti desde antes de tu nacimiento como el portador de mi poder – la voz se presenta y dice el propósito de su presencia.<br>
                        -	 Finalmente has despertado, ahora es el momento de sacar todo tu potencial – ¿yo acabo de despertar? ¿A qué se refiere?<br>
                        -	Tu/Nuestro poder siempre estuvo latente, pero necesitabas algo que encendiera la chispa, la espada, Ice Bite – entonces ahora que desperté este poder ¿Qué sigue?<br>


                    </p>
                    <p><show paragraph="parrafo46">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo46">
                    <p>
                        -	En la cumbre de esta torre se encuentra un gran peligro para toda la existencia, debemos eliminar ese peligro – pero soy solo una persona, si esa amenaza es tan peligrosa como dices ¿Qué podre hacer yo al respecto?<br>
                        -	Se ve que aun no lo entiendes, tu poder antes casi nulo, aumentó con tu despertar y en el momento dado “Liberaras” todo tu potencial – Entonces solo queda ir al séptimo piso y acabar con este mal de una vez por todas.<br>
                        -	Continúa con tu viaje, y demuéstrales a todos el poder de un dragon.<br>
                    </p>
                    <p><turn to="pag31">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag31">
                <p>
                    Cuando despierto me encuentro en un lugar totalmente extraño, no es la dimensión de los archivos de la torre, sino que parece más el mundo del que vengo.
                </p>
                <p>
                    Pero soy recibido pero una visión aterradora. En el suelo de la sala se encuentran varios cuerpos de lo que parecen ser lagartijas humanoides.<br>
                    Hay restos de lo que parecen ser puntas de flechas y un cuchillo de diseño extraño roto.<br>

                </p>
                <p><show paragraph="parrafo47">continuar</show>.</p>
                <paragraph id="parrafo47">
                    <p>
                        -	Pero ¿Quién las venció?<br>
                        -	Joven Draicon. ¿Ha vuelto en sí? – Nedmass me hace una pregunta extraña.<br>
                        -	¿Hm? ¿A qué te refieres Nedmass?<br>
                        -	 Luego de tomar la espada, simplemente caminaste hasta el portal dimensional y al llegar aquí te deshiciste de los Lezards guardianes del sexto piso.<br>
                        -	¿¡Hablas enserio!? – Nedmass me mira con impresión.
                    </p>
                    <p><turn to="pag32">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag32">
                <p>
                    -	Si, hablo enserio, realmente fue aterrador presenciar la facilidad con la que los derrotaste. Incluso salvaste a una muchacha que se encontraba rodeada.<br>
                    -	¿Una chica? – entonces eso explicaría él porque hay restos de flechas y el cuchillo roto.<br>
                    -	Aparentemente los Lezards no se percataron de su presencia al principio, por lo que los tomo por sorpresa.<br>
                    -	¿Cómo no me notaron? – eso es extraño<br>
                    -	Antes de cruzar el portal, te pusiste la capucha que activo por completo la Capa de la Noche, que te volvió indetectable.<br>
                    -	Asique eso es lo que esta capa con capucha hace.<br>
                    -	Pensé que eso ya lo sabías joven Draicon. Por lo que no dije nada al respecto
                </p>
                <p><show paragraph="parrafo48">continuar</show>.</p>
                <paragraph id="parrafo48">
                    <p>
                        -	Oye Nedmass – noto algo extraño en la sala por lo que decido preguntarle a Nedmass.<br>
                        -	¿Si? ¿Qué es lo que necesitas?<br>
                        -	Este salón no es como los demás – después de inspeccionar todo el salón. Noto no solo que no hay cuarto con puertas de madera, sino además que esta todo conectado, no hay puertas que separen los salones, solo hay tres plataformas un poco elevadas en el suelo y una puerta que seguro lleva al séptimo piso.<br>
                        -	Ciertamente, no es como los demás, es el final. Joven Draicon, detrás de esa puerta está la cumbre de la torre.<br>
                        -	Entonces la gran amenaza para la humanidad está justo ahí.<br>
                        -	¿Sabes que paso con la chica?<br>
                        -	Luego de agradecerte la chica dijo algo como: “Ya arriesgue demasiado mi pellejo, tomare lo que pueda de esa biblioteca y me marchare. Hasta nunca.”<br>
                        -	Es un alivio – realmente me alivia que la chica no pusiera en riesgo su vida en la cumbre de la torre, aunque creo que me alivia mas el hecho de que podre luchar solo contra la criatura y poner a prueba mis nuevas habilidades.

                    </p>
                    <p><turn to="pag33">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag33">
                <p>
                    -	¿Sabes que paso con el mago encapuchado?<br>
                    -	El si subió al séptimo piso y no lo he vuelto a ver.<br>
                    -	Entiendo, entonces mejor me apresuro y subo al séptimo piso.<br>
                    -	Entonces este es el adiós joven Draicon.<br>
                    -	¿Ah que te refieres Nedmass?<br>
                    -	Yo ya cumplí mi labor ahora simplemente me queda desaparecer<br>
                    -	¿Pero porque? – no entiendo la razón por la que Nedmass deba irse.<br>
                    -	Yo fui creado con el propósito de ayudarte en esta misión joven príncipe.<br>
                    -	¿¡Joven príncipe!? ¿¡Tu sabias quien era yo desde el principio verdad!? – ¿pero como sabia quien soy yo o el porqué fue creado específicamente para ayudarme, si el existe desde que la torre se construyó?<br>

                </p>
                <p><show paragraph="parrafo49">continuar</show>.</p>
                <paragraph id="parrafo49">
                    <p>
                        -	Su llegada a la torre fue predicha hace mucho tiempo, el antiguo mago de la familia real Diavoni, predijo tu llegada en busca de la espada y me creo a mi Nedmass para ayudarte a completar esa misión. Durante el tiempo que espere tu llegada aprendí de la torre y sus acertijos.<br>
                        -	Entonces por eso te ofreciste a ayudarme, pero ¿porque te preocupabas tanto por el Paradigma de lo inamovible? Pensé que lo querías para ti.<br>
                        -	Debido a su capacidad para detener el tiempo y su historia, supuse que lo mejor sería que usted lo poseyera joven príncipe.<br>
                        -	¿Entonces qué harás ahora? ¿Simplemente desaparecerás?<br>
                        -	De hecho tengo un último consejo joven príncipe – mientras Nedmass dice eso una enorme sonrisa se dibuja en su rostro.<br>
                    </p>
                    <p><turn to="pag34">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag34">
                <p>
                    -	Asi que ¿aun queda un último acertijo despues del guardián? – Nedmass me reveló el último acertijo para salir de la torre.
                </p>
                <paragraph id="parrafo50">
                    <p>
                        -	Bueno, eso es todo joven príncipe, pero he aquí mi último regalo – luego de decir eso Nedmass empieza a brillar y se convierte en un abrigo blanco.<br>
                        -	Adiós compañero, fue por un corto periodo de tiempo, pero fue divertido – me quito la capa de la noche ya que no la necesitare mas, me quito mi saco está sucio y roto por todas partes. Y me coloco el <interact with="abrigo_Nedmass">abrigo Nedmass</interact>.<br>
                        -	De acuerdo hora de terminar con esto.<br>
                        Me dirijo al séptimo piso sin saber que me espera.<br>
                        Al llegar al cumbre de la torre, se encuentra teñida por el atardecer, tengo una vista increíble de Los Prados, realmente extrañe el exterior y hubo casos en los que pensé que jamás volvería a verlos.
                    </p>
                    <p><show paragraph="parrafo51">continuar</show>.</p>
                </paragraph>
                <paragraph id="parrafo51">
                    <p>
                        Al dirigir la vista al centro de la torre veo una figura familiar arrodillada, y a una figura de gran tamaño y armadura verde obscuro sosteniendo un hacha parado justo enfrente de mi encapuchado amigo.<br>
                        Parece la escena de una ejecución, ahora que veo bien hay rastros de pelea por todo el lugar.<br>
                        -	Casi nos engañas, David – murmura la figura arrodillada con un tono burlón característico.<br>
                        -	…… - la figura negra no responde.<br>
                        -	Pensar que dejarías un cuerpo falso con un corazón de cristal para engañarnos.<br>
                        -	…… - la figura negra no muestra reacción alguna a las palabras de su víctima.<br>
                        La figura negra levanta su hacha lista para llevar a cabo la ejecución del intruso que invadió su torre.<br>
                        *zuum*
                    </p>
                    <p><turn to="pag35">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag35">
                <p>El hacha cae a gran velocidad, pero de alguna forma la intercepto con Paradoxia y el hacha que desafía a la muerte es destruida.</p>
                <p>No sé cómo, pero pude correr con suficiente velocidad para cubrir los 6 metros que nos separaban en un instante.<br>
                    David retrocede y se prepara para atacar, su objetivo ahora soy yo, en este momento la mayor amenaza es quien destrozo su arma.<br>
                    Sé que Paradoxia no servirá contra David el nigromante, asique la coloco en mi espalda y desenfundo a Ice bite. Al sacar mi espada, me siento revitalizado.<br>
                    Sujeto con firmeza mi arma y avanzo a gran velocidad contra mi enemigo, este trata de golpearme pero lo esquivo.<br>
                    *Zas**zas**zas*
                </p>
                <p><show paragraph="parrafo52">continuar</show>.</p>
                <paragraph id="parrafo52">
                    <p>
                        Un golpe, dos golpes, tres golpes<br>
                        Trato de golpear en el espacio que deja cada parte de la armadura.<br>
                        *zas**zas**zas*<br>
                        Cuatro golpes, cinco golpes, seis golpes<br>
                        Continúo esquivando los lentos ataques de David y continúo golpeando.<br>
                        *za-*<br>
                        En el momento que intente dar el séptimo golpe, David sujeta mi brazo y casi al instante comienza a apretar mi cuello.<br>
                        -	¡Gh!...
                    </p>
                    <p><turn to="pag36">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag36">
                <p> Con mi brazo izquierdo sujeto el brazo que estruja mi cuello, en un intento desesperado por liberarme.</p>
                <p>
                    -	¡Gah…!<br>
                    Debo liberarme….<br>
                    <img src="imagenes/Pelea.jpg">
                    -	¡El tiempo ah llegado portador! ¡libérate de tus ataduras y destruye a tu enemigo!<br>
                    Esa voz. ¡Es Avalon! En ese mismo momento mi mano y antebrazo son cubiertos por hielo formando una especie de guante, eso pasa también en el brazo que sostiene la espada.<br>
                    Mi respiración se siente más fría, mi cuerpo está más ligero.<br>
                    El brazo que estoy sujetando con mi brazo izquierdo se empieza a congelar.<br>
                    Entonces aprieto con más fuerza y el brazo que sostenía mi cuello se hace pedazos.<br>
                    No sé si lo habré tomado por sorpresa pero David suelta mí otro brazo y estoy nuevamente libre.<br>
                    David o la coraza sin vida que solía ser David retrocede y se prepara para atacar.<br>
                    Pero yo hago lo mismo y esta vez cortare todo de un solo tajo.
                </p>
                <p><show paragraph="parrafo53">continuar</show>.</p>
                <paragraph id="parrafo53">
                    <p>
                        Puedo sentir que la hoja de Ice Bite esta deprendiendo un frio antinatural, es como si me acompañara en la liberación de mi poder.<br>
                        David empieza a correr hacia mí y yo hago lo mismo, pero con más velocidad.<br>
                        *ZAS*<r>
                        El pecho de David está atravesado, 10 golpes en lo que pareció ser un instante, 9 cortes que desmembraron a David y una estocada que atravesó y destruyo el corazón de cristal que mantenía vivo a el cadáver de David.<br>
                        Extraigo mi espada del pecho de David, lo que queda de David cae al suelo con un ruido seco.<br>
                        -	Finalmente se termino – al caer la noche declaro mi victoria<br>
                        -	Bueno es hora de volver.<br>
                        Cuando me dispongo a resolver el acertijo que me llevara a los pies de la torre.<br>
                        Algo me toma del pie.<br>
                    </p>
                    <p><turn to="pag37">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag37">
                <p>-	¡…..! – cuando veo que es lo que me sujeta es un brazo negro con un aura verde a su alrededor.</p>
                <p>
                    -	¡¡David!!<br>
                    De los restos del perforado pecho de David sale una extraña nube negra con forma de esqueleto que me arrastra hacia él.<br>
                    Al intentar cortar su brazo mi espada solo lo atraviesa.<br>
                    ¡Maldición! ¡Si no hago algo rápido moriré!<br>
                    -	El miedo es tu peor enemigo portador, enfréntate a él y triunfaras.<br>
                    La voz de Avalon resuena en mi cabeza.<br>
                    -	¿enfrentar mis miedos eh?  ¡De acuerdo!<br>
                    La energía inunda mi cuerpo.<br>
                    Un solo corte, un solo corte.<br>
                    Y esta pesadilla habrá acabado.<br>
                    *ZASSS*<br>
                    La hoja de mi espada brilla con la luz de la luna dibujando un arco blanco.<br>
                    Realmente no sé cómo, pero logre vencer a David.
                </p>
                <p><show paragraph="parrafo54">continuar</show>.</p>
                <paragraph id="parrafo54">
                    <p>
                        El hielo se desprende de mi cuerpo mientras observo al espíritu David partirse a la mitad con un corte vertical limpio.<br>
                        -	Gane, realmente, gane. Ja jaja jajajaja.<br>
                        Rio a carcajadas tas declarar mi victoria casi imposible.<br>
                        Pero mientras lo hago no puedo evitar sentirme cansado.<br>
                        Decido descansar antes de salir de la torre.<br>
                        No sé cuánto tiempo estuve sentado junto al pedestal que contenía el acertijo para salir. Pero luego de utilizar el pedestal, tras un destello estaba a los pies de la torre.<br>
                        El caballo con el que vine aun seguía ahí, creo que ah pasado un día desde que entre y salí.<br>
                        -	Hora de volver a casa muchacho – son las palabras que le digo al caballo al momento de subirme.<br>
                        -	Y así emprendí mi viaje de regreso a casa.<br>
                    </p>
                    <p><turn to="pag38">Página Siguiente</turn></p>
                </paragraph>
            </page>
            <page id="pag38">
                <h3>EPILOGO</h3>
                <p>
                    Cabalgue toda la noche hacia el reino y cuando llegue al castillo por la mañana, mi padre estaba esperándome.<br>
                    Ese día hubo una pequeña fiesta de bienvenida, aunque estaba realmente cansado por el viaje mi padre insistió tanto que tuve que participar. Incluso Flora a quien generalmente no le agradan las fiestas participio, el resto del día pasó con normalidad.<br>
                    Lo único extraño es que el paradigma de lo inamovible desapareció sin dejar rastro, no es que en realidad lo quiera, ese artilugio habría dado mucho problemas pero me extraño que desapareciera una noche sin más.<br>
                    Lo conté a Wave sobre el hechicero encapuchado, Wave dice que el hechicero pertenece a una antigua orden encargada de mantener el equilibrio en el continente, Los Centinelas.<br>
                    El me asegura que pese a que haya desaparecido durante la batalla contra el nigromante David lo más probable es que esté vivo en alguna parte.<br>
                    Mis días pasaron con tranquilidad, y por alguna razón me siento con más energía que antes, según dice Avalon en las charlas que tenemos a veces es por el hecho de estar completo al fin.<br>
                    Realmente no se la razón, pero espero que estos días de paz y quietud duren bastante tiempo.
                </p>
                <h3>FIN</h3>
            </page>
        </div>
        <div id="wrapper">
            <div id="title"></div>
            <div id="inventoryHostWrapper">
                <h2>Inventario</h2>
                <div id="inventoryHost"></div>
            </div>
            <div id="host"></div>
        </div>
        <div id="interactionHost"></div>
        <div id="undoStageHost"></div>
        <div id="footer">
            <a id="undoHost" href="#">Deshacer</a> &bull; <a id="saveHost" href="#">Guardar</a> &bull; <a id="restoreHost" href="#">Restaurar</a> &bull; <a id="resetHost" href="#">Resetear</a>
        </div>
        <script>
$(function () {
    new DedalusWeb({
        domSource: $('#story'),
        domTarget: $('#host'),
        titleTarget: $('#title'),
        inventoryTarget: $('#inventoryHost'),
        interactionTarget: $('#interactionHost'),
        undoTarget: $('#undoHost'),
        undoStageTarget: $('#undoStageHost'),
        saveTarget: $('#saveHost'),
        restoreTarget: $('#restoreHost'),
        resetTarget: $('#resetHost'),
    });
});

        </script>
    </body>
</html>

<!--
{{ story.endGame(); }}
       <p>Quite unsurprisingly, there is even an <interact with="dummyObject">object</interact> lying around.</p> -->
