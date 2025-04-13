# 🧠 Scrizer

**Scrizer** is a lightweight and scalable UI toolkit built for Flutter that provides responsive typography, spacing, and layout utilities based on screen size and orientation.

> 📏 One-time init. Global access to `Scrizer.scale` & `Scrizer.typography`.

---

## 🚀 Features

📏 Responsive scaling for width, height, gaps, icons, and padding

✍️ Typography with dynamic font scaling

⚒ Custom device type detection

🧱 Reusable widgets for responsive text and layout spacing

🧠 Centralized screen info through the Scrizer singleton

---

## 📦 Installation

```yaml
dependencies:
  scrizer: <latest-version>
```

## 🧰 Usage

### 1. Wrap Your App with `ScrizerLayout`

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrizerLayout(
      child: MaterialApp(
        title: 'Scrizer App',
        home: HomeScreen(),
      ),
    );
  }
}
```

### 2. Use `ScrizerText` for scalable text

```dart
ScrizerText(
  'Hello World',
  fontSize: 16,
  style: TextStyle(fontWeight: FontWeight.bold),
)
```
Or use the typography styles:

```dart
Text(
  'Hello',
  style: Scrizer.typography.titleLarge,
)
```
### 3. Add spacing with `ScrizerGap`

```dart
Column(
  children: [
    Text('Above'),
    ScrizerGap.v(16),
    Text('Below'),
  ],
)
```

### 4. Use responsive padding

```dart
Container(
  padding: Scrizer.scale.paddingAll(12),
  child: ...
)
```
## 🧾 Important Notes

##### `Scrizer.initialize(context)` is automatically called in `ScrizerLayout`.

##### Always access typography and scaler via `Scrizer.typography` and `Scrizer.scale`, not directly via their classes.

##### `Scrizer.fontSize(size)` is a shortcut for `Scrizer.typography.scale(size)`.