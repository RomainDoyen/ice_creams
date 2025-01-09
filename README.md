<img src="./assets/ice_cream_logo.png" width="400" alt="Ice Cream Logo">

Une application mobile moderne pour un magasin de crèmes glacées.

## Captures d'écran

![](./assets/IceCreamsPhone.png)

## Pour commencer

Dans un terminal, cloner le projet avec la commande `git clone https://github.com/RomainDoyen/ice_creams.git`.

Accédez au dossier `ice_creams`

```bash
cd ice_creams
```

Télécharger les dépendances 

```bash
flutter pub get
```

Avoir un émulateur installé sur sa machine ou bien brancher un smartphone physique et activer les options de développeur (Débogage USB, Installer via USB)

Lancer la commande 

```bash
flutter run main.dart
```

- __Home__: Presentation of the store with a futuristic design and light animations.
- __Menu__: List of ice creams on offer (images, names, prices).
- __Map__: Location of the store on OpenStreetMap.
- __About__: Information about the store and its concept.
- __Contact (optional)__: Simple form or information to contact the store.

## Technologies

- __Framework__: Flutter.
- __Map library__: flutter_map (compatible with OpenStreetMap).

## Project structure

```bash
lib/
  |- main.dart
  |- screens/
      |- home_screen.dart
      |- menu_screen.dart
      |- map_screen.dart
      |- about_screen.dart
  |- widgets/
      |- ice_cream_card.dart
  |- assets/
      |- images/
      |- fonts/
      |- data/
          |- menu.json
```

