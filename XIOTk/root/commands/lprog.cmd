import os
for i, line in enumerate(open(src+"/root/apps.config", encoding="utf-8")):
  line = line[:-1]
  self.print(line.split(':')[1] + " - " + line.split(':')[0] + " |файл: " + line.split(':')[1] + ".app")