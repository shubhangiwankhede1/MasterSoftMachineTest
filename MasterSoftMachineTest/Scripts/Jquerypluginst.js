$(document).ready(function () {
    $("#wizard").steps({
        headerTag: "h2",
        bodyTag: "section",
        transitionEffect: "slideLeft",
        onStepChanging: function (event, currentIndex, newIndex) {
            // Add custom step validation
            return true;
        },
        onFinished: function (event, currentIndex) {
            $("#wizardForm").submit();
        }
    });
});
