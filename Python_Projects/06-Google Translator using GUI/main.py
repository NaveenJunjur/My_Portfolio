from tkinter import *
from tkinter import ttk
from deep_translator import GoogleTranslator

def change(text="type",src="English",dest="Hindi"):
    text1 = text
    src1 = src
    dest1 = dest
    trans = GoogleTranslator(source=src1, target=dest1)
    trans1 = trans.translate(text1)
    return trans1

def get_languages():
    translator = GoogleTranslator()
    return translator.get_supported_languages()

def data():
    s = comb_sor.get()
    d = comb_dest.get()
    masg = sor_txt.get(1.0,END)
    textget = change(text=masg,src=s,dest=d)
    dest_txt.delete(1.0,END)
    dest_txt.insert(END,textget)
  
root = Tk()
root.title("Translator")
root.geometry("500x700")
root.config(bg="#38423F")

lab_txt = Label(root,text="Translator",font=("Time new roman",40,"underline"),bg="#38423F",fg="white")
lab_txt.place(x=100,y=40,height=50,width=300)

frame = Frame(root).pack(side=BOTTOM)

lab_txt = Label(root,text="Source Text",font=("Time new roman",20),bg="#38423F",fg="white")
lab_txt.place(x=100,y=120,height=20,width=300)

sor_txt = Text(frame,font=("Time new roman",20),wrap=WORD)
sor_txt.place(x=10,y=150,height=200,width=480)

list_text = list(LANGUAGES.values())

comb_sor = ttk.Combobox(frame,value=list_text)
comb_sor.place(x=10,y=365,height=40,width=170)
comb_sor.set("english")

button_change = Button(frame,text="Translate",relief=RAISED,command=data)
button_change.place(x=200,y=365,height=40,width=100)

comb_dest = ttk.Combobox(frame,value=list_text)
comb_dest.place(x=320,y=365,height=40,width=170)
comb_dest.set("english")

lab_txt = Label(root,text="Destination Text",font=("Time new roman",20),bg="#38423F",fg="white")
lab_txt.place(x=100,y=430,height=20,width=300)

dest_txt = Text(frame,font=("Time new roman",20),wrap=WORD)
dest_txt.place(x=10,y=460,height=200,width=480)

root.mainloop()
