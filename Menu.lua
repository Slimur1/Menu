


for i,v in pairs(game:GetService("JointsService"):GetDescendants()) do
if v:IsA("RemoteEvent") then
v:Destroy()
end
end

for _, v in pairs(game.ReplicatedStorage.Sounds:GetChildren()) do
    v.PlayOnRemove = false
end


-- variables
local player = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local gui = player:WaitForChild('PlayerGui')
local camsub = game.Workspace.CurrentCamera.CameraSubject
local TS = game:GetService("TweenService")
local inshop = false
local buycd = false
kromer = 0
erectorunlocked = false

-- basics
function playsound(id,pos)
local snd = Instance.new("Sound",gui)
snd.SoundId = 'rbxassetid://'..id
snd.TimePosition = pos
snd.Volume = 8
snd.Looped = false
snd:Play()
wait(4)
snd:Destroy()
end

--KROMER
local screenGui = Instance.new('ScreenGui',gui)
local krFrame = Instance.new('Frame',screenGui)
krFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
krFrame.BackgroundTransparency = 1
krFrame.Name = 'Main'
krFrame.Size = UDim2.new(1,0,1,0)
krFrame.Position = UDim2.new(0,0,0,0)
krFrame.BorderSizePixel = 3
krFrame.BorderColor3 = Color3.fromRGB(255,255,255)
krFrame.ZIndex = 2
local krAddText = Instance.new("TextLabel",krFrame)
krAddText.Text = '+0 KROMER'
krAddText.Size = UDim2.new(1,0,1,0)
krAddText.Position = UDim2.new(0,0,0.45,0)
krAddText.BackgroundTransparency = 1
krAddText.Font = 'Arcade'
krAddText.TextSize = 35
krAddText.TextStrokeTransparency = 1
krAddText.TextTransparency = 1
krAddText.TextColor3 = Color3.fromRGB(0,255,0)
krAddText.TextStrokeColor3 = Color3.fromRGB(255,255,255)

function addkromer(val)
kromer = kromer + val

krAddText.TextTransparency = 0
krAddText.TextStrokeTransparency = 0
krAddText.Text = '+'..val..' KROMER'
spawn(function()
local sound = Instance.new('Sound',krFrame)
sound.SoundId = 'rbxassetid://7511015104'
sound.Volume = 3
sound.Looped = false
sound:Play()
wait(4)
sound:Destroy()
end)
wait(1)
repeat wait()
krAddText.TextTransparency = krAddText.TextTransparency + 0.05
krAddText.TextStrokeTransparency = krAddText.TextStrokeTransparency + 0.05
until krAddText.TextTransparency >= 1
end

function playmusic(id)
for _,v in pairs(player.MenuPlaylist:GetChildren()) do
v:Destroy()
end
local snd = Instance.new("Sound",player.MenuPlaylist)
snd.Name = 'Song'
snd.SoundId = 'rbxassetid://'..id
snd.TimePosition = pos
snd.Volume = 2.5
snd.Looped = true
snd:Play()
end

gui:WaitForChild('CharacterSelection'):WaitForChild('Frame').Visible = false
wait(0.1)

local guiFolder = Instance.new('Folder',game.Players.LocalPlayer.PlayerGui.ScreenGui)
local mainFrame = Instance.new('Frame',guiFolder)
mainFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
mainFrame.Name = 'Main'
mainFrame.Size = UDim2.new(2,0,2,0)
mainFrame.Position = UDim2.new(-1.25,0,0,0)
mainFrame.Rotation = -80
mainFrame.BorderSizePixel = 3
mainFrame.BorderColor3 = Color3.fromRGB(255,255,255)
mainFrame.ZIndex = 2
local secFrame = Instance.new('Frame',guiFolder)
secFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
secFrame.Name = 'Secondary'
secFrame.Size = UDim2.new(1,0,1,0)
secFrame.Position = UDim2.new(0.15,0,-0.87,0)
secFrame.Rotation = -4
secFrame.BorderSizePixel = 3
secFrame.BorderColor3 = Color3.fromRGB(255,255,255)
local buttonFrame = Instance.new('Frame',guiFolder)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Name = 'Buttons'
buttonFrame.Size = UDim2.new(1,0,1,0)
buttonFrame.Position = UDim2.new(0,0,0,0)
buttonFrame.ZIndex = 3
local gameText = Instance.new("TextLabel",secFrame)
gameText.Text = ' Signals menu'
gameText.Size = UDim2.new(1,0,1,0)
gameText.Position = UDim2.new(0,0,0.40,0)
gameText.BackgroundTransparency = 1
gameText.Font = 'Arcade'
gameText.TextSize = 60
gameText.TextStrokeTransparency = 0
gameText.TextColor3 = Color3.fromRGB(62, 148, 35)
gameText.TextStrokeColor3 = Color3.fromRGB(255,255,255)

local gameText2 = Instance.new("TextLabel",buttonFrame)
gameText2.Text = ' Cum.'
gameText2.Size = UDim2.new(1,0,1,0)
gameText2.Position = UDim2.new(0.30,0,0.425,0)
gameText2.BackgroundTransparency = 1
gameText2.Font = 'Arcade'
gameText2.TextSize = 35
gameText2.TextStrokeTransparency = 0
gameText2.TextColor3 = Color3.fromRGB(0,0,0)
gameText2.TextStrokeColor3 = Color3.fromRGB(80,255,90)
spawn(function()
wait(5)
repeat wait() 
    gameText2.TextStrokeTransparency = gameText2.TextStrokeTransparency + 0.02
    gameText2.TextTransparency = gameText2.TextTransparency + 0.02
until gameText.TextTransparency >= 1
wait()
gameText2:Destroy()
end)
local gameText2 = Instance.new("TextLabel",secFrame)
gameText2.Text = '(batteries not included)'
gameText2.Size = UDim2.new(1,0,1,0)
gameText2.Position = UDim2.new(0,0,0.455,0)
gameText2.BackgroundTransparency = 1
gameText2.Font = 'Arcade'
gameText2.TextSize = 33
gameText2.TextStrokeTransparency = 0
gameText2.TextColor3 = Color3.fromRGB(0,0,0)
gameText2.TextStrokeColor3 = Color3.fromRGB(255,0,0)
-- character desc stuffs

local descFolder = Instance.new('Folder',buttonFrame)
descFolder.Name = 'Descriptions'
local asrielCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
asrielCharDesc.Text = [[Annoying ass character tbh
|ATK: 60|DEF: 300|HP: 250|
Phases: 3
]]
asrielCharDesc.Size = UDim2.new(1,0,1,0)
asrielCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
asrielCharDesc.BackgroundTransparency = 1
asrielCharDesc.Font = 'Arcade'
asrielCharDesc.TextSize = 23
asrielCharDesc.TextStrokeTransparency = 0
asrielCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
asrielCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
asrielCharDesc.TextTransparency = 1
asrielCharDesc.ZIndex = 5

local asrielCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
asrielCharDescImage.Image = 'rbxassetid://7232236760'
asrielCharDescImage.ZIndex = 6
asrielCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
asrielCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
asrielCharDescImage.Visible = false

local friskCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
friskCharDesc.Text = [[Swanky child with no gender, will
beat the hell out of you.
|ATK: X|DEF: X|HP: X|
Phases: 1
Extra: Gains LV by damaging stuff.
Equip weapons/armor 
to change def/atk.]]
friskCharDesc.Size = UDim2.new(1,0,1,0)
friskCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
friskCharDesc.BackgroundTransparency = 1
friskCharDesc.Font = 'Arcade'
friskCharDesc.TextSize = 23
friskCharDesc.TextStrokeTransparency = 0
friskCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
friskCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
friskCharDesc.TextTransparency = 1
friskCharDesc.ZIndex = 5

local friskCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
friskCharDescImage.Image = 'rbxassetid://7232236760'
friskCharDescImage.ZIndex = 6
friskCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
friskCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
friskCharDescImage.Visible = false

local oldSansCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
oldSansCharDesc.Text = [[Dodge without punishment!
|ATK: 1|DEF: 1|HP: 1|
Phases: 1
Extra: he can one combo 
pretty much anyone lmao]]
oldSansCharDesc.Size = UDim2.new(1,0,1,0)
oldSansCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
oldSansCharDesc.BackgroundTransparency = 1
oldSansCharDesc.Font = 'Arcade'
oldSansCharDesc.TextSize = 23
oldSansCharDesc.TextStrokeTransparency = 0
oldSansCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
oldSansCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
oldSansCharDesc.TextTransparency = 1
oldSansCharDesc.ZIndex = 5

local oldSansCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
oldSansCharDescImage.Image = 'rbxassetid://7232236760'
oldSansCharDescImage.ZIndex = 6
oldSansCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
oldSansCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
oldSansCharDescImage.Visible = false

local gtCharaCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
gtCharaCharDesc.Text = [[I'm gonna ratio you
|ATK: 99|DEF: 150|HP: 200|
Phases: 2/3
Extra: atk/def/hp
increases over time in
phase 2.]]
gtCharaCharDesc.Size = UDim2.new(1,0,1,0)
gtCharaCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
gtCharaCharDesc.BackgroundTransparency = 1
gtCharaCharDesc.Font = 'Arcade'
gtCharaCharDesc.TextSize = 23
gtCharaCharDesc.TextStrokeTransparency = 0
gtCharaCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
gtCharaCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
gtCharaCharDesc.TextTransparency = 1
gtCharaCharDesc.ZIndex = 5

local gtCharaCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
gtCharaCharDescImage.Image = 'rbxassetid://7232236760'
gtCharaCharDescImage.ZIndex = 6
gtCharaCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
gtCharaCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
gtCharaCharDescImage.Visible = false

local undyneCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
undyneCharDesc.Text = [[This character is broken
|ATK: 70|DEF: 160|HP: 125|
Phases: 2
Extra: determination
regenerates hp in phase 2
]]
undyneCharDesc.Size = UDim2.new(1,0,1,0)
undyneCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
undyneCharDesc.BackgroundTransparency = 1
undyneCharDesc.Font = 'Arcade'
undyneCharDesc.TextSize = 23
undyneCharDesc.TextStrokeTransparency = 0
undyneCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
undyneCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
undyneCharDesc.TextTransparency = 1
undyneCharDesc.ZIndex = 5

local undyneCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
undyneCharDescImage.Image = 'rbxassetid://7232236760'
undyneCharDescImage.ZIndex = 6
undyneCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
undyneCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
undyneCharDescImage.Visible = false

local bettyCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
bettyCharDesc.Text = [[funny stun and soulsteal, 
funny autoblock which messes up lmb, 
funny hate cancellation
|ATK: 50|DEF: 120|HP: 100|
Phases: 3
Extra: hate mechanic
for phases 2/3, you regen
but also lose atk and def
]]
bettyCharDesc.Size = UDim2.new(1,0,1,0)
bettyCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
bettyCharDesc.BackgroundTransparency = 1
bettyCharDesc.Font = 'Arcade'
bettyCharDesc.TextSize = 23
bettyCharDesc.TextStrokeTransparency = 0
bettyCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
bettyCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
bettyCharDesc.TextTransparency = 1
bettyCharDesc.ZIndex = 5

local bettyCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
bettyCharDescImage.Image = 'rbxassetid://7232236760'
bettyCharDescImage.ZIndex = 6
bettyCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
bettyCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
bettyCharDescImage.Visible = false

local gtFriskCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
gtFriskCharDesc.Text = [[you know
i can probably make a sandwich
during the phase transition..
|ATK: 75|DEF: 200|HP: 150|
Phases: 2
]]
gtFriskCharDesc.Size = UDim2.new(1,0,1,0)
gtFriskCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
gtFriskCharDesc.BackgroundTransparency = 1
gtFriskCharDesc.Font = 'Arcade'
gtFriskCharDesc.TextSize = 23
gtFriskCharDesc.TextStrokeTransparency = 0
gtFriskCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
gtFriskCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
gtFriskCharDesc.TextTransparency = 1
gtFriskCharDesc.ZIndex = 5

local gtFriskCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
gtFriskCharDescImage.Image = 'rbxassetid://7232236760'
gtFriskCharDescImage.ZIndex = 6
gtFriskCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
gtFriskCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
gtFriskCharDescImage.Visible = false

local ssCharaCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
ssCharaCharDesc.Text = [[Use me if you are pissed
|ATK: 30|DEF: 200|HP: 120|
Phases: 2
]]
ssCharaCharDesc.Size = UDim2.new(1,0,1,0)
ssCharaCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
ssCharaCharDesc.BackgroundTransparency = 1
ssCharaCharDesc.Font = 'Arcade'
ssCharaCharDesc.TextSize = 23
ssCharaCharDesc.TextStrokeTransparency = 0
ssCharaCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
ssCharaCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
ssCharaCharDesc.TextTransparency = 1
ssCharaCharDesc.ZIndex = 5

local ssCharaCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
ssCharaCharDescImage.Image = 'rbxassetid://7232236760'
ssCharaCharDescImage.ZIndex = 6
ssCharaCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
ssCharaCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
ssCharaCharDescImage.Visible = false

local xCharaCharDesc = Instance.new("TextLabel",buttonFrame.Descriptions)
xCharaCharDesc.Text = [[best character fr ong
|ATK: 75|DEF: 175|HP: 120|
Phases: 2
]]
xCharaCharDesc.Size = UDim2.new(1,0,1,0)
xCharaCharDesc.Position = UDim2.new(-0.15,0,-0.35,0)
xCharaCharDesc.BackgroundTransparency = 1
xCharaCharDesc.Font = 'Arcade'
xCharaCharDesc.TextSize = 23
xCharaCharDesc.TextStrokeTransparency = 0
xCharaCharDesc.TextColor3 = Color3.fromRGB(255,255,255)
xCharaCharDesc.TextStrokeColor3 = Color3.fromRGB(0,0,0)
xCharaCharDesc.TextTransparency = 1
xCharaCharDesc.ZIndex = 5

local xCharaCharDescImage = Instance.new('ImageLabel',buttonFrame.Descriptions)
xCharaCharDescImage.Image = 'rbxassetid://7232236760'
xCharaCharDescImage.ZIndex = 6
xCharaCharDescImage.Size = UDim2.new(0.25,0,0.25,0)
xCharaCharDescImage.Position = UDim2.new(0.22,0,0.35,0)
xCharaCharDescImage.Visible = false

-- main buttons
local characterButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
characterButton.Text = 'Character Select'
characterButton.Size = UDim2.new(0.25,0,0.05,0)
characterButton.Position = UDim2.new(0.03,0,0.1,0)
characterButton.BackgroundTransparency = 1
characterButton.Font = 'Arcade'
characterButton.TextSize = 40
characterButton.TextStrokeTransparency = 0
characterButton.TextColor3 = Color3.fromRGB(255,255,255)
characterButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
characterButton.ZIndex = 4

local customsButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
customsButton.Text = ' '
customsButton.Size = UDim2.new(0.22,0,0.05,0)
customsButton.Position = UDim2.new(0.03,0,0.25,0)
customsButton.BackgroundTransparency = 1
customsButton.Font = 'Arcade'
customsButton.TextSize = 40
customsButton.TextStrokeTransparency = 0
customsButton.TextColor3 = Color3.fromRGB(255,255,255)
customsButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
customsButton.ZIndex = 4

local spectateButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
spectateButton.Text = ' '
spectateButton.Size = UDim2.new(0.22,0,0.05,0)
spectateButton.Position = UDim2.new(0.03,0,0.4,0)
spectateButton.BackgroundTransparency = 1
spectateButton.Font = 'Arcade'
spectateButton.TextSize = 40
spectateButton.TextStrokeTransparency = 1
spectateButton.TextColor3 = Color3.fromRGB(255,255,255)
spectateButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
spectateButton.ZIndex = 4

local settingsButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
settingsButton.Text = ' '
settingsButton.Size = UDim2.new(0.13,0,0.05,0)
settingsButton.Position = UDim2.new(0.03,0,0.55,0)
settingsButton.BackgroundTransparency = 1
settingsButton.Font = 'Arcade'
settingsButton.TextSize = 40
settingsButton.TextStrokeTransparency = 0
settingsButton.TextColor3 = Color3.fromRGB(255,255,255)
settingsButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
settingsButton.ZIndex = 4

local achievementButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
achievementButton.Text = ' '
achievementButton.Size = UDim2.new(0.2,0,0.05,0)
achievementButton.Position = UDim2.new(0.03,0,0.7,0)
achievementButton.BackgroundTransparency = 1
achievementButton.Font = 'Arcade'
achievementButton.TextSize = 40
achievementButton.TextStrokeTransparency = 0
achievementButton.TextColor3 = Color3.fromRGB(255,255,255)
achievementButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
achievementButton.ZIndex = 4

local shopButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
shopButton.Text = ' '
shopButton.Size = UDim2.new(0.07,0,0.05,0)
shopButton.Position = UDim2.new(0.03,0,0.85,0)
shopButton.BackgroundTransparency = 1
shopButton.Font = 'Arcade'
shopButton.TextSize = 40
shopButton.TextStrokeTransparency = 0
shopButton.TextColor3 = Color3.fromRGB(255,255,255)
shopButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopButton.ZIndex = 4

local creditsButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
creditsButton.Text = 'Credits'
creditsButton.Size = UDim2.new(0.1,0,0.05,0)
creditsButton.Position = UDim2.new(0.03,0,1,0)
creditsButton.BackgroundTransparency = 1
creditsButton.Font = 'Arcade'
creditsButton.TextSize = 30
creditsButton.TextStrokeTransparency = 0
creditsButton.TextColor3 = Color3.fromRGB(255,255,255)
creditsButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creditsButton.ZIndex = 4


