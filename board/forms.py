from django import forms 
from .models import Question, Answer, User
class ArticleForm(forms.ModelForm):
   
    question_title = forms.CharField(
         max_length=100,
         label='제목',
         help_text='제목은 20자이내로 작성하세요.',
         widget=forms.TextInput(
                 attrs={
                     'class': 'form-control',
                     'placeholder': '제목 입력'

                 }
             )
         )
    question_content = forms.CharField(
        label='내용',
        widget=forms.Textarea(
                attrs={
                    'class' : 'form-control',
                    'id' : "floatingTextarea2",
                    'row': 5,
                    'col': 80,
                }
            )
        )  
    class Meta:
        model = Question
        fields =['question_title','question_content','user_email']
        