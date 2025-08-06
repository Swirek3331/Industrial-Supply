print("greg")

IS = {}
IS.Name = "Industrial Supply"
IS.Version = "0.2"
IS.Path = table.pack(...)[1]

dofile(IS.Path .. "/Lua/Scripts/crate_helpers.lua")
dofile(IS.Path .. "/Lua/Scripts/crates.lua")

print("[Industrial Supply] Mod initialized successfully!")
