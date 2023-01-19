[Setting name="Something"]
bool Setting_Something;

void Main() {
    print("Hello from the new plugin system!");
}

void RenderMenu()
{
  if (UI::MenuItem(Icons::Circle + "My first menu item!")) {
    print("You clicked me!!");
  }
}