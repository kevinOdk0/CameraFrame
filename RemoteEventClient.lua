--------------- VARIÁVEIS
local jumpScary = workspace.jumpScary
local jumpScary2 = workspace.jumpScary2
local chicao = workspace.Chicao:FindFirstChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local visao = workspace.visao
local visao2 = workspace.visao2
local clock = workspace["Grandfather Clock"].clock:WaitForChild("Clock Ticking Sound Effect")
clock.Looped = true
local GameEvent = game.ReplicatedStorage:WaitForChild("GameEvent")
local players = game:GetService("Players")
local seat = workspace.conjunto
local jumpScary = workspace.jumpScary
local jumpScary2 = workspace.jumpScary2
local player = game.Players.LocalPlayer
local playerRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
local Humanoid = player.Character:WaitForChild("Humanoid")
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = playerGui:WaitForChild("ScreenGui")
local frame = screenGui:WaitForChild("Frame")
local jumpScary = workspace.jumpScary
local porta4 = workspace.House.Model4.portaBranca:FindFirstChild("ProximityPrompt")
local jumpoScary2 = workspace.jumpScary2
local jumpMusic = game:GetService("SoundService").Musics["horror sting"]
local GameEvent = game.ReplicatedStorage:WaitForChild("GameEvent")
replicatedStorage = game:GetService("ReplicatedStorage")
model4 = workspace.House.Model4
repli4 = replicatedStorage:FindFirstChild("Model4Repli")
chicao = workspace:FindFirstChild("Chicao")
repli5 = replicatedStorage:WaitForChild("Model5Repli")
chicao3 = replicatedStorage:WaitForChild("Chicao3")
fogaoLuz = workspace.fogaoLuz:FindFirstChild("PointLight")
fogaoLuz2 = workspace.fogaoLuz2:FindFirstChild("PointLight")
modeloRepli = replicatedStorage:WaitForChild("ModeloRepli")
modelo = workspace.House:WaitForChild("Modelo")
local model8 = workspace.House.Model8	

-------------------FUNÇÕES
local function jump()
	resposta1.Visible = false
	resposta2.Visible = false
	task.wait(4)
	text.Text = ""
	frame.Visible = false
end
local function defrost()

	Humanoid.WalkSpeed  = 18
	Humanoid.JumpPower = 30
	playerRoot.Anchored = false

end
local function frost()
	Humanoid.WalkSpeed = 0.1
	Humanoid.JumpPower = 0
	task.wait()
	playerRoot.Anchored = true
end
local function respostasNpc(texto, velocidade)
	for i = 1, #texto do
		text.Text = string.sub(texto, 1, i)
		task.wait(velocidade or 0.04)
	end
end

local dialogue = game:GetService("SoundService").Musics:FindFirstChild("Dialogue")
local function Dialogue3()
	dialogue.Volume = 0.2
	dialogue:Play()
	task.delay(5, function()
		dialogue:Stop()
	end)
end
local function Dialogue()
	dialogue.Volume = 0.2
	dialogue:Play()
	task.delay(3.6, function()
		dialogue:Stop()
	end)
end
local function Dialogue2()
	dialogue.Volume = 0.2
	dialogue:Play()
	task.delay(1.8, function()
		dialogue:Stop()
	end)
