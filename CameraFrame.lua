local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local evento = ReplicatedStorage:WaitForChild("EventoTelaPreta")

local player = game.Players.LocalPlayer
local fadeGui = player:WaitForChild("PlayerGui")
local ScreenGui = fadeGui:WaitForChild("FadeGui")
local fadeFrame = ScreenGui:WaitForChild("FadeFrame")

local frame = ScreenGui:WaitForChild("Frame")
local text3 = frame:WaitForChild("TextLabel3")
local text4 = frame:WaitForChild("TextLabel4")
local text5 = frame:WaitForChild("TextLabel5")
local text6 = frame:WaitForChild("TextLabel6")
local text7 = frame:WaitForChild("TextLabel7")
local sound = game:GetService("SoundService")
local evil = sound.Musics:WaitForChild("Evil laughter")
local character = player.Character or player.CharacterAdded:Wait()
local Humanoid = character:WaitForChild("Humanoid") :: Humanoid
local playerRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

local playerGui = player:WaitForChild("PlayerGui")
local backPack = player:WaitForChild("Backpack")
local CustomInventory = playerGui:WaitForChild("Custom Inventory")

local Camera = backPack:FindFirstChild("Camera")

local function defrost()
	Humanoid.WalkSpeed  = 18
	Humanoid.JumpPower = 30
	playerRoot.Anchored = false

end

frame.AnchorPoint = Vector2.new(0.5, 0.5) -- centro do objeto
frame.Position = UDim2.new(0.5, 0, 0.5, 0) -- meio da tela

text3.AnchorPoint = Vector2.new(0.5, 0.5) -- centro do objeto
text3.Position = UDim2.new(0.5, 0, 0.5, 0) -- meio da tela

text4.AnchorPoint = Vector2.new(0.5, 0.5) -- centro do objeto
text4.Position = UDim2.new(0.5, 0, 0.5, 0) -- meio da tela

text5.AnchorPoint = Vector2.new(0.5, 0.5) -- centro do objeto
text5.Position = UDim2.new(0.5, 0, 0.5, 0) -- meio da tela

text6.AnchorPoint = Vector2.new(0.5, 0.5) -- centro do objeto
text6.Position = UDim2.new(0.5, 0, 0.5, 0) -- meio da tela

