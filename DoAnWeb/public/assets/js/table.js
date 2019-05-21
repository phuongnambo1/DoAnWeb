function onRowClickDelete(a) {
    var row = document.getElementById(a);
    row.parentNode.removeChild(row);
}