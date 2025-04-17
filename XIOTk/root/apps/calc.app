import math
class calc:
	errmsg = StringVar()
	exampleVal = StringVar()
	def __init__(self):
		self.err = ttk.Label(textvariable = self.errmsg, foreground = 'red')
		self.err.place(x = 0, y = 800)
		#
		self.label = Label(text="Калькулятор", foreground="black", font=("Arial", 100))
		self.label.place(x = 450, y = 200)
		#
		self.example = ttk.Entry(textvariable=self.exampleVal)
		self.example.place(x=800, y=500)
		self.example.bind("<Return>", self.keycallback)
		self.example.focus()
	def keycallback(self, event): self.salvecallback()
	def salvecallback(self):
		try:
			self.exampleVal.set(eval(self.exampleVal.get()))
			self.errmsg.set("")
		except BaseException as e:
			self.errmsg.set(e)
def remdev(val, val2):
	return f"{round(val/val2)}.{val%val2}"