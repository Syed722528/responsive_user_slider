# Animated User Slider with PageView

This repository showcases a simple and elegant **animated user slider** implemented using Flutter's `PageView Builder` widget. The slider is fully responsive, supports smooth transitions, and is highly customizable.

---

## Features
- **Smooth Animations**: Enjoy seamless transitions between user cards.
- **Customizable UI**: Easily adapt the design to fit your app's theme.
- **Scalable**: Works perfectly across different devices and orientations.
- **Performance Optimized**: Utilizes Flutter's efficient rendering pipeline.

---

## Preview

![Animated User Slider](https://via.placeholder.com/800x400.png?text=Preview+of+Animated+User+Slider)

---

## Getting Started

### Prerequisites
- Flutter SDK installed ([Get Flutter](https://flutter.dev/docs/get-started/install))
- Dart >= 2.17.0

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Syed722528/responsive_user_slider.git
   cd responsive_user_slider
   ```
2. Get the dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

---

## Code Snippet
Below is the core implementation of the animated slider:
```dart
FractionallySizedBox(
            heightFactor: 0.50,
            child: PageView.builder(
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return FractionallySizedBox(
                  widthFactor: 0.90,
                  child: FriendTile(
                      currentPage:_currentPage,
                      imagePath: friends[index]['image'],
                      bio: friends[index]['bio'],
                      title: friends[index]['name'],
                      onTap: () {}),
                );
              },
            ),
          ),
```
> Full implementation can be found in the `lib/` directory.

---

## Folder Structure
```
animated-user-slider/
animated-user-slider/
├── lib/
│   ├── main.dart #Entry point
│   ├── pages/
│   │   └── friend_page.dart 
│   ├── utils/
│   │   └── mock_data.dart
│   └── widgets/
│       └── friend_list_tile.dart
|- assets/             # Image assets for users
|- README.md           # Project documentation
```

---

## Customization
You can customize the slider by:
1. **Changing the animation behavior**: Modify ` AnimatedSwitcher` for different scaling effects.
2. **Updating the UI**: Edit the `FriendTile` widget for a personalized look.

---

## Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request to improve the project.

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Connect with Me
- [LinkedIn](https://www.linkedin.com/in/syed-hassan-abrar-11713a1b0/)

Enjoy building with Flutter! 🚀

