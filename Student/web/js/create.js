const insertBeforeElement = document.getElementById("btn-copy");
var parentQuestion = document.getElementById('form');
var parentAnswer = document.getElementById('createTable');

function duplicateQuestion() {
    const node = document.getElementById("createTable");
    const clone = node.cloneNode(true);
    if (node.parentNode === parentQuestion) {
        // Insert the new node before the reference node
        parentQuestion.insertBefore(clone, node);
    } else {
        // Handle the case where the reference node is not a child of the parent node
        console.error("The reference node is not a child of the parent node. The parent node is: ", node.parentNode);
    }
    // document.getElementById("createTable").parentElement.insertBefore(clone, insertBeforeElement);
}

function duplicateAnswer() {
    const node = document.getElementById("createAnswer");
    const clone = node.cloneNode(true);
    if (node.parentNode === parentAnswer) {
        // Insert the new node before the reference node
        parentAnswer.insertBefore(clone, node);
    } else {
        // Handle the case where the reference node is not a child of the parent node
        console.error("The reference node is not a child of the parent node. The parent node is: ", node.parentNode);
    }
    // document.getElementById("createAnswer").parentElement.insertBefore(clone, insertBeforeElement);
}