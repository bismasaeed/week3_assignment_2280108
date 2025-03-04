# week3_assignment_2280108

I would like to kindly request to work individually on the group assignment, as I am not comfortable working with any other student. However, if it is necessary to assign me to a group, I am fine with being placed with female students. I would appreciate your consideration of my request and understanding.
1. Bisma Saeed (2280108)



Responsive Layout :

I have built a responsive layout using MediaQuery, which checks if the screen height is greater than 600 pixels. 
This condition is stored in a boolean variable, `isDesktop`.  
In the AppBar, the leading attribute uses a ternary operator to determine whether to display an IconButton of menu for opening the drawer. 
If isDesktop is true, nothing is shown; otherwise, the button appears on mobile screens. 
Similarly, the drawer attribute ensures that the drawer is only displayed on mobile devices.  
For the body, a sidebar with a container is shown on desktops, while on mobile screens, a centered person icon with a menu button on the left is displayed.

To Do List Custom Widget :

I have created a custom widget for my to-do list application. 
The key benefit of this custom widget in my current goal is that it does not rebuild the entire body of the application. 
Instead, it only rebuilds the specific row that the user interacts with.  
When a user clicks the checkbox, it automatically triggers the onChanged attribute of the Checkbox widget. This, calls a function from the homepage. 
On the homepage, I have implemented a setState function, which updates the state of only the specific row that was clicked, rather than reloading the entire UI.