end
----------------------RECEBE SINAL DO SERVER E VERIFICA O PARÂMETRO PASSADO("JUMPSCARE E ID")
	GameEvent.OnClientEvent:Connect(function(data)
	if data.type == "JUMPSCARE" then
	if data.id == 1 then
	clock.RollOffMaxDistance = 40
	clock:Play()
	camera.CameraType = Enum.CameraType.Scriptable
	
	local base = Vector3.new(visao.Position.X, visao.Position.Y, visao.Position.Z)
	local origem = visao.Position  + Vector3.new(-125.674, 23.195, 27.5)
	camera.CFrame = CFrame.new(base, origem)* CFrame.Angles(math.rad(-15), math.rad(-15), 0)
	
	frost()
	jumpMusic:Play()
	task.wait()
	if chicao3.Parent == workspace then
	local npcRoot2 = chicao3:FindFirstChild("HumanoidRootPart")
	task.wait(1)
	npcRoot2.CFrame = CFrame.new(npcRoot2.Position, Vector3.new(playerRoot.Position.X, npcRoot2.Position.Y, playerRoot.Position.Z))
	frame.Visible = true
	text.Visible = true
	respostasNpc("Meu Deus,que susto!", Dialogue2())
	jump()
	chicaoImage.Visible = true
	respostasNpc("Hahaha,me desculpe,estava vindo te chamar agora pra comer a torta,vamos?", Dialogue())
	jump()
	chicaoImage.Visible = false
	defrost()
	camera.CameraType = Enum.CameraType.Custom
	local module = require(game.ReplicatedStorage:WaitForChild("move5"))
	module.Move5()
	------------------ELSEIF PARA VERIFICAR SE O PARÂMETRO FOR IGUAL A 2
	elseif data.id == 2 then
	clock.RollOffMaxDistance = 40
	clock:Play()
	camera.CameraType = Enum.CameraType.Scriptable
	
	local base = Vector3.new(visao2.Position.X, visao2.Position.Y, visao2.Position.Z)
	local origem = visao2.Position  + Vector3.new(-160.674, 23.195, 42.5)
	camera.CFrame = CFrame.new(base, origem)* CFrame.Angles(math.rad(-5), math.rad(160), 0)
	frost()
	jumpMusic:Play()
	
	if chicao3.Parent == workspace then
	local npcRoot2 = chicao3:FindFirstChild("HumanoidRootPart")

	task.wait(1)
	npcRoot2.CFrame = CFrame.new(npcRoot2.Position, Vector3.new(playerRoot.Position.X, npcRoot2.Position.Y, playerRoot.Position.Z))
	frame.Visible = true
	text.Visible = true
	respostasNpc("Meu Deus,que susto!", Dialogue2())
	jump()
	chicaoImage.Visible = true
	respostasNpc("Hahaha,me desculpe,estava vindo te chamar agora pra comer a torta,vamos?", Dialogue())
	jump()
	chicaoImage.Visible = false
	defrost()
	camera.CameraType = Enum.CameraType.Custom
	local module7 = require(game.ReplicatedStorage:WaitForChild("Move7"))
	module7.Move7()
				end
			end
		end
	end
end)
GameEvent.OnClientEvent:Connect(function(data)
	if data.type == "Dormir" then
	if data.id == 1 then
	frost()
	task.wait(4)
	model4.Parent = replicatedStorage
	repli4.Parent = workspace
	model8.Parent = replicatedStorage
	repli5.Parent = workspace
	chicao.Parent = replicatedStorage
	chicao3.Parent = workspace
	modelo.Parent = replicatedStorage
	modeloRepli.Parent = workspace
	jumpScary.Position = Vector3.new(-168.961, 23.183, 42.789)
	fogaoLuz.Enabled = true
	fogaoLuz2.Enabled = true
	for _, cadeira in pairs(seat:GetDescendants()) do
	if cadeira:IsA("Seat") then
		cadeira.Disabled = false
	end
end
	elseif data.id == 2 then
	frost()
	task.wait(4)
	model4.Parent = replicatedStorage
	repli4.Parent = workspace
	model8.Parent = replicatedStorage
	repli5.Parent = workspace
	chicao.Parent = replicatedStorage
	chicao3.Parent = workspace
	chicao3:PivotTo(CFrame.new(-133.15, 18.513, 27.391)*CFrame.Angles(0, math.rad(-95), 0))
	modelo.Parent = replicatedStorage
	modeloRepli.Parent = workspace
	jumpoScary.Position = Vector3.new(-125.983, 23.257, 27.388)
	fogaoLuz.Enabled = true 
	fogaoLuz2.Enabled = true
	for _, cadeira in pairs(seat:GetDescendants()) do
	if cadeira:IsA("Seat") then
		cadeira.Disabled = false
	end
end
	elseif data.id == 3 then
	frost()
	task.wait(4)
	model4.Parent = replicatedStorage
	repli4.Parent = workspace
	model8.Parent = replicatedStorage
	repli5.Parent = workspace
	chicao.Parent = replicatedStorage
	chicao3.Parent = workspace
	chicao3:PivotTo(CFrame.new(-133.15, 18.513, 27.391)*CFrame.Angles(0, math.rad(-95), 0))
	modelo.Parent = replicatedStorage
	modeloRepli.Parent = workspace
	jumpoScary.Position = Vector3.new(-125.983, 23.257, 27.388)
	fogaoLuz.Enabled = true
	fogaoLuz2.Enabled = true
	for _, cadeira in pairs(seat:GetDescendants()) do
	if cadeira:IsA("Seat") then
		cadeira.Disabled = false
				end
			end	
		end
	end
end)

	
			
		
	

