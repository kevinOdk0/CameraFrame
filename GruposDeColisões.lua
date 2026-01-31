local PhysicsService = game:GetService("PhysicsService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local clown = replicatedStorage:WaitForChild("palhacoBr4")
local clown3 = replicatedStorage:WaitForChild("palhacoBr3")
local PhysicsService = game:GetService("PhysicsService")
local Players = game:GetService("Players")

PhysicsService:RegisterCollisionGroup("palhaco")
for _, p in pairs(clown:GetDescendants()) do
	if p:IsA("BasePart") then
		p.CollisionGroup = "palhaco"
	end
end
for _, p3 in pairs(clown3:GetDescendants()) do
	if p3:IsA("BasePart") then
		p3.CollisionGroup = "palhaco"
	end
end

local baloes = replicatedStorage:WaitForChild("baloes")
PhysicsService:RegisterCollisionGroup("Baloes")

for _,b in pairs(baloes:GetDescendants())do
	if b:IsA("BasePart") then
	b.CollisionGroup = "Baloes"
	end
end

local npc3 = game.ReplicatedStorage:WaitForChild("Chicao3")
PhysicsService:RegisterCollisionGroup("NPC")
for _, part in ipairs(npc3:GetDescendants()) do
	if part:IsA("BasePart") then
		part.CollisionGroup = "NPC"
	end
end
local chicao = workspace.Chicao
PhysicsService:RegisterCollisionGroup("NPC1")
for _, c in pairs(chicao:GetDescendants()) do
	if c:IsA("BasePart") then
		c.CollisionGroup = "NPC1"
	end
end
PhysicsService:RegisterCollisionGroup("Players")

-- função para setar todas as parts do personagem
local function setCharacterCollision(character)
	
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			part.CollisionGroup = "Players"
		end
	end
end
-- quando jogador entrar
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		setCharacterCollision(character)
	end)
end)

-- cobre jogadores que já estavam no jogo
for _, player in ipairs(Players:GetPlayers()) do
	if player.Character then
		setCharacterCollision(player.Character)
	end
end
-- configura colisões
PhysicsService:CollisionGroupSetCollidable("Baloes", "Baloes", false) --baloes com baloes não colidem
PhysicsService:CollisionGroupSetCollidable("palhaco", "Baloes", false)
PhysicsService:CollisionGroupSetCollidable("Baloes", "palhaco", false)
PhysicsService:CollisionGroupSetCollidable("NPC", "Players", false)
PhysicsService:CollisionGroupSetCollidable("Players", "NPC1", false)
PhysicsService:CollisionGroupSetCollidable("Players", "Players", true) -- player com player colide
PhysicsService:CollisionGroupSetCollidable("NPC1", "NPC1", true)

local baloes = replicatedStorage.baloes:GetDescendants()
for _, b in pairs(baloes) do
	if b:IsA("BasePart") then
		b.Anchored = false
	end
	if b:IsA("Sound") then
		if b.Name == "dark-horror-ambient-03-425466" then
			b:Destroy()
		end
	end
end
local camada2 = replicatedStorage.camada2:GetDescendants()
local congelou = false
local centroBalao = workspace.CentroBalao
centroBalao.Touched:Connect(function(hit)
	if not congelou then
		if congelou then return end
		local char = hit.Parent
		if not Players:GetPlayerFromCharacter(char) then return end
		congelou = true
	
	for _,c in pairs(camada2) do
		if c:IsA("BasePart") then
			c.Anchored = true
			end
		end
	end
end)
local congelou2 = false
centroBalao.TouchEnded:Connect(function(hit)
	if not congelou2 then
		if congelou2 then return end
		local char = hit.Parent
		if not Players:GetPlayerFromCharacter(char) then return end
		congelou2 = true
		centroBalao.CanTouch = false
	for _,c in pairs(camada2) do
		if c:IsA("BasePart") then
			c.Anchored = false
			end
		end
	end
end)
local baloes = replicatedStorage.baloes:GetDescendants()
for _, b in pairs(baloes) do
	if b:IsA("BasePart") then
		b.Touched:Connect(function(hit)
			local char = hit.Parent
			if not Players:GetPlayerFromCharacter(char) then return end
			task.delay(15, function()
		-- a cada 15 segundos,ancorar o balão que foi tocado(otimização de memória)
			b.Anchored = true

			end)
		end)
	end
end
for _, b in pairs(camada2) do
	if b:IsA("BasePart") then
		b.Touched:Connect(function(hit)
			local char = hit.Parent
			if not Players:GetPlayerFromCharacter(char) then return end
			task.delay(15, function()
				-- a cada 15 segundos,ancorar o balão que foi tocado(otimização de memória)
				b.Anchored = true
				
			end)
		end)
	end
end


