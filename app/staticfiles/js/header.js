function onload() {
    const navLinks = document.querySelectorAll('.nav-handle-active .nav-link')

    navLinks.forEach((item) => {
        item.addEventListener('click', handleClick)
    })

}

function handleClick(e) {
    const navLinks = document.querySelectorAll('.nav-handle-active .nav-link')

    navLinks.forEach((item) => {
        item.classList.remove('active')
    })

    e.target.classList.add('active')
}