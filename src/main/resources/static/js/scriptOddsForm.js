        var number = document.querySelector('input[type="number"]');
        number.oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                if (e.target.value.length == 0) {
                    e.target.setCustomValidity("In order to calculate odds, you need to insert your probability.");
                } else if (e.target.value > 99) {
                    e.target.setCustomValidity("Please, insert a number between 1 and 99.");
                } else if (e.target.value < 1) {
                    e.target.setCustomValidity("Please, insert a number between 1 and 99.");
                } else
                    e.target.setCustomValidity("The number you provide needs to have a maximum of 2 decimal places.");
            }
        };