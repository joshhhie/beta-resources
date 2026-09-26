-- this script is in very early beta!!!!!! join discord.gg/prismsoftworks for questions and problems
local sdk = loadstring(game:HttpGet("https://sdk.luaprot.net/"))()
sdk.scriptId = "83427509531536050976"

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joshhhie/beta-resources/refs/heads/main/ui.lua"))()

local key_url = "https://luaprot.net/ad/2293531c"

local function get_key()
	setclipboard(key_url)
	return true
end

local function submit_key(key)
	local result = sdk:checkKey(key)
	if result.status ~= "VALID" then
		return false
	end

	sdk:loadScript()
	return true
end

local keySystem = library:InitializeKeySystem({
	Title = "beta [discord.gg/prismsoftworks]",
	GetKeyCallback = get_key,
	SubmitKeyCallback = submit_key,
})

keySystem.Window:ToggleVisibility()

return keySystem
