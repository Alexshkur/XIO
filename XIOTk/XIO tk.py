import os, sys
from tkinter import *
from tkinter import ttk
from tkinter.scrolledtext import ScrolledText
import multiprocessing
from PIL import ImageTk, Image
root = Tk()
root.title("XIO")
root.attributes("-fullscreen", True)
src = os.path.dirname(os.path.abspath(__file__))
#print(src)
sys.path.append(src+"/root/")
for i, line in enumerate(open(src+"/root/apps.config",  encoding='utf-8')):
	args = line[:-1].split(':')
	if args[2] == "python":
		exec(open(src+"/root/apps/"+args[1]+".app",  encoding='utf-8').read())
class system:
	#class overlay:
		#overlay = Tk.frame(root, bg="black")
	class timer:
		login_no_active_timer = multiprocessing.Process(target=lambda: timer(60))
		login_no_active_fatality_timer = None
		def starttimer(timer):
			timer.start()
		def timer(duration):
			time.sleep(duration)
		def stoptimer(timer):
			timer.terminate()
		def resettimer(timer):
			timer.terminate()
			timer.join()
			timer.start()
	user = None
	def encrypt(text):
		return text
def ttkcallback(function):
	function()
screen = blankscreen()
screenclass = blankscreen
lastscreen = None
def setScreen(_class):
	global screen, screenclass,lastscreen
	if screenclass != _class:
		lastscreen = screenclass
	for widget in root.winfo_children():
		widget.destroy()
	screenclass = _class
	screen = _class()
	close = ttk.Button(text="Закрыть", command=lambda: root.destroy()).place(x=1844, y=0)
	back = ttk.Button(text="Назад", command=lambda: setScreen(lastscreen)).place(x=0, y=0)
setScreen(login)
root.mainloop()