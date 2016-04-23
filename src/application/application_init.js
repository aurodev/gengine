STRING(

    var gengineApp;

    function __init()
    {
        gengineApp = Module.gengineApp;

        gengineApp.setup();
        gengineApp.start();

        Main.start();

        function update()
        {
            gengineApp.runFrame();

            Main.update(gengineApp.getTimeStep());

            if(gengineApp.isRunning())
            {
                setTimeout(update, 1);
            }
        }

        update();
    }

    __init();
);