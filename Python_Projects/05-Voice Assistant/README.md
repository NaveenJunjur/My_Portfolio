## Voice Assistant

The Voice Assistant is a simple speech recognition and speech synthesis application built using Python libraries such as pyttsx3 and speech_recognition. It allows users to interact with the assistant through voice commands to perform various tasks like getting the current time, opening websites, telling jokes, and more.

### Features

- **Speech Recognition**: Listens to user voice commands using a microphone and recognizes the spoken words.
  
- **Speech Synthesis**: Responds to user commands by speaking the desired information or performing actions.
  
- **Commands Supported**: The assistant understands commands related to name, age, time, YouTube, jokes, music, and exit.

### How It Works

1. **Listening Mode**: The assistant listens for the phrase "hello i am here" to activate its listening mode.
  
2. **Voice Commands**: Users can then give voice commands like "your name", "time", "youtube", "joke", "play music", and "exit" to interact with the assistant.
  
3. **Responses**: The assistant responds to the commands by speaking the requested information or performing the desired actions.

### Technologies Used

- **Python**: The primary programming language used for the project.
  
- **pyttsx3**: Python library for text-to-speech conversion.
  
- **speech_recognition**: Python library for speech recognition.
  
- **webbrowser**: Python library to open web browsers and websites.
  
- **datetime**: Python library to give the assistant some time delay before next command
  
- **pyjokes**: Python library to fetch jokes.

### Future Improvements

- Can implement more advanced natural language processing (NLP) to understand complex commands and queries.

- Can add more functionalities like sending emails, setting reminders, and more.

- Can improve speech recognition accuracy and response time.
