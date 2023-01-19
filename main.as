[Setting name="Something"]
bool Setting_Something;

bool showInterface = true;// if reloaded in editor, will open menu. Otherwise, will close instantly since not in editor

void Main() {
    print("Hello from the new plugin system!");
}



void RenderMenu() {
    if (UI::MenuItem("\\$f0f" + Icons::Random + "\\$fff Divide Maps Plugin", "", showInterface)) {
        if (GetApp() is null) {return;}
        if (GetApp().Editor is null) {
            UI::ShowNotification("ouvre le map editor ta mere la pute");
            return;}
        showInterface = !showInterface;
	}
}

uint currentTab = 0;
void RenderInterface()
{
    UI::SetNextWindowPos(100, 100, UI::Cond::Once);
    switch (currentTab) {
    case 0:
        UI::SetNextWindowSize(440, 550, UI::Cond::Always);
        break;
    case 1:
        UI::SetNextWindowSize(440, 510, UI::Cond::Always);
        break;
    case 2:
        UI::SetNextWindowSize(440, 390, UI::Cond::Always);
        break;
    case 3:
        UI::SetNextWindowSize(440, 600, UI::Cond::Always);
        break;
    case 4:
        UI::SetNextWindowSize(440, 300, UI::Cond::Always);
        break;
    case 5:
        UI::SetNextWindowSize(440, 300, UI::Cond::Always);
        break;
    default:
       UI::SetNextWindowSize(440, 600, UI::Cond::Always);
        break;
    }
}
