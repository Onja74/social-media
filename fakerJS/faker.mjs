import { faker } from '@faker-js/faker';
import fs from "fs";
let data ="INSERT INTO account VALUES";

let firstName = faker.name.firstName().replace('\'', '');
   let lastName = faker.name.lastName().replace('\'', '');

fs.writeFile('resultat.sql', data, (err)=>{
    if(err){
        console.log(err);
    }
})