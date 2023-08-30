
from django.urls import path, include
from . import views

urlpatterns = [
    path('test/', views.test),   
    path('question_list/', views.question_list, name='board'),    
    path('question_detail/<id>/', views.question_detail),
    path('answer_create/<id>/', views.answer_create),
    path('question_create/',views.question_create),
    path('question_delete/<id>/',views.question_delete),
    path('question_update/<id>/', views.question_update)

]


