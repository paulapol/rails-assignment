document.addEventListener("turbolinks:load", function () {
    console.log("test")
    var slider = document.getElementById('range');
    console.log(slider)
    var slider2 = noUiSlider.create(slider, {
        start: [5, 20],
        connect: true,
        range: {
            'min': 5,
            'max': 20
        },
        margin: 1,
        pips: {
            mode: 'steps',
            density: 5,
        }
    });

})

console.log("test")
