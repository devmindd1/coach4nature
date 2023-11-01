module.exports = class UserDto{
    constructor(model){
        this.id = model.id;
        this.email = model.email;
        this.name = model.name;
        this.img = model.img;
        this.phone = model.phone;
        this.state = model.state;
        this.country_id = model.country_id;
        this.gender_id = model.gender_id;
    };
};