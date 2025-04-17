app = globals().get(str(clist[1]))
if app:
    setScreen(app)
elif clist[1] == "последний":
  setScreen(lastscreen)
else:
    self.print("Не найдено приложение")
#self.print(str(clist[1]))