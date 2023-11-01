addEventListener('DOMContentLoaded', () => {
    const maxScore = parseInt($('#max_score').text());

    $.validator.addMethod("rangeFormat", function(value, element) {
        if(!/^\d+-\d+$/.test(value)) return false;

        const range = value.split('-');

        return !(parseInt(range[0]) < 1 || parseInt(range[1]) > maxScore-1 || parseInt(range[0]) >= parseInt(range[1]));
    });

    $('form').validate({
        rules: {
            medium_range: {
                required: true,
                rangeFormat: true
            },
            low_push_days: {
                required: true,
                number: true
            },
            medium_push_days: {
                required: true,
                number: true
            },
            high_push_days: {
                required: true,
                number: true
            }
        },
        messages: {
            medium_range: {
                rangeFormat: `Please write in format 1-${maxScore-1}`
            },
            manager_name: {
                alpha: 'Please Write alpha only'
            },
            primary_email: {
                isEmail: 'Please Write Valid Email'
            },
            'bank_email': {
                isEmail: 'Please Write Valid Email'
            },
            save_airfield_photo_ids: {
                required: 'Please attache photo'
            }
        },
        errorElement: 'span',
        errorPlacement: function (error, element) {
            error.addClass('invalid-feedback');
            element.closest('.form-group').append(error);
        },
        highlight: function (element, errorClass, validClass) {
            $(element).addClass('is-invalid');
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass('is-invalid');
        }
    });
});

