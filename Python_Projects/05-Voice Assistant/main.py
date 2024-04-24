import pyttsx3
import speech_recognition as sr
import webbrowser
import datetime
import pyjokes
import time

def sptext():
    recognizer = sr.Recognizer()
    with sr.Microphone() as source:
        print("----------Listening...----------")
        recognizer.adjust_for_ambient_noise(source)
        audio = recognizer.listen(source)
        try:
            print("---------Recognizing...---------")
            data = recognizer.recognize_google(audio)
            print(data)
            return data
        except sr.UnknownValueError:
            print("----------Not Understood-----------")
           
def speechtx(x):
    engine = pyttsx3.init()
    voices = engine.getProperty('voices')
    engine.setProperty('voice',voices[0].id)    #0 --> male voice , 1 --> female voice
    rate = engine.getProperty('rate')           #rate is used for maintain the speed of the voice
    engine.setProperty('rate',150)
    engine.say(x)
    engine.runAndWait()
    
if __name__ == '__main__':
  
    if "hello i am here" in sptext().lower():
        while True:
            data1 = sptext().lower()

            if "your name" in data1:
                name = "my name is jarvis"
                speechtx(name)
            elif "old are you" in data1:
                age = "i am 21 years old"
                speechtx(age)
            elif 'time' in data1:
                time = datetime.datetime.now().strftime("%I%M%p")
                speechtx(time)
            elif 'youtube' in data1:
                webbrowser.open("https://www.youtube.com/")
            elif 'joke' in data1:
                joke_1 = pyjokes.get_joke(language="en",category="neutral")
                print(joke_1)
                speechtx(joke_1)
            elif 'play music' in data1:
                webbrowser.open("https://www.youtube.com/watch?v=LHCob76kigA")
            elif "exit" in data1:
                speechtx("thankyou")
                break
    else:
        print("thanks")
