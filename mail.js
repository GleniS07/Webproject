const firebaseConfig = {
    apiKey: "AIzaSyAsL7XZD-Uzksziv-HOqyfWcntGDlq5g2A",
    authDomain: "contactform-96dfb.firebaseapp.com",
    databaseURL: "https://contactform-96dfb-default-rtdb.firebaseio.com",
    projectId: "contactform-96dfb",
    storageBucket: "contactform-96dfb.appspot.com",
    messagingSenderId: "33086416237",
    appId: "1:33086416237:web:7738f596a325f28c88e664"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

var ContactFormDB = firebase.database().ref('ContactForm');

// Change 'Submit' to 'submit'
document.getElementById('ContactForm').addEventListener('submit', submitForm);

function submitForm(e) {
    e.preventDefault();

    var name = getElementVal('name');
    var emailid = getElementVal('emailid');
    var msgContent = getElementVal('MsgContent');

    saveMessage(name, emailid, msgContent);

    // Show temporary notification message
    showNotification("Submitted");

    // Optionally, clear the form after submission
    document.getElementById('ContactForm').reset();
}

const saveMessage = (name, email, msgContent) => {
    var newContactForm = ContactFormDB.push();

    newContactForm.set({
        name: name,
        emailid: email,
        msgContent: msgContent,
    });
};

const getElementVal = (id) => {
    return document.getElementById(id).value;
};

const showNotification = (message) => {
    const notification = document.createElement('div');
    notification.innerText = message;
    notification.style.position = 'fixed';
    notification.style.top = '10px';
    notification.style.right = '10px';
    notification.style.backgroundColor = '#4CAF50';
    notification.style.color = 'white';
    notification.style.padding = '10px';
    notification.style.borderRadius = '5px';
    notification.style.zIndex = '1000';

    document.body.appendChild(notification);

    // Remove the notification after 7 seconds
    setTimeout(() => {
        notification.remove();
    }, 7000);
};
