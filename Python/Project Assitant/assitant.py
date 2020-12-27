import speech_recognition
import pyttsx3
from datetime import date ,datetime
import requests
from pprint import pprint


robot_ear = speech_recognition.Recognizer()
robot_mouth = pyttsx3.init()
robot_brain = ""

#listen
with speech_recognition.Microphone() as mic:
    print("Robot : I'm Robot")
    audio = robot_ear.listen(mic)
    # audio  = robot_ear.record(mic, duration = 3)
try:
    you = robot_ear.recognize_google(audio)
except:
    you = ""

print("you : " ,you)
#handing data

if ("hello" or "hi") in you:
    robot_brain = "hello sir"
elif "time" in you :
    currentTime =  datetime.now()
    robot_brain = currentTime.strftime("%H:%M:%S")
elif "weather" in you :
    def weather_data(query):
    	res=requests.get('http://api.openweathermap.org/data/2.5/weather?'+'q=Ha Noi'+'&APPID=b35975e18dc93725acb092f7272cc6b8&units=metric');
    	return res.json();
    def main():
            mou1 = "{}'s temperature: {}°C ".format("Ha Noi",weather_data('q=Ha Noi')['main']['temp'])
            mou2 = "Wind speed: {} m/s ".format(weather_data('q=Ha Noi')['wind']['speed'])
            mou3 = "Description: {} ".format(weather_data('q=Ha Noi')['weather'][0]['description'])
            mou4 = "Weather: {} ".format(weather_data('q=Ha Noi')['weather'][0]['main'])
            robot_brain = mou1 + mou2 + mou3 + mou4
            print("Robot : ", robot_brain)
            robot_mouth.say(robot_brain)
            robot_mouth.runAndWait()
    main()
elif "today" in you :
    today = date.today()
    robot_brain = today.strftime("%B %d,%Y")
elif "bye" in you:
    robot_brain = "good bye"



#speech
print("Robot : ", robot_brain)
robot_mouth.say(robot_brain)
robot_mouth.runAndWait()
