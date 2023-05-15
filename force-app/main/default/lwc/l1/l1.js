import { LightningElement } from 'lwc';
import CreateAccount from '@salesforce/apex/AccountController.CreateAccount';
import CreateContact from '@salesforce/apex/ContactController.CreateContact';
export default class L1 extends LightningElement {
    name;
    phone;
    FirstName;
    LastName;
    value = 'Mr.';

    get options() {
        return [
            { label: 'Mr.', value: 'Mr.' },
            { label: 'Ms.', value: 'Ms.' },
        ];
    }
    handleChange(event){
        this.value=event.detail.value;
    }


    SubmitHandler(){

        this.name = this.template.querySelector('lightning-input[data-formfield="name"]').value;
        this.phone = this.template.querySelector('lightning-input[data-formfield="phone"]').value;
       console.log(this.name);
        CreateAccount({Name:this.name,Phone:this.phone})
        .then(result=>{
            console.log("Success="+result);
        })
        .catch(error=>{
            console.log("Error="+error);
         });
        
    }
    SaveHandler(){
        
            this.isActive=true;
            
               this.FirstName = this.template.querySelector('lightning-input[data-formfield="FirstName"]').value;
        this.LastName = this.template.querySelector('lightning-input[data-formfield="LastName"]').value;
console.log(this.FirstName);
console.log(this.firstName);

    
    
    CreateContact({salutation:this.Salutation,firstName:this.FirstName,lastName:this.LastName})
    .then(result=>{
         console.log("Success="+result);
    })
    .catch(error=>{
      console.log("Error="+error);
    })
    

}


}