import 'food.dart';

List<String> orderItems=[];


 void fellCheck(String item){
  orderItems.add(item);
  print(orderItems);
 }

List<Food> cupcakes= [
  Food(image: 'assets/cupcake.png',
    title:'Chocolate Cupcake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
  Food(image:'assets/cupcake_two.png',
    title:'Red Velvet Cupcake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
  Food(image: 'assets/cupcake_sample.png',
    title:'Fruitty Cupcake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
];

List<Food> cakes=[
  Food(image: 'assets/cupcake.png',
    title:'Chocolate Cake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
  Food(image:'assets/cupcake_two.png',
    title:'Red Velvet Cake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
  Food(image: 'assets/cupcake_sample.png',
    title:'Fruitty Cake',
    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',function: fellCheck,),
];