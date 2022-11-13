loadstring(game:HttpGet('https://raw.githubusercontent.com/thevibish/EmoteSystem/main/Main.lua'))();

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false
ScreenGui.Name = "ABDSEFE"

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Frame.Position = UDim2.new(0, 0, 0.49730894, 0)
Frame.Size = UDim2.new(0, 230, 0, 750)
Frame.Style = Enum.FrameStyle.DropShadow

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(1.06521738, 0, -0.00266666664, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Load Emote List"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.49838537, 0)
ScrollingFrame.Size = UDim2.new(0, 231, 0, 740)
ScrollingFrame.CanvasPosition = Vector2.new(0, 3922)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 7, 0)
ScrollingFrame.ScrollBarThickness = 5


ScreenGui.Frame.TextButton.MouseButton1Up:Connect(function()
    local Emotes, EmoteChoices, RealNames = loadstring(game:HttpGet('https://raw.githubusercontent.com/finayv2/EmoteRBLX/main/Emotes.lua'))()
    ScreenGui.ScrollingFrame:ClearAllChildren()
    Instance.new("UIListLayout", ScrollingFrame)
    for i = 1,#EmoteChoices do
        local c = Instance.new("TextLabel")
        c.Size = UDim2.new(1, 0, 0, 40)
        c.Parent = ScreenGui.ScrollingFrame
        c.Text = EmoteChoices[i]
        c.BackgroundTransparency = 1
        c.TextColor3 = Color3.fromRGB(255,255,255)
    end
end)

local GUITOGGLE = game:GetService("Players").LocalPlayer.PlayerGui["ABDSEFE"]
local toggle = false function onKeyPress(actionName, userInputState, inputObject)
if userInputState == Enum.UserInputState.Begin then
if toggle == false then
toggle = true
GUITOGGLE.Enabled = true
else
toggle = false
GUITOGGLE.Enabled = false
end
end
end 
game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.RightShift)
