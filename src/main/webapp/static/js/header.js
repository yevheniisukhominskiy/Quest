document.addEventListener('DOMContentLoaded', function() {
    const menuItems = document.querySelectorAll('.navbar li a'); // Выбираем все ссылки в навигации

    menuItems.forEach(item => {
        item.addEventListener('click', function(event) {
            // Убираем класс active у всех элементов
            menuItems.forEach(i => i.classList.remove('active'));
            // Добавляем класс active только к текущему элементу
            this.classList.add('active');
            // Убираем event.preventDefault(), чтобы ссылки работали
        });
    });
});
