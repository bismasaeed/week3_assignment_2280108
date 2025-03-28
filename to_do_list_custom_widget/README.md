# to_do_list_custom_widget

To Do List Custom Widget :

I have created a custom widget for my to-do list application. The key benefit of this custom widget in my current goal is that it does not rebuild the entire body of the application. Instead, it only rebuilds the specific row that the user interacts with.
When a user clicks the checkbox, it automatically triggers the onChanged attribute of the Checkbox widget. This, calls a function from the homepage. On the homepage, I have implemented a setState function, which updates the state of only the specific row that was clicked, rather than reloading the entire UI.