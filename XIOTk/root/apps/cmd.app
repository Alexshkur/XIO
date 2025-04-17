class cmd:
	def __init__(self):
		self.Path = "/"
		self.console = Text(wrap='none', width = 100, height = 30, state='disabled')
		self.console.place(x = 100, y = 0)
#
		self.command = Entry()
		self.command.place(x = 100, y = 500)
		self.command.bind("<Return>", self.keycallback)
		self.command.focus()
	def print(self, text):
		self.console.config(state='normal')
		self.console.insert(END, str(text)+'\n')
		self.console.config(state='disabled')
	def keycallback(self, event): self.runcommand()
	def runcommand(self):
		command = self.command.get()
		clist = command.split(' ')
		self.print(f"{system.user}@XIO:{command}")
		for i, line in enumerate(open(src+"/root/commands.config", encoding="utf-8")):
			line = line[:-1]
			if clist[0] == line.split(':')[0]:
				try:
					exec(open(src+"/root/commands/"+line.split(':')[1]+".cmd", encoding="utf-8").read())
				except BaseException as e:
					self.print(e)
				executed = True
				break
			executed = False
		if not executed:
			self.print("Неизвестная команда")
		if self.command.get() != "":
			self.command.delete(0, END)