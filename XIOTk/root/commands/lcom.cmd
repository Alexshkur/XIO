for i, line in enumerate(open(src+"/root/commands.config", encoding="utf-8")):
    line = line[:-1]
    self.print(line.split(':')[0])
