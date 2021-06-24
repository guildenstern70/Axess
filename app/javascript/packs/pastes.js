(function() {

    initializeTooltips();
    handleCopy();

})();


function initializeTooltips() {
    const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    const tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
}

function handleCopy() {
    document.getElementById("clipcopy").onclick = function() {

        /* Get the text area field */
        const copyText = document.getElementById("pasteText");

        /* Select the text field */
        copyText.select();
        copyText.setSelectionRange(0, 99999); /* For mobile devices */

        /* Copy the text inside the text field */
        document.execCommand("copy");
        document.getElementById("clipcopy").innerHTML = "Copied";
    };
}

