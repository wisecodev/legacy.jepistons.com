	function openwin(url, name, specs) {
		var win = window.open(url, name, specs);
	}
	
	imagename='';
	function enlrge(imgnme) {
		lrgewin=window.open("about:blank","","height=200,width=200")
		imagename=imgnme;
		setTimeout('update()',640)
	}
	function win(fileName)
		{
		myFloater=window.open('','myWindow','scrollbars=auto,status=no,width=400,height=600')
		myFloater.location.href=fileName;
		}
	function update() {
	
	doc=lrgewin.document;
	doc.open('text/html');
	doc.write('<HTML><HEAD><TITLE>JEPistons.com<\/TITLE><\/HEAD><BODY bgcolor="white" onLoad="if  (self.resizeTo)self.resizeTo((document.images[0].width+0),(document.images[0].height+0))" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginheight="0" marginwidth="0">');
	doc.write('<IMG SRC="' + imagename + '">');
	doc.write('<\/BODY><\/HTML>');
	doc.close();
	}