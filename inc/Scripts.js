
function rejectWhiteSpace(myForm, elementName, message) {
    var inputValue = myForm.elements[elementName].value;
    var regExpress = /\S/

    if (inputValue == "" || regExpress.test(inputValue) == false) {
        alert(message);
        myForm.elements[elementName].focus();
        return false;
    }

    return true;
}

function checkQuantity(myForm, elementName, message) {
    var inputValue = myForm.elements[elementName].value;

    if (isNum(inputValue) && inputValue > 0)
        return true;

    alert(message);
    myForm.elements[elementName].focus();
    return false;
}

function checkSearchBoxes(myForm, message) {

    var inputItemValue = myForm.elements["ItemIDText"].value;
    var inputQtyValue = myForm.elements["QuantityText"].value;

    if (inputItemValue.length > 0 && isNum(inputQtyValue) && inputQtyValue > 0)
        return true;

    alert(message);
    return false;
}
function checkCouponBox(myForm, message) {

    var inputItemValue = myForm.elements["CouponIDText"].value;
    if (inputItemValue.length > 0)
        return true;

    alert(message);
    return false;
}
function isNum(value) {
    if (value == "")
        return false;

    for (var i = 0; i < value.length; i++)
        if (value.charAt(i) < "0" || value.charAt(i) > "9")
        return false;

    return true;
}

function footnote() {
	open("/misc/footnotes/je_auto.html", "sch_win", "width=250,height=287,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no");
}

function footnote2() {
	open("/misc/footnotes/je_sport.html", "sch_win", "width=250,height=188,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no");
}

function footnote3() {
    open("/misc/footnotes/je_power.html", "sch_win", "width=300,height=388,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no");
}

function newWindow(url, wide, high) {
    myNewWin = window.open(url, "myWin", "width=" + wide + ",height=" + high + ",left=0,top=0,status=no,scrollbars=yes,resizable=yes,toolbar=no,location=no,menubar=no");
}

function openwin(url, name, specs) {
    var win = window.open(url, name, specs);
}

imagename = '';
function enlrge(imgnme) {
    lrgewin = window.open("about:blank", "", "height=200,width=200")
    imagename = imgnme;
    setTimeout('update()', 640)
}
function win(fileName) {
    myFloater = window.open('', 'myWindow', 'scrollbars=auto,status=no,width=400,height=600')
    myFloater.location.href = fileName;
}
function update() {

    doc = lrgewin.document;
    doc.open('text/html');
    doc.write('<HTML><HEAD><TITLE>JEPistons.com<\/TITLE><\/HEAD><BODY bgcolor="white" onLoad="if  (self.resizeTo)self.resizeTo((document.images[0].width+0),(document.images[0].height+0))" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginheight="0" marginwidth="0">');
    doc.write('<IMG SRC="' + imagename + '">');
    doc.write('<\/BODY><\/HTML>');
    doc.close();
}


function ChangeDiv(the_div, the_change) {
    var the_style = getStyleObject(the_div);
    if (the_style != false) {
        the_style.display = the_change;
    }
}

function HideContent() {
    ChangeDiv("AddlSpecsDiv", "none");
    ChangeDiv("ApplicationsDiv", "none");
    ChangeDiv("ItemContentsDiv", "none");
    ChangeDiv("InstructionsDiv", "none");
}

function HideContentEU() {
    ChangeDiv("AddlSpecsDiv", "none");
    ChangeDiv("ImportantNotesDiv", "none");
    ChangeDiv("ItemContentsDiv", "none");
}

function SelectTab(objectId) {
    //Set All Tabs Inactive
    document.all("AddlSpecs").className = "TabIAddlSpecs";
    document.all("Instructions").className = "TabIInstructions";
    document.all("ItemContents").className = "TabIItemContents";
    document.all("Applications").className = "TabIApplications";
    //Set Active Tab based on what was passed in.
    document.all(objectId.id).className = "TabA" + objectId.id;

}

function getStyleObject(objectId) {
    if (document.getElementById && document.getElementById(objectId)) {
        return document.getElementById(objectId).style;
    } else if (document.all && document.all(objectId)) {
        return document.all(objectId).style;
    } else {
        return false;
    }
}

function trimAll(str) {
    var str = str.replace(/^\s\s*/, ''),
		ws = /\s/,
		i = str.length;
    while (ws.test(str.charAt(--i)));
    return str.slice(0, i + 1);
}

