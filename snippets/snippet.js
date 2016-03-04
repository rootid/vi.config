//attachEvent v/s addEventListener	+ cb as a reference

function listenEvent(element, eventName, callback) {
    if (element.addEventListener) {
        element.addEventListener(eventName, callback, false); //do not bubble up the event
    } else if (element.attachEvent) {
        element.attachEvent("on" + eventName, callback);
    }
}

listenEvent(document.getElementById("doc_id"), "click/focus/", function () {
    // Event handler
});

