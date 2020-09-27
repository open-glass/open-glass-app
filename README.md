# Open Glass App

Flutter app to interface with [OpenGlass server](https://github.com/open-glass/open-glass-server)

## Supported Games
* Star Citizen (basic)

## Adding new Games
1. Add the game to the Game enum in `open_glass_api.dart` and implement a widget offering the according buttons.
2. Follow the instructions in the [server component](https://github.com/open-glass/open-glass-server) to extend the backend