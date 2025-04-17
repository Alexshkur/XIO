if len(clist) < 2:
  for i in os.listdir(src+self.Path):
    self.print(i)
else:
  for i in os.listdir(src+self.Path+clist[1]):
    self.print(i)