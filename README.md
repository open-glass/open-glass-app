# Open Glass App
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/658dfd0300b14d65b3746101f0b42a3d)](https://www.codacy.com/gh/open-glass/open-glass-app/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=open-glass/open-glass-app&amp;utm_campaign=Badge_Grade)

Flutter app to interface with [OpenGlass server](https://github.com/open-glass/open-glass-server)

## Supported Games
* Star Citizen (basic)

## Adding new Games
1. Add the game to the Game enum in `open_glass_api.dart` and implement a widget offering the according buttons.
2. Follow the instructions in the [server component](https://github.com/open-glass/open-glass-server) to extend the backend