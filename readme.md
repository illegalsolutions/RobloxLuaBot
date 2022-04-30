### Roblox Lua Bot Library Synapse X ONLY


Usage:
```
local scr = [[
Bot.walkto(math.random(-900000000,900000000),math.random(-900000000,900000000),math.random(-900000000,900000000))
]]

local Response = syn.request({Url = "https://raw.githubusercontent.com/Only1337/RobloxLuaBot/main/main.lua",Method = "GET"})
loadstring(Response.Body.."\n"..scr)()
```
