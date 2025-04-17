if len(clist) > 1:
    self.Path = self.Path + str(clist[1:])[2:-2]
else:
    self.print(f"Текущая папка: {self.Path}")