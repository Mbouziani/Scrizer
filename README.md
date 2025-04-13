# 🧠 Scrizer

**Scrizer** is a lightweight and scalable UI toolkit built for Flutter that provides responsive typography, spacing, and layout utilities based on screen size and orientation.

> 📏 One-time init. Global access to `Scrizer.scale` & `Scrizer.typography`.

---

## 💡 Why Scrizer?

Because scaling manually across devices is painful. Scrizer gives you:

- 🧠 Smart, responsive typography  
- 🧱 Modular layout helpers  
- ⚖️ Consistency across all screen sizes  

---

## 🚀 Features

- 📏 Responsive scaling for width, height, gaps, icons, and padding  
- ✍️ Typography with dynamic font scaling  
- ⚒ Custom device type detection  
- 🧱 Reusable widgets for responsive text and layout spacing  
- 🧠 Centralized screen info through the Scrizer singleton  

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

- `Scrizer.initialize(context)` is automatically called in `ScrizerLayout`.

- Always access typography and scaler via `Scrizer.typography` and `Scrizer.scale`, not directly via their classes.

- `Scrizer.fontSize(size)` is a shortcut for `Scrizer.typography.scale(size)`.

## 🔤 Typography API

Scrizer provides a consistent set of text styles that scale with screen size.

| **Style Name**     | **Usage Example**              |
|--------------------|-------------------------------|
| `displayLarge`     | Hero titles                   |
| `displayMedium`    | Big headers                   |
| `headlineMedium`   | Page titles                   |
| `titleMedium`      | Section titles                |
| `bodyLarge`        | Main content text             |
| `bodySmall`        | Secondary info or meta        |
| `caption`          | Hints, footnotes              |
| `link`             | Tappable links (underline + color) |

## 📐 Scale API

```dart
Scrizer.scale.width(100);       // scales width responsively
Scrizer.scale.height(50);       // scales height responsively
Scrizer.scale.radius(12);       // responsive border radius
Scrizer.scale.paddingAll(16);   // uniform padding
Scrizer.scale.icon(24);         // icon size that scales
```

## 👀 Example

```dart
Padding(
  padding: Scrizer.scale.paddingSymmetric(h: 12, v: 8),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ScrizerText('Title', style: Scrizer.typography.titleMedium),
      ScrizerGap.v(12),
      ScrizerText('Body text here', fontSize: 14),
    ],
  ),
)
```

## 🛠️ Roadmap

- [x] Typography system  
- [x] Layout wrappers  
- [ ] Support for text direction (RTL)  
- [ ] Theme integration  
- [ ] Custom breakpoints  

## 🧑‍💻 Author

Made with ❤️ by [@Mbouziani](https://github.com/Mbouziani)

## 📄 License

MIT License
