local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameEvent = ReplicatedStorage:WaitForChild("GameEvent")

local jumpScary = workspace.jumpScary
local jumpScary2 = workspace.jumpScary2

local tocou = {}
local tocou2 = {}
local tocou3 = {}
local tocou4 = {}
local tocou5 = {}

local function getPlayerFromHit(hit)
	local character = hit.Parent
	if not character then return end

	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then return end

	return Players:GetPlayerFromCharacter(character)
end

jumpScary.Touched:Connect(function(hit)
	local player = getPlayerFromHit(hit)
	if not player then return end
	if tocou[player] then return end

	tocou[player] = true

	GameEvent:FireClient(player, {
		type = "JUMPSCARE",
		id = 1
	})
end)

jumpScary2.Touched:Connect(function(hit)
	local player = getPlayerFromHit(hit)
	if not player then return end
	if tocou2[player] then return end

	tocou2[player] = true

	GameEvent:FireClient(player, {
		type = "JUMPSCARE",
		id = 2
	})
end)
local cama1 = workspace.Cama.camaProximity:FindFirstChild("ProximityPrompt")
local cama2 = workspace.Cama2.camaProximity:FindFirstChild("ProximityPrompt")
local cama3 = workspace.Cama3.camaProximity:FindFirstChild("ProximityPrompt")

cama1.Triggered:Connect(function(player)
	
	if tocou3[player] then return end
	tocou3[player] = true
	cama1.Enabled = false
	cama2.Enabled = false
	cama3.Enabled = false
	
	GameEvent:FireClient(player, {
		type = "Dormir",
		id = 1
	})
end)
cama2.Triggered:Connect(function(player)
	
	if tocou4[player] then return end
	tocou4[player] = true
	cama1.Enabled = false
	cama2.Enabled = false
	cama3.Enabled = false

	GameEvent:FireClient(player, {
		type = "Dormir",
		id = 2
	})
end)
cama3.Triggered:Connect(function(player)
	
	if tocou5[player] then return end
	tocou5[player] = true
	cama1.Enabled = false
	cama2.Enabled = false
	cama3.Enabled = false

	GameEvent:FireClient(player, {
		type = "Dormir",
		id = 3
	})
end)

