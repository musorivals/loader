-- muso 2026
local function note(text)
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "muso", Text = text, Duration = 8,
		})
	end)
	warn("[muso] " .. text)
end

-- Rivals only: its lobby and match places all belong to this one game
if not game:IsLoaded() then game.Loaded:Wait() end
if game.GameId ~= 6035872082 then
	note("muso only runs in Rivals.")
	return
end

if type(script_key) ~= "string" and getgenv then script_key = getgenv().script_key end
if getgenv then getgenv().script_key = script_key end

local ok, err = pcall(function()
	loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/14aab51615e6735d978049f2a8a064e6.lua"))()
end)
if not ok then note("Couldn't load: " .. tostring(err)) end
