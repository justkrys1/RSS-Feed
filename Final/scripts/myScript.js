$(document).ready(function () {
    $('#artWeather').weatherfeed(['99217'], {
        unit: 'f',
        image: true,
        country: false,
        highlow: true,
        wind: true,
        humidity: false,
        visibility: false,
        sunrise: false,
        sunset: false,
        forecast: false,
        link: true
    });
});
