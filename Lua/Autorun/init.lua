print("greg")

IS = {}
IS.Name = "Industrial Supply"
IS.Version = "0.1"
IS.Path = table.pack(...)[1] --???

dofile(IS.Path .. "/Lua/Scripts/crates.lua")
