- (#151) using grid view
- (#152) widgets vs scrren
  - (#152)-1 define category model
  - (#152)-2 define dummy data
  - (#152)-3 single widget item for showing grid tile data
  - (#152)-4 looping List dummy data
- (#154) makeing any widget tapabale
- (#155) - adding meals data
  - (#155)-1 create meal model
  - (#155)-2 meals screen
  - (#155)-3 meals dummy data
- (#157) adding cross screen navigation
  - (#157)-1 creating method for selecting category
- (#158) - passing data into target screen (using where and contains filtering the data)
- (#159) - introducing the stack widget
  - (#159)-1 created widget for meal single item
  - (#159)-2 added kTransparentImage as dummy placeholder loading image
- (#160)*** - improving meal item widget
  - (#160)-1 create MealItemTrait class
  - (#160)-2 MealItemTrait used in mealSingle item to show a single meal meta data
  - (#160)-3 created two method for extract string 1st letter into upper case
- (#161) - adding navigation to the meal details screen
- (#162) - improving the meal detail screen (started)
- (#163) - adding tab based navigation
  - (#163)-1 - this method will get page index
  - (#163)-2 - for reuse using existing CategoriesScreen() and MealsScreen()
    - this meal screen will only show the favorite item
      - after navigation though tabBar 
  - (#163)-3 *** title was required. if title is null its mean we using MealsScreen() direct from tab bar
- (#164) - favorite meal functionality
  - (#164)-1 adding button to meal detail screen
  - (#164)-2 function will run after pressing the favorite button
    - isExisting is checking if a single meal object is favorite or not
    - this function will send to meal detail screen 
      - tabScreen(onToggleFavorite) -> MealsScreen(onToggleFavorite:_toggleMealFavoriteStatus ) -> MealDetailsScreen(onToggleFavorite)
- (#165) - managing App-wide state data
  - (#165)-1 fixing problem using set state
    - if we add item in favorite and remove from meal detail screen we cant see any update
    - so here we are using set state for updating data in UI
  - (#165)-2 showing info message when we update the meal
- (#166) - adding side drawer
  - (#166)-1 creating a drawer widget
  - (#166)-2 single drawer item separated
-(#167)- sending a callback function tabScreen -> drawer for routing after tab item press
  - (#167)-1 created function which will select screen
    - finding which drawer item is selected
- 