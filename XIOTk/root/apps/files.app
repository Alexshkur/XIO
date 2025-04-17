class files:
	errmsg = StringVar()
	def __init__(self):
		self.err = ttk.Label(textvariable = self.errmsg, foreground = 'red')
		self.err.place(x = 0, y = 800)
		#
		self.columns = ("name", "modified", "type", "size")
		self.files = ttk.Treewiev(columns=columns, show="headings")
		self.files.pack(fill=BOTH, expand=1)
		tree.heading("name", text="Название")
		tree.heading("modified", text="Дата изменения")
		tree.heading("type", text="Тип")
		tree.heading("size", text="Размер")
		self.path = "|"
	def update_files():
		for file in os.listdir(src+self.path.replace("|", "/")):
			meta = (file, os.path.getmtime(src+self.path.replace("|", "/")+file))
    		tree.insert("", END, values=meta)
    def open_folder():
    	pass