from tkinter import *
import os
def restart():
    os.system("shutdown /r /t 1")
def restart_time():
    os.system("shutdown /r /t 20")
def logout():
    os.system("shutdown -l")
def shutdown():
    os.system("shutdown /s /t 1")
st = Tk()
st.title("Shutdown App")
st.geometry("500x500")
st.config(bg="#38423F")

r_button = Button(st,text="Restart",font=("verdana",30),relief=RAISED,cursor="plus",borderwidth="5",bg="dark Gray",fg="white",command=restart)
r_button.place(x=150,y=60,height=55,width=200)

rt_button = Button(st,text="Restart Time",font=("verdana",30),relief=RAISED,cursor="plus",borderwidth="5",bg="dark Gray",fg="white",command=restart_time)
rt_button.place(x=100,y=170,height=55,width=300)

lg_button = Button(st,text="Log Out",font=("verdana",30),relief=RAISED,cursor="plus",borderwidth="5",bg="dark Gray",fg="white",command=logout)
lg_button.place(x=150,y=280,height=55,width=200)

st_button = Button(st,text="Shutdown",font=("verdana",30),relief=RAISED,cursor="plus",borderwidth="5",bg="dark Gray",fg="white",command=shutdown)
st_button.place(x=120,y=390,height=55,width=250)

st.mainloop()