local tense = game:GetService("SoundService").Musics:WaitForChild("Tense Trial")
local clock = game:GetService("SoundService").Musics:WaitForChild("Clock Ticking Sound Effect")
local function fadeIn(duration)
	local tween = TweenService:Create(fadeFrame, TweenInfo.new(duration), {BackgroundTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	fadeFrame.Visible = true
end
local function fadeOut(duration)
	local tween = TweenService:Create(fadeFrame, TweenInfo.new(duration), {BackgroundTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	fadeFrame.Visible = false
end

local function fadeInText3(duration)
	local tween = TweenService:Create(text3, TweenInfo.new(duration), {TextTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = true
end
local function fadeOutText3(duration)
	local tween = TweenService:Create(text3, TweenInfo.new(duration), {TextTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = false
end
local function fadeInText4(duration)
	local tween = TweenService:Create(text4, TweenInfo.new(duration), {TextTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = true
end
local function fadeOutText4(duration)
	local tween = TweenService:Create(text4, TweenInfo.new(duration), {TextTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = false
end
local function fadeInText5(duration)
	local tween = TweenService:Create(text5, TweenInfo.new(duration), {TextTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = true
end
local function fadeOutText5(duration)
	local tween = TweenService:Create(text5, TweenInfo.new(duration), {TextTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = false
end
local function fadeInText6(duration)
	local tween = TweenService:Create(text6, TweenInfo.new(duration), {TextTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = true
end
local function fadeOutText6(duration)
	local tween = TweenService:Create(text6, TweenInfo.new(duration), {TextTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = false
end
local function fadeInText7(duration)
	local tween = TweenService:Create(text7, TweenInfo.new(duration), {TextTransparency = 0})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = true
end
local function fadeOutText7(duration)
	local tween = TweenService:Create(text7, TweenInfo.new(duration), {TextTransparency = 1})
	tween:Play()
	tween.Completed:Wait()
	frame.Visible = false
end
local function fadeSom(sound, targetVolume, time)
	local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local goal = {Volume = targetVolume}
	local tween = TweenService:Create(sound, tweenInfo, goal)
	tween:Play()
end
local camTest = workspace.cam1
local runService = game:GetService("RunService")
local deslocamento = Vector3.new(0, 0, 9) 
local deslocamento2 = Vector3.new(-7, 0, -3) 
local deslocamento3 = Vector3.new(-7, 0, 0)
local deslocamento4 = Vector3.new(-3, 0, -3)
local lighting = game:GetService("Lighting")
local depth = lighting.DepthOfField

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local clockTime = ReplicatedStorage:WaitForChild("clockTime")
local clockF = workspace["Grandfather Clock"].clock:WaitForChild("Clock Ticking Sound Effect")
local camTest2 = workspace.cam2
local camTest3 = workspace.cam3
local camTest4 = workspace.cam4
local camTest5 = workspace.cam5
local camTest6 = workspace.cam6
local camTest7 = workspace.cam7
local camTest8 = workspace.cam8
local sound = game:GetService("SoundService")
local clockMusic = sound.Musics:WaitForChild("Clock Ticking Sound Effect")
clockMusic.Looped = true
local tenseTrial = sound.Musics:WaitForChild("Tense Trial")
local camera = workspace.CurrentCamera
local cameraFinal = workspace.CameraFinal
local clockTime = game.ReplicatedStorage:WaitForChild("clockTime")
local wind = sound.Musics:WaitForChild("Wind Ambient (Sound Effect)")
local horror = sound.Musics:WaitForChild("Horror")
local evil = sound.Musics:WaitForChild("Evil laughter")
local chainsaw = sound.Musics:WaitForChild("chainsaw-start-218438")
local policeAudio = workspace.Light["Street lamp4"].Light:WaitForChild("Police Radio 6 (SFX)")
local policeSin = workspace.Light["Street lamp4"].Light:WaitForChild("Mad City Police Siren (Louder)")
local policeLigar = sound.Musics:WaitForChild("Police Radio Line Feed Radio Voices Static 1 (SFX)")
local anjoLight = workspace.anjoLight:FindFirstChild("PointLight")
wind.TimePosition = 2
local tempo2 = 0
local policeAz = workspace.PoliceLight:FindFirstChild("Azul")
local policeVer = workspace.PoliceLight:FindFirstChild("Vermelho")
local luz
local estadoLuz = 1

local backPack = player:WaitForChild("Backpack")
local CustomInventory = playerGui:WaitForChild("Custom Inventory")
local FlashLight = backPack:FindFirstChild("Lanterna")
local function desligarIventario()
	CustomInventory.Enabled = false
	FlashLight.Enabled = false

end

local function police()
	luz = runService.Heartbeat:Connect(function(dt)
		tempo2 += dt
		if estadoLuz == 1 then
		policeAz.Enabled = true
	
		if tempo2 >= 0.4 then
			tempo2 = 0
			policeAz.Enabled = false
			policeVer.Enabled = true
			
		end
		if tempo2 >= 0.1 then
			tempo2 = 0
			estadoLuz = 2
		end
		elseif estadoLuz == 2 then
		policeAz.Enabled = true 
		policeVer.Enabled = false
		
	if tempo2 >= 0.2 then
		tempo2 = 0
		estadoLuz = 3
	end
	elseif estadoLuz == 3 then
			policeAz.Enabled = false
			policeVer.Enabled = true
	
	if tempo2 >= 0.4 then
		tempo2 = 0
		estadoLuz = 1
			end
		end
	end)
end
local Player = game.Players.LocalPlayer
local creepy = sound.Musics:WaitForChild("Creepy")
clockTime.OnClientEvent:Connect(function()
	policeLigar:Play()
	anjoLight.Enabled = false
	print("recebido")
	task.wait(7)
	desligarIventario()
	horror:Stop()
	policeAudio:Play()
	camera.CameraType = Enum.CameraType.Scriptable
	depth.Enabled = false
	wind:Play()
	camera.CFrame = CFrame.new(cameraFinal.Position)* CFrame.Angles(0, math.rad(-110), 0)
	task.wait(7)
	

	
	depth.Enabled = true
	wind:Stop()
	local estado = 1
	clockF.Volume = 0.1
	clockF.RollOffMaxDistance = 70
	creepy:Play()
	----cam
	local parar

	local tempo = 0
	parar = runService.Heartbeat:Connect(function(dt)
		tempo += dt
		if estado == 1 then
			
			camTest.Position += deslocamento * dt
			camera.CFrame = CFrame.new(camTest.Position)* CFrame.Angles(0, math.rad(180), 0)
			if tempo >= 6 then
				tempo = 0
				estado = 2
				police()
			end
		elseif estado == 2 then

			
			camTest2.Position += deslocamento2 * dt
			camera.CFrame = CFrame.new(camTest2.Position)* CFrame.Angles(0, math.rad(60), 0)
			if tempo >= 6 then
				tempo = 0
				estado = 3
			
			end
		elseif estado == 3 then
			clockF.RollOffMaxDistance = 0

			camTest3.Position += deslocamento3 * dt
			camera.CFrame = CFrame.new(camTest3.Position)* CFrame.Angles(0, math.rad(90), 0)
			if tempo >= 5.5 then
				tempo = 0
				estado = 4
			end
		elseif estado == 4 then
			clockF.RollOffMaxDistance = 0
			camTest4.Position += deslocamento4 * dt
			camera.CFrame = CFrame.new(camTest4.Position)* CFrame.Angles(0, math.rad(40), 0)
			if tempo >= 4.5 then
				tempo = 0
				estado = 5
			end
		elseif estado == 5 then
			clockF.RollOffMaxDistance = 0
			camera.CFrame = CFrame.new(camTest5.Position)* CFrame.Angles(math.rad(-20), math.rad(140), math.rad(20))
			if tempo >= 5 then
				tempo = 0
				estado = 6
				policeAz.Range = 160
				policeVer.Range = 160
			end
		elseif estado == 6 then
			clockF.RollOffMaxDistance = 0
			camera.CFrame = CFrame.new(camTest6.Position)* CFrame.Angles(0, math.rad(120), 0)

			if tempo >= 6 then
				tempo = 0
				estado = 7
				policeSin:Play()
			end
		elseif estado == 7 then
			clockF.RollOffMaxDistance = 0

			camera.CFrame = CFrame.new(camTest7.Position)*CFrame.Angles(0, math.rad(140), 0)
			if tempo >= 5 then
				tempo = 0
				estado = 8
				policeAz.Range = 90
				policeVer.Range = 90
			end
		elseif estado == 8 then
			clockF.RollOffMaxDistance = 0
			camera.CFrame = CFrame.new(camTest8.Position) * CFrame.Angles(0, math.rad(-90), 0)
			if tempo >= 6 then
				tempo = 0
				local ml33 = workspace.ml33
				ml33.BrickColor = BrickColor.new("White")
				parar:Disconnect()
				tense:Play()
				fadeIn(0.1)
				luz:Disconnect()
				fadeInText3(4)
				clock:Play()
				task.wait(7)
				fadeOutText3(1)
				fadeInText4(2)
				task.wait(7)
				fadeOutText4(1)
				fadeInText5(2)
				task.wait(7)
				fadeOutText5(1)
				fadeInText6(2)
				task.wait(6)
				fadeOutText6(5)
				chainsaw:Play()
				fadeSom(clockMusic, 0, 2)
				fadeSom(creepy, 0, 8)
				task.wait(2)
				fadeInText7(0.1)
				evil:Play()
				fadeSom(evil, 0, 6)
				task.wait(2)
				fadeOutText7(6)
				
			end
		end
	end)
end)
