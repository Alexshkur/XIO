class login:
	errmsg = StringVar()
	def __init__(self):
		self.users = os.listdir(src+"/Users")
		if len(self.users) == 1 and open(f"{src}/Users/{self.users[0]}/password").read() != "":
			self.err = ttk.Label(textvariable = self.errmsg, foreground = 'red')
			self.err.place(x = 0, y = 800)
	#
			self.label = Label(text="ВХОД", foreground="black", font=("Arial", 100))
			self.label.place(x = 700, y = 200)
	#
			self.password = ttk.Entry()
			self.password.place(x = 800, y = 500)
			self.password.bind("<Return>", self.keycallback)
			self.password.focus()
	#
			self.listbox = Listbox(listvariable = StringVar(value=self.users), width = 100, height=15)
			if len(self.users) > 1:
				self.listbox.pack(anchor="n", pady=200)
		else:
			system.user = self.users[0]
			#system.starttimer(system.timer.login_no_active_timer)
			setScreen(runmenu)
	def keycallback(self, event): self.callbacklogin()
	def callbacklogin(self):
		self.errmsg.set("")
		try:
			if len(self.users) > 1:
				selection = self.listbox.get(self.listbox.curselection())
			else:
				selection = self.users[0]
		except BaseException:
			self.errmsg.set("Выберите аккаунт!")
		if self.password.get() == open(f"{src}/Users/{selection}/password").read():
			system.user = selection
			#system.starttimer(system.timer.login_no_active_timer)
			setScreen(runmenu)
		else:
			self.errmsg.set("Неверный пароль!")