# 🧠 Scrizer

**Scrizer** is a lightweight and scalable UI toolkit built for Flutter that provides responsive typography, spacing, and layout utilities based on screen size and orientation.

> 📏 One-time init. Global access to `Scrizer.scale` & `Scrizer.typography`.

---

## 🚀 Features

✅ Screen-aware typography and spacing  
✅ Dynamic scaling of widths, heights, icons, gaps, paddings  
✅ Consistent design system across mobile, tablet, and large screens  
✅ Easy-to-use layout wrapper  
✅ Clean and intuitive API

---

## 📦 Installation

```yaml
dependencies:
  scrizer: <latest-version>

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