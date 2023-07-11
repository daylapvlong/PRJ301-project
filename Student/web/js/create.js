const insertBeforeElement = document.getElementById("btn-copy");
var parentQuestion = document.getElementById('form');
var parentAnswer = document.getElementById('createTable');
let button = document.getElementById('btn-delete');

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

// when there is only one answer left, the delete button will be disabled and the user cannot delete the answer

function getAnswerCount() {
    var parent = document.getElementById("questionContainer");
    var nodesSameClass = parent.getElementsByClassName("formAnswer");
    console.log(nodesSameClass.length);
}

function deleteQuestion() {
    var parent = document.getElementById("wrapper");
    var nodesSameClass = parent.getElementsByClassName("questionContainer");
    // when there is only one question left, the delete button will be disabled
    if (nodesSameClass.length > 1) {
        const element = document.getElementById("createTable");
        element.remove();
    }
}

function deleteAnswer() {
    const element = document.getElementById("createAnswer");
    element.remove();
}