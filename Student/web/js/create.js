function duplicateQuestion(event) {
    event.preventDefault()
    const node = document.getElementById("createTable");
    const clone = node.cloneNode(true);
    document.body.appendChild(clone);
}

function duplicateAnswer(event) {
    event.preventDefault()
    const node = document.getElementById("createAnswer");
    const clone = node.cloneNode(true);
    document.body.appendChild(clone);
}