document.addEventListener("DOMContentLoaded", function() {
    let links = document.getElementsByClassName("topnav");
    let thisURL = window.location.pathname.split("/").pop().split(";").shift();
    //alert(thisURL);
    if (thisURL === "") {
        links.item(1).classList.add("active");
    }
    else {
        for (let i = 0; i < links.length; i++) {
            let linkURL = links.item(i).getAttribute("href");
            if (linkURL !== null) {
                linkURL = linkURL.split("/").pop();
            }
            if (linkURL === thisURL) {
                links.item(i).classList.add("active");
            }
        }
    }
});
