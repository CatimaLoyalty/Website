function initMobileMenu(menuId) {
    const menu = document.getElementById(menuId)

    const btnId = menu.dataset.controller
    const btn = document.getElementById(btnId)

    document.addEventListener('click', e => {
        // On button
        const isTrigger = e.target?.id === btnId
        if (isTrigger) {
            btn.classList.toggle('sign-close')
            menu.classList.toggle('hide-in-phone')
            return
        }
        
        const isInsideMenu = e.target?.id === menuId || menu.contains(e.target)
        if (isInsideMenu) return

        // Outside menu
        const isMenuHidden = menu.classList.contains('hide-in-phone')
        if (isMenuHidden) return

        // Outside & Menu shown
        btn.classList.remove('sign-close')
        menu.classList.add('hide-in-phone')
    })
}

window.addEventListener("DOMContentLoaded", _ => {
    initMobileMenu("header-menu")
})