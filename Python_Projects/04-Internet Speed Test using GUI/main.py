from tkinter import *
import speedtest
def speedcheck():
    sp = speedtest.Speedtest()
    sp.get_servers()
    down = str(round(sp.download()/(10**6),3)) + "Mbps"
    up = str(round(sp.upload()/(10**6),3)) + "Mbps"
    lab_down.config(text=down)
    lab_up.config(text=up)
sp = Tk()
sp.title("Internet Speed Test")
sp.geometry("520x650")
sp.config(bg="#38423F")

lab = Label(sp,text="Internet Speed Test", font=("verdana",30,"underline"),bg="#38423F",fg="white")
lab.place(x=60,y=40,height=50,width=400)

lab = Label(sp,text="Downloading Speed", font=("verdana",30),bg="#38423F",fg="white")
lab.place(x=60,y=140,height=50,width=400)

lab_down = Label(sp,text="00", font=("verdana",30))
lab_down.place(x=60,y=200,height=50,width=400)

lab = Label(sp,text="Uploading Speed", font=("verdana",30),bg="#38423F",fg="white")
lab.place(x=60,y=300,height=50,width=400)

lab_up = Label(sp,text="00", font=("verdana",30))
lab_up.place(x=60,y=370,height=50,width=400)

button = Button(sp,text="Check Speed",font=("verdana",30),relief=RAISED,bg="light green",cursor="plus",borderwidth="5",command=speedcheck)
button.place(x=60,y=520,height=50,width=380)

sp.mainloop()
