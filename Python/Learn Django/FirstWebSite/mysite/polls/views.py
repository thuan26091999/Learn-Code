from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render

def index(request):
    myname = "Thuan Nguyen"
    
    return render(request, 'polls/index.html')