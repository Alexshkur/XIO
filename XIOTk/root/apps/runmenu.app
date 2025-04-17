class runmenu:
	errmsg = StringVar()
	def __init__(self):
		self.err = ttk.Label(textvariable = self.errmsg, foreground = 'red')
		self.err.place(x = 0, y = 850)
#
		self.label = Label(text="ЗАПУСТИТЬ", foreground="black", font=("Arial", 100))
		self.label.place(x = 500, y = 200)
#
		self.appname = ttk.Entry()
		self.appname.place(x = 800, y = 500)
		self.appname.bind("<Return>", self.keycallback)
		self.appname.focus()
	def keycallback(self, event): self.runapp()
	def runapp(self):
		self.errmsg.set("")
		app = globals().get(self.appname.get())
		if app:
			setScreen(app)
		else:
			self.errmsg.set("Приложение не найдено!")