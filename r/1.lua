local component = require("component")
local term = require("term")
modem = component.modem
local port = 101

::menu::
term.clear()
select = ""
print("What you want to execute")

select = io.read()




if select == "c" then
term.clear()
os.execute("/home/hub")
else
modem.broadcast(port, select)
goto menu
end