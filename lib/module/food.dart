class Food{
  final String image;
  final String title;
  final String description;
  final Function function;

  Food({this.title,this.description,this.image,this.function});
}

class FoodList{
  final List<Food> foodList;
  final String name;

  FoodList(this.foodList,this.name);

}