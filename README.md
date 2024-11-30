# Orders Insights

**Orders Insights** is a Flutter-based android, ios, and web application that follows Clean Architecture principles to manage and display insights related to customer orders. The app uses a modular approach with well-structured layers for better maintainability and scalability. It integrates various technologies and follows best practices for API integration, state management, and code organization.

## Architecture

The application adheres to **Clean Architecture** principles, which help promote separation of concerns, testability, and scalability. The project is divided into the following layers:

- **Core Layer**: Contains the core utilities, constants, and configurations used throughout the app.
- **Features Layer**: Includes application features such as `Order`, `User`, and `Dashboard`, organized into separate modules.
- **Data Layer**: Manages data operations, including API calls, database handling, and data caching.
- **Domain Layer**: Contains business logic and use cases. Each use case handles specific functionalities like fetching order details or managing user authentication.
- **Presentation Layer**: Responsible for displaying UI components and interacting with the user, leveraging GetX for state management.


├── assets/                # json data resources
├── core/                  # Core utilities and configurations
│   ├── style/             # Project constants
│   ├── routing/           # Project constants
│   ├── widgets/           # Error handling utilities
│   └── utils/             # Utility classes and functions
├── features/              # Feature modules
│   └── order/             # Order feature module
│       ├── data/          # data layer
│       ├── domain/        # REMOVED FOR SIMPLICITY AS THE PROJECT IS SIMPLE
│       └── presentation/  # presentation layer
└── main.dart              # Project configuration
└── pubspec.yaml           # Project configuration

## Technologies & Features Used

- Flutter
- Dart
- Cubit
- Go Router
- Dependency Injection
- Clean Architecture
- JSON
- Clean Code
- Charts
- Mason


## Requirements

- Flutter 3.0 or higher
- Dart 3.0 or higher
- IDE such as VS Code or Android Studio

## Setup & Installation

Follow the steps below to set up and run the project locally:

### 1. Clone the repository

```bash
git clone https://github.com/BelalNayzak/orders_insights.git
```

### 2. Install Flutter dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```


## License

This project is released under the [MIT License](LICENSE).
