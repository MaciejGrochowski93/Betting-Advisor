        var number = document.querySelector('input[class = "numberProb"]');
        number.oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                if (e.target.value.length == 0) {
                    e.target.setCustomValidity("In order to calculate probability, you need to insert the odds.");
                } else if (e.target.value > 1000) {
                    e.target.setCustomValidity("Please, insert a number between 1.01 and 1000.");
                } else if (e.target.value < 1.01) {
                    e.target.setCustomValidity("Please, insert a number between 1.01 and 1000.");
                } else
                    e.target.setCustomValidity("The number you provide needs to have a maximum of 2 decimal places.");
            }
        };