## First get provider Package from flutter pub dev

## If you have multiple provider,you should wrap Material Widget with MultiProvider

## Your model should extends with ChangeModifier
class FootBallerModel extends ChangeNotifier

## If u need change something for your model,u must use notifyListener

void funtionName() {
    //TODO
    notifyListeners();
}

## If you want to call your model function and listener to your value,u must wrap widget with Consumer

Consumer<ModelName>{
    builder:(context,ModelObject,child)=>CustomWidget()
}
