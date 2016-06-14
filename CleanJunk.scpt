JsOsaDAS1.001.00bplist00�Vscript_�/*

	Apple macOS Mail Junk Box Cleaner
	
	Programatically deletes messages in the junk box that match
	specific patterns.
	
	USE THIS AT YOUR OWN RISK.  SUBTLE CHANGES CAN HAVE DRAMATIC AFFECTS.
	
*/



//debugger

var mailApp = Application("Mail")

var junk = mailApp.junkMailbox()

var messages = junk.messages()

var i;

var senders = [];
senders.push(/@[a-z0-9_]+\.[a-z0-9_]+\.top/i);	// the .top tld seems full of spam
senders.push(/accounting/i);
senders.push(/adhd/i);
senders.push(/adtauthorizeddealer/i);	// security system sold by spam, seems legit to me
senders.push(/african/i);
senders.push(/.aging/i);
senders.push(/alcohol/i);
senders.push(/alert@/i);
senders.push(/arabian/i);
senders.push(/arthritis/i);
senders.push(/asian/i);
senders.push(/auto /i);
senders.push(/bathtub/i);
senders.push(/battery/i);
senders.push(/beverly hills/i);
senders.push(/blake shelton/i);
senders.push(/bloomberg-businessweek/i);
senders.push(/breast /i);
senders.push(/cancer/i);
senders.push(/charter/i);
senders.push(/copd/i);
senders.push(/costco/i);
senders.push(/courses/i);
senders.push(/credit/i);
senders.push(/cruise/i);
senders.push(/cure/i);
senders.push(/degrees/i);
senders.push(/diabetes/i);
senders.push(/diabetic/i);
senders.push(/droz/i);
senders.push(/dr.+oz/i);
senders.push(/education/i);
senders.push(/electricity/i);
senders.push(/flashlight/i);
senders.push(/golf/i);
senders.push(/grocery/i);
senders.push(/HARP/);
senders.push(/headlamp/i);
senders.push(/health/i);
senders.push(/implant/i);
senders.push(/laithwaites/i);	// spam flavored wines, i assume
senders.push(/lasik/i);
senders.push(/lawyer/i);
senders.push(/led /i);
senders.push(/love/i);
senders.push(/match\.com/i);
senders.push(/mayo clinic/i);
senders.push(/mortgage/i);
senders.push(/mba/i);
senders.push(/new tire/i);
senders.push(/nursing/i);
senders.push(/oprah/i);
senders.push(/optima/i);
senders.push(/overstock/i);
senders.push(/oz /i);
senders.push(/patriot/i);
senders.push(/preserve/i);
senders.push(/prevent/i);
senders.push(/private jet/i);
senders.push(/probiotic/i);
senders.push(/profit/i);
senders.push(/raposo/i);
senders.push(/reverse mortgage/i);
senders.push(/schools/i);
senders.push(/settlement/i);
senders.push(/solar/i);
senders.push(/shark tank/i);
senders.push(/timeshare/i);
senders.push(/urgent/i);
senders.push(/veterans/i);
senders.push(/voip/i);
senders.push(/warranty/i);
senders.push(/waterprooofing/i);
senders.push(/weight/i);
senders.push(/wi-fi/i);
senders.push(/wireless/i);
senders.push(/wrinkles/i);
senders.push(/yacht/i);

var subjects = []

subjects.push(/asian women/i);
subjects.push(/discount airline/i);
subjects.push(/CNN NEWS\: /);
subjects.push(/dr\.oz/i);
subjects.push(/droz/i);
subjects.push(/harp program/i);
subjects.push(/just got my check/i);
subjects.push(/military tactical/i);
subjects.push(/obama/i);
subjects.push(/on ellen/i);
subjects.push(/singles/i);
subjects.push(/walk in bathtub/i);



for (i=0;i<messages.length;i++) {
	msg = messages[i];
	sender = msg.sender();
	subject = msg.subject();
	var do_delete = false;
	var j;
	for (j=0;j<senders.length;j++) {
		var found = senders[j].exec(sender);
		if (found != null) {
			console.log('Spam sender: ' + sender);
			do_delete = true;
			break;
		}
	}
	for (j=0;j<subjects;j++) {
		var found = subjects[j].exec(subject);
		if (found != null) {
			console.log('Spam subject: ' + subject);
			do_delete = true;
			break;
		}
	}
	
	if (do_delete) {
		msg.setProperty('deletedStatus', true);
	}

}

"Done"                              �jscr  ��ޭ