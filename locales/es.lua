local Translations = {
    error = {
        no_chemicals = "Te faltan productos químicos",
        no_trimming_scissors = "Necesitaras unas tijeras para cortar eso",
        no_coca_leaf = "Necesitas hojas de cocaína",
        no_bakingsoda_amount = "Necesitaras %{value} bicarbonato de sodio",
        no_bakingsoda = "Necesitas bicarbonato de sodio!",
        no_cokain_amount = "Necesitaras %{value} cocaina!",
        no_cokain = "Necesitas cocaina!",
        not_all_items = "No tienes los artículos que necesitas",
        already_processing = "Ya procesaste algo",
        not_enough_small_bricks = "Necesitas %{value} paquetes de cocaína",
        no_poppy_resin = "No tienes resina de amapola",
        no_lsa = "Te estás perdiendo LSA",
        no_thionyl_chloride = "Te estás perdiendo el cloruro de tionilo",
        too_far = "Procesado cancelado por abandon del área",
        no_sulfuric_acid = "Te falta ácido clorhídrico",
        no_hydrochloric_acid = "Te falta ácido sulfúrico",
        no_sodium_hydroxide = "Te falta hidróxido de sodio",
        no_liquidmix = "Te falta mezcla química líquida",
        no_chemicalvapor = "Te estás perdiendo vapores químicos",
        no_methtray = "Te estás perdiendo una bandeja de metanfetamina",
        no_cannabis = "Te estás perdiendo el cannabis",
        no_marijuhana = "Te estás perdiendo la marihuana",
        enough_temp = "La temperatura ya está bien",
        temp_too_low = "Temperatura demasiado baja, La mezcla es inutilizable",
        temp_too_high = "Temperatura demasiado alta, La mezcla es inutilizable",
    },
    success = {
        temp_up = "Temperatura aumentada",
        temp_down = "Temperatura bajada",
        hydrochloric_acid = "El proceso de ácido clorhídrico fue exitoso",
        sodium_hydroxide = "El proceso de hidróxido de sodio fue exitoso",
        sulfuric_acid = "El proceso de ácido sulfúrico fue exitoso",
        lsa = "El proceso de LSA fue exitoso",
        coke = "Hojas de cocaína procesadas con éxito",
        coke_small_brick = "Polvo de cocaína cortado con éxito",
        coke_brick = "Paquete de cocaína presionado para su distribución",
        heroin = "Heroína procesada con éxito",
        thionyl_chloride = "Cloruro de tionilo procesado con éxito",
        meth = "Metanfetamina hecha con éxito",
        chemicals = "Químicos recolectados con éxito",
        coca_leaf = "Hojas de coca recolectadas con éxito",
        poppyresin = "Amapolas de opio recolectadas con éxito",
        lsd = "LSD producido con éxito",
        cannabis = "Cannabis recolectado con éxito",
        marijuana = "Marihuana producida con éxito",
        joint = "Has liado con éxito un porro",
    },
    info = {

    },
    progressbar = {
        processing = "Procesando",
        packing = "Envasando",
        collecting = "Recolectando",
        pickup_chemicals = "Recogiendo",
        temp_up = "Subiendo Tempe",
        temp_down = "Bajando Tempe",
        rolling_joint = "Enrrolando",
    },
    items = {
        hydrochloric_acid = "Ácido clorhídrico",
        sodium_hydroxide = "Hidróxido de sodio",
        sulfuric_acid = "Ácido sulfúrico",
        lsa = "LSA",
        coca_leaf = "Hoja de coca",
        trimming_scissors = "Tijeras",
    },
    menu = {
        chemMenuHeader = "Menú de química",
        chemicals = "x1 quimicos",
        close = "Cerrar",
        closetxt = "Cerrar menu",
    },
    target = {
        process_thionyl_chloride = "Procesar cloruro de tionilo",
        talk_to_walter = "hablar con walter",
        talk_to_draco = "hablar con Draco",
        chemmenu = "Compuestos químicos",
        methprocess = "Cocinar meta",
        methtempup = "Subir temperatura",
        methtempdown = "Bajar temperatura",
        bagging = "Emabalar",
        keypad = "Salir",
        cokeleafproc = "Procesar coca",
        cokepowdercut = "Refinar",
        weedproces = "Procesar hierva",
        heroinproces = "Mezclar Proceso",
        heroinproc = "Procesar amapola",
        pickCocaLeaves = "Recojer coca",
        pickHeroin = "Recojer Resina",
        pickWeed = "Recojer Hierva",
        pickSodium = "Recojer Sodio",
        pickSulfuric = "Recojer Azufre",
        pickChemicals = "Recojer Quimicos",
        hydrochloricacid = "Recojer ácido clorhídrico",
    },
    drawtext = {
        process_lsd = "~g~E~w~ - Procesar LSD",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
