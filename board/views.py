from django.shortcuts import render, redirect, HttpResponse, get_object_or_404
from django.views.decorators.csrf import csrf_exempt

from .forms import ArticleForm
from .models import User, Question, Answer

def question_list(request):    
    questionlist = Question.objects.all()
    print(questionlist)
    return render(request,'question_list.html', {"qlist":questionlist})

def test(request):
    return HttpResponse("<h1>AI12기 여러분 반갑습니다.^^!")



@csrf_exempt
def question_create(request): 
    if request.method == 'GET':
        form =ArticleForm()
        context={
            'form':form
        }
        return render(request,'question_create.html', context)
    elif request.method =='POST':
        form =ArticleForm(request.POST)
        if form.is_valid():
            question=form.save(commit=False)
            question.save()
            return redirect('board')
        
def question_detail(request,id) : 
    answerlist= Answer.objects.filter(question_id=int(id)).all()
    question = Question.objects.filter(question_id = int(id)).first()
    return render(request, 'question_detail.html', {"question":question,"alist":answerlist})


@csrf_exempt
def question_delete(request, id):
    if id :
        question = Question.objects.filter(question_id = int(id)).first()
        alist = Answer.objects.filter(question_id = int(id)).all()
        alist.delete()
        question.delete()
    return redirect('board')

@csrf_exempt
def question_update(request, id):
    question= get_object_or_404(Question, pk = int(id))

    if request.method == 'POST':
        form = ArticleForm(request.POST or None, instance = question)
        if form.is_valid():
            question=form.save(commit=False)
            question.save()            
            return redirect('board')
        else : 
            return redirect('board')
    else :
        form = ArticleForm(instance = question)
        return render(request,'question_update.html',{'form':form})
    
    
@csrf_exempt
def answer_create(request,qid=None):
    if request.method == 'GET':
        return render(request,'answer_creation.html')
    elif request.method=='POST':
        pass