        var number = document.querySelector('input[class = "numberMoney"]');
        number.oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                if (e.target.value.length == 0) {
                    e.target.setCustomValidity("In order to calculate a surebet, you need to insert the amount of money you want to invest.");
                } else if (e.target.value > 100000) {
                    e.target.setCustomValidity("Please, insert a number between 1 and 100000.");
                } else if (e.target.value < 1) {
                    e.target.setCustomValidity("Please, insert a number between 1 and 100000.");
                }
            }
        };