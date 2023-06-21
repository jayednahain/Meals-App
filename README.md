`- (#151) using grid view
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
- (#168) - adding filter items
  - here only showing the gluten free item
- (#169)***- Replace screen instead of pushing
  - (#169)-1 navigate to filter screen
  - (#169)-2 adding pop
    - after navigate from Drawer into filter screen if we click on arrow back button
      - we are having the Drawer which is still open
        - so before navigate we are pop()  drawer`
- (#170) - adding more filter options
- (#171) - return data when leaving the screen
  - after select filter . we expecting show data according to filter options
    - (#171)-1 using WillPopScope
    - (#171)-2 we are sending the data backward. when we leaving the screen
    - (#171)-3 this return will decide we are leaving the screen or not
      - we are already navigating so here we returning false
- (#172) - rendering using returned filtered data
  - So we are navigating tabScreen() to filtered() screen
    - if navigate back to filtered() to tabScreen() using pop()
      - we can receive values while pop()
    - so here we dont want to get value imedieactly  

- (#173) *** - Applying filters :
  - (#173)-1 define filters item globally
  - (#173)-2 update local filter with poping item.
  - (#173)-3 here we are trying to
    - from tab-> filter(initilize filter switchs)->tab again -> then meal screen
  - (#173)-4 so we need to import our dummy data from tab screen
  - (#173)-5 now we are sending data to category screen . before that we were using direct meal dummy data;
    - 
  
------
(#151) Using grid view
(#152) Widgets vs screen
(#152)-1 Define category model
(#152)-2 Define dummy data
(#152)-3 Single widget item for showing grid tile data
(#152)-4 Looping list dummy data
(#154) Making any widget tapable
(#155) Adding meals data
(#155)-1 Create meal model
(#155)-2 Meals screen
(#155)-3 Meals dummy data
(#157) Adding cross-screen navigation
(#157)-1 Create method for selecting a category
(#158) Passing data into the target screen (using "where" and "contains" filtering the data)
(#159) Introducing the stack widget
(#159)-1 Create widget for meal single item
(#159)-2 Add kTransparentImage as a dummy placeholder loading image
(#160) Improving meal item widget
(#160)-1 Create MealItemTrait class
(#160)-2 Use MealItemTrait in meal single item to show a single meal's metadata
(#160)-3 Create two methods to extract the first letter of a string and convert it to uppercase
(#161) Adding navigation to the meal details screen
(#162) Improving the meal detail screen (in progress)
(#163) Adding tab-based navigation
(#163)-1 This method will get the page index
(#163)-2 For reuse, use existing CategoriesScreen() and MealsScreen()
This meal screen will only show the favorite items after navigation through the tab bar
(#163)-3 *** Title is required. If the title is null, it means we are using MealsScreen() directly from the tab bar
(#164) Favorite meal functionality
(#164)-1 Add a button to the meal detail screen
(#164)-2 The function will run after pressing the favorite button
isExisting checks if a single meal object is a favorite or not
This function will be sent to the meal detail screen
tabScreen(onToggleFavorite) -> MealsScreen(onToggleFavorite: _toggleMealFavoriteStatus) -> MealDetailsScreen(onToggleFavorite)
(#165) Managing app-wide state data
(#165)-1 Fixing the problem using setState
If we add an item to favorites and remove it from the meal detail screen, we can't see any updates
So here, we are using setState to update the data in the UI
(#165)-2 Showing an info message when we update the meal
(#166) Adding a side drawer
(#166)-1 Create a drawer widget
(#166)-2 Separate single drawer items
(#167) Sending a callback function from tabScreen to the drawer for routing after tab item press
(#167)-1 Create a function that will select the screen
Find which drawer item is selected
(#168) Adding filter items
Here, only showing the gluten-free item
(#169) Replace screen instead of pushing
(#169)-1 Navigate to the filter screen
(#169)-2 Add pop
After navigating from the drawer into the filter screen, if we click on the arrow back button,
We still have the open drawer
So, before navigating, we pop() the drawer.

-----
# Project Progress

- **(#151) Using Grid View**
- **(#152) Widgets vs Screen**
  - **(#152)-1 Define Category Model**
  - **(#152)-2 Define Dummy Data**
  - **(#152)-3 Single Widget Item for Showing Grid Tile Data**
  - **(#152)-4 Looping List Dummy Data**
- **(#154) Making Any Widget Tappable**
- **(#155) Adding Meals Data**
  - **(#155)-1 Create Meal Model**
  - **(#155)-2 Meals Screen**
  - **(#155)-3 Meals Dummy Data**
- **(#157) Adding Cross-Screen Navigation**
  - **(#157)-1 Create Method for Selecting a Category**
- **(#158) Passing Data into the Target Screen (Using "Where" and "Contains" Filtering the Data)**
- **(#159) Introducing the Stack Widget**
  - **(#159)-1 Create Widget for Meal Single Item**
  - **(#159)-2 Add kTransparentImage as a Dummy Placeholder Loading Image**
- **(#160) Improving Meal Item Widget**
  - **(#160)-1 Create MealItemTrait Class**
  - **(#160)-2 Use MealItemTrait in Meal Single Item to Show a Single Meal's Metadata**
  - **(#160)-3 Create Two Methods to Extract the First Letter of a String and Convert It to Uppercase**
- **(#161) Adding Navigation to the Meal Details Screen**
- **(#162) Improving the Meal Detail Screen (In Progress)**
- **(#163) Adding Tab-Based Navigation**
  - **(#163)-1 This Method Will Get the Page Index**
  - **(#163)-2 For Reuse, Use Existing CategoriesScreen() and MealsScreen()**
    - This Meal Screen Will Only Show the Favorite Items After Navigation Through the Tab Bar
  - **(#163)-3 Title is Required. If the Title is Null, It Means We Are Using MealsScreen() Directly from the Tab Bar**
- **(#164) Favorite Meal Functionality**
  - **(#164)-1 Add a Button to the Meal Detail Screen**
  - **(#164)-2 The Function Will Run After Pressing the Favorite Button**
    - isExisting Checks If a Single Meal Object is a Favorite or Not
    - This Function Will Be Sent to the Meal Detail Screen
      - tabScreen(onToggleFavorite) -> MealsScreen(onToggleFavorite: _toggleMealFavoriteStatus) -> MealDetailsScreen(onToggleFavorite)
- **(#165) Managing App-wide State Data**
  - **(#165)-1 Fixing the Problem Using setState**
    - If We Add an Item to Favorites and Remove It from the Meal Detail Screen, We Can't See Any Updates
    - So Here, We Are Using setState to Update the Data in the UI
  - **(#165)-2 Showing an Info Message When We Update the Meal**
- **(#166) Adding a Side Drawer**
  - **(#166)-1 Create a Drawer Widget**
  - **(#166)-2 Separate Single Drawer Items**
- **(#167) Sending a Callback Function from tabScreen to the Drawer for Routing After Tab Item Press**
  - **(#167)-1 Create a Function That Will Select the Screen**
    - Find Which Drawer Item Is Selected
- **(#168) Adding Filter Items**
  - Here, Only Showing the Gluten-Free Item
- **(#169) Replace Screen Instead of Pushing**
  - **(#169)-1 Navigate to the Filter Screen**
  - **(#169)-2 Add pop**
    - After Navigating from the
