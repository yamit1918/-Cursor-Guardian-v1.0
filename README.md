# -Cursor-Guardian-v1.0
Cursor Guardian is a lightweight Windows utility built in AutoHotkey. It solves the common "Cursor Drift" problem by automatically parking your mouse cursor at the edge of the screen during intensive typing sessions in Google Chrome.  
✨ Key Features
Context-Aware: Only activates when Google Chrome is your active window—  
   it won't interfere with your desktop or other apps.

Dynamic Sensitivity: Choose between High, Medium, or Low sensitivity directly from the System Tray.

System Tray Management: A clean, professional menu to Pause, Reload, or Configure the script without touching a single line of code.

Ergonomic Design: Eliminates accidental "focus-stealing" clicks caused by bumping your mouse while typing.

🚀 How to Use
Install AutoHotkey: Ensure you have AutoHotkey installed on your PC.

Launch: Double-click CursorGuardian.ahk. You will see a green H icon appear in your System Tray (near the clock).

Configure: Right-click the icon to:

Change how many keys trigger a "park" (Sensitivity).

Pause the Guardian when you need full manual mouse control.

Reload the script if you make any manual changes.

🛠️ Technical Implementation
Native Hooking: Uses ~* prefix hotkeys to monitor keystrokes without blocking original input.

State Management: Implements Suspend commands for robust "Muting" logic.

Low Overhead: Engineered to use less than 2MB of RAM while running in the background.

📜 License
This project is open-source and free to use. Build, tweak, and share!

