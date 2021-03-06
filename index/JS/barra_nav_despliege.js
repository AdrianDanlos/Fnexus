
let deploymenu_event = document.getElementById("deploymenu_event");
let deploymenu = document.getElementById("deploymenu");


deploymenu.addEventListener("click", function () {
    // mostrar barra buscadora
    if (deploymenu_event.value == "cerrado") {

        deploymenu.style.transform = "rotate(90deg)";
        deploymenu.style.paddingLeft = "3%";

        let contbuscar = document.getElementById("search_container");
        let navcont = document.getElementById("nav_container");
        let tagscont = document.getElementById("tags_container");

        contbuscar.style.visibility = "visible";
        navcont.style.height = "160px";
        navcont.style.gridTemplateRows = "37% 63%";

        deploymenu_event.value = "abierto";

    } else {
        // ocultar barra buscadora
        deploymenu.style.transform = "rotate(0deg)";
        deploymenu.style.paddingLeft = "0%";

        let contbuscar = document.getElementById("search_container");
        let navcont = document.getElementById("nav_container");
        let tagscont = document.getElementById("tags_container");

        contbuscar.style.visibility = "hidden";
        navcont.style.gridTemplateRows = "100% 0";
        navcont.style.height = "60px";

        deploymenu_event.value = "cerrado";
    }
});