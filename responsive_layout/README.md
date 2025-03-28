# responsive_layout

Responsive Layout :

I have built a responsive layout using MediaQuery, which checks if the screen height is greater than 600 pixels. This condition is stored in a boolean variable, isDesktop.
In the AppBar, the leading attribute uses a ternary operator to determine whether to display an IconButton of menu for opening the drawer. If isDesktop is true, nothing is shown; otherwise, the button appears on mobile screens. Similarly, the drawer attribute ensures that the drawer is only displayed on mobile devices.
For the body, a sidebar with a container is shown on desktops, while on mobile screens, a centered person icon with a menu button on the left is displayed.