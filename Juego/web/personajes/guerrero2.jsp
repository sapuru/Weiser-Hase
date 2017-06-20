<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Weiser Hase</title>

    <script src="http://olado.github.io/doT/doT.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="../js/dedalus.js"></script>
    <script src="../js/dedalus-web.js"></script>
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
        <obj id="dummyObject" inventoryName="An object">
            <action id="Examine">
                Something happens... who knows what?!
            </action>

            <action id="Get">
                <when>!story.isInInventory('dummyObject')</when>
                As you try to get it... It is clear that the inventory works!
                {{ story.putInInventory('dummyObject'); }}
            </action>

        </obj>

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
            You are in an empty page except for a <show paragraph="dummyParagraph">paragraph</show>.

            <p>Quite unsurprisingly, there is even an <interact with="dummyObject">object</interact> lying around.</p>

            <p>Looking around with more attention, you notice <turn to="otherPage">another page</turn></p>

            <paragraph id="dummyParagraph">
                Seiously, What did you expect?
            </paragraph>
        </page>

        <page id="otherPage">
            Plot twist! The story ends abruptly.
            {{ story.endGame(); }}
        </page>

    </div>

    <div id="wrapper">
        <div id="title"></div>

        <div id="inventoryHostWrapper">
            <h2>Inventory</h2>
            <div id="inventoryHost"></div>
        </div>

        <div id="host"></div>
    </div>

    <div id="interactionHost"></div>

    <div id="undoStageHost"></div>

    <div id="footer">
        <a id="undoHost" href="#">Undo</a> &bull; <a id="saveHost" href="#">Save</a> &bull; <a id="restoreHost" href="#">Restore</a> &bull; <a id="resetHost" href="#">Reset</a>
    </div>

    <script>
        $(function () {
            new DedalusWeb({
                domSource         : $('#story'),
                domTarget         : $('#host'),
                titleTarget       : $('#title'),
                inventoryTarget   : $('#inventoryHost'),
                interactionTarget : $('#interactionHost'),
                undoTarget        : $('#undoHost'),
                undoStageTarget   : $('#undoStageHost'),
                saveTarget        : $('#saveHost'),
                restoreTarget     : $('#restoreHost'),
                resetTarget       : $('#resetHost'),
            });
        });

    </script>
</body>
</html>
