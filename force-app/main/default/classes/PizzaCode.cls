public class PizzaCode {
    Private Double Cheese_Toppings_quantity,Pepporoni_Toppings_quantity,Ham_Toppings_quantity,numberOfTopping;
    //Private Double Cheese_Toppings,Pepporoni_Toppings,Ham_Toppings;
    Public string small_pizza, medium_pizza, large_pizza,size,topping;
    Private Double price,Small,Medium,Large;
    Public PizzaCode()
    {
        Cheese_Toppings_quantity = 10; 	
        Pepporoni_Toppings_quantity = 20;
        Ham_Toppings_quantity = 30;
        Small = 10;
        Medium = 12;
        Large = 14;
    }
    public String getDescription(){
        System.debug('Following are the Quantity of toppings and sizes of Pizza with rates');
      	system.debug('Available Cheese toppings are: '+Cheese_Toppings_quantity);
        system.debug('Available Pepporoni toppings are: '+Pepporoni_Toppings_quantity);
        system.debug('Available Ham Toppings are: '+Ham_Toppings_quantity);
        system.debug('Rate of 1 Small Pizza is: '+Small);
        system.debug('Rate of 1 Medium Pizza is: '+Medium);
        system.debug('Rate of 1 Large Pizza is: '+Large);
        return null;
    }
    public Double calcCost(string size, string topping, Double numberOfTopping){
        Double ToppingRates = 2 * numberOfTopping;      //as specified $2 per topping
        if(size == 'small_pizza' && (topping == 'ham' || topping == 'cheese' ||topping == 'Pepporoni')){
        	price = Small + ToppingRates;
            system.debug('Price of Small pizza with topping is ' +price);
        }
        else if(size == 'medium_pizza'&& (topping == 'ham' || topping == 'cheese' ||topping == 'Pepporoni')){
            price = Medium + ToppingRates;
           	system.debug('Price of Medium pizza with topping is ' +price);
            }
        else if(size == 'large_pizza'&& (topping == 'ham' || topping == 'cheese' ||topping == 'Pepporoni')){
            price = Large + ToppingRates;
            system.debug('Price of Large pizza with topping is ' +price);
        }
        return null;
    }
}