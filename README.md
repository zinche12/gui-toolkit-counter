# GUI Toolkit Counter

Three deliberately small implementations of the same counter: a label displays
the current number and a button increments it. Each implementation keeps the
counter state and increment operation in a model; the view displays the state
and asks the model to increment.

## Implementations

- `pyqt/` — PyQt 6, Python
- `flutter/` — Flutter, Dart
- `wpf/` — WPF, C# on .NET

## Run

### PyQt 6

```powershell
cd pyqt
python -m pip install -r requirements.txt
python main.py
```

### Flutter

```powershell
cd flutter
flutter pub get
flutter run -d chrome
```

To target another platform, replace `chrome` with the device ID from
`flutter devices`.

### WPF

```powershell
cd wpf
dotnet run
```

WPF requires Windows and the .NET 8 SDK.
