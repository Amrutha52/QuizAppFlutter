class DummyDb {
  static const List<Map<String, dynamic>> question = [
    {
      "question": "What is Flutter?",
      "options": [
        "A web development framework",
        "A mobile development framework",
        "A backend framework",
        "A desktop application framework"
      ],
      "answerIndex": 1 ,
     // Answerine vendi index kodukkunu.. DByil ninne answer aane varunnathenkil answer kodukam illenkil index kodukkam.
    },
    {
      "question": "Which language is used to develop Flutter applications?",
      "options": ["JavaScript", "Dart", "Python", "Swift"],
      "answerIndex": 1,

    },
    {
      "question": "Which widget is used for layout in Flutter?",
      "options": ["Text", "Container", "Column", "Button"],
      "answerIndex": 2,

    },
    {
      "question": "What is the default state management approach in Flutter?",
      "options": ["Redux", "Provider", "SetState", "Bloc"],
      "answerIndex": 2,

    },
    {
      "question": "Which command is used to create a new Flutter project?",
      "options": [
        "flutter create projectname",
        "flutter init projectname",
        "flutter start projectname",
        "flutter new projectname"
      ],
      "answerIndex": 0,

    },
    {
      "question":
      "What is the purpose of the pubspec.yaml file in a Flutter project?",
      "options": [
        "To define the project structure",
        "To manage dependencies and assets",
        "To configure the build process",
        "To write unit tests"
      ],
      "answerIndex": 1,

    },
    {
      "question":
      "Which widget allows you to build a scrollable list in Flutter?",
      "options": ["GridView", "Column", "ListView", "Stack"],
      "answerIndex": 2
    },
    {
      "question": "What is a StatelessWidget in Flutter?",
      "options": [
        "A widget that does not maintain any state",
        "A widget that maintains state across its lifetime",
        "A widget that is part of the Flutter framework",
        "A widget that handles gestures"
      ],
      "answerIndex": 0,

    },
    {
      "question":
      "Which method is used to start the execution of a Flutter application?",
      "options": ["main()", "runApp()", "build()", "initState()"],
      "answerIndex": 1,

    },
    {
      "question": "How do you add a package dependency in a Flutter project?",
      "options": [
        "Add it to the pubspec.yaml file under dependencies",
        "Run flutter add <package>",
        "Add it to the main.dart file",
        "Run pub add <package>"
      ],
      "answerIndex": 0,

    },

  ];

  static const List<Map<String, dynamic>> sciencequestions = [
    {
      "question": "What is the chemical symbol for water?",
      "options": [
        "H2O",
        "CO2",
        "O2",
        "NaCl"
      ],
      "answerIndex": 0 // Correct answer is "H2O"
    },
    {
      "question": "Who is known as the father of modern physics?",
      "options": [
        "Isaac Newton",
        "Albert Einstein",
        "Galileo Galilei",
        "Niels Bohr"
      ],
      "answerIndex": 1 // Correct answer is "Albert Einstein"
    },
    {
      "question": "What planet is known as the Red Planet?",
      "options": [
        "Earth",
        "Mars",
        "Jupiter",
        "Saturn"
      ],
      "answerIndex": 1 // Correct answer is "Mars"
    },
    {
      "question": "What is the hardest natural substance on Earth?",
      "options": [
        "Gold",
        "Iron",
        "Diamond",
        "Platinum"
      ],
      "answerIndex": 2 // Correct answer is "Diamond"
    },
    {
      "question": "What gas do plants primarily use for photosynthesis?",
      "options": [
        "Oxygen",
        "Carbon Dioxide",
        "Nitrogen",
        "Hydrogen"
      ],
      "answerIndex": 1 // Correct answer is "Carbon Dioxide"
    },
    {
      "question": "What is the chemical formula for table salt?",
      "options": [
        "NaCl",
        "H2O",
        "CO2",
        "KCl"
      ],
      "answerIndex": 0 // Correct answer is "NaCl"
    },
    {
      "question": "What type of bond holds the two strands of a DNA molecule together?",
      "options": [
        "Ionic bond",
        "Covalent bond",
        "Hydrogen bond",
        "Metallic bond"
      ],
      "answerIndex": 2 // Correct answer is "Hydrogen bond"
    },
    {
      "question": "What is the main organ of the human circulatory system?",
      "options": [
        "Brain",
        "Lung",
        "Heart",
        "Kidney"
      ],
      "answerIndex": 2 // Correct answer is "Heart"
    },
    {
      "question": "What phenomenon causes the seasons on Earth?",
      "options": [
        "Earth's rotation",
        "Earth's revolution",
        "Earth's tilt",
        "Earth's distance from the Sun"
      ],
      "answerIndex": 2 // Correct answer is "Earth's tilt"
    },
    {
      "question": "What is the basic unit of life?",
      "options": [
        "Molecule",
        "Cell",
        "Atom",
        "Organ"
      ],
      "answerIndex": 1 // Correct answer is "Cell"
    },
  ];

  static const List<Map<String, dynamic>> dartquestions = [
    {
      "question": "What is Dart primarily used for?",
      "options": [
        "Web development",
        "Mobile app development",
        "Game development",
        "Data analysis"
      ],
      "answerIndex": 1 // Correct answer is "Mobile app development"
    },
    {
      "question": "Which keyword is used to define a variable in Dart?",
      "options": [
        "var",
        "let",
        "const",
        "define"
      ],
      "answerIndex": 0 // Correct answer is "var"
    },
    {
      "question": "What type of programming paradigm does Dart support?",
      "options": [
        "Object-oriented programming",
        "Functional programming",
        "Procedural programming",
        "All of the above"
      ],
      "answerIndex": 3 // Correct answer is "All of the above"
    },
    {
      "question": "Which function is used to print output to the console in Dart?",
      "options": [
        "print()",
        "console.log()",
        "output()",
        "log()"
      ],
      "answerIndex": 0 // Correct answer is "print()"
    },
    {
      "question": "What is the default visibility of a class member in Dart?",
      "options": [
        "Private",
        "Public",
        "Protected",
        "Package-private"
      ],
      "answerIndex": 1 // Correct answer is "Public"
    },
    {
      "question": "How do you declare a constant variable in Dart?",
      "options": [
        "final",
        "const",
        "static",
        "immutable"
      ],
      "answerIndex": 1 // Correct answer is "const"
    },
    {
      "question": "Which keyword is used to create a new instance of a class in Dart?",
      "options": [
        "create",
        "new",
        "instance",
        "make"
      ],
      "answerIndex": 1 // Correct answer is "new"
    },
    {
      "question": "How do you denote a single-line comment in Dart?",
      "options": [
        "// comment",
        "/* comment */",
        "# comment",
        "-- comment"
      ],
      "answerIndex": 0 // Correct answer is "// comment"
    },
    {
      "question": "What is the purpose of the `async` keyword in Dart?",
      "options": [
        "To define synchronous code",
        "To mark a function as asynchronous",
        "To create a new thread",
        "To handle exceptions"
      ],
      "answerIndex": 1 // Correct answer is "To mark a function as asynchronous"
    },
    {
      "question": "Which method is used to convert a Dart `List` to a `Set`?",
      "options": [
        "toSet()",
        "convertToSet()",
        "asSet()",
        "toSetValue()"
      ],
      "answerIndex": 0 // Correct answer is "toSet()"
    },
  ];

  static const List<Map<String, dynamic>> gamesquestions = [
    {
      "question": "What is the name of the main character in 'The Legend of Zelda' series?",
      "options": [
        "Link",
        "Zelda",
        "Ganon",
        "Navi"
      ],
      "answerIndex": 0 // Correct answer is "Link"
    },
    {
      "question": "Which company developed the 'Halo' series?",
      "options": [
        "Epic Games",
        "Bungie",
        "Activision",
        "Electronic Arts"
      ],
      "answerIndex": 1 // Correct answer is "Bungie"
    },
    {
      "question": "What genre does the game 'The Witcher 3: Wild Hunt' belong to?",
      "options": [
        "Action-adventure",
        "Shooter",
        "Strategy",
        "RPG"
      ],
      "answerIndex": 3 // Correct answer is "RPG"
    },
    {
      "question": "In which game would you find the character 'Pikachu'?",
      "options": [
        "Digimon",
        "Pokemon",
        "Final Fantasy",
        "Mario"
      ],
      "answerIndex": 1 // Correct answer is "Pokemon"
    },
    {
      "question": "Which game is known for the phrase 'It's dangerous to go alone! Take this.'?",
      "options": [
        "The Legend of Zelda",
        "Dark Souls",
        "Final Fantasy",
        "Metroid"
      ],
      "answerIndex": 0 // Correct answer is "The Legend of Zelda"
    },
    {
      "question": "What is the name of the fictional world in 'World of Warcraft'?",
      "options": [
        "Tamriel",
        "Norrath",
        "Azeroth",
        "Hyrule"
      ],
      "answerIndex": 2 // Correct answer is "Azeroth"
    },
    {
      "question": "Which video game series features a character named 'Master Chief'?",
      "options": [
        "Gears of War",
        "Halo",
        "Call of Duty",
        "Battlefield"
      ],
      "answerIndex": 1 // Correct answer is "Halo"
    },
    {
      "question": "In which game series would you find the 'Mushroom Kingdom'?",
      "options": [
        "Donkey Kong",
        "Mario",
        "Sonic the Hedgehog",
        "Kirby"
      ],
      "answerIndex": 1 // Correct answer is "Mario"
    },
    {
      "question": "What is the name of the protagonist in the 'God of War' series?",
      "options": [
        "Kratos",
        "Ares",
        "Zeus",
        "Poseidon"
      ],
      "answerIndex": 0 // Correct answer is "Kratos"
    },
    {
      "question": "Which game series features the character 'Solid Snake'?",
      "options": [
        "Metal Gear Solid",
        "Splinter Cell",
        "Assassin's Creed",
        "Deus Ex"
      ],
      "answerIndex": 0 // Correct answer is "Metal Gear Solid"
    },
  ];

}