local function hideUI()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(mainFrame, ti,{Position = UDim2.new(-3,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(buttonFrame, ti,{Position = UDim2.new(-3,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(secFrame, ti,{Position = UDim2.new(0,0,-3,0)})
tween:Play()
end

local function showUI()
local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(mainFrame, ti,{Position = UDim2.new(-1.25,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(buttonFrame, ti,{Position = UDim2.new(0,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(secFrame, ti,{Position =  UDim2.new(0.15,0,-0.87,0)})
tween:Play()
end

local function showUI2()
local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(mainFrame, ti,{Position = UDim2.new(-1.1,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(buttonFrame, ti,{Position = UDim2.new(0,0,0,0)})
tween:Play()

local ti = TweenInfo.new(
    1.4, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(secFrame, ti,{Position =  UDim2.new(0.15,0,-0.87,0)})
tween:Play()
end

local function hideButtonsMain()
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(characterButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsButton, ti,{Position = UDim2.new(-0.4,0,0.25,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateButton, ti,{Position = UDim2.new(-0.4,0,0.4,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsButton, ti,{Position = UDim2.new(-0.4,0,0.55,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(achievementButton, ti,{Position = UDim2.new(-0.4,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shopButton, ti,{Position = UDim2.new(-0.4,0,0.85,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(creditsButton, ti,{Position = UDim2.new(-0.4,0,1,0)})
tween:Play()
wait(0.05)
end

local function showButtonsMain()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(characterButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsButton, ti,{Position = UDim2.new(0.03,0,0.25,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateButton, ti,{Position = UDim2.new(0.03,0,0.4,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsButton, ti,{Position = UDim2.new(0.03,0,0.55,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(achievementButton, ti,{Position = UDim2.new(0.03,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shopButton, ti,{Position = UDim2.new(0.03,0,0.85,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(creditsButton, ti,{Position = UDim2.new(0.03,0,1,0)})
tween:Play()
wait(0.05)
end

-- character buttons 1
local CharButtons = Instance.new('Folder',buttonFrame)
CharButtons.Name = 'CharButtons'
local undertaleButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
undertaleButton.Text = 'Undertale'
undertaleButton.Size = UDim2.new(0.17,0,0.05,0)
undertaleButton.Position = UDim2.new(-0.4,0,0.1,0)
undertaleButton.BackgroundTransparency = 1
undertaleButton.Font = 'Arcade'
undertaleButton.TextSize = 40
undertaleButton.TextStrokeTransparency = 0
undertaleButton.TextColor3 = Color3.fromRGB(255,255,255)
undertaleButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
undertaleButton.ZIndex = 4

local glitchtaleButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
glitchtaleButton.Text = 'Glitchtale'
glitchtaleButton.Size = UDim2.new(0.18,0,0.05,0)
glitchtaleButton.Position = UDim2.new(-0.4,0,0.3,0)
glitchtaleButton.BackgroundTransparency = 1
glitchtaleButton.Font = 'Arcade'
glitchtaleButton.TextSize = 40
glitchtaleButton.TextStrokeTransparency = 0
glitchtaleButton.TextColor3 = Color3.fromRGB(255,255,255)
glitchtaleButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
glitchtaleButton.ZIndex = 4

local storyshiftButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
storyshiftButton.Text = 'Storyshift'
storyshiftButton.Size = UDim2.new(0.18,0,0.05,0)
storyshiftButton.Position = UDim2.new(-0.4,0,0.5,0)
storyshiftButton.BackgroundTransparency = 1
storyshiftButton.Font = 'Arcade'
storyshiftButton.TextSize = 40
storyshiftButton.TextStrokeTransparency = 0
storyshiftButton.TextColor3 = Color3.fromRGB(255,255,255)
storyshiftButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
storyshiftButton.ZIndex = 4

local xtaleButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
xtaleButton.Text = 'XTale'
xtaleButton.Size = UDim2.new(0.12,0,0.05,0)
xtaleButton.Position = UDim2.new(-0.4,0,0.7,0)
xtaleButton.BackgroundTransparency = 1
xtaleButton.Font = 'Arcade'
xtaleButton.TextSize = 40
xtaleButton.TextStrokeTransparency = 0
xtaleButton.TextColor3 = Color3.fromRGB(255,255,255)
xtaleButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
xtaleButton.ZIndex = 4

local ultrataleButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
ultrataleButton.Text = 'Ultratale'
ultrataleButton.Size = UDim2.new(0.16,0,0.05,0)
ultrataleButton.Position = UDim2.new(-0.4,0,0.9,0)
ultrataleButton.BackgroundTransparency = 1
ultrataleButton.Font = 'Arcade'
ultrataleButton.TextSize = 40
ultrataleButton.TextStrokeTransparency = 0
ultrataleButton.TextColor3 = Color3.fromRGB(255,255,255)
ultrataleButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
ultrataleButton.ZIndex = 4

local char1backButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons)
char1backButton.Text = 'Return'
char1backButton.Size = UDim2.new(0.13,0,0.05,0)
char1backButton.Position = UDim2.new(-0.4,0,0.05,0)
char1backButton.BackgroundTransparency = 1
char1backButton.Font = 'Arcade'
char1backButton.TextSize = 35
char1backButton.TextStrokeTransparency = 0
char1backButton.TextColor3 = Color3.fromRGB(255,255,255)
char1backButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
char1backButton.ZIndex = 4

local function showButtonsChar1()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(char1backButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undertaleButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(glitchtaleButton, ti,{Position = UDim2.new(0.03,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(storyshiftButton, ti,{Position = UDim2.new(0.03,0,0.5,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(xtaleButton, ti,{Position = UDim2.new(0.03,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(ultrataleButton, ti,{Position = UDim2.new(0.03,0,0.9,0)})
tween:Play()
wait(0.05)
end

local function hideButtonsChar1()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(char1backButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undertaleButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(glitchtaleButton, ti,{Position = UDim2.new(-0.4,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(storyshiftButton, ti,{Position = UDim2.new(-0.4,0,0.5,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(xtaleButton, ti,{Position = UDim2.new(-0.4,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(ultrataleButton, ti,{Position = UDim2.new(-0.4,0,0.9,0)})
tween:Play()
wait(0.05)
end

-- settings buttons
local SettingsButtons = Instance.new('Folder',buttonFrame)
SettingsButtons.Name = 'SettingsButtons'
local settingsMusicButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
settingsMusicButton.Text = 'Menu Music'
settingsMusicButton.Size = UDim2.new(0.2,0,0.05,0)
settingsMusicButton.Position = UDim2.new(-0.4,0,0.1,0)
settingsMusicButton.BackgroundTransparency = 1
settingsMusicButton.Font = 'Arcade'
settingsMusicButton.TextSize = 40
settingsMusicButton.TextStrokeTransparency = 0
settingsMusicButton.TextColor3 = Color3.fromRGB(255,255,255)
settingsMusicButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
settingsMusicButton.ZIndex = 4

local settingsMusicButtonBox = Instance.new('TextBox',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
settingsMusicButtonBox.Text = 'ID'
settingsMusicButtonBox.Size = UDim2.new(0.15,0,0.07,0)
settingsMusicButtonBox.Position = UDim2.new(-0.4,0,0.18,0)
settingsMusicButtonBox.BackgroundTransparency = 0
settingsMusicButtonBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
settingsMusicButtonBox.BorderSizePixel = 3
settingsMusicButtonBox.BorderColor3 = Color3.fromRGB(255,255,255)
settingsMusicButtonBox.Font = 'Arcade'
settingsMusicButtonBox.TextSize = 25
settingsMusicButtonBox.TextStrokeTransparency = 0
settingsMusicButtonBox.TextColor3 = Color3.fromRGB(255,255,255)
settingsMusicButtonBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
settingsMusicButtonBox.ZIndex = 4

local exportCustomButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
exportCustomButton.Text = 'Export Custom'
exportCustomButton.Size = UDim2.new(0.2,0,0.05,0)
exportCustomButton.Position = UDim2.new(-0.4,0,0.3,0)
exportCustomButton.BackgroundTransparency = 1
exportCustomButton.Font = 'Arcade'
exportCustomButton.TextSize = 40
exportCustomButton.TextStrokeTransparency = 0
exportCustomButton.TextColor3 = Color3.fromRGB(255,255,255)
exportCustomButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
exportCustomButton.ZIndex = 4

local importCustomButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
importCustomButton.Text = 'Import Custom'
importCustomButton.Size = UDim2.new(0.2,0,0.05,0)
importCustomButton.Position = UDim2.new(-0.4,0,0.5,0)
importCustomButton.BackgroundTransparency = 1
importCustomButton.Font = 'Arcade'
importCustomButton.TextSize = 40
importCustomButton.TextStrokeTransparency = 0
importCustomButton.TextColor3 = Color3.fromRGB(255,255,255)
importCustomButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
importCustomButton.ZIndex = 4

local importCustomButtonBox = Instance.new('TextBox',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
importCustomButtonBox.Text = 'Example'
importCustomButtonBox.Size = UDim2.new(0.15,0,0.07,0)
importCustomButtonBox.Position = UDim2.new(-0.4,0,0.58,0)
importCustomButtonBox.BackgroundTransparency = 0
importCustomButtonBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
importCustomButtonBox.BorderSizePixel = 3
importCustomButtonBox.BorderColor3 = Color3.fromRGB(255,255,255)
importCustomButtonBox.Font = 'Arcade'
importCustomButtonBox.TextSize = 25
importCustomButtonBox.TextStrokeTransparency = 0
importCustomButtonBox.TextColor3 = Color3.fromRGB(255,255,255)
importCustomButtonBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
importCustomButtonBox.ZIndex = 4

local morphButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
morphButton.Text = 'Morph Disabled'
morphButton.Size = UDim2.new(0.2,0,0.05,0)
morphButton.Position = UDim2.new(-0.4,0,0.7,0)
morphButton.BackgroundTransparency = 1
morphButton.Font = 'Arcade'
morphButton.TextSize = 40
morphButton.TextStrokeTransparency = 0
morphButton.TextColor3 = Color3.fromRGB(255,255,255)
morphButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
morphButton.ZIndex = 4

local hideNameButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
hideNameButton.Text = 'Hidden Disabled'
hideNameButton.Size = UDim2.new(0.2,0,0.05,0)
hideNameButton.Position = UDim2.new(-0.4,0,0.9,0)
hideNameButton.BackgroundTransparency = 1
hideNameButton.Font = 'Arcade'
hideNameButton.TextSize = 40
hideNameButton.TextStrokeTransparency = 0
hideNameButton.TextColor3 = Color3.fromRGB(255,255,255)
hideNameButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
hideNameButton.ZIndex = 4

local settingsBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.SettingsButtons)
settingsBackButton.Text = 'Return'
settingsBackButton.Size = UDim2.new(0.2,0,0.05,0)
settingsBackButton.Position = UDim2.new(-0.4,0,0.05,0)
settingsBackButton.BackgroundTransparency = 1
settingsBackButton.Font = 'Arcade'
settingsBackButton.TextSize = 35
settingsBackButton.TextStrokeTransparency = 0
settingsBackButton.TextColor3 = Color3.fromRGB(255,255,255)
settingsBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
settingsBackButton.ZIndex = 4

local function showButtonsSettings()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsMusicButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsMusicButtonBox, ti,{Position = UDim2.new(0.03,0,0.18,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(exportCustomButton, ti,{Position = UDim2.new(0.03,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(importCustomButton, ti,{Position = UDim2.new(0.03,0,0.5,0)})
tween:Play()
wait(0.05)
print("ok good")
spawn(function()
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(importCustomButtonBox, ti,{Position = UDim2.new(0.03,0,0.58,0)})
tween:Play()
end)
wait(0.05)
print("not so good")
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(morphButton, ti,{Position = UDim2.new(0.03,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(hideNameButton, ti,{Position = UDim2.new(0.03,0,0.9,0)})
tween:Play()
end

local function hideButtonsSettings()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsMusicButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(settingsMusicButtonBox, ti,{Position = UDim2.new(-0.4,0,0.18,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(exportCustomButton, ti,{Position = UDim2.new(-0.4,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(importCustomButton, ti,{Position = UDim2.new(-0.4,0,0.5,0)})
tween:Play()
wait(0.05)
spawn(function()
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(importCustomButtonBox, ti,{Position = UDim2.new(-0.4,0,0.58,0)})
tween:Play()
end)
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(morphButton, ti,{Position = UDim2.new(-0.4,0,0.7,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(hideNameButton, ti,{Position = UDim2.new(-0.4,0,0.9,0)})
tween:Play()
end

-- undertale char buttons
local UndertaleButtons = Instance.new('Folder',CharButtons)
UndertaleButtons.Name = 'UndertaleButtons'
local AsrielButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UndertaleButtons)
AsrielButton.Text = 'Asriel'
AsrielButton.Size = UDim2.new(0.11,0,0.05,0)
AsrielButton.Position = UDim2.new(-0.4,0,0.1,0)
AsrielButton.BackgroundTransparency = 1
AsrielButton.Font = 'Arcade'
AsrielButton.TextSize = 40
AsrielButton.TextStrokeTransparency = 0
AsrielButton.TextColor3 = Color3.fromRGB(255,255,255)
AsrielButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
AsrielButton.ZIndex = 4

local friskButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UndertaleButtons)
friskButton.Text = 'Frisk'
friskButton.Size = UDim2.new(0.09,0,0.05,0)
friskButton.Position = UDim2.new(-0.4,0,0.3,0)
friskButton.BackgroundTransparency = 1
friskButton.Font = 'Arcade'
friskButton.TextSize = 40
friskButton.TextStrokeTransparency = 0
friskButton.TextColor3 = Color3.fromRGB(255,255,255)
friskButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
friskButton.ZIndex = 4

local oldSansButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UndertaleButtons)
oldSansButton.Text = 'Sans (Old)'
oldSansButton.Size = UDim2.new(0.17,0,0.05,0)
oldSansButton.Position = UDim2.new(-0.4,0,0.5,0)
oldSansButton.BackgroundTransparency = 1
oldSansButton.Font = 'Arcade'
oldSansButton.TextSize = 40
oldSansButton.TextStrokeTransparency = 0
oldSansButton.TextColor3 = Color3.fromRGB(255,255,255)
oldSansButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
oldSansButton.ZIndex = 4

local undertaleBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UndertaleButtons)
undertaleBackButton.Text = 'Return'
undertaleBackButton.Size = UDim2.new(0.13,0,0.05,0)
undertaleBackButton.Position = UDim2.new(-0.4,0,0.05,0)
undertaleBackButton.BackgroundTransparency = 1
undertaleBackButton.Font = 'Arcade'
undertaleBackButton.TextSize = 35
undertaleBackButton.TextStrokeTransparency = 0
undertaleBackButton.TextColor3 = Color3.fromRGB(255,255,255)
undertaleBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
undertaleBackButton.ZIndex = 4

local function showButtonsUndertale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undertaleBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(AsrielButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(friskButton, ti,{Position = UDim2.new(0.03,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(oldSansButton, ti,{Position = UDim2.new(0.03,0,0.5,0)})
tween:Play()
end

local function hideButtonsUndertale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undertaleBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(AsrielButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(friskButton, ti,{Position = UDim2.new(-0.4,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(oldSansButton, ti,{Position = UDim2.new(-0.4,0,0.5,0)})
tween:Play()
end

-- glitchtale char buttons
local GlitchtaleButtons = Instance.new('Folder',CharButtons)
GlitchtaleButtons.Name = 'GlitchtaleButtons'
local GTCharaButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.GlitchtaleButtons)
GTCharaButton.Text = 'GT Chara'
GTCharaButton.Size = UDim2.new(0.15,0,0.05,0)
GTCharaButton.Position = UDim2.new(-0.4,0,0.1,0)
GTCharaButton.BackgroundTransparency = 1
GTCharaButton.Font = 'Arcade'
GTCharaButton.TextSize = 40
GTCharaButton.TextStrokeTransparency = 0
GTCharaButton.TextColor3 = Color3.fromRGB(255,255,255)
GTCharaButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
GTCharaButton.ZIndex = 4

local undyneButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.GlitchtaleButtons)
undyneButton.Text = 'Undyne'
undyneButton.Size = UDim2.new(0.13,0,0.05,0)
undyneButton.Position = UDim2.new(-0.4,0,0.3,0)
undyneButton.BackgroundTransparency = 1
undyneButton.Font = 'Arcade'
undyneButton.TextSize = 40
undyneButton.TextStrokeTransparency = 0
undyneButton.TextColor3 = Color3.fromRGB(255,255,255)
undyneButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
undyneButton.ZIndex = 4

local bettyButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.GlitchtaleButtons)
bettyButton.Text = 'Bete Noire'
bettyButton.Size = UDim2.new(0.17,0,0.05,0)
bettyButton.Position = UDim2.new(-0.4,0,0.5,0)
bettyButton.BackgroundTransparency = 1
bettyButton.Font = 'Arcade'
bettyButton.TextSize = 40
bettyButton.TextStrokeTransparency = 0
bettyButton.TextColor3 = Color3.fromRGB(255,255,255)
bettyButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
bettyButton.ZIndex = 4

local gtFriskButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.GlitchtaleButtons)
gtFriskButton.Text = 'GT Frisk'
gtFriskButton.Size = UDim2.new(0.15,0,0.05,0)
gtFriskButton.Position = UDim2.new(-0.4,0,0.7,0)
gtFriskButton.BackgroundTransparency = 1
gtFriskButton.Font = 'Arcade'
gtFriskButton.TextSize = 40
gtFriskButton.TextStrokeTransparency = 0
gtFriskButton.TextColor3 = Color3.fromRGB(255,255,255)
gtFriskButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
gtFriskButton.ZIndex = 4

local glitchtaleBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.GlitchtaleButtons)
glitchtaleBackButton.Text = 'Return'
glitchtaleBackButton.Size = UDim2.new(0.13,0,0.05,0)
glitchtaleBackButton.Position = UDim2.new(-0.4,0,0.05,0)
glitchtaleBackButton.BackgroundTransparency = 1
glitchtaleBackButton.Font = 'Arcade'
glitchtaleBackButton.TextSize = 35
glitchtaleBackButton.TextStrokeTransparency = 0
glitchtaleBackButton.TextColor3 = Color3.fromRGB(255,255,255)
glitchtaleBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
glitchtaleBackButton.ZIndex = 4

local function showButtonsGlitchtale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(glitchtaleBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(GTCharaButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undyneButton, ti,{Position = UDim2.new(0.03,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(bettyButton, ti,{Position = UDim2.new(0.03,0,0.5,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(gtFriskButton, ti,{Position = UDim2.new(0.03,0,0.7,0)})
tween:Play()
end

local function hideButtonsGlitchtale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(glitchtaleBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(GTCharaButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(undyneButton, ti,{Position = UDim2.new(-0.4,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(bettyButton, ti,{Position = UDim2.new(-0.4,0,0.5,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(gtFriskButton, ti,{Position = UDim2.new(-0.4,0,0.7,0)})
tween:Play()
end

-- storyshift char buttons
local StoryshiftButtons = Instance.new('Folder',CharButtons)
StoryshiftButtons.Name = 'StoryshiftButtons'
local SSCharaButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.StoryshiftButtons)
SSCharaButton.Text = 'SS Chara'
SSCharaButton.Size = UDim2.new(0.2,0,0.05,0)
SSCharaButton.Position = UDim2.new(-0.4,0,0.1,0)
SSCharaButton.BackgroundTransparency = 1
SSCharaButton.Font = 'Arcade'
SSCharaButton.TextSize = 40
SSCharaButton.TextStrokeTransparency = 0
SSCharaButton.TextColor3 = Color3.fromRGB(255,255,255)
SSCharaButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
SSCharaButton.ZIndex = 4

local storyshiftBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.StoryshiftButtons)
storyshiftBackButton.Text = 'Return'
storyshiftBackButton.Size = UDim2.new(0.2,0,0.05,0)
storyshiftBackButton.Position = UDim2.new(-0.4,0,0.05,0)
storyshiftBackButton.BackgroundTransparency = 1
storyshiftBackButton.Font = 'Arcade'
storyshiftBackButton.TextSize = 35
storyshiftBackButton.TextStrokeTransparency = 0
storyshiftBackButton.TextColor3 = Color3.fromRGB(255,255,255)
storyshiftBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
storyshiftBackButton.ZIndex = 4

local function hideButtonsStoryshift()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(storyshiftBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(SSCharaButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
end

local function showButtonsStoryshift()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(storyshiftBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(SSCharaButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
end

-- xtale char buttons
local XTaleButtons = Instance.new('Folder',CharButtons)
XTaleButtons.Name = 'XTaleButtons'
local CrossButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.XTaleButtons)
CrossButton.Text = 'X-Chara'
CrossButton.Size = UDim2.new(0.2,0,0.05,0)
CrossButton.Position = UDim2.new(-0.4,0,0.1,0)
CrossButton.BackgroundTransparency = 1
CrossButton.Font = 'Arcade'
CrossButton.TextSize = 40
CrossButton.TextStrokeTransparency = 0
CrossButton.TextColor3 = Color3.fromRGB(255,255,255)
CrossButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
CrossButton.ZIndex = 4

local XTaleBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.XTaleButtons)
XTaleBackButton.Text = 'Return'
XTaleBackButton.Size = UDim2.new(0.2,0,0.05,0)
XTaleBackButton.Position = UDim2.new(-0.4,0,0.05,0)
XTaleBackButton.BackgroundTransparency = 1
XTaleBackButton.Font = 'Arcade'
XTaleBackButton.TextSize = 35
XTaleBackButton.TextStrokeTransparency = 0
XTaleBackButton.TextColor3 = Color3.fromRGB(255,255,255)
XTaleBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
XTaleBackButton.ZIndex = 4

local function hideButtonsXTale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(XTaleBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(CrossButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
end

local function showButtonsXTale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(XTaleBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(CrossButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
end

-- ultratale char buttons
local UltrataleButtons = Instance.new('Folder',CharButtons)
UltrataleButtons.Name = 'UltrataleButtons'
local UltraSansButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UltrataleButtons)
UltraSansButton.Text = 'Sans'
UltraSansButton.Size = UDim2.new(0.2,0,0.05,0)
UltraSansButton.Position = UDim2.new(-0.4,0,0.1,0)
UltraSansButton.BackgroundTransparency = 1
UltraSansButton.Font = 'Arcade'
UltraSansButton.TextSize = 40
UltraSansButton.TextStrokeTransparency = 0
UltraSansButton.TextColor3 = Color3.fromRGB(255,255,255)
UltraSansButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
UltraSansButton.ZIndex = 4

local UltrataleBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UltrataleButtons)
UltrataleBackButton.Text = 'Return'
UltrataleBackButton.Size = UDim2.new(0.2,0,0.05,0)
UltrataleBackButton.Position = UDim2.new(-0.4,0,0.05,0)
UltrataleBackButton.BackgroundTransparency = 1
UltrataleBackButton.Font = 'Arcade'
UltrataleBackButton.TextSize = 35
UltrataleBackButton.TextStrokeTransparency = 0
UltrataleBackButton.TextColor3 = Color3.fromRGB(255,255,255)
UltrataleBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
UltrataleBackButton.ZIndex = 4

local function hideButtonsUltratale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(UltrataleBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(UltraSansButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
end

local function showButtonsUltratale()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(UltrataleBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(UltraSansButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
end

-- credits buttons
local CreditsButtons = Instance.new('Folder',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons)
CreditsButtons.Name = 'CreditsButtons'
local shifterCreditsButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CreditsButtons)
shifterCreditsButton.Text = 'Shifter'
shifterCreditsButton.Size = UDim2.new(0.2,0,0.05,0)
shifterCreditsButton.Position = UDim2.new(-0.4,0,0.1,0)
shifterCreditsButton.BackgroundTransparency = 1
shifterCreditsButton.Font = 'Arcade'
shifterCreditsButton.TextSize = 40
shifterCreditsButton.TextStrokeTransparency = 0
shifterCreditsButton.TextColor3 = Color3.fromRGB(255,255,255)
shifterCreditsButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shifterCreditsButton.ZIndex = 4

local creditsBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.UltrataleButtons)
creditsBackButton.Text = 'Return'
creditsBackButton.Size = UDim2.new(0.2,0,0.05,0)
creditsBackButton.Position = UDim2.new(-0.4,0,0.05,0)
creditsBackButton.BackgroundTransparency = 1
creditsBackButton.Font = 'Arcade'
creditsBackButton.TextSize = 35
creditsBackButton.TextStrokeTransparency = 0
creditsBackButton.TextColor3 = Color3.fromRGB(255,255,255)
creditsBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creditsBackButton.ZIndex = 4

local function hideButtonsCredits()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(creditsBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shifterCreditsButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
end

local function showButtonsCredits()

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(creditsBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shifterCreditsButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
end

-- custom character buttons
local CustomsButtons = Instance.new('Folder',CharButtons)
CustomsButtons.Name = 'CustomsButtons'
local NewDTButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
NewDTButton.Text = ' '
NewDTButton.Size = UDim2.new(0.20,0,0.05,0)
NewDTButton.Position = UDim2.new(-0.4,0,0.1,0)
NewDTButton.BackgroundTransparency = 1
NewDTButton.Font = 'Arcade'
NewDTButton.TextSize = 40
NewDTButton.TextStrokeTransparency = 0
NewDTButton.TextColor3 = Color3.fromRGB(255,255,255)
NewDTButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
NewDTButton.ZIndex = 4

local gasterButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
gasterButton.Text = ' '
gasterButton.Size = UDim2.new(0.1,0,0.05,0)
gasterButton.Position = UDim2.new(-0.4,0,0.3,0)
gasterButton.BackgroundTransparency = 1
gasterButton.Font = 'Arcade'
gasterButton.TextSize = 40
gasterButton.TextStrokeTransparency = 0
gasterButton.TextColor3 = Color3.fromRGB(255,255,255)
gasterButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
gasterButton.ZIndex = 4

local shaggyButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
shaggyButton.Text = ' '
shaggyButton.Size = UDim2.new(0.12,0,0.05,0)
shaggyButton.Position = UDim2.new(-0.4,0,0.5,0)
shaggyButton.BackgroundTransparency = 1
shaggyButton.Font = 'Arcade'
shaggyButton.TextSize = 40
shaggyButton.TextStrokeTransparency = 0
shaggyButton.TextColor3 = Color3.fromRGB(255,255,255)
shaggyButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shaggyButton.ZIndex = 4

local asgoreButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
asgoreButton.Text = 'Canon Sans'
asgoreButton.Size = UDim2.new(0.12,0,0.05,0)
asgoreButton.Position = UDim2.new(-0.4,0,0.7,0)
asgoreButton.BackgroundTransparency = 1
asgoreButton.Font = 'Arcade'
asgoreButton.TextSize = 40
asgoreButton.TextStrokeTransparency = 0
asgoreButton.TextColor3 = Color3.fromRGB(255,255,255)
asgoreButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
asgoreButton.ZIndex = 4

if erectorunlocked == 'true' then
local erectorButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
erectorButton.Text = 'ERECTOR THE GREAT!'
erectorButton.Size = UDim2.new(0.265,0,0.05,0)
erectorButton.Position = UDim2.new(-0.4,0,0.9,0)
erectorButton.BackgroundTransparency = 1
erectorButton.Font = 'Arcade'
erectorButton.TextSize = 36
erectorButton.TextStrokeTransparency = 0
erectorButton.TextColor3 = Color3.fromRGB(255,255,255)
erectorButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
erectorButton.ZIndex = 4
end

local customsBackButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
customsBackButton.Text = 'Return'
customsBackButton.Size = UDim2.new(0.11,0,0.05,0)
customsBackButton.Position = UDim2.new(-0.4,0,0.05,0)
customsBackButton.BackgroundTransparency = 1
customsBackButton.Font = 'Arcade'
customsBackButton.TextSize = 35
customsBackButton.TextStrokeTransparency = 0
customsBackButton.TextColor3 = Color3.fromRGB(255,255,255)
customsBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
customsBackButton.ZIndex = 4

local customsCreateButton = Instance.new('TextButton',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder.Buttons.CharButtons.CustomsButtons)
customsCreateButton.Text = 'Create'
customsCreateButton.Size = UDim2.new(0.11,0,0.05,0)
customsCreateButton.Position = UDim2.new(-0.4,0,0.05,0)
customsCreateButton.BackgroundTransparency = 1
customsCreateButton.Font = 'Arcade'
customsCreateButton.TextSize = 35
customsCreateButton.TextStrokeTransparency = 0
customsCreateButton.TextColor3 = Color3.fromRGB(255,255,255)
customsCreateButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
customsCreateButton.ZIndex = 4

local function showButtonsCustoms()
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsBackButton, ti,{Position = UDim2.new(0.03,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(NewDTButton, ti,{Position = UDim2.new(0.03,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(gasterButton, ti,{Position = UDim2.new(0.03,0,0.3,0)})
tween:Play()
wait(0.05)
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shaggyButton, ti,{Position = UDim2.new(0.03,0,0.5,0)})
tween:Play()
wait(0.05)
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(asgoreButton, ti,{Position = UDim2.new(0.03,0,0.7,0)})
tween:Play()
wait(0.05)
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsCreateButton, ti,{Position = UDim2.new(0.15,0,0.05,0)})
tween:Play()
wait(0.05)
spawn(function()
for _,c in pairs(CustomsButtons:GetChildren()) do
if c.Text == 'ERECTOR THE GREAT!' then
print("f")
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(c, ti,{Position = UDim2.new(0.03,0,0.9,0)})
tween:Play()
end
end
end)
end

local function hideButtonsCustoms()
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsBackButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(NewDTButton, ti,{Position = UDim2.new(-0.4,0,0.1,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(gasterButton, ti,{Position = UDim2.new(-0.4,0,0.3,0)})
tween:Play()
wait(0.05)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(shaggyButton, ti,{Position = UDim2.new(-0.4,0,0.5,0)})
tween:Play()
spawn(function()
for _,c in pairs(CustomsButtons:GetChildren()) do
if c.Text == 'ERECTOR THE GREAT!' then
print("g")
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(c, ti,{Position = UDim2.new(-0.4,0,0.7,0)})
tween:Play()
end
end
end)
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(customsCreateButton, ti,{Position = UDim2.new(-0.4,0,0.05,0)})
tween:Play()
end


-- SECRET SHIT SECRET SHIT TOP SECRET PLEASE DONT GO IN 
local TS = game:GetService("TweenService")
local creationFolder = Instance.new('Folder',game.Players.LocalPlayer.PlayerGui.ScreenGui)
creationFolder.Name = 'Creator'
local creatorCustomizationFrame = Instance.new('Frame',creationFolder)
creatorCustomizationFrame.Name = 'Customization'
creatorCustomizationFrame.Size = UDim2.new(1,0,1.3,0)
creatorCustomizationFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
creatorCustomizationFrame.Position = UDim2.new(0,0,-1.5,0)
local creatorTabCosmetics = Instance.new('TextButton',creatorCustomizationFrame)
creatorTabCosmetics.Text = "Cosmetics"
creatorTabCosmetics.Size = UDim2.new(0.13,0,0.025,0)
creatorTabCosmetics.TextColor3 = Color3.fromRGB(255,255,0)
creatorTabCosmetics.TextStrokeTransparency = 1
creatorTabCosmetics.Position = UDim2.new(0.25,0,2,0)
creatorTabCosmetics.Font = 'Arcade'
creatorTabCosmetics.BackgroundTransparency = 1
creatorTabCosmetics.TextSize = 34
creatorTabCosmetics.ZIndex = 2
local creatorTabCharacter = Instance.new('TextButton',creatorCustomizationFrame)
creatorTabCharacter.Text = "Character"
creatorTabCharacter.TextColor3 = Color3.fromRGB(255,255,255)
creatorTabCharacter.Size = UDim2.new(0.13,0,0.025,0)
creatorTabCharacter.TextStrokeTransparency = 1
creatorTabCharacter.Position = UDim2.new(0.45,0,2,0)
creatorTabCharacter.Font = 'Arcade'
creatorTabCharacter.TextSize = 34
creatorTabCharacter.BackgroundTransparency = 1
creatorTabCharacter.ZIndex = 2
local creatorTabAttacks = Instance.new('TextButton',creatorCustomizationFrame)
creatorTabAttacks.Text = "Attacks"
creatorTabAttacks.TextColor3 = Color3.fromRGB(255,255,255)
creatorTabAttacks.TextStrokeTransparency = 1
creatorTabAttacks.BackgroundTransparency = 1
creatorTabAttacks.Size = UDim2.new(0.11,0,0.025,0)
creatorTabAttacks.Position = UDim2.new(0.65,0,2,0)
creatorTabAttacks.Font = 'Arcade'
creatorTabAttacks.TextSize = 34
creatorTabAttacks.ZIndex = 2
local creatorTabBackground = Instance.new('Frame',creatorTabCosmetics)
creatorTabBackground.Name = 'BG'
creatorTabBackground.Size = UDim2.new(3.9,0,1.1,0)
creatorTabBackground.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorTabBackground.Position = UDim2.new(0,0,0,0)
creatorTabBackground.BorderColor3 = Color3.fromRGB(255,255,255)
creatorTabBackground.BorderSizePixel = 3

local creatorTextLabel = Instance.new('TextLabel',creatorCustomizationFrame)
creatorTextLabel.Text = [[Welcome to the character creator!
(Happy Halloween!)]]
creatorTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
creatorTextLabel.TextStrokeColor3 = Color3.fromRGB(120,120,120)
creatorTextLabel.TextStrokeTransparency = 0
creatorTextLabel.Position = UDim2.new(0.5,0,-0.05,0)
creatorTextLabel.Font = 'Arcade'
creatorTextLabel.TextSize = 40

local creatorBackButton = Instance.new('TextButton',creatorCustomizationFrame)
creatorBackButton.Text = "< Return"
creatorBackButton.Size = UDim2.new(0.115,0,0.025,0)
creatorBackButton.TextColor3 = Color3.fromRGB(255,255,255)
creatorBackButton.TextStrokeTransparency = 1
creatorBackButton.Position = UDim2.new(-0.56,0,0.1,0)
creatorBackButton.Font = 'Arcade'
creatorBackButton.BackgroundTransparency = 1
creatorBackButton.TextSize = 36
creatorBackButton.ZIndex = 2

local creatorHelpButton = Instance.new('TextButton',creatorCustomizationFrame)
creatorHelpButton.Text = "HELP??"
creatorHelpButton.Size = UDim2.new(0.1,0,0.025,0)
creatorHelpButton.TextColor3 = Color3.fromRGB(255,255,255)
creatorHelpButton.TextStrokeTransparency = 1
creatorHelpButton.Position = UDim2.new(1.36,0,0.1,0)
creatorHelpButton.Font = 'Arcade'
creatorHelpButton.BackgroundTransparency = 1
creatorHelpButton.TextSize = 36
creatorHelpButton.ZIndex = 2
local creatorHelpFrame = Instance.new('Frame',creatorCustomizationFrame)
creatorHelpFrame.Size = UDim2.new(0.3,0,0.6,0)
creatorHelpFrame.BackgroundTransparency = 0
creatorHelpFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorHelpFrame.BorderSizePixel = 3
creatorHelpFrame.BorderColor3 = Color3.fromRGB(255,255,255)
creatorHelpFrame.ZIndex = 6
creatorHelpFrame.Position = UDim2.new(0.35,0,-0.75,0)
local creatorHelpFrameClose = Instance.new('TextButton',creatorHelpFrame)
creatorHelpFrameClose.Text = "X"
creatorHelpFrameClose.Size = UDim2.new(0.05,0,0.025,0)
creatorHelpFrameClose.TextColor3 = Color3.fromRGB(255,255,255)
creatorHelpFrameClose.TextStrokeTransparency = 1
creatorHelpFrameClose.Position = UDim2.new(0.01,0,0.01,0)
creatorHelpFrameClose.Font = 'Arcade'
creatorHelpFrameClose.BackgroundTransparency = 1
creatorHelpFrameClose.TextSize = 36
creatorHelpFrameClose.ZIndex = 6
local creatorHelpFrameText = Instance.new('TextLabel',creatorHelpFrame)
creatorHelpFrameText.Text = [[- rewrite soon
]]
creatorHelpFrameText.Size = UDim2.new(0.05,0,0.025,0)
creatorHelpFrameText.TextColor3 = Color3.fromRGB(255,255,255)
creatorHelpFrameText.TextStrokeTransparency = 1
creatorHelpFrameText.Position = UDim2.new(0.475,0,0.38,0)
creatorHelpFrameText.Font = 'Arcade'
creatorHelpFrameText.BackgroundTransparency = 1
creatorHelpFrameText.TextSize = 15
creatorHelpFrameText.ZIndex = 6

local creatorManaColor = Instance.new('TextLabel',creatorCustomizationFrame)
creatorManaColor.Text = 'Mana Bar Color'
creatorManaColor.TextColor3 = Color3.fromRGB(255,255,255)
creatorManaColor.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorManaColor.TextStrokeTransparency = 0
creatorManaColor.Position = UDim2.new(-1.1,0,0.23,0)
creatorManaColor.Font = 'Arcade'
creatorManaColor.TextSize = 25
local creatorManaColorBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorManaColorBox.Text = 'R,G,B'
creatorManaColorBox.Size = UDim2.new(0.13,0,0.04,0)
creatorManaColorBox.Position = UDim2.new(-1.035,0,0.25,0)
creatorManaColorBox.BackgroundTransparency = 0
creatorManaColorBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorManaColorBox.BorderSizePixel = 3
creatorManaColorBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorManaColorBox.Font = 'Arcade'
creatorManaColorBox.TextSize = 25
creatorManaColorBox.TextStrokeTransparency = 0
creatorManaColorBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorManaColorBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorManaColorBox.ZIndex = 4

local creatorStaminaColor = Instance.new('TextLabel',creatorCustomizationFrame)
creatorStaminaColor.Text = 'Stam Bar Color'
creatorStaminaColor.TextColor3 = Color3.fromRGB(255,255,255)
creatorStaminaColor.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorStaminaColor.TextStrokeTransparency = 0
creatorStaminaColor.Position = UDim2.new(-1.1,0,0.32,0)
creatorStaminaColor.Font = 'Arcade'
creatorStaminaColor.TextSize = 25
local creatorStaminaColorBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorStaminaColorBox.Text = 'R,G,B'
creatorStaminaColorBox.Size = UDim2.new(0.13,0,0.04,0)
creatorStaminaColorBox.Position = UDim2.new(-1.035,0,0.34,0)
creatorStaminaColorBox.BackgroundTransparency = 0
creatorStaminaColorBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorStaminaColorBox.BorderSizePixel = 3
creatorStaminaColorBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorStaminaColorBox.Font = 'Arcade'
creatorStaminaColorBox.TextSize = 25
creatorStaminaColorBox.TextStrokeTransparency = 0
creatorStaminaColorBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorStaminaColorBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorStaminaColorBox.ZIndex = 4

local creatorPlrName = Instance.new('TextLabel',creatorCustomizationFrame)
creatorPlrName.Text = 'Player Name'
creatorPlrName.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrName.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrName.TextStrokeTransparency = 0
creatorPlrName.Position = UDim2.new(-1.1,0,0.41,0)
creatorPlrName.Font = 'Arcade'
creatorPlrName.TextSize = 25
local creatorPlrNameBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorPlrNameBox.Text = 'Example'
creatorPlrNameBox.Size = UDim2.new(0.13,0,0.04,0)
creatorPlrNameBox.Position = UDim2.new(-1.035,0,0.43,0)
creatorPlrNameBox.BackgroundTransparency = 0
creatorPlrNameBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameBox.BorderSizePixel = 3
creatorPlrNameBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameBox.Font = 'Arcade'
creatorPlrNameBox.TextSize = 25
creatorPlrNameBox.TextStrokeTransparency = 0
creatorPlrNameBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameBox.ZIndex = 4

local creatorPlrNameColor = Instance.new('TextLabel',creatorCustomizationFrame)
creatorPlrNameColor.Text = 'Name Color'
creatorPlrNameColor.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameColor.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameColor.TextStrokeTransparency = 0
creatorPlrNameColor.Position = UDim2.new(-1.1,0,0.50,0)
creatorPlrNameColor.Font = 'Arcade'
creatorPlrNameColor.TextSize = 25
local creatorPlrNameColorBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorPlrNameColorBox.Text = 'R,G,B'
creatorPlrNameColorBox.Size = UDim2.new(0.13,0,0.04,0)
creatorPlrNameColorBox.Position = UDim2.new(-1.035,0,0.52,0)
creatorPlrNameColorBox.BackgroundTransparency = 0
creatorPlrNameColorBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameColorBox.BorderSizePixel = 3
creatorPlrNameColorBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameColorBox.Font = 'Arcade'
creatorPlrNameColorBox.TextSize = 25
creatorPlrNameColorBox.TextStrokeTransparency = 0
creatorPlrNameColorBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameColorBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameColorBox.ZIndex = 4

local creatorPlrNameOutlineColor = Instance.new('TextLabel',creatorCustomizationFrame)
creatorPlrNameOutlineColor.Text = 'Name Outline Color'
creatorPlrNameOutlineColor.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameOutlineColor.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameOutlineColor.TextStrokeTransparency = 0
creatorPlrNameOutlineColor.Position = UDim2.new(-1.1,0,0.59,0)
creatorPlrNameOutlineColor.Font = 'Arcade'
creatorPlrNameOutlineColor.TextSize = 19
local creatorPlrNameOutlineColorBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorPlrNameOutlineColorBox.Text = 'R,G,B'
creatorPlrNameOutlineColorBox.Size = UDim2.new(0.13,0,0.04,0)
creatorPlrNameOutlineColorBox.Position = UDim2.new(-1.035,0,0.61,0)
creatorPlrNameOutlineColorBox.BackgroundTransparency = 0
creatorPlrNameOutlineColorBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameOutlineColorBox.BorderSizePixel = 3
creatorPlrNameOutlineColorBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameOutlineColorBox.Font = 'Arcade'
creatorPlrNameOutlineColorBox.TextSize = 25
creatorPlrNameOutlineColorBox.TextStrokeTransparency = 0
creatorPlrNameOutlineColorBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorPlrNameOutlineColorBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorPlrNameOutlineColorBox.ZIndex = 4

local creatorFakeHp = Instance.new('TextLabel',creatorCustomizationFrame)
creatorFakeHp.Text = 'Fake HP'
creatorFakeHp.TextColor3 = Color3.fromRGB(255,255,255)
creatorFakeHp.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorFakeHp.TextStrokeTransparency = 0
creatorFakeHp.Position = UDim2.new(-1.1,0,0.68,0)
creatorFakeHp.Font = 'Arcade'
creatorFakeHp.TextSize = 25
local creatorFakeHpBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorFakeHpBox.Text = '69'
creatorFakeHpBox.Size = UDim2.new(0.13,0,0.04,0)
creatorFakeHpBox.Position = UDim2.new(-1.035,0,0.70,0)
creatorFakeHpBox.BackgroundTransparency = 0
creatorFakeHpBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorFakeHpBox.BorderSizePixel = 3
creatorFakeHpBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorFakeHpBox.Font = 'Arcade'
creatorFakeHpBox.TextSize = 25
creatorFakeHpBox.TextStrokeTransparency = 0
creatorFakeHpBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorFakeHpBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorFakeHpBox.ZIndex = 4

local creatorClientWeapon = Instance.new('TextLabel',creatorCustomizationFrame)
creatorClientWeapon.Text = 'FD Weapon'
creatorClientWeapon.TextColor3 = Color3.fromRGB(255,255,255)
creatorClientWeapon.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorClientWeapon.TextStrokeTransparency = 0
creatorClientWeapon.Position = UDim2.new(1.915,0,0.23,0)
creatorClientWeapon.Font = 'Arcade'
creatorClientWeapon.TextSize = 25
local creatorClientWeaponBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorClientWeaponBox.Text = 'Name'
creatorClientWeaponBox.Size = UDim2.new(0.13,0,0.04,0)
creatorClientWeaponBox.Position = UDim2.new(1.85,0,0.25,0)
creatorClientWeaponBox.BackgroundTransparency = 0
creatorClientWeaponBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorClientWeaponBox.BorderSizePixel = 3
creatorClientWeaponBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorClientWeaponBox.Font = 'Arcade'
creatorClientWeaponBox.TextSize = 25
creatorClientWeaponBox.TextStrokeTransparency = 0
creatorClientWeaponBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorClientWeaponBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorClientWeaponBox.ZIndex = 4

local creatorClientWeaponColor = Instance.new('TextLabel',creatorCustomizationFrame)
creatorClientWeaponColor.Text = 'Weapon Color'
creatorClientWeaponColor.TextColor3 = Color3.fromRGB(255,255,255)
creatorClientWeaponColor.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorClientWeaponColor.TextStrokeTransparency = 0
creatorClientWeaponColor.Position = UDim2.new(1.915,0,0.32,0)
creatorClientWeaponColor.Font = 'Arcade'
creatorClientWeaponColor.TextSize = 25
local creatorClientWeaponColorBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorClientWeaponColorBox.Text = 'R,G,B'
creatorClientWeaponColorBox.Size = UDim2.new(0.13,0,0.04,0)
creatorClientWeaponColorBox.Position = UDim2.new(1.85,0,0.34,0)
creatorClientWeaponColorBox.BackgroundTransparency = 0
creatorClientWeaponColorBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorClientWeaponColorBox.BorderSizePixel = 3
creatorClientWeaponColorBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorClientWeaponColorBox.Font = 'Arcade'
creatorClientWeaponColorBox.TextSize = 25
creatorClientWeaponColorBox.TextStrokeTransparency = 0
creatorClientWeaponColorBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorClientWeaponColorBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorClientWeaponColorBox.ZIndex = 4

local creatorMiscSlot1 = Instance.new('TextLabel',creatorCustomizationFrame)
creatorMiscSlot1.Text = 'Misc. Slot 1'
creatorMiscSlot1.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot1.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot1.TextStrokeTransparency = 0
creatorMiscSlot1.Position = UDim2.new(1.915,0,0.41,0)
creatorMiscSlot1.Font = 'Arcade'
creatorMiscSlot1.TextSize = 24
local creatorMiscSlot1Box = Instance.new('TextBox',creatorCustomizationFrame)
creatorMiscSlot1Box.Text = 'Name'
creatorMiscSlot1Box.Size = UDim2.new(0.13,0,0.04,0)
creatorMiscSlot1Box.Position = UDim2.new(1.85,0,0.43,0)
creatorMiscSlot1Box.BackgroundTransparency = 0
creatorMiscSlot1Box.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot1Box.BorderSizePixel = 3
creatorMiscSlot1Box.BorderColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot1Box.Font = 'Arcade'
creatorMiscSlot1Box.TextSize = 25
creatorMiscSlot1Box.TextStrokeTransparency = 0
creatorMiscSlot1Box.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot1Box.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot1Box.ZIndex = 4

local creatorMiscSlot2 = Instance.new('TextLabel',creatorCustomizationFrame)
creatorMiscSlot2.Text = 'Misc. Slot 2'
creatorMiscSlot2.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot2.TextStrokeTransparency = 0
creatorMiscSlot2.Position = UDim2.new(1.915,0,0.50,0)
creatorMiscSlot2.Font = 'Arcade'
creatorMiscSlot2.TextSize = 24
local creatorMiscSlot2Box = Instance.new('TextBox',creatorCustomizationFrame)
creatorMiscSlot2Box.Text = 'Name'
creatorMiscSlot2Box.Size = UDim2.new(0.13,0,0.04,0)
creatorMiscSlot2Box.Position = UDim2.new(1.85,0,0.52,0)
creatorMiscSlot2Box.BackgroundTransparency = 0
creatorMiscSlot2Box.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot2Box.BorderSizePixel = 3
creatorMiscSlot2Box.BorderColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot2Box.Font = 'Arcade'
creatorMiscSlot2Box.TextSize = 25
creatorMiscSlot2Box.TextStrokeTransparency = 0
creatorMiscSlot2Box.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot2Box.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot2Box.ZIndex = 4

local creatorMiscSlot3 = Instance.new('TextLabel',creatorCustomizationFrame)
creatorMiscSlot3.Text = 'Misc. Slot 3'
creatorMiscSlot3.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot3.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot3.TextStrokeTransparency = 0
creatorMiscSlot3.Position = UDim2.new(1.915,0,0.59,0)
creatorMiscSlot3.Font = 'Arcade'
creatorMiscSlot3.TextSize = 24
local creatorMiscSlot3Box = Instance.new('TextBox',creatorCustomizationFrame)
creatorMiscSlot3Box.Text = 'Name'
creatorMiscSlot3Box.Size = UDim2.new(0.13,0,0.04,0)
creatorMiscSlot3Box.Position = UDim2.new(1.85,0,0.61,0)
creatorMiscSlot3Box.BackgroundTransparency = 0
creatorMiscSlot3Box.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot3Box.BorderSizePixel = 3
creatorMiscSlot3Box.BorderColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot3Box.Font = 'Arcade'
creatorMiscSlot3Box.TextSize = 25
creatorMiscSlot3Box.TextStrokeTransparency = 0
creatorMiscSlot3Box.TextColor3 = Color3.fromRGB(255,255,255)
creatorMiscSlot3Box.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorMiscSlot3Box.ZIndex = 4

local creatorCosmeticsNext = Instance.new('TextButton',creatorCustomizationFrame)
creatorCosmeticsNext.Text = "Page 2 >"
creatorCosmeticsNext.Size = UDim2.new(0.11,0,0.025,0)
creatorCosmeticsNext.TextColor3 = Color3.fromRGB(255,255,255)
creatorCosmeticsNext.TextStrokeTransparency = 1
creatorCosmeticsNext.Position = UDim2.new(1.86,0,0.7,0)
creatorCosmeticsNext.Font = 'Arcade'
creatorCosmeticsNext.BackgroundTransparency = 1
creatorCosmeticsNext.TextSize = 40
creatorCosmeticsNext.ZIndex = 2

local creatorIdleAnim = Instance.new('TextLabel',creatorCustomizationFrame)
creatorIdleAnim.Text = 'Idle Animation'
creatorIdleAnim.TextColor3 = Color3.fromRGB(255,255,255)
creatorIdleAnim.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorIdleAnim.TextStrokeTransparency = 0
creatorIdleAnim.Position = UDim2.new(-1.1,0,0.23,0)
creatorIdleAnim.Font = 'Arcade'
creatorIdleAnim.TextSize = 25
local creatorIdleAnimBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorIdleAnimBox.Text = 'ID'
creatorIdleAnimBox.Size = UDim2.new(0.13,0,0.04,0)
creatorIdleAnimBox.Position = UDim2.new(-1.035,0,0.25,0)
creatorIdleAnimBox.BackgroundTransparency = 0
creatorIdleAnimBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorIdleAnimBox.BorderSizePixel = 3
creatorIdleAnimBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorIdleAnimBox.Font = 'Arcade'
creatorIdleAnimBox.TextSize = 25
creatorIdleAnimBox.TextStrokeTransparency = 0
creatorIdleAnimBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorIdleAnimBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorIdleAnimBox.ZIndex = 4

local creatorWalkAnim = Instance.new('TextLabel',creatorCustomizationFrame)
creatorWalkAnim.Text = 'Walk Animation'
creatorWalkAnim.TextColor3 = Color3.fromRGB(255,255,255)
creatorWalkAnim.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorWalkAnim.TextStrokeTransparency = 0
creatorWalkAnim.Position = UDim2.new(-1.1,0,0.32,0)
creatorWalkAnim.Font = 'Arcade'
creatorWalkAnim.TextSize = 25
local creatorWalkAnimBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorWalkAnimBox.Text = 'ID'
creatorWalkAnimBox.Size = UDim2.new(0.13,0,0.04,0)
creatorWalkAnimBox.Position = UDim2.new(-1.035,0,0.34,0)
creatorWalkAnimBox.BackgroundTransparency = 0
creatorWalkAnimBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorWalkAnimBox.BorderSizePixel = 3
creatorWalkAnimBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorWalkAnimBox.Font = 'Arcade'
creatorWalkAnimBox.TextSize = 25
creatorWalkAnimBox.TextStrokeTransparency = 0
creatorWalkAnimBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorWalkAnimBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorWalkAnimBox.ZIndex = 4

local creatorRunAnim = Instance.new('TextLabel',creatorCustomizationFrame)
creatorRunAnim.Text = 'Run Animation'
creatorRunAnim.TextColor3 = Color3.fromRGB(255,255,255)
creatorRunAnim.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorRunAnim.TextStrokeTransparency = 0
creatorRunAnim.Position = UDim2.new(-1.1,0,0.41,0)
creatorRunAnim.Font = 'Arcade'
creatorRunAnim.TextSize = 25
local creatorRunAnimBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorRunAnimBox.Text = 'ID'
creatorRunAnimBox.Size = UDim2.new(0.13,0,0.04,0)
creatorRunAnimBox.Position = UDim2.new(-1.035,0,0.43,0)
creatorRunAnimBox.BackgroundTransparency = 0
creatorRunAnimBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorRunAnimBox.BorderSizePixel = 3
creatorRunAnimBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorRunAnimBox.Font = 'Arcade'
creatorRunAnimBox.TextSize = 25
creatorRunAnimBox.TextStrokeTransparency = 0
creatorRunAnimBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorRunAnimBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorRunAnimBox.ZIndex = 4

local creatorBlockAnim = Instance.new('TextLabel',creatorCustomizationFrame)
creatorBlockAnim.Text = 'Block Animation'
creatorBlockAnim.TextColor3 = Color3.fromRGB(255,255,255)
creatorBlockAnim.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorBlockAnim.TextStrokeTransparency = 0
creatorBlockAnim.Position = UDim2.new(-1.1,0,0.50,0)
creatorBlockAnim.Font = 'Arcade'
creatorBlockAnim.TextSize = 25
local creatorBlockAnimBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorBlockAnimBox.Text = 'ID'
creatorBlockAnimBox.Size = UDim2.new(0.13,0,0.04,0)
creatorBlockAnimBox.Position = UDim2.new(-1.035,0,0.52,0)
creatorBlockAnimBox.BackgroundTransparency = 0
creatorBlockAnimBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorBlockAnimBox.BorderSizePixel = 3
creatorBlockAnimBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorBlockAnimBox.Font = 'Arcade'
creatorBlockAnimBox.TextSize = 25
creatorBlockAnimBox.TextStrokeTransparency = 0
creatorBlockAnimBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorBlockAnimBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorBlockAnimBox.ZIndex = 4

local creatorCustomName = Instance.new('TextLabel',creatorCustomizationFrame)
creatorCustomName.Text = 'Custom Name'
creatorCustomName.TextColor3 = Color3.fromRGB(255,255,255)
creatorCustomName.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorCustomName.TextStrokeTransparency = 0
creatorCustomName.Position = UDim2.new(-1.1,0,0.59,0)
creatorCustomName.Font = 'Arcade'
creatorCustomName.TextSize = 25
local creatorCustomNameBox = Instance.new('TextBox',creatorCustomizationFrame)
creatorCustomNameBox.Text = 'Name'
creatorCustomNameBox.Size = UDim2.new(0.13,0,0.04,0)
creatorCustomNameBox.Position = UDim2.new(-1.035,0,0.61,0)
creatorCustomNameBox.BackgroundTransparency = 0
creatorCustomNameBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
creatorCustomNameBox.BorderSizePixel = 3
creatorCustomNameBox.BorderColor3 = Color3.fromRGB(255,255,255)
creatorCustomNameBox.Font = 'Arcade'
creatorCustomNameBox.TextSize = 25
creatorCustomNameBox.TextStrokeTransparency = 0
creatorCustomNameBox.TextColor3 = Color3.fromRGB(255,255,255)
creatorCustomNameBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
creatorCustomNameBox.ZIndex = 4

function ctween(name,time,pos)
local ti = TweenInfo.new(
    time, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(name, ti,{Position = pos})
tween:Play()
end

function openCreator()
ctween(creatorCustomizationFrame,0.8,UDim2.new(0,0,-0.1,0))
wait(0.7)
ctween(creatorTextLabel,0.5,UDim2.new(0.5,0,0.09,0))
wait(0.05)
ctween(creatorTabCosmetics,0.6,UDim2.new(0.25,0,0.78,0))
ctween(creatorTabCharacter,0.6,UDim2.new(0.45,0,0.78,0))
ctween(creatorTabAttacks,0.6,UDim2.new(0.65,0,0.78,0))
wait(0.05)
ctween(creatorBackButton,0.5,UDim2.new(0.06,0,0.1,0))
ctween(creatorHelpButton,0.5,UDim2.new(0.86,0,0.1,0))
wait(0.05)
spawn(function()
ctween(creatorManaColor,0.5,UDim2.new(0.1,0,0.23,0))
ctween(creatorManaColorBox,0.6,UDim2.new(0.035,0,0.25,0))
wait(0.05)
ctween(creatorStaminaColor,0.5,UDim2.new(0.1,0,0.32,0))
ctween(creatorStaminaColorBox,0.5,UDim2.new(0.035,0,0.34,0))
wait(0.05)
ctween(creatorPlrName,0.5,UDim2.new(0.1,0,0.41,0))
ctween(creatorPlrNameBox,0.5,UDim2.new(0.035,0,0.43,0))
wait(0.05)
ctween(creatorPlrNameColor,0.5,UDim2.new(0.1,0,0.50,0))
ctween(creatorPlrNameColorBox,0.5,UDim2.new(0.035,0,0.52,0))
wait(0.05)
ctween(creatorPlrNameOutlineColor,0.5,UDim2.new(0.1,0,0.59,0))
ctween(creatorPlrNameOutlineColorBox,0.5,UDim2.new(0.035,0,0.61,0))
wait(0.05)
ctween(creatorFakeHp,0.5,UDim2.new(0.1,0,0.68,0))
ctween(creatorFakeHpBox,0.5,UDim2.new(0.035,0,0.70,0))
end)
spawn(function()
ctween(creatorClientWeapon,0.5,UDim2.new(0.915,0,0.23,0))
ctween(creatorClientWeaponBox,0.5,UDim2.new(0.85,0,0.25,0))
wait(0.05)
ctween(creatorClientWeaponColor,0.5,UDim2.new(0.915,0,0.32,0))
ctween(creatorClientWeaponColorBox,0.5,UDim2.new(0.85,0,0.34,0))
wait(0.05)
ctween(creatorMiscSlot1,0.5,UDim2.new(0.915,0,0.41,0))
ctween(creatorMiscSlot1Box,0.5,UDim2.new(0.85,0,0.43,0))
wait(0.05)
ctween(creatorMiscSlot2,0.5,UDim2.new(0.915,0,0.50,0))
ctween(creatorMiscSlot2Box,0.5,UDim2.new(0.85,0,0.52,0))
wait(0.05)
ctween(creatorMiscSlot3,0.5,UDim2.new(0.915,0,0.59,0))
ctween(creatorMiscSlot3Box,0.5,UDim2.new(0.85,0,0.61,0))
wait(0.05)
ctween(creatorCosmeticsNext,0.5,UDim2.new(0.86,0,0.7,0))
end)
end

function closeCreator()
ctween(creatorCustomizationFrame,1.2,UDim2.new(0,0,-1.5,0))
end

function openCosmeticsPage2()
spawn(function()
ctween(creatorIdleAnim,0.5,UDim2.new(-1.1,0,0.23,0))
ctween(creatorIdleAnimBox,0.6,UDim2.new(-1.035,0,0.25,0))
wait(0.05)
ctween(creatorWalkAnim,0.5,UDim2.new(-1.1,0,0.32,0))
ctween(creatorWalkAnimBox,0.5,UDim2.new(-1.035,0,0.34,0))
wait(0.05)
ctween(creatorRunAnim,0.5,UDim2.new(-1.1,0,0.41,0))
ctween(creatorRunAnimBox,0.5,UDim2.new(-1.035,0,0.43,0))
wait(0.05)
ctween(creatorBlockAnim,0.5,UDim2.new(-1.1,0,0.50,0))
ctween(creatorBlockAnimBox,0.5,UDim2.new(-1.035,0,0.52,0))
wait(0.05)
ctween(creatorCustomName,0.5,UDim2.new(-1.1,0,0.59,0))
ctween(creatorCustomNameBox,0.5,UDim2.new(-1.035,0,0.61,0))
end)
wait(0.5)
spawn(function()
ctween(creatorManaColor,0.5,UDim2.new(0.1,0,0.23,0))
ctween(creatorManaColorBox,0.6,UDim2.new(0.035,0,0.25,0))
wait(0.05)
ctween(creatorStaminaColor,0.5,UDim2.new(0.1,0,0.32,0))
ctween(creatorStaminaColorBox,0.5,UDim2.new(0.035,0,0.34,0))
wait(0.05)
ctween(creatorPlrName,0.5,UDim2.new(0.1,0,0.41,0))
ctween(creatorPlrNameBox,0.5,UDim2.new(0.035,0,0.43,0))
wait(0.05)
ctween(creatorPlrNameColor,0.5,UDim2.new(0.1,0,0.50,0))
ctween(creatorPlrNameColorBox,0.5,UDim2.new(0.035,0,0.52,0))
wait(0.05)
ctween(creatorPlrNameOutlineColor,0.5,UDim2.new(0.1,0,0.59,0))
ctween(creatorPlrNameOutlineColorBox,0.5,UDim2.new(0.035,0,0.61,0))
wait(0.05)
ctween(creatorFakeHp,0.5,UDim2.new(0.1,0,0.68,0))
ctween(creatorFakeHpBox,0.5,UDim2.new(0.035,0,0.70,0))
end)
spawn(function()
ctween(creatorClientWeapon,0.5,UDim2.new(0.915,0,0.23,0))
ctween(creatorClientWeaponBox,0.5,UDim2.new(0.85,0,0.25,0))
wait(0.05)
ctween(creatorClientWeaponColor,0.5,UDim2.new(0.915,0,0.32,0))
ctween(creatorClientWeaponColorBox,0.5,UDim2.new(0.85,0,0.34,0))
wait(0.05)
ctween(creatorMiscSlot1,0.5,UDim2.new(0.915,0,0.41,0))
ctween(creatorMiscSlot1Box,0.5,UDim2.new(0.85,0,0.43,0))
wait(0.05)
ctween(creatorMiscSlot2,0.5,UDim2.new(0.915,0,0.50,0))
ctween(creatorMiscSlot2Box,0.5,UDim2.new(0.85,0,0.52,0))
wait(0.05)
ctween(creatorMiscSlot3,0.5,UDim2.new(0.915,0,0.59,0))
ctween(creatorMiscSlot3Box,0.5,UDim2.new(0.85,0,0.61,0))
wait(0.05)
ctween(creatorCosmeticsNext,0.5,UDim2.new(0.86,0,0.7,0))
end)
end

function openCosmeticsPage1()
spawn(function()
ctween(creatorManaColor,0.85,UDim2.new(-1.1,0,0.23,0))
ctween(creatorManaColorBox,0.85,UDim2.new(-1.035,0,0.25,0))
wait(0.05)
ctween(creatorStaminaColor,0.85,UDim2.new(-1.1,0,0.32,0))
ctween(creatorStaminaColorBox,0.85,UDim2.new(-1.035,0,0.34,0))
wait(0.05)
ctween(creatorPlrName,0.85,UDim2.new(-1.1,0,0.41,0))
ctween(creatorPlrNameBox,0.85,UDim2.new(-1.035,0,0.43,0))
wait(0.05)
ctween(creatorPlrNameColor,0.85,UDim2.new(-1.1,0,0.50,0))
ctween(creatorPlrNameColorBox,0.85,UDim2.new(-1.035,0,0.52,0))
wait(0.05)
ctween(creatorPlrNameOutlineColor,0.85,UDim2.new(-1.1,0,0.59,0))
ctween(creatorPlrNameOutlineColorBox,0.85,UDim2.new(-1.035,0,0.61,0))
wait(0.05)
ctween(creatorFakeHp,0.85,UDim2.new(-1.1,0,0.68,0))
ctween(creatorFakeHpBox,0.85,UDim2.new(-1.035,0,0.70,0))
end)
spawn(function()
ctween(creatorClientWeapon,0.85,UDim2.new(1.915,0,0.23,0))
ctween(creatorClientWeaponBox,0.85,UDim2.new(1.85,0,0.25,0))
wait(0.05)
ctween(creatorClientWeaponColor,0.85,UDim2.new(1.915,0,0.32,0))
ctween(creatorClientWeaponColorBox,0.85,UDim2.new(1.85,0,0.34,0))
wait(0.05)
ctween(creatorMiscSlot1,0.85,UDim2.new(1.915,0,0.41,0))
ctween(creatorMiscSlot1Box,0.85,UDim2.new(1.85,0,0.43,0))
wait(0.05)
ctween(creatorMiscSlot2,0.85,UDim2.new(1.915,0,0.50,0))
ctween(creatorMiscSlot2Box,0.85,UDim2.new(1.85,0,0.52,0))
wait(0.05)
ctween(creatorMiscSlot3,0.85,UDim2.new(1.915,0,0.59,0))
ctween(creatorMiscSlot3Box,0.85,UDim2.new(1.85,0,0.61,0))
end)
wait(0.5)
spawn(function()
ctween(creatorIdleAnim,0.5,UDim2.new(0.1,0,0.23,0))
ctween(creatorIdleAnimBox,0.6,UDim2.new(0.035,0,0.25,0))
wait(0.05)
ctween(creatorWalkAnim,0.5,UDim2.new(0.1,0,0.32,0))
ctween(creatorWalkAnimBox,0.5,UDim2.new(0.035,0,0.34,0))
wait(0.05)
ctween(creatorRunAnim,0.5,UDim2.new(0.1,0,0.41,0))
ctween(creatorRunAnimBox,0.5,UDim2.new(0.035,0,0.43,0))
wait(0.05)
ctween(creatorBlockAnim,0.5,UDim2.new(0.1,0,0.50,0))
ctween(creatorBlockAnimBox,0.5,UDim2.new(0.035,0,0.52,0))
wait(0.05)
ctween(creatorCustomName,0.5,UDim2.new(0.1,0,0.59,0))
ctween(creatorCustomNameBox,0.5,UDim2.new(0.035,0,0.61,0))
end)
end

function openCharacterMenu()

end
creatorCosmeticsNext.MouseButton1Click:Connect(function()
if creatorCosmeticsNext.Text == 'Page 2 >' then
openCosmeticsPage1()
creatorCosmeticsNext.Text = '< Page 1'
elseif creatorCosmeticsNext.Text == '< Page 1' then
openCosmeticsPage2()
creatorCosmeticsNext.Text = 'Page 2 >'
end
end)

creatorHelpButton.MouseButton1Click:Connect(function()
ctween(creatorHelpFrame,0.4,UDim2.new(0.35,0,0.15,0))
end)

creatorHelpFrameClose.MouseButton1Click:Connect(function()
ctween(creatorHelpFrame,0.4,UDim2.new(0.35,0,-0.75,0))
end)

customsCreateButton.MouseButton1Click:Connect(function()
hideUI()
wait(0.6)
playmusic(320247672)
openCreator()
end)

creatorBackButton.MouseButton1Click:Connect(function()
closeCreator()
wait(0.1)
playmusic(7844941430)
showUI()
end)

-- creator functions

spawn(function()
local CtextBox1 = creatorManaColorBox
local baseText = ""
CtextBox1.ClearTextOnFocus = true
CtextBox1.Text = ""
CtextBox1.PlaceholderText = "R,G,B"
local function onFocused()
	CtextBox1.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
            _G.creatorStats_ManaColor = 'manabarclr = '..CtextBox1.Text
            CtextBox1.TextColor3 = Color3.fromRGB(0,255,0)
			wait(2)
			CtextBox1.TextColor3 = Color3.fromRGB(255,255,255)
	else
		CtextBox1.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
CtextBox1.FocusLost:Connect(onFocusLost)
CtextBox1.Focused:Connect(onFocused)
end)

spawn(function()
local CtextBox2 = creatorStaminaColorBox
local baseText = ""
CtextBox2.ClearTextOnFocus = true
CtextBox2.Text = ""
CtextBox2.PlaceholderText = "R,G,B"
local function onFocused()
	CtextBox2.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
            _G.creatorStats_StaminaColor = 'stambarclr = '..CtextBox2.Text
            CtextBox2.TextColor3 = Color3.fromRGB(0,255,0)
			wait(2)
			CtextBox2.TextColor3 = Color3.fromRGB(255,255,255)
	else
		CtextBox2.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
CtextBox2.FocusLost:Connect(onFocusLost)
CtextBox2.Focused:Connect(onFocused)
end)

spawn(function()
local CtextBox3 = creatorPlrNameBox
local baseText = ""
CtextBox3.ClearTextOnFocus = true
CtextBox3.Text = ""
CtextBox3.PlaceholderText = "Example"
local function onFocused()
	CtextBox3.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
            _G.creatorStats_PlrName = 'plrname = '..CtextBox3.Text
            CtextBox3.TextColor3 = Color3.fromRGB(0,255,0)
			wait(2)
			CtextBox3.TextColor3 = Color3.fromRGB(255,255,255)
	else
		CtextBox3.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
CtextBox3.FocusLost:Connect(onFocusLost)
CtextBox3.Focused:Connect(onFocused)
end)

spawn(function()
local CtextBox4 = creatorCustomNameBox
local baseText = ""
CtextBox4.ClearTextOnFocus = true
CtextBox4.Text = ""
CtextBox4.PlaceholderText = "Example"
local function onFocused()
	CtextBox4.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
            charName = CtextBox4.Text
            CtextBox4.TextColor3 = Color3.fromRGB(0,255,0)
			wait(2)
			CtextBox4.TextColor3 = Color3.fromRGB(255,255,255)
	else
		CtextBox4.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
CtextBox4.FocusLost:Connect(onFocusLost)
CtextBox4.Focused:Connect(onFocused)
end)


-- shop time babyy lets gooooo
--local kromer = 420
local TS = game:GetService("TweenService")
local shopFolder = Instance.new('Folder',game.Players.LocalPlayer.PlayerGui.ScreenGui.Folder)
shopFolder.Name = 'Shop'
local shopFrame = Instance.new('Frame',shopFolder)
shopFrame.Name = 'Main'
shopFrame.Size = UDim2.new(1,0,1.3,0)
shopFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
shopFrame.Position = UDim2.new(0,0,-1.5,0) --UDim2.new(0,0,-0.2,0)

local shopBackButton = Instance.new('TextButton',shopFrame)
shopBackButton.Text = 'Return'
shopBackButton.Size = UDim2.new(0.1,0,0.1,0)
shopBackButton.Position = UDim2.new(0.05,0,0.1,0)
shopBackButton.BackgroundTransparency = 1
shopBackButton.Font = 'Arcade'
shopBackButton.TextSize = 35
shopBackButton.TextStrokeTransparency = 0
shopBackButton.TextColor3 = Color3.fromRGB(255,255,255)
shopBackButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)

local shopDecoFrame1 = Instance.new('Frame',shopFrame)
shopDecoFrame1.Name = 'One'
shopDecoFrame1.Size = UDim2.new(1.2,0,1,0)
shopDecoFrame1.BackgroundColor3 = Color3.fromRGB(0,0,0)
shopDecoFrame1.BorderColor3 = Color3.fromRGB(255,255,255)
shopDecoFrame1.BorderSizePixel = 3
shopDecoFrame1.Position = UDim2.new(0,0,2,0) --UDim2.new(0,0,0.7,0)
shopDecoFrame1.ZIndex = 4

shopDecoFrame2 = Instance.new('Frame',shopFrame)
shopDecoFrame2.Name = 'Two'
shopDecoFrame2.Size = UDim2.new(1,0,1.2,0)
shopDecoFrame2.BackgroundColor3 = Color3.fromRGB(0,0,0)
shopDecoFrame2.BorderColor3 = Color3.fromRGB(255,255,255)
shopDecoFrame2.BorderSizePixel = 3
shopDecoFrame2.Position = UDim2.new(1.7,0,0,0) --UDim2.new(0.7,0,0,0)

local shopInfoText1 = Instance.new("TextLabel",shopDecoFrame1)
shopInfoText1.Text = [[Welcome to the shop!
Here you can buy 
items and characters
with KR0MER.]]
shopInfoText1.Size = UDim2.new(1,0,1,0)
shopInfoText1.Position = UDim2.new(-0.32,0,-0.4,0)
shopInfoText1.BackgroundTransparency = 1
shopInfoText1.Font = 'Arcade'
shopInfoText1.TextSize = 30
shopInfoText1.TextStrokeTransparency = 1
shopInfoText1.TextTransparency = 0
shopInfoText1.TextColor3 = Color3.fromRGB(255,255,255)
shopInfoText1.TextStrokeColor3 = Color3.fromRGB(255,255,255)
shopInfoText1.ZIndex = 7

local bigShotImage = Instance.new('ImageLabel',shopFrame)
bigShotImage.Image = 'rbxassetid://7988751111'
bigShotImage.ZIndex = 2
bigShotImage.Size = UDim2.new(0.4,0,0.3,0)
bigShotImage.Position = UDim2.new(-1.1,0,0.4,0) -- UDim2.new(0.1,0,0.4,0)
bigShotImage.Visible = true
bigShotImage.BackgroundTransparency = 1

local kromerCount = Instance.new("TextLabel",shopFrame)
kromerCount.Text = kromer..' KROMER'
kromerCount.Size = UDim2.new(1,0,1,0)
kromerCount.Position = UDim2.new(0.37,0,0.35,0)
kromerCount.BackgroundTransparency = 1
kromerCount.Font = 'Arcade'
kromerCount.TextSize = 40
kromerCount.TextStrokeTransparency = 1
kromerCount.TextTransparency = 0
kromerCount.TextColor3 = Color3.fromRGB(255,255,255)
kromerCount.TextStrokeColor3 = Color3.fromRGB(255,255,255)
kromerCount.ZIndex = 7


print("fuck1")
local shopCharactersButton = Instance.new('TextButton',shopDecoFrame2)
print("fuck2")
shopCharactersButton.Text = 'Characters'
print("fuck3")
shopCharactersButton.Size = UDim2.new(0.15,0,0.05,0)
shopCharactersButton.Position = UDim2.new(0.055,0,0.1,0)
print("fuck4")
shopCharactersButton.BackgroundTransparency = 1
shopCharactersButton.Font = 'Arcade'
print("fuck5")
shopCharactersButton.TextSize = 40
shopCharactersButton.TextStrokeTransparency = 0
print("fuck6")
shopCharactersButton.TextColor3 = Color3.fromRGB(255,255,255)
shopCharactersButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopCharactersButton.ZIndex = 9
print("fuck7")

local shopSkinsButton = Instance.new('TextButton',shopDecoFrame2)
shopSkinsButton.Text = 'Skins'
shopSkinsButton.Size = UDim2.new(0.08,0,0.05,0)
shopSkinsButton.Position = UDim2.new(0.175,0,0.15,0)
shopSkinsButton.BackgroundTransparency = 1
shopSkinsButton.Font = 'Arcade'
shopSkinsButton.TextSize = 40
shopSkinsButton.TextStrokeTransparency = 0
shopSkinsButton.TextColor3 = Color3.fromRGB(255,255,255)
shopSkinsButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopSkinsButton.ZIndex = 9

local shopThemesButton = Instance.new('TextButton',shopDecoFrame2)
shopThemesButton.Text = 'Themes'
shopThemesButton.Size = UDim2.new(0.1,0,0.05,0)
shopThemesButton.Position = UDim2.new(0.025,0,0.15,0)
shopThemesButton.BackgroundTransparency = 1
shopThemesButton.Font = 'Arcade'
shopThemesButton.TextSize = 40
shopThemesButton.TextStrokeTransparency = 0
shopThemesButton.TextColor3 = Color3.fromRGB(255,255,255)
shopThemesButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopThemesButton.ZIndex = 9

local shopCreatorButton = Instance.new('TextButton',shopDecoFrame2)
shopCreatorButton.Text = 'Creator'
shopCreatorButton.Size = UDim2.new(0.13,0,0.05,0)
shopCreatorButton.Position = UDim2.new(0.025,0,0.2,0)
shopCreatorButton.BackgroundTransparency = 1
shopCreatorButton.Font = 'Arcade'
shopCreatorButton.TextSize = 40
shopCreatorButton.TextStrokeTransparency = 0
shopCreatorButton.TextColor3 = Color3.fromRGB(255,255,255)
shopCreatorButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopCreatorButton.ZIndex = 9

local shopMiscButton = Instance.new('TextButton',shopDecoFrame2)
shopMiscButton.Text = 'Misc'
shopMiscButton.Size = UDim2.new(0.07,0,0.05,0)
shopMiscButton.Position = UDim2.new(0.175,0,0.2,0)
shopMiscButton.BackgroundTransparency = 1
shopMiscButton.Font = 'Arcade'
shopMiscButton.TextSize = 40
shopMiscButton.TextStrokeTransparency = 0
shopMiscButton.TextColor3 = Color3.fromRGB(255,255,255)
shopMiscButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopMiscButton.ZIndex = 9

local shopReturnButton = Instance.new('TextButton',shopDecoFrame2)
shopReturnButton.Text = 'Return'
shopReturnButton.Size = UDim2.new(0.09,0,0.04,0)
shopReturnButton.Position = UDim2.new(1.025,0,0.1,0) --(0.025,0,0.1,0)
shopReturnButton.BackgroundTransparency = 1
shopReturnButton.Font = 'Arcade'
shopReturnButton.TextSize = 35
shopReturnButton.TextStrokeTransparency = 0
shopReturnButton.TextColor3 = Color3.fromRGB(255,255,255)
shopReturnButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopReturnButton.ZIndex = 9

local shopCharacterItemsFol = Instance.new('Folder',shopDecoFrame2)
local shopErectorButton = Instance.new('TextButton',shopCharacterItemsFol)
shopErectorButton.Text = 'Erector The Great!'
shopErectorButton.Size = UDim2.new(0.24,0,0.04,0)
shopErectorButton.Position = UDim2.new(1.025,0,0.15,0) --(0.025,0,0.1,0)
shopErectorButton.BackgroundTransparency = 1
shopErectorButton.Font = 'Arcade'
shopErectorButton.TextSize = 35
shopErectorButton.TextStrokeTransparency = 0
shopErectorButton.TextColor3 = Color3.fromRGB(255,255,255)
if erectorunlocked == 'true' then
shopErectorButton.TextColor3 = Color3.fromRGB(0,255,0)
end
shopErectorButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopErectorButton.ZIndex = 9

local shopKrisButton = Instance.new('TextButton',shopCharacterItemsFol)
shopKrisButton.Text = 'Kris'
shopKrisButton.Size = UDim2.new(0.075,0,0.04,0)
shopKrisButton.Position = UDim2.new(1.025,0,0.2,0) --(0.025,0,0.15,0)
shopKrisButton.BackgroundTransparency = 1
shopKrisButton.Font = 'Arcade'
shopKrisButton.TextSize = 40
shopKrisButton.TextStrokeTransparency = 0
shopKrisButton.TextColor3 = Color3.fromRGB(255,255,255)
shopKrisButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopKrisButton.ZIndex = 9

local shopSpamtonButton = Instance.new('TextButton',shopCharacterItemsFol)
shopSpamtonButton.Text = 'Spamton'
shopSpamtonButton.Size = UDim2.new(0.11,0,0.04,0)
shopSpamtonButton.Position = UDim2.new(1.025,0,0.25,0) -- (0.025,0,0.2,0)
shopSpamtonButton.BackgroundTransparency = 1
shopSpamtonButton.Font = 'Arcade'
shopSpamtonButton.TextSize = 40
shopSpamtonButton.TextStrokeTransparency = 0
shopSpamtonButton.TextColor3 = Color3.fromRGB(255,255,255)
shopSpamtonButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopSpamtonButton.ZIndex = 9

function shopCharactersOpen()
ctween(shopCharactersButton,0.6,UDim2.new(1.055,0,0.1,0))
wait()
ctween(shopThemesButton,0.6,UDim2.new(1.025,0,0.15,0))
ctween(shopSkinsButton,0.6,UDim2.new(1.175,0,0.15,0))
wait()
ctween(shopCreatorButton,0.6,UDim2.new(1.025,0,0.2,0))
ctween(shopMiscButton,0.6,UDim2.new(1.175,0,0.2,0))
wait(0.5)
ctween(shopReturnButton,0.6,UDim2.new(0.025,0,0.1,0))
wait()
ctween(shopErectorButton,0.6,UDim2.new(0.025,0,0.15,0))
wait()
ctween(shopKrisButton,0.6,UDim2.new(0.025,0,0.2,0))
wait()
ctween(shopSpamtonButton,0.6,UDim2.new(0.025,0,0.25,0))
end

function shopCharactersClose()
ctween(shopReturnButton,0.6,UDim2.new(1.025,0,0.1,0))
wait()
ctween(shopErectorButton,0.6,UDim2.new(1.025,0,0.15,0))
wait()
ctween(shopKrisButton,0.6,UDim2.new(1.025,0,0.2,0))
wait()
ctween(shopSpamtonButton,0.6,UDim2.new(1.025,0,0.25,0))
wait(0.5)
ctween(shopCharactersButton,0.6,UDim2.new(0.055,0,0.1,0))
wait()
ctween(shopThemesButton,0.6,UDim2.new(0.025,0,0.15,0))
ctween(shopSkinsButton,0.6,UDim2.new(0.175,0,0.15,0))
wait()
ctween(shopCreatorButton,0.6,UDim2.new(0.025,0,0.2,0))
ctween(shopMiscButton,0.6,UDim2.new(0.175,0,0.2,0))
end

local shopThemesItemFol = Instance.new('Folder',shopDecoFrame2)
local shopDarkThemeButton = Instance.new('TextButton',shopThemesItemFol)
shopDarkThemeButton.Text = 'Original'
shopDarkThemeButton.Size = UDim2.new(0.24,0,0.04,0)
shopDarkThemeButton.Position = UDim2.new(1.025,0,0.15,0) --(0.025,0,0.1,0)
shopDarkThemeButton.BackgroundTransparency = 1
shopDarkThemeButton.Font = 'Arcade'
shopDarkThemeButton.TextSize = 35
shopDarkThemeButton.TextStrokeTransparency = 0
shopDarkThemeButton.TextColor3 = Color3.fromRGB(255,255,255)
shopDarkThemeButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopDarkThemeButton.ZIndex = 9

local shopThemesItemFol = Instance.new('Folder',shopDecoFrame2)
local shopLightThemeButton = Instance.new('TextButton',shopThemesItemFol)
shopLightThemeButton.Text = 'Light Mode'
shopLightThemeButton.Size = UDim2.new(0.24,0,0.04,0)
shopLightThemeButton.Position = UDim2.new(1.025,0,0.2,0) --(0.025,0,0.1,0)
shopLightThemeButton.BackgroundTransparency = 1
shopLightThemeButton.Font = 'Arcade'
shopLightThemeButton.TextSize = 35
shopLightThemeButton.TextStrokeTransparency = 0
shopLightThemeButton.TextColor3 = Color3.fromRGB(255,255,255)
shopLightThemeButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
shopLightThemeButton.ZIndex = 9

function shopThemesOpen()
ctween(shopCharactersButton,0.6,UDim2.new(1.055,0,0.1,0))
wait()
ctween(shopThemesButton,0.6,UDim2.new(1.025,0,0.15,0))
ctween(shopSkinsButton,0.6,UDim2.new(1.175,0,0.15,0))
wait()
ctween(shopCreatorButton,0.6,UDim2.new(1.025,0,0.2,0))
ctween(shopMiscButton,0.6,UDim2.new(1.175,0,0.2,0))
wait(0.5)
ctween(shopReturnButton,0.6,UDim2.new(0.025,0,0.1,0))
wait()
ctween(shopDarkThemeButton,0.6,UDim2.new(0.025,0,0.15,0))
wait()
ctween(shopLightThemeButton,0.6,UDim2.new(0.025,0,0.2,0))
end

function shopThemesClose()
ctween(shopReturnButton,0.6,UDim2.new(1.025,0,0.1,0))
wait()
ctween(shopDarkThemeButton,0.6,UDim2.new(1.025,0,0.15,0))
wait()
ctween(shopLightThemeButton,0.6,UDim2.new(1.025,0,0.2,0))
wait(0.5)
ctween(shopCharactersButton,0.6,UDim2.new(0.055,0,0.1,0))
wait()
ctween(shopThemesButton,0.6,UDim2.new(0.025,0,0.15,0))
ctween(shopSkinsButton,0.6,UDim2.new(0.175,0,0.15,0))
wait()
ctween(shopCreatorButton,0.6,UDim2.new(0.025,0,0.2,0))
ctween(shopMiscButton,0.6,UDim2.new(0.175,0,0.2,0))
end

function openShop()
inshop = true
ctween(shopFrame,0.85,UDim2.new(0,0,-0.2,0))
wait(0.4)
ctween(shopDecoFrame1,1,UDim2.new(0,0,0.7,0))
ctween(shopDecoFrame2,1,UDim2.new(0.7,0,0,0))
wait(0.3)
ctween(bigShotImage,1.5,UDim2.new(0.1,0,0.4,0))
end

function closeShop()
inshop = false
ctween(shopDecoFrame2,1,UDim2.new(1.7,0,0,0))
wait(0.33)
ctween(bigShotImage,1,UDim2.new(-1.1,0,0.4,0))
wait(0.45)
ctween(shopDecoFrame1,1,UDim2.new(0,0,2,0))
wait(0.5)
ctween(shopFrame,0.85,UDim2.new(0,0,-1.5,0))
end

shopButton.MouseButton1Click:Connect(function()
hideUI()
wait(0.7)
spawn(function()
wait(0.3)
playmusic(7509097179)
end)
openShop()
end)

shopBackButton.MouseButton1Click:Connect(function()
closeShop()
wait(0.1)
playmusic(7844941430)
showUI()
end)

shopCharactersButton.MouseButton1Click:Connect(function()
shopCharactersOpen()
end)

shopThemesButton.MouseButton1Click:Connect(function()
shopThemesOpen()
end)

shopReturnButton.MouseButton1Click:Connect(function()
spawn(function()
shopCharactersClose()
end)
spawn(function()
shopThemesClose()
end)
end)

-- shop functions

--[[
kr check formula
local kr = ((kromer - 1) + 1)
if kr >= v then
]]

-- mini segment
spawn(function()
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:GetDescendants()) do
if v:IsA('Frame') or v:IsA('TextLabel') or v:IsA('TextButton') then
local c = Instance.new('Color3Value')
c.Name = 'OriginalCol'
c.Parent = v
end
end
wait()
for _,b in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:GetDescendants()) do
if b.Type == 'Frame' then
b.OriginalCol.Value = b.BackgroundColor3
elseif b.Type == 'TextLabel' or b.Type == 'TextButton' then
b.OriginalCol.Value = b.TextColor3
end
end
end)
wait()
-- mini segment over 

local erectorVal = 1000
local krisVal = 400
local spamtonVal = 690

shopErectorButton.MouseButton1Click:Connect(function()
if erectorunlocked == 'false' then
local kr = ((kromer - 1) + 1)
if kr >= 1000 then

erectorunlocked = 'true'
shopErectorButton.TextColor3 = Color3.fromRGB(0,255,0)
spawn(function()
removekromer(1000)
end)
end
end
end)

shopLightThemeButton.MouseButton1Click:Connect(function()
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:GetDescendants()) do
if v:IsA('Frame') then
v.BackgroundColor3 = Color3.fromRGB(255,255,255)
elseif v:IsA('TextLabel') or v:IsA('TextButton') then
v.TextColor3 = Color3.fromRGB(0,0,0)
end
end
end)

-- button functions
characterButton.MouseButton1Click:Connect(function()
hideButtonsMain()
wait(0.1)
local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(mainFrame, ti,{Position =UDim2.new(-1.1,0,0,0)})
tween:Play()
wait(0.1)
showButtonsChar1()
end)

char1backButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.1)

local ti = TweenInfo.new(
    0.85, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(mainFrame, ti,{Position =UDim2.new(-1.25,0,0,0)})
tween:Play()
wait(0.1)
showButtonsMain()
end)

undertaleButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.2)
showButtonsUndertale()
end)

undertaleBackButton.MouseButton1Click:Connect(function()
hideButtonsUndertale()
wait(0.2)
showButtonsChar1()
end)

glitchtaleButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.2)
showButtonsGlitchtale()
end)

glitchtaleBackButton.MouseButton1Click:Connect(function()
hideButtonsGlitchtale()
wait(0.2)
showButtonsChar1()
end)

storyshiftButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.2)
showButtonsStoryshift()
end)

storyshiftBackButton.MouseButton1Click:Connect(function()
hideButtonsStoryshift()
wait(0.2)
showButtonsChar1()
end)

xtaleButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.2)
showButtonsXTale()
end)

XTaleBackButton.MouseButton1Click:Connect(function()
hideButtonsXTale()
wait(0.2)
showButtonsChar1()
end)

ultrataleButton.MouseButton1Click:Connect(function()
hideButtonsChar1()
wait(0.2)
showButtonsUltratale()
end)

UltrataleBackButton.MouseButton1Click:Connect(function()
hideButtonsUltratale()
wait(0.2)
showButtonsChar1()
end)


settingsButton.MouseButton1Click:Connect(function()
hideButtonsMain()
wait(0.2)
showButtonsSettings()
end)

settingsBackButton.MouseButton1Click:Connect(function()
hideButtonsSettings()
wait(0.2)
showButtonsMain()
end)

creditsButton.MouseButton1Click:Connect(function()
hideButtonsMain()
wait(0.2)
showButtonsCredits()
end)

creditsBackButton.MouseButton1Click:Connect(function()
hideButtonsCredits()
wait(0.2)
showButtonsMain()
end)

customsButton.MouseButton1Click:Connect(function()
hideButtonsMain()
wait(0.2)
showButtonsCustoms()
end)

customsBackButton.MouseButton1Click:Connect(function()
hideButtonsCustoms()
wait(0.2)
showButtonsMain()
end)

asgoreButton.MouseButton1Click:Connect(function()
hideUI()
wait(0.5)
new = "elite"

infmana = true  ---// VERY BUGGY STAY THE FUCK AWAY FROM GTC AND SANS

hidden = true  ---// makes you look less sus

funiblaster = false --funi B)

godmodelockon = true

clothing = false --makes you look like sans (needs shirts and pants)


local CameraShaker = require(game.ReplicatedStorage.ClientModules.CameraShaker)

local camera = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camera.CFrame = camera.CFrame * shakeCf
end)

camShake:Start()

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
wait(1)
if not hidden and not godmode then
local nt = game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Clone()
nt.Parent = game.Players.LocalPlayer.Character.Head.HealthBar.Frame
task.wait(.1)
nt.Name = "PName"
nt.Name = "NewPName"
end
if godmode and not hidden then
game.Players.LocalPlayer.Character.Head.HealthBar:Destroy()
elseif not godmode and not hidden then
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.Size = Vector3.new(999, 999, 999)
end
if hidden then
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Walk.AnimationId = "rbxassetid://9296656666"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Idle.AnimationId = "rbxassetid://9296557744"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Run.AnimationId = "rbxassetid://9296648591"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Block.AnimationId = "rbxassetid://5973908948"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Point4.AnimationId = "rbxassetid://3733309848"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Point2.AnimationId = "rbxassetid://3733309848"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Point3.AnimationId = "rbxassetid://3733309848"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Jump.AnimationId = "rbxassetid://6492505440"
--game.Players.LocalPlayer.Backpack:WaitForChild("Main").SansMoves.Animations.Fall.AnimationId = "rbxassetid://6492518805"
end
wait(1)
if not hidden then
spawn(function()
while wait() do
local args = { [1] = { [1] = getrenv()._G.Pass, [2] = "changeEye", [3] = true } } game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
end
end)
end
--game:GetService("Players").LocalPlayer.Backpack.Main.SansMoves.Name = "TimeParadoxMoves"
--game.Players.LocalPlayer.Character.ForceField:Destroy()
local cl = game:GetService("ReplicatedStorage").Resources.LocalScripts.FixHumanoid:Clone()
cl.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == "nan" or game.Players.LocalPlayer.Character.Humanoid.Health == "0" then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    local cl = game:GetService("ReplicatedStorage").Resources.LocalScripts.FixHumanoid:Clone()
cl.Parent = game.Players.LocalPlayer.Character
		local chr;
		local head;
		local part;
		local l_player=game:GetService("Players").LocalPlayer
		chr=l_player.Character
		head=chr:WaitForChild('Head')
		part=game.Players.LocalPlayer.Character.ROBLOXCap
		part:Destroy()
    end
end)


local Pass = getrenv()._G.Pass 
local Player = game.Players.LocalPlayer
local CurrentCharacter = Player.PlayerData.CurrentCharacter.Value
local hs1 = game:GetService("ReplicatedStorage").Sounds.Hurt
Settings = {
    M1_Settings = {
        Amount = 6, -- does nothing
        Range = 6,
        Damage = 10,
        HitEffect = "BoneHitEffect",
        HitSound = hs1,
        Velocity = Vector3.new(0,0,0),
        HitTime = 0.5,
        CombatInv = true,
        ComboResetTimer = 1.5,
        Blur = true,
        CameraShake = true,
        CamShakePreset = "Bump",
        LastHitKnockback = true, -- havent added (probably gonna delete)
        RandomAnimation = false -- havent added
    };
    Knockback_Settings = {
        Damage = 40,
        HitType = "BoneHitEffect",
        HurtAnimation = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
        Velocity = Vector3.new(0,0,0),
        HitTime = 1,
        CombatInv = true,
        Blur = true,
        CameraShake = true,
        CamShakePreset = "Explosion",
        RandomAnimation = false -- havent added
    };
    Client_Settings = {
        DeathScene = false,
        CameraShake = true,
        Music = true, -- havent added
        EffectsIntensity = 300,
        ComboResetNotificiation = true
    };
}

Animations = {
    M1_Animations = { -- Last animation should be a knockback animation
        [1] = "rbxassetid://7278785883",
        [2] = "rbxassetid://7023465437",
        [3] = "rbxassetid://7023258012",
        [4] = "rbxassetid://7023264768",
        [5] = "rbxassetid://6996156784" 
    };
}



game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer({Pass, "ChangeSetting", "CameraShake", Settings.Client_Settings.CameraShake})
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer({Pass, "ChangeSetting", "DeathScene", Settings.Client_Settings.DeathScene})
Player.PlayerScripts.EffectsHandler.Mag.Value = Settings.Client_Settings.EffectsIntensity
for i,v in pairs(Player.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations:GetChildren()) do 
    v:ClearAllChildren()
end

--[[local CooldownFolder = game.Workspace.ServerEffects.ServerCooldown[game.Players.LocalPlayer.Name]
CooldownFolder:ClearAllChildren()]]
local folder = Instance.new("Folder")
folder.Name = "MoveDebounce"
folder.Parent = CooldownFolder
local UIS = game:GetService("UserInputService")
local MainModule = require(game.ReplicatedStorage.ClientModules.MainModule)
local Mouse = Player:GetMouse()
local combo = 0
local m1anims = Animations.M1_Animations
local m1settings = Settings.M1_Settings
local M1Debounce = false
local Disabled = false
local t = tick()
function Notification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = title, Text = text})
end

function StopRunning()
local args = {
    [1] = {
        [1] = Pass,
        [2] = "Running",
        [3] = false
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end

function DamageBlur()
    task.spawn(function()
        game.Lighting.Blur.Size = 16
        for i = 1, 5 do 
           game.Lighting.Blur.Size = game.Lighting.Blur.Size - 2
           task.wait(0.03)
        end
    end)
end



function PlayAnimation(animationid, speed)
    local animation = Instance.new("Animation")
    animation.AnimationId = animationid
    local anim = Player.Character.Humanoid.Animator:LoadAnimation(animation)
    anim:Play()
    anim:AdjustSpeed(speed)
    return anim
end

function M1()
    if combo == #m1anims then combo = 0 end
    if combo < (#m1anims-1) then combo += 1 else Disabled = true task.delay(2, function() Disabled = false end) combo = #m1anims end
    PlayAnimation(m1anims[combo], 1.25) StopRunning()
    print(combo)
    t = tick()
    task.delay(m1settings.ComboResetTimer,function()
	    if (tick() - t) >= m1settings.ComboResetTimer and combo >= 1 and combo ~= #m1anims then
            combo = 0
            if Settings.Client_Settings.ComboResetNotificiation == true then
                Notification("Timer", "Reset Combo")
            end
	    end
    end)
    task.wait()
    for i,v in pairs(game.Workspace:GetChildren()) do 
        if v ~= Player.Character and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Data") then
            local vector = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position)
            if vector.Magnitude <= Settings.M1_Settings.Range and vector:Dot(Player.Character.HumanoidRootPart.CFrame.lookVector) <= -1 then
                if combo < #m1anims then
                local M1Settings = Settings.M1_Settings
                M1Settings.Velocity = Player.Character.HumanoidRootPart.CFrame.lookVector * 1
                local args = {
                    [1] = Pass,
                    [2] = v,
                    [3] = {
                        ["HitTime"] = M1Settings.HitTime, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = M1Settings.HitEffect, 
                        ["CombatInv"] = M1Settings.CombatInv,
                        ["HurtAnimation"] = game.ReplicatedStorage.Animations.HurtAnimations["Hurt"..tostring(math.random(1,3))], 
                        ["Velocity"] = M1Settings.Velocity, 
                        ["BlockAble"] = false,
                        ["Sound"] = M1Settings.HitSound,
                        ["Damage"] = M1Settings.Damage
                    }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                if M1Settings.CameraShake == true then MainModule.shakeScreen(M1Settings.CamShakePreset) end
                if M1Settings.Blur == true then DamageBlur() end
                break
            else
                local KnockbackSettings = Settings.Knockback_Settings
                KnockbackSettings.Velocity = Player.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,5,0)
                local A_1 = Pass
                local A_2 = v
                local A_3 = 
                    {
                        ["HitTime"] = KnockbackSettings.HitTime,
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = KnockbackSettings.HurtAnimation,  
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["CameraShake"] = "BigExplosion",
                        ["Velocity"] = KnockbackSettings.Velocity,
                        ["BlockAble"] = false,
                        ["CombatInv"] = KnockbackSettings.CombatInv,
                        ["Damage"] = KnockbackSettings.Damage
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                if KnockbackSettings.CameraShake == true then MainModule.shakeScreen(KnockbackSettings.CamShakePreset) end
                if KnockbackSettings.Blur == true then DamageBlur() end
                break
            end
            end
        end
    end
end


local M1Event = Mouse.Button1Down:Connect(function()
	if not M1Debounce and not Disabled then 
		M1Debounce = true
        M1()
        task.delay(0.010,function()
            M1Debounce = false
        end)
	end
end)

local player = game.Players.LocalPlayer;local char = player.Character;local pass = getrenv()._G.Pass
function cdr()
spawn(function()
while wait() do
ping = tonumber(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
end
end)
spawn(function()
    local A_1 =  {
      [1] = pass, 
      [2] = "Bones", 
      [3] = "Ground", 
      [4] = Vector3.new(0,1000000,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
    end)
local pp = char.Effects:WaitForChild('MultipleBones')
pp.Name = 'nocd'
spawn(function() pp:WaitForChild('Warning'):Destroy() pp:WaitForChild('Warning'):Destroy() end)
wait(.5)
local ye = false
for _,v in pairs(pp:GetDescendants()) do
if v.Name == 'RemoteEvent' then
   spawn(function() pp:WaitForChild('Script'):Destroy() end)
    ye = true
    active = true
    spawn(function()
        local v = v
        while active do
            wait()
        for i = 0,math.huge do
            wait()
            --for i = 0,1,1 do
            wait()
            if active then
            if ping >= 500 then
                active = false
                game:GetService("StarterGui"):SetCore("SendNotification", { Title = "High Ping"; Text = "No cd aborted"; Duration = 10; })
                break
                else
                    spawn(function()
    --for i,e in pairs(game.Workspace:GetChildren()) do 
        --if e ~= player.Character and e:FindFirstChild("Humanoid") and e:FindFirstChild("HumanoidRootPart") and e:FindFirstChild("Data") then
            --local vector = (player.Character.HumanoidRootPart.Position - e.HumanoidRootPart.Position)
            --if vector.Magnitude <= 1000 then
    --:FireServer(e)
    for i,e in pairs(game.Workspace.Map["New Map"]:GetChildren()) do
        if e:IsA("Part") then
            wait()
            v:FireServer(e)
        end
    end
    for i,a in pairs(game.Workspace.Map:GetChildren()) do
        if a:IsA("Part") then
            wait()
            v:FireServer(a)
        end
    end
    for i,r in pairs(game.Workspace:GetChildren()) do
        if r:IsA("Part") then
            wait()
            v:FireServer(r)
        end
    end
    v:FireServer(workspace.Terrain)
    v:FireServer(char.Effects.nocd)
    v:FireServer(char.Effects.nocd.Base)
    v:FireServer(char.Effects.nocd.Base.Union)
            --end
        --end
        --end
            
wait()
end)
                    end
            end
end
end
--end
pp:Destroy()
    end)
end

end



if ye then    
    for _,v in pairs(pp:GetDescendants()) do
        if v.Name == 'Bone' then
            v:Destroy()
        end 
end end
end
function elitecdr()
_G.sansnocd = true
local limit = 25 --mess around to find the limit to whatever your internet can handle
spawn(function()
    local A_1 =  {
      [1] = pass,  [2] = "Bones", [3] = "Ground",  [4] = Vector3.new(0,1000000,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end) 
local diff = 0;       local pb
spawn(function()
    while _G.sansnocd and char:IsDescendantOf(workspace) do 
pb = tonumber(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
    wait(.2)
local pb2 = tonumber(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
 diff =  math.clamp((pb2/pb) -1 ,0,1)

    end
end)
local pp = char.Effects:WaitForChild('MultipleBones');pp.Name = 'nocd'
spawn(function() pp:WaitForChild('Warning'):Destroy() pp:WaitForChild('Warning'):Destroy() end)
wait(.5) local bonetab = {} 
    for _,v in pairs(pp:GetDescendants()) do
        if v:IsA('BasePart') then
table.insert(bonetab,v)
        end 
end
    for _,v in pairs(game:GetService("Workspace").Map["New Map"]:GetChildren()) do
        if v:IsA('BasePart') then
table.insert(bonetab,v)
        end 
end
local num = #bonetab-(#bonetab-limit)
print(num)
for _,v in pairs(pp:GetDescendants()) do
if v.Name == 'RemoteEvent' then
   spawn(function() pp:WaitForChild('Script'):Destroy() end)
    spawn(function() local v = v
while _G.sansnocd and char:IsDescendantOf(workspace) do local manage = 0
    local ea = workspace.ServerEffects.ServerCooldown[player.Name]:GetChildren()
    local a = 0 
    for _,v in pairs(ea) do local name = string.lower(v.Name) 
        if not string.find(name,'slice') and not string.find(name,'spawnbone') then
            a = a + 1
        end end
    if a > 0 and pb < 500 then
manage = math.clamp(math.round(#bonetab*diff),0,#bonetab);if diff >= .2 then manage = #bonetab-16 end
 for i = 1,num-manage do local hit = bonetab[i]
            spawn(function() v:FireServer(hit) end)
 end
        end
wait()
        end
pp:Destroy()
    end)
    break
end
end
end
function oldcdr()
spawn(function()
    local A_1 =  {
      [1] = pass, 
      [2] = "Bones", 
      [3] = "Ground", 
      [4] = Vector3.new(0,1000000,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
    end)
local pp = char.Effects:WaitForChild('MultipleBones')
pp.Name = 'nocd'
spawn(function() pp:WaitForChild('Warning'):Destroy() pp:WaitForChild('Warning'):Destroy() end)
wait(.5)
local ye = false
for _,v in pairs(pp:GetDescendants()) do
if v.Name == 'RemoteEvent' then
   spawn(function() pp:WaitForChild('Script'):Destroy() end)
    ye = true
    spawn(function()
        local v = v
        for i = 0,math.huge do
            wait()
            spawn(function()
    --for i,e in pairs(game.Workspace:GetChildren()) do 
        --if e ~= player.Character and e:FindFirstChild("Humanoid") and e:FindFirstChild("HumanoidRootPart") and e:FindFirstChild("Data") then
            --local vector = (player.Character.HumanoidRootPart.Position - e.HumanoidRootPart.Position)
            --if vector.Magnitude <= 1000 then
    --:FireServer(e)
    v:FireServer(workspace.Terrain)
    v:FireServer(char.Effects.nocd)
    v:FireServer(char.Effects.nocd.Base)
    v:FireServer(char.Effects.nocd.Base.Union)
            --end
        --end
        --end
            end)
wait()
        end
pp:Destroy()
    end)
end

end

if ye then    
    for _,v in pairs(pp:GetDescendants()) do
        if v.Name == 'Bone' then
            v:Destroy()
        end 
end end
end
if not hidden then
if not new then
spawn(function()
while wait() do
oldcdr()
end
end)
end
end
if new == "elite" then
elitecdr()
end
if not hidden then
local humanoid = game.Players.LocalPlayer.Character.Humanoid
landed = false 
humanoid.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Jumping then
        if not landed then
            landed = true
            return
        end
    elseif newState == Enum.HumanoidStateType.Landed and landed then
        landed = false
camShake:Shake(CameraShaker.Presets.Explosion)
local lol = Instance.new("Animation")
                lol.AnimationId = "rbxassetid://4575983939"
                local funni = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(lol)
                funni:Play();
                funni:AdjustSpeed();
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects:GetChildren()) do
if v.Name == 'HardLandSmoke' then
clone99 = v:Clone()
clone99.Parent = char.HumanoidRootPart
clone99.CFrame = char.HumanoidRootPart.CFrame
clone99.Anchored = false
clone99.Name = 'DarkSmoke'
clone99.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
        wait(3)
        clone99:Destroy()
end
end
end
end)
end
game.Players.LocalPlayer.Character.Bone.Color = Color3.fromRGB(170, 170, 170)
--[[
spawn(function()
while wait(0.5) do
for _,v in pairs(game.Players.LocalPlayer.Character.BadTimeEye:GetDescendants()) do
    if v.Name == 'ParticleEmitter' then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0.16666667163372, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0.10784313827753, 1, 1))}
    end
end
for _,v in pairs(game.Players.LocalPlayer.Character.BadTimeEye:GetDescendants()) do
    if v.Name == 'Beam' then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0.16666667163372, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0.10784313827753, 1, 1))}
    end
end
end
end)]]

function eyecolor(a,b)
    task.wait()
    for i,v in pairs(game.Players.LocalPlayer.Character:WaitForChild('BadTimeEye').Part:GetChildren()) do
        if v:IsA('Beam') then
            v.Color = ColorSequence.new(a)
        elseif v:IsA('ParticleEmitter') then
            v.Color = ColorSequence.new(b)
        end
    end
end

-- detects when the eye is added to the character
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)
    if x.Name == 'BadTimeEye' then
        eyecolor(Color3.fromRGB(130, 130, 130), Color3.fromRGB(0, 0, 0)) -- first color is the beam color, second is the particle color
    end
end)


for _,v in pairs(game.Players.LocalPlayer.Character.Bone:GetDescendants()) do
    if v.Name == "Trail" and v:IsA("Trail") then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(130, 130, 130)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(100, 100, 100))}
    end
end
for _,v in pairs(game.Players.LocalPlayer.Character.Bone:GetDescendants()) do
    if v.Name == "ParticleEmitter" and v:IsA("ParticleEmitter") then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(130, 130, 130)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(100, 100, 100))}
    end
end
if not hidden then
game.Players.LocalPlayer.Chatted:connect(function(p4) game.ReplicatedStorage.Remotes.Events:FireServer({ pass, "Chatted", p4, Color3.fromRGB(255, 128, 1) }); end);
end
game.Players.LocalPlayer.PlayerGui.SansIndicator.Help.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
if not godmode then
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = ""
end
if not hidden then
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
local spacing = [[ 
]]
   local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(args[1]) == "Events" and tostring(args[2][2]) == 'Chatted' then
    msgg = tostring(args[2][3])
    args[2][3] = '</[Time Sans But Better]\>*:'..spacing..msgg
            return backup(unpack(args)) -- return the modified remote so it goes as how you wish
        end
        return backup(...)
    end)
end
local runS = game:GetService('RunService')
local TweenService = game:GetService("TweenService")

local BodyParts = {
    "Head",
    "Torso",
    "Left Arm",
    "Right Arm",
    "Left Leg",
    "Right Leg"
}


    for i,v in pairs(Player.Character:GetChildren()) do 
        if table.find(BodyParts, v.Name) then
            local part = Instance.new("Part")
            part.Anchored = false 
            part.CanCollide = false 
            part.Massless = true 
            part.CFrame = v.CFrame
            part.Size = v.Size + Vector3.new(0.05,0.05,0.05)
            part.Transparency = 0.5
            part.Color = Color3.new(1,0,0)
            part.Name = "Test"
            part.Material = Enum.Material["Neon"]
            if v.Name == "Head" then 
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = Enum.MeshType.Head 
                mesh.Scale = Vector3.new(2.9, 1.2, 1.2)
                mesh.Parent = part
            end
            part.Parent = workspace 
            
        end
    end

game.Workspace.Test.Name = "p1"
game.Workspace.Test.Name = "p2"
game.Workspace.Test.Name = "p3"
game.Workspace.Test.Name = "p4"
game.Workspace.Test.Name = "p5"
game.Workspace.Test.Name = "p6"


local work = game.Workspace

local pa1 = Instance.new("Weld",Player.Character["Head"]) pa1.Name = "AIWeld" pa1.Part0 = work.p1 pa1.Part1 = Player.Character["Head"]
local pa2 = Instance.new("Weld",Player.Character["Torso"]) pa2.Name = "AIWeld2" pa2.Part0 = work.p2 pa2.Part1 = Player.Character["Torso"]
local pa3 = Instance.new("Weld",Player.Character["Left Arm"]) pa3.Name = "AIWeld3" pa3.Part0 = work.p3 pa3.Part1 = Player.Character["Left Arm"]
local pa4 = Instance.new("Weld",Player.Character["Right Arm"]) pa4.Name = "AIWeld4" pa4.Part0 = work.p4 pa4.Part1 = Player.Character["Right Arm"]
local pa5 = Instance.new("Weld",Player.Character["Left Leg"]) pa5.Name = "AIWeld5" pa5.Part0 = work.p5 pa5.Part1 = Player.Character["Left Leg"]
local pa6 = Instance.new("Weld",Player.Character["Right Leg"]) pa6.Name = "AIWeld6" pa6.Part0 = work.p6 pa6.Part1 = Player.Character["Right Leg"]
c1 = 255
c2 = 0
work.p1.Color = Color3.fromRGB(0,1,c1)
work.p2.Color = Color3.fromRGB(0,1,c1)
work.p3.Color = Color3.fromRGB(0,1,c1)
work.p4.Color = Color3.fromRGB(0,1,c1)
work.p5.Color = Color3.fromRGB(0,1,c1)
work.p6.Color = Color3.fromRGB(0,1,c1)
work.p1.Transparency = 0.9
work.p2.Transparency = 0.9
work.p3.Transparency = 0.9
work.p4.Transparency = 0.9
work.p5.Transparency = 0.9
work.p6.Transparency = 0.9
spawn(function()
	local lol = Instance.new('Color3Value')
	lol.Parent = game:GetService("Players").LocalPlayer.Character
	lol.Name = 'yee'
	lol.Value = Color3.fromRGB(255,255,255) -- tween to 0.8
	spawn(function()
		local ti = TweenInfo.new(
			2.5, -- Time
			Enum.EasingStyle.Sine, -- EasingStyle
			Enum.EasingDirection.InOut, -- EasingDirection
			-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
			true, -- Reverses (tween will reverse once reaching it's goal)
			0.5 -- DelayTime
		)

		local tween1 = game:GetService('TweenService'):Create(lol, ti, {Value = Color3.fromRGB(0,0,0)})
		tween1:Play()
	end)
while task.wait() do
        work.p1.Color = lol.Value
		work.p2.Color = lol.Value
		work.p3.Color = lol.Value
		work.p4.Color = lol.Value
		work.p5.Color = lol.Value
		work.p6.Color = lol.Value
		if not godmode then
		char.Head.HealthBar.Frame.PName.TextStrokeColor3 = lol.Value
		end
		game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.TextStrokeColor3 = lol.Value
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "2" then
	    if game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.Text == "Telekinesis Enabled" then
	   local args = { [1] = { [1] = getrenv()._G.Pass, [2] = "Telekinesis", [3] = "Special", [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    }
}
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
	   end
    end
end)
mouse.KeyDown:Connect(function(k) 
	if k == "." then
	    if new == true then
	       cdr()
	       end
	       if new == false then
	       oldcdr()
	       end
	       if new == "elite" then
	       elitecdr()
	   end
    end
end)
--//no cooldowns by signal#8888
--// Don't teleport until execute
local toggle = Enum.KeyCode.KeypadZero -- key you press to toggle no cooldown, its active by default, this is here because it also removes other people cooldowns, and also saves your ping!

if not getgc then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Unsupported exploit.";
		Text = "getgc is needed.";
		Duration = 5;
	})
	return
end

if not getrenv then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Unsupported exploit.";
		Text = "getrenv is needed.";
		Duration = 5;
	})
	return
end


repeat task.wait() until game:IsLoaded()

local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local rep = game:GetService("ReplicatedStorage")

local remotes = rep:WaitForChild("Remotes")
local functions = remotes:WaitForChild("Functions")
local plr = plrs.LocalPlayer
local v2 = plr.Character
local adjust = 28
local active = true
local unstress = false
local pass = getrenv()._G.Pass
local current
local gotIT

local function manipulate() -- function that removes local cooldowns
	for k,v in pairs(getgc()) do
		if type(v) == "function" then
			if getfenv(v).script ~= nil and typeof(getfenv(v).script) == "Instance" and getfenv(v).script.Name:match("Moves") and getfenv(v).script:IsDescendantOf(game:GetService("Players").LocalPlayer.Backpack) then
				current = getfenv(v).script
				pcall(function()
					if not gotIT or (gotIT ~= current or gotIT.Parent:IsDescendantOf(game:GetService("Players").LocalPlayer.Backpack)) then
						local info = debug.getinfo(v)
						if info.name and info.name == "takeStamina" then
							gotIT = current
							spawn(function()
								while true do
								    v2.Data.Stamina.Value = 9090909
									if current and current.Parent then
										if active and not uis:IsKeyDown(Enum.KeyCode.E) then
											v(10000000,0)
										end
									else
										break
									end
									task.wait(.001)
								end
							end)
						end
					end
				end)
				local b = debug.getupvalues(v)
				for i,v in pairs(b) do
					if typeof(v) == "table" then
						if v["Teleport"] ~= nil or v["DashAttack"] ~= nil then
							spawn(function()
								while true do
									if active and current and current.Parent then
										for a,b in pairs(v) do
											v[a] = true
										end
									else
										break
									end
									task.wait(.001)
								end
							end)
							return "Made by signal#8888"
						end
					end
				end
			end
		end
	end
end


warn("Made by signal#8888")
local function onChar()
	game.StarterGui:SetCore("SendNotification", {
		Title = "Loading...";
		Text = "Made by signal#8888\nTo start, teleport once.";
		Duration = 8;
	})
	repeat task.wait(.5) until manipulate() == "Made by signal#8888" -- credits for skids go brrr
	game.StarterGui:SetCore("SendNotification", {
		Title = "Loaded.";
		Text = "Cooldown removed from script "..current.Name;
		Duration = 5;
	})
end
game.StarterGui:SetCore("SendNotification", {
	Title = "Hello!";
	Text = "Made by signal#8888";
	Duration = 8;
})
if plr.Character then
	onChar()
end

plr.CharacterAdded:Connect(function()
    wait(2)
    onChar()
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "=" then
local Id = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Id copied.",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(Id)
setclipboard("game:GetService(".."'".."TeleportService".."'".."):TeleportToPlaceInstance("..game.PlaceId..", ".."'"..game.JobId.."'"..", game.Players.LocalPlayer)")
end
end)

if godmodelockon then
    if not (getgc and getconstants and setconstant) then

    warn("NOT SUPPORTED EXPLOIT")
    game.StarterGui:SetCore("SendNotification", {
        Title = "WARNING";
        Text = "NOT SUPPORTED EXPLOIT";
        Duration = 5;
    })
    return

end

pcall(function()

    local funcs = {}

    for i, v in next, getgc() do

        if type(v) == "function" then

            if getfenv(v).script and getfenv(v).script.Name and getfenv(v).script.Name == "LockOnScript" then

                table.insert(funcs, v)

            end

        end

    end

    repeat wait() until #funcs ~= 0

    local target = funcs[#funcs]

    for i2, v2 in next, getconstants(target) do

        if i2 == 44 and tostring(v2) == "0" then

            setconstant(target, i2, -999999)
            print("hooked")

        end

    end

end)



if infmana then

game.Players.LocalPlayer.Character.Bone.Color = Color3.fromRGB(130, 0, 0)
    function eyecolor(a,b)
    task.wait()
    for i,v in pairs(game.Players.LocalPlayer.Character:WaitForChild('BadTimeEye').Part:GetChildren()) do
        if v:IsA('Beam') then
            v.Color = ColorSequence.new(a)
        elseif v:IsA('ParticleEmitter') then
            v.Color = ColorSequence.new(b)
        end
    end
end

-- detects when the eye is added to the character
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)
    if x.Name == 'BadTimeEye' then
        eyecolor(Color3.fromRGB(170, 0, 0), Color3.fromRGB(130, 43, 0)) -- first color is the beam color, second is the particle color
    end
end)


for _,v in pairs(game.Players.LocalPlayer.Character.Bone:GetDescendants()) do
    if v.Name == "Trail" and v:IsA("Trail") then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 150, 0))}
    end
end
for _,v in pairs(game.Players.LocalPlayer.Character.Bone:GetDescendants()) do
    if v.Name == "ParticleEmitter" and v:IsA("ParticleEmitter") then
        v.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 150, 0))}
    end
end
    local A_1 =  { [1] = getrenv()._G.Pass,  [2] = "Blocking",  [3] = true } local Event = game:GetService("ReplicatedStorage").Remotes.Functions Event:InvokeServer(A_1)
local v1 = { [1] = getrenv()._G.Pass,  [2] = "Damage",  [3] = "NaN",  [4] = game.Players.LocalPlayer.Character } local event = game:GetService("ReplicatedStorage").Remotes.Events event:FireServer(v1)
local A_1 =  { [1] = getrenv()._G.Pass,  [2] = "Blocking",  [3] = false} local Event = game:GetService("ReplicatedStorage").Remotes.Functions Event:InvokeServer(A_1)
wait(0.3)
sound:Stop()
						local sound = Instance.new('Sound');
		sound.Parent = game.Players.LocalPlayer.Backpack;
		sound.Volume = 3;
		sound.Looped = true;
		sound.Name = "GodTier";
		sound.SoundId = getsynasset("Hello_World.mp3");
		sound:Play()
		
		local runS = game:GetService('RunService')
local TweenService = game:GetService("TweenService")

local BodyParts = {
    "Head",
    "Torso",
    "Left Arm",
    "Right Arm",
    "Left Leg",
    "Right Leg"
}


    for i,v in pairs(Player.Character:GetChildren()) do 
        if table.find(BodyParts, v.Name) then
            local part = Instance.new("Part")
            part.Anchored = false 
            part.CanCollide = false 
            part.Massless = true 
            part.CFrame = v.CFrame
            part.Size = v.Size + Vector3.new(0.05,0.05,0.05)
            part.Transparency = 0.5
            part.Color = Color3.new(1,0,0)
            part.Name = "Test"
            part.Material = Enum.Material["Neon"]
            if v.Name == "Head" then 
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = Enum.MeshType.Head 
                mesh.Scale = Vector3.new(2.9, 1.2, 1.2)
                mesh.Parent = part
            end
            part.Parent = workspace 
            
        end
    end

game.Workspace.Test.Name = "p1"
game.Workspace.Test.Name = "p2"
game.Workspace.Test.Name = "p3"
game.Workspace.Test.Name = "p4"
game.Workspace.Test.Name = "p5"
game.Workspace.Test.Name = "p6"


local work = game.Workspace

local pa1 = Instance.new("Weld",Player.Character["Head"]) pa1.Name = "AIWeld" pa1.Part0 = work.p1 pa1.Part1 = Player.Character["Head"]
local pa2 = Instance.new("Weld",Player.Character["Torso"]) pa2.Name = "AIWeld2" pa2.Part0 = work.p2 pa2.Part1 = Player.Character["Torso"]
local pa3 = Instance.new("Weld",Player.Character["Left Arm"]) pa3.Name = "AIWeld3" pa3.Part0 = work.p3 pa3.Part1 = Player.Character["Left Arm"]
local pa4 = Instance.new("Weld",Player.Character["Right Arm"]) pa4.Name = "AIWeld4" pa4.Part0 = work.p4 pa4.Part1 = Player.Character["Right Arm"]
local pa5 = Instance.new("Weld",Player.Character["Left Leg"]) pa5.Name = "AIWeld5" pa5.Part0 = work.p5 pa5.Part1 = Player.Character["Left Leg"]
local pa6 = Instance.new("Weld",Player.Character["Right Leg"]) pa6.Name = "AIWeld6" pa6.Part0 = work.p6 pa6.Part1 = Player.Character["Right Leg"]
c1 = 255
c2 = 0
work.p1.Color = Color3.fromRGB(0,1,c1)
work.p2.Color = Color3.fromRGB(0,1,c1)
work.p3.Color = Color3.fromRGB(0,1,c1)
work.p4.Color = Color3.fromRGB(0,1,c1)
work.p5.Color = Color3.fromRGB(0,1,c1)
work.p6.Color = Color3.fromRGB(0,1,c1)
work.p1.Transparency = 0.9
work.p2.Transparency = 0.9
work.p3.Transparency = 0.9
work.p4.Transparency = 0.9
work.p5.Transparency = 0.9
work.p6.Transparency = 0.9
spawn(function()
	local lol = Instance.new('Color3Value')
	lol.Parent = game:GetService("Players").LocalPlayer.Character
	lol.Name = 'yee'
	lol.Value = Color3.fromRGB(120,30,0) -- tween to 0.8
	spawn(function()
		local ti = TweenInfo.new(
			2.5, -- Time
			Enum.EasingStyle.Sine, -- EasingStyle
			Enum.EasingDirection.InOut, -- EasingDirection
			-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
			true, -- Reverses (tween will reverse once reaching it's goal)
			0.5 -- DelayTime
		)

		local tween1 = game:GetService('TweenService'):Create(lol, ti, {Value = Color3.fromRGB(255,0,0)})
		tween1:Play()
	end)
while task.wait() do
        work.p1.Color = lol.Value
		work.p2.Color = lol.Value
		work.p3.Color = lol.Value
		work.p4.Color = lol.Value
		work.p5.Color = lol.Value
		work.p6.Color = lol.Value
		if not godmode then
		char.Head.HealthBar.Frame.PName.TextStrokeColor3 = lol.Value
		end
		game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.TextStrokeColor3 = lol.Value
end
end)
end


function eyecolor(a,b)
    task.wait()
    for i,v in pairs(game.Players.LocalPlayer.Character:WaitForChild('BadTimeEye').Part:GetChildren()) do
        if v:IsA('Beam') then
            v.Color = ColorSequence.new(a)
        elseif v:IsA('ParticleEmitter') then
            v.Color = ColorSequence.new(b)
        end
    end
end

-- detects when the eye is added to the character
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)
    if x.Name == 'BadTimeEye' then
        eyecolor(Color3.fromRGB(100, 0, 0), Color3.fromRGB(50, 0, 0)) -- first color is the beam color, second is the particle color
    end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
--
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "AirSpawn2",
        [4] = Vector3.new(1,1,1)
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
--
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
--
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "AirSpawn2",
        [4] = Vector3.new(1,1,1)
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
--
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
wait(0.2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "GasterBlasters", 
    [3] = "SummonFour", 
    [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
game.Players:Chat(("Heh."))
end
end)


		if funiblaster then
		    wait(1)
game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(v)  
    if v.Name == "GasterBlaster" or v.Name:match("Blaster") then
        
        v:WaitForChild("RootPart"):Destroy()
            end
end)
game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(v)  
    if v.Name == "BigGasterBlaster" or v.Name:match("BigBlaster") then
        
        v:WaitForChild("RootPart"):Destroy()
            end
end)
end
  end


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
	    local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "GasterBlasters", 
    [3] = "SummonFour", 
    [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)


local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "Ground2",
        [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "GasterBlasters", 
    [3] = "SummonEight", 
    [4] = game:GetService("Workspace")[tostring(game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)].LockOn.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)



end
end)

spawn(function()
local sound = game.Players.LocalPlayer.Character
local char = game.Players.LocalPlayer.Character
local sound = Instance.new("Sound", char)
sound.Parent = char
sound.Volume = 1
sound.Looped = true
sound.SoundId = getcustomasset("Megalovania.mp3")
sound:Play()
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.Text = "HM!Sans"
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == ";" then 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "GodMode Enabled";
    Text = "HM!Sans";
    Duration = 1;
})
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis",
[3] = "Special"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "]" then 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Infinite Stamina Enabled";
    Text = "HM!Sans";
    Duration = 1;
})
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' then
task.wait()
v:Destroy()
end
end)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "[" then 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Bone Aura Loaded";
    Text = "HM!Sans";
    Duration = 1;
})
local childad = game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(v)

    if v.Name == "Bone" then
  
        v:WaitForChild("NotTouched"):Destroy()
        v:WaitForChild("ParticleEmitter"):Destroy()
        v:WaitForChild("BodyVelocity"):Destroy()
  
        v1 = Instance.new("BodyPosition", v)
        fol = Instance.new("Folder", v1)
        v1.Name = "Client"
        v1.MaxForce = Vector3.new(99999,99999,99999) * math.huge
        v1.D = math.huge
        v1.P = math.huge
        wait(5)
        v.Rotation = Vector3.new(0,0,0)
  
    end
  end)
  
  local radius = 7 --how far away do you want the parts to be from you
  local circle = math.pi * 2-- Gets a full circle
  local char = game.Players.LocalPlayer.Character
  local tab = {}--Creates a table so you can insert values inside
  local amm = 6---amount of projectiles
  pass = getrenv()._G.Pass
  for i = 1,amm,1 do
  spawn(function()
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "AirSpawn2",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    }
    local Target = game:GetService("ReplicatedStorage").Remotes.SansMoves
    Target:InvokeServer(A_1)
    wait()
  end)
  end
  am = 0
  local detect
  local detect2
  val = Instance.new('NumberValue',player)-- creates a value instance so you can use it in a connect function
  val.Name = 'Bone'
  detect = char.Attacks.ChildAdded:Connect(function(pp)-- this will detect if a child is added to the character
  if pp.Name == 'Bone' then
    table.insert(tab,pp)--it will insert the blasts to the table
  am = am + 1--adds the numbers
  val.Value = am--set the Number value to that number
  pp:WaitForChild('BodyVelocity'):Destroy()
  pp:WaitForChild('Hitted'):Destroy()
  end
  end)
  
  detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()-- detects if the value is equal to the amount of time the remote is fired
  if val.Value == amm then
  tab2 = {}
  for _,v in pairs(tab) do---will look through the tables
  v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(math.random(-20,20),1000,math.random(-20,20))
  v1 = Instance.new('BodyPosition',v)
  fol = Instance.new('Folder',v1)
  v1.Name = 'Client'
  v1.MaxForce = Vector3.new(1,1,1)*100000
  v1.D = 500
  v1.P = 30000
  v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,0,0)
        table.insert(tab2,v1)
  end
  
  for i = 1,#tab2 do
  spawn(function()
  local angle = circle / #tab2 * i---this will get the amount of parts you have and multiply with the current i to get the proper postion to make a circle
    local part = tab2[i]
  local  mspeed = 0
  
  while true do
    wait()
    mspeed = mspeed + 2-- change it to a higher number if u want it faster
    local x_pos = math.cos(angle) * radius
    local y_pos = math.sin(angle) * radius
    
    local cf = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(mspeed), math.rad(mspeed),math.rad(0)) *CFrame.new(x_pos, 0, y_pos)
    part.Position = cf.p
  
  
  end
  end)
  end
  val:Destroy()
  detect:Disconnect()
  detect2:Disconnect()
  end
  end)
end
end)

local plrs = game:GetService("Players")
local light = game:GetService("Lighting")
local rep = game:GetService("ReplicatedStorage")
local starter = game:GetService("StarterGui")
local tweenS = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local txtS = game:GetService("TextService")
local debris = game:GetService("Debris")
local TS = game:GetService("TweenService")
local Resources = game:GetService("ReplicatedStorage").Resources
local tweeninfo = TweenInfo.new
local taskwait = task.wait
local taskspawn = task.spawn
local cf = CFrame.new
local angles = CFrame.Angles
local mathrand = math.random
local mathrad = math.rad
local vector = Vector3.new
local params = RaycastParams.new()
params.FilterDescendantsInstances = {workspace:WaitForChild("Map")}
params.FilterType = Enum.RaycastFilterType.Whitelist
local remotes = rep:WaitForChild("Remotes")
local mainModule = require(rep:WaitForChild("ClientModules").MainModule)
local plr = plrs.LocalPlayer
local pass = getrenv()._G.Pass
local currentIndex = 0
local timesinc = 0
local deb = false
local sit = false
local maxIndex = 1
local currentPhaseBuff = 1
local timesIncreased = 0
local buffed = 0
local locked
local currentModule
local currentScript
local lastAdded
local realLast
local block
local fun
local index
stack = Instance.new("BoolValue")
stack.Parent = game.Workspace
stack.Name = "lolfunny"
stack.Value = false
local l__Workspace__1 = game:GetService("Workspace");
local l__Players__2 = game:GetService("Players");
local l__Lighting__3 = game:GetService("Lighting");
local l__ReplicatedFirst__4 = game:GetService("ReplicatedFirst");
local l__UserInputService__5 = game:GetService("UserInputService");
local l__RunService__6 = game:GetService("RunService");
local v7 = require(game:GetService("ReplicatedStorage").RegionModule);
local l__Remotes__8 = game.ReplicatedStorage:WaitForChild("Remotes");
local v9 = require(game.ReplicatedStorage.ClientModules.MainModule);
local v10 = require(game.ReplicatedStorage.CameraShaker);
local v11 = v10.new(Enum.RenderPriority.Camera.Value, function(p1)
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p1;
end);
v11:Start();
local l__LocalPlayer__12 = l__Players__2.LocalPlayer;
local l__mouse__13 = l__LocalPlayer__12:GetMouse();
function TransparentText(p3, p4)
	v9.CreateTween(p3, { 1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0 }, {
		TextTransparency = p4
	}, true);
end;
l__Remotes__8.InvokeClient.OnClientInvoke = function(p5)
	local v14 = p5[1];
	if v14 == "Challenged" then
		local l__ChallengeInfo__15 = l__LocalPlayer__12.PlayerGui.UI.Ui.ChallengeInfo;
		local l__Info__16 = l__ChallengeInfo__15.Info;
		local l__Accept__17 = l__ChallengeInfo__15.Accept;
		local l__Decline__18 = l__ChallengeInfo__15.Decline;
		l__Info__16.Text = p5[2].Name .. " has challenged you";
		l__Info__16.Transparency = 1;
		TransparentText(l__Info__16, 0);
		l__Accept__17.Transparency = 1;
		TransparentText(l__Accept__17, 0);
		l__Decline__18.Transparency = 1;
		TransparentText(l__Decline__18, 0);
		l__Info__16.Visible = true;
		l__Accept__17.Visible = true;
		l__Decline__18.Visible = true;
		local u1 = nil;
		local v19 = l__Decline__18.Activated:Connect(function()
			u1 = "Declined";
		end);
		while true do
			task.wait();
			if u1 ~= nil then
				break;
			end;
			if not l__LocalPlayer__12.Character then
				break;
			end;
			if l__LocalPlayer__12.Character and not l__LocalPlayer__12.Character:FindFirstChild("Challenger") then
				break;
			end;		
		end;
		l__Accept__17.Activated:Connect(function()
			u1 = "Accepted";
		end):disconnect();
		v19:disconnect();
		TransparentText(l__Info__16, 1);
		TransparentText(l__Accept__17, 1);
		TransparentText(l__Decline__18, 1);
		if u1 ~= nil then
			return u1;
		end;
	end;
	if v14 == "SpawnModel" then
		local v20 = p5[2]:Clone();
		v20:SetPrimaryPartCFrame(p5[3]);
		v20.Parent = workspace;
	elseif v14 == "RemoveModel" then
		local v21 = p5[2];
		if workspace:FindFirstChild(v21) then
			workspace:FindFirstChild(v21):Destroy();
		end;
	end;
	if v14 == "GetTouched" then
		local v22 = p5[2];
		local v23 = p5[4];
		if v23 then
			v22 = v23.CFrame;
		end;
		local v24 = {};
		for v25, v26 in pairs(workspace:GetChildren()) do
			if v26:FindFirstChild("Torso") and v26.Name ~= l__LocalPlayer__12.Name then
				table.insert(v24, v26.Torso);
			end;
		end;
		local casted = v7.new(v22, p5[3]):cast2(v24);
		if locked then
			table.insert(casted,locked.Torso)
		end
		if not plr.Character:FindFirstChild("Aura") then
			for i, v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") and v.Name ~= l__LocalPlayer__12.Name and (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
					table.insert(casted, v.Torso)
				end
			end
		else
			for i, v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") and v.Name ~= l__LocalPlayer__12.Name and (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 70 then
					table.insert(casted, v.Torso)
				end
			end
			if locked then
				for i, v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") and v.Name ~= l__LocalPlayer__12.Name and (v.HumanoidRootPart.Position - locked.HumanoidRootPart.Position).Magnitude <= 15 then
						table.insert(casted, v.Torso)
					end
				end
			end
		end
		if hitSelf then
            table.insert(casted, plr.Character.HumanoidRootPart)
		end
            if stack.Value then
            stack.Changed:Wait()
            return casted
        else
            return casted
        end
	end
	if v14 == "getRootPartCF" then
		return l__LocalPlayer__12.Character.HumanoidRootPart.CFrame;    
	end;
	if v14 == "GetTouchedPlayer" then
		local v27 = false;
		for v28, v29 in pairs(v7.new(p5[2], p5[3]):cast2({ l__LocalPlayer__12.Character.Torso })) do
			v27 = true;
		end;
		return { v27, l__LocalPlayer__12.Character:FindFirstChild("Humanoid").MoveDirection };
	end;
	if v14 == "Shake" then
		v11:Shake(v10.Presets[p5[2]]);
	end;
	if v14 == "GetTouchedNPCTouched" then
		local v36 = p5[2];
		local v37 = {};
		for v38, v39 in pairs(workspace:GetChildren()) do
			if v39:FindFirstChild("Torso") and v39.Name ~= l__LocalPlayer__12.Name and not game.Players:FindFirstChild(v39.Name) then
				table.insert(v37, v39.Torso);
			end;
		end;
		local u4 = p5[3];
		local l__RemoteEvent__5 = v36:WaitForChild("RemoteEvent");
		task.spawn(function()
			while v36.Parent and not v36:FindFirstChild("Cancel") do
				for i,v44 in pairs(v7.new(v36.CFrame, v36.Size):cast2(v37)) do
					if u4 == "Blue" and v44.Parent.Humanoid.MoveDirection.X == 0 and v44.Parent.Humanoid.MoveDirection.Y == 0 and v44.Parent.Humanoid.MoveDirection.Z == 0 then
						return;
					end;
					if u4 == "Orange" and v44.Parent.Humanoid.MoveDirection.X > 0 then
						return;
					end;
					if u4 == "Orange" and v44.Parent.Humanoid.MoveDirection.X < 0 then
						return;
					end;
					if u4 == "Orange" and v44.Parent.Humanoid.MoveDirection.Z < 0 then
						return;
					end;
					if u4 == "Orange" and v44.Parent.Humanoid.MoveDirection.Z > 0 then
						return;
					end;
					l__RemoteEvent__5:FireServer(v44.Parent);				
				end;
				task.wait(0.05);			
			end;
		end);
	end;
	if v14 == "GetTouchedNPC" then
		local v45 = p5[4];
		local v46 = false;
		for v47, v48 in pairs(v7.new(p5[2], p5[3]):cast2({ v45.Torso })) do
			v46 = true;
		end;
		return { v46, v45:FindFirstChild("Humanoid").MoveDirection };
	end;
	if v14 == "getMousePos" then
		local l__Torso__49 = l__LocalPlayer__12.Character.Torso;
		local l__LockOn__50 = l__LocalPlayer__12.Backpack.Main.LockOnScript.LockOn;
		if l__LockOn__50.Value then
			return l__LockOn__50.Value.Torso.CFrame.p;
		else
			return l__mouse__13.Hit.p;
		end;
	end;
	if v14 == "GetPartCFrame" then
		return p5[2].CFrame;
	end;
	if v14 == "EditMusic" then
		if l__LocalPlayer__12.PlayerScripts:FindFirstChild("Music") then
			l__LocalPlayer__12.PlayerScripts.Music[p5[2]]:Fire(p5[3])
		else
			task.wait(99999999999999999999)
		end
	end;
	if v14 ~= "DieScreen" then
		if v14 == "CharacterSelection" then
			local v51 = l__LocalPlayer__12.PlayerScripts.FireClient.CharacterSelection:Clone();
			v51.Parent = l__LocalPlayer__12.PlayerGui;
			while true do
				task.wait();
				if v51:WaitForChild("Character").Value ~= "" then
					break;
				end;			
			end;
			local l__Value__52 = v51:WaitForChild("Character").Value;
			task.spawn(function()
				task.wait(1);
				v51:Destroy();
			end);
			return l__Value__52;
		else
			return;
		end;
	end;
	l__LocalPlayer__12.PlayerScripts:WaitForChild("Music").Stop:Fire();
	l__LocalPlayer__12.PlayerGui.GameOver.Enabled = true;
	for v53 = 1, 0, -0.1 do
		l__LocalPlayer__12.PlayerGui.GameOver.Frame.BackgroundTransparency = v53;
		task.wait();
	end;
	if l__LocalPlayer__12.Character:FindFirstChild("GetDunkedOn") then
		l__LocalPlayer__12.PlayerGui.GameOver.Sound2:Play();
	else
		l__LocalPlayer__12.PlayerGui.GameOver.Sound:Play();
	end;
	for v54 = 1, 0, -0.1 do
		l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.ImageTransparency = v54;
		task.wait();
	end;
	task.wait(0.5);
	l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Script.Disabled = false;
	while true do
		task.wait();
		if l__LocalPlayer__12.Character:FindFirstChild("Confirmed") then
			break;
		end;	
	end;
	l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Script.Disabled = true;
	l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Text = "";
	l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel2.Text = "";
	for v55 = 0, 1, 0.1 do
		l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.ImageTransparency = v55;
		l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.TextTransparency = v55;
		l__LocalPlayer__12.PlayerGui.GameOver.Frame.ImageLabel.TextLabel2.TextTransparency = v55;
		task.wait();
	end;
	task.wait(1);
	l__LocalPlayer__12.PlayerGui.GameOver.Sound:Stop();
	l__LocalPlayer__12.PlayerScripts.Music.Resume:Fire();
	return true;
end;
local Effect = Instance.new("ColorCorrectionEffect")
Effect.Parent = game.Lighting
Effect.Saturation = -3
Effect.Brightness = 0
Effect.Contrast = 0
lolz = false
Effect.Enabled = false

local UIS = game:GetService("UserInputService")
local Mouse = game.Players.LocalPlayer:GetMouse()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "t" then
local kg = Instance.new("Sound", game.Players.LocalPlayer)
kg.Volume = 2
kg.SoundId = "rbxassetid://3816362502"
kg:Play()
spawn(function()
if lolz == false then
stack.Value = true
wait(0.3)
Effect.Enabled = true
lolz = true
else
stack.Value = false
Effect.Enabled = false
lolz = false
end
end)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "8" then
local kg = Instance.new("Sound", game.Players.LocalPlayer)
kg.Volume = 2
kg.SoundId = "rbxassetid://3816362502"
kg:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Bone sword equipped";
    Text = "Canon sans";
    Duration = 1;
})
    local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SpawnBone", 
    [3] = false 
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
wait(0.2)
end
end)

if clothing == true then
game.Players.LocalPlayer.Character.Shirt.ShirtTemplate = "rbxassetid://6567366926"
game.Players.LocalPlayer.Character.Pants.PantsTemplate = "rbxassetid://6567558277"
game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://7430510303"
end

repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 200
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Low Stamina detected";
    Text = "Running phase 2";
    Duration = 1;
})
game.Players:Chat(("Welp. Time to get serious."))
wait(5)
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "DarkAuraEffect" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNDARKAURA"
weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "TransformationAura" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNDARKAURA"
weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
wait(0.1)
game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://6143854244"
end
end
wait(0.1)
	game.StarterGui:SetCore("SendNotification", {
		Title = "HM!Sans loaded";
		Text = "No cd sans modified by minty#6672";
		Duration = 8;
	})
end)

oldSansButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Sans'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
if erectorunlocked == 'true' then
end
end)

AsrielButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Asriel'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

friskButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Frisk'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

GTCharaButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Chara'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

undyneButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Undyne'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

bettyButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'Betty'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

gtFriskButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'GTFrisk'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

SSCharaButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'SFChara'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

CrossButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'XSans'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

UltraSansButton.MouseButton1Click:Connect(function()
gui.CharacterSelection.Character.Value = 'DeltaSans'
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
hideUI()
end)

-- custom buttons
if erectorButton then
erectorButton.MouseButton1Click:Connect(function()
playsound(3742185694,0.02)
end)
end

spectateButton.MouseButton1Click:Connect(function()
hideUI()
local ti = TweenInfo.new(
    0.95, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateChange, ti,{Position = UDim2.new(0.42,0,0.78,0)})
tween:Play()

local ti = TweenInfo.new(
    0.95, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateReturn, ti,{Position = UDim2.new(0.42,0,0.72,0)})
tween:Play()
end)

spectateReturn.MouseButton1Click:Connect(function()
showUI()
wait(0.2)

local ti = TweenInfo.new(
    0.95, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateChange, ti,{Position = UDim2.new(0.42,0,1.2,0)})
tween:Play()

local ti = TweenInfo.new(
    0.95, -- Time
    Enum.EasingStyle.Exponential, -- EasingStyle
    Enum.EasingDirection.InOut, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)
tween = TS:Create(spectateReturn, ti,{Position = UDim2.new(0.42,0,1.2,0)})
tween:Play()
end)

morphButton.MouseButton1Click:Connect(function()
if morphButton.Text == 'Morph Disabled' then
    morphButton.Text = 'Morph Enabled'
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "ChangeSetting",
        [3] = "MorphEnabled",
        [4] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
elseif morphButton.Text == 'Morph Enabled' then
    morphButton.Text = 'Morph Disabled'
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "ChangeSetting",
        [3] = "MorphEnabled",
        [4] = false
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

hideidentity = false 
hideNameButton.MouseButton1Click:Connect(function()
if hideNameButton.Text == 'Hidden Disabled' then
    hideNameButton.Text = 'Hidden Enabled'
    hideidentity = true
elseif hideNameButton.Text == 'Hidden Enabled' then
    hideNameButton.Text = 'Hidden Disabled'
    hideidentity = false
end
end)

spawn(function()
local textBox = settingsMusicButtonBox
local baseText = "rbxassetid://"
local colorInitialized = Color3.fromRGB(0,255,0)
textBox.ClearTextOnFocus = true
textBox.Text = ""
textBox.PlaceholderText = "ID Here"
local function onFocused()
	textBox.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
	        for _,v in pairs(player.MenuPlaylist:GetDescendants()) do
	            v:Destroy()
	        end
            wait(0.02)
	        playmusic(textBox.Text)
	        textBox.TextColor3 = colorInitialized
			textBox.PlaceholderText = "Music set!"
			textBox.Text = ''
			wait(1.5)
			textBox.PlaceholderText = ""
	else
		textBox.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
textBox.FocusLost:Connect(onFocusLost)
textBox.Focused:Connect(onFocused)
end)
wait()
spawn(function()
local textBox = importCustomButtonBox
local baseText = "rbxassetid://"
local colorInitialized = Color3.fromRGB(0,255,0)
textBox.ClearTextOnFocus = true
textBox.Text = ""
textBox.PlaceholderText = "Example"
local function onFocused()
	textBox.TextColor3 = Color3.fromRGB(255,255,255)
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
            importedCharName = textBox.Text
	        textBox.TextColor3 = colorInitialized
			textBox.PlaceholderText = "Set1"
			textBox.Text = ''
			wait(1.5)
			textBox.PlaceholderText = ""
	else
		textBox.TextColor3 = Color3.fromRGB(200,200,200)
	end
end
textBox.FocusLost:Connect(onFocusLost)
textBox.Focused:Connect(onFocused)
end)

-- extra config

function removekromer(val)
if not buycd then 
buycd = true
local ck = kromer
local dk = kromer - val
print(ck)
print(dk)
kromer = kromer - val
spawn(function()
playsound(3742185694,0)
end)
spawn(function()
kromerCount.Text = kromer..' KROMER'
local textcol = 0
repeat wait()
kromerCount.TextColor3 = Color3.fromRGB(textcol,255,textcol)
textcol = math.floor(textcol + 1)
kromerCount.TextColor3 = Color3.fromRGB(textcol,255,textcol)
until textcol >= 255
wait()
textcol = 0
end)
spawn(function()
repeat wait()
kromerCount.Text = ck..' KROMER'
if ck ~= dk + 1 then
ck = math.floor(ck - 5)
elseif ck == dk + 1 or ck == dk + 2 or ck == dk + 3 or ck == dk + 4 then
print("ODD = BAD")
ck = math.floor(ck - 1)
end
kromerCount.Text = ck..' KROMER'
until ck == dk
wait(0.04)
kromerCount.Text = kromer..' KROMER'
end)

wait(6)
buycd = false
end
end 

-- configuring buttons

function showDescription(name)
if name == 'Asriel' then
asrielCharDesc.TextTransparency = 0
asrielCharDescImage.Visible = true
elseif name == 'Frisk' then
friskCharDesc.TextTransparency = 0
friskCharDescImage.Visible = true
elseif name == 'Sans (Old)' then
oldSansCharDesc.TextTransparency = 0
oldSansCharDescImage.Visible = true
elseif name == 'GT Chara' then
gtCharaCharDesc.TextTransparency = 0
gtCharaCharDescImage.Visible = true
elseif name == 'Undyne' then
undyneCharDesc.TextTransparency = 0
undyneCharDescImage.Visible = true
elseif name == 'Bete Noire' then
bettyCharDesc.TextTransparency = 0
bettyCharDescImage.Visible = true
elseif name == 'GT Frisk' then
gtFriskCharDesc.TextTransparency = 0
gtFriskCharDescImage.Visible = true
elseif name == 'SS Chara' then
ssCharaCharDesc.TextTransparency = 0
ssCharaCharDescImage.Visible = true
elseif name == 'X-Chara' then
xCharaCharDesc.TextTransparency = 0
xCharaCharDescImage.Visible = true
elseif name == 'Kris' and inshop then
shopInfoText1.Text = [[--KRIS--
That one kid that confuses 
you a lot at the end 
of each chapter.
|400 KROMER|]]
elseif name == 'Spamton' and inshop then
shopInfoText1.Text = "--SPAMTON-- \nBig [[DEALS]], big [[KROMER]]!\n Double kromer gain\n from killing people.\n |690 KROMER|"
elseif name == 'Erector The Great!' and inshop then
shopInfoText1.Text = [[--ERECTOR--
The almighty one.
HOLY SHIT IS THAT SANS WITH A PENI-
|1000 KROMER|]]
end
end

local function hideDescription(name)
if name == 'Asriel' then
asrielCharDesc.TextTransparency = 1
asrielCharDescImage.Visible = false
elseif name == 'Frisk' then
friskCharDesc.TextTransparency = 1
friskCharDescImage.Visible = false
elseif name == 'Sans (Old)' then
oldSansCharDesc.TextTransparency = 1
oldSansCharDescImage.Visible = false
elseif name == 'GT Chara' then
gtCharaCharDesc.TextTransparency = 1
gtCharaCharDescImage.Visible = false
elseif name == 'Undyne' then
undyneCharDesc.TextTransparency = 1
undyneCharDescImage.Visible = false
elseif name == 'Bete Noire' then
bettyCharDesc.TextTransparency = 1
bettyCharDescImage.Visible = false
elseif name == 'GT Frisk' then
gtFriskCharDesc.TextTransparency = 1
gtFriskCharDescImage.Visible = false
elseif name == 'SS Chara' then
ssCharaCharDesc.TextTransparency = 1
ssCharaCharDescImage.Visible = false
elseif name == 'X-Chara' then
xCharaCharDesc.TextTransparency = 1
xCharaCharDescImage.Visible = false
elseif name == 'Kris' and inshop then
shopInfoText1.Text = [[Hover over someone
to see everything about 
their personal life!]]
elseif name == 'Spamton' and inshop then
shopInfoText1.Text = [[Hover over someone
to see everything about 
their personal life!]]
elseif name == 'Erector The Great!' and inshop then
shopInfoText1.Text = [[Hover over someone
to see everything about 
their personal life!]]
end
end

for _,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:GetDescendants()) do
if v.Name == 'TextButton' then
v.TextXAlignment = 'Left'

v.MouseEnter:Connect(function()
showDescription(v.Text)
local originalpos = v.Position
v.TextColor3 = Color3.fromRGB(255,255,0)
playsound(4547467536,0.9)
end)

v.MouseLeave:Connect(function()
hideDescription(v.Text)
if v.Text == 'Erector the great!' and inshop and erectorunlocked == 'true' then
v.TextColor3 = Color3.fromRGB(0,255,0)
else
v.TextColor3 = Color3.fromRGB(255,255,255)
end
end)

v.MouseButton1Click:Connect(function()
playsound(5350464575,0)
end)
end
end

-- making everything else work/patches/anticheat
spawn(function()
repeat wait() until gui.CharacterSelection.Character.Value ~= ''
print("Music fixed!")
spawn(function()
local x = player:WaitForChild('StarterPlaylist')
for _,c in pairs(x:GetChildren()) do
c.Looped = true
c:Play()
end

cheat1 = false
cheat2 = false
cheat3 = false
player = game.Players.LocalPlayer
mouse = player:GetMouse()
cheatKey1 = mouse.KeyDown:Connect(function(e)
if e == 'h' then
cheat1 = true
elseif e == 'e' then
cheat2 = true
elseif e == 'l' then
cheat3 = true
end
end)

cheatKey2 = mouse.KeyUp:Connect(function(e)
if e == 'h' then
cheat1 = false
elseif e == 'e' then
cheat2 = false
elseif e == 'l' then
cheat3 = false
end
end)

spawn(function()
repeat wait() until cheat1 == true and cheat2 == true and cheat3 == true
activateHell()
end)

end)

player.CharacterAdded:Connect(function(character)
    wait(5)
    repeat wait() until gui:FindFirstChild('CharacterSelection')
    print("found menu")
    gui.CharacterSelection.Enabled = false
    print("gone")
    gui.GameOver:Destroy()
    gui.SavePoint:Destroy()
    gui.UI:Destroy()
    gui.SansIndicator:Destroy()
    print("gone2")
    wait(0.1)
    showUI2()
    wait(0.5)
    playmusic(7844941430)
end)

spawn(function()
krGain = 5
wait(5)
print("Kromer Enabled!")
local locked = false
local player = game.Players.LocalPlayer
player:WaitForChild('Backpack'):WaitForChild('Main'):WaitForChild('LockOnScript').LockOn:GetPropertyChangedSignal("Value"):Connect(function()
local lcheck = player.Backpack.Main.LockOnScript.LockOn.Value
if not lcheck then locked = false print("kromer debug -2")
else 
locked = true
local lockv = player.Backpack.Main.LockOnScript.LockOn
lockv.Value.Humanoid.Died:Connect(function()
addkromer(krGain)
end)
end
end)
end)

spawn(function()
if hideidentity == true then
local player = game.Players.LocalPlayer
_G.hidechat = true
player.CharacterAdded:wait()
local char = player.Character

        local hb = char:WaitForChild('Head'):WaitForChild('HealthBar'):WaitForChild('Frame')
for _,v in pairs(hb:GetChildren()) do
    if not v:IsA('Script') then
v:Destroy()
end
end
   local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)

    end)
end
end)
end)

-- hell mode stuffs
function activateHell()
char = game.Players.LocalPlayer.Character
print("debug1")
wait(0.5)
hideUI()
print("debug2")
wait(0.5)
local hellText = Instance.new("TextLabel",krFrame)
hellText.Text = 'HELL MODE ENABLED'
hellText.Size = UDim2.new(1,0,1,0)
hellText.Position = UDim2.new(0,0,-0.5,0)
hellText.BackgroundTransparency = 1
hellText.Font = 'Arcade'
hellText.TextSize = 55
hellText.TextStrokeTransparency = 0
hellText.TextTransparency = 0
hellText.TextColor3 = Color3.fromRGB(125,0,0)
hellText.TextStrokeColor3 = Color3.fromRGB(255,0,0)
playsound(3742185694,0.05)

local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND  = "CantAttack"
CAS:BindActionAtPriority(
	FREEZE_COMMAND,
	function() 
		return Enum.ContextActionResult.Sink
	end,
	false,
	Enum.ContextActionPriority.High.Value,
	Enum.KeyCode.R,
	Enum.KeyCode.E
)
krGain = 1
char.StaminaRegen.Disabled = true
spawn(function()
char = game.Players.LocalPlayer.Character
if gui.CharacterSelection.Character.Value == 'Sans' or gui.CharacterSelection.Character.Value == 'SansBadTime' then
char.Head.ChildAdded:Connect(function(x)
if x.Name == 'DamageShower' and x.Gui.TextLabel.Text == "Miss" then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 20
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)
end
char.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer,
    [3] = {
        ["HitTime"] = 0.1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end)

end

spawn(function()
repeat wait() until gui.CharacterSelection.Character.Value == 'SansBadTime' or gui.CharacterSelection.Character.Value == 'DeltaSans' or gui.CharacterSelection.Character.Value == 'GTFrisk' or gui.CharacterSelection.Character.Value == 'SFChara'
activateHell()
end)
