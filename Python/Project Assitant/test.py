import requests
from pprint import pprint
def weather_data(query):
	res=requests.get('http://api.openweathermap.org/data/2.5/weather?'+'q=Ha Noi'+'&APPID=b35975e18dc93725acb092f7272cc6b8&units=metric');
	return res.json();
def main():
        mou1 = "{}'s temperature: {}°C ".format("Ha Noi",weather_data('q=Ha Noi')['main']['temp'])
        mou2 = "Wind speed: {} m/s ".format(weather_data('q=Ha Noi')['wind']['speed'])
        mou3 = "Description: {} ".format(weather_data('q=Ha Noi')['weather'][0]['description'])
        mou4 = "Weather: {} ".format(weather_data('q=Ha Noi')['weather'][0]['main'])
        robot_brain = mou1 + mou2 + mou3 + mou4
        print(robot_brain)
main()
