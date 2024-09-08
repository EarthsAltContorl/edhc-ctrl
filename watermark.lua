-- Create the ScreenGui
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

-- Set the ScreenGui's parent to CoreGui so it appears on the player's screen
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "BlackScreenWithEarthDHC"

-- Set up the Frame to cover the whole screen with a black background
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Full black background
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)

-- Set up the TextLabel to display "Earth DHC"
TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1  -- No background for the text
TextLabel.Position = UDim2.new(0.5, -100, 0.5, -25)  -- Center the text
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Earth DHC"  -- The text to display
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
TextLabel.TextSize = 30  -- Set text size
TextLabel.TextScaled = true  -- Scale text to fit
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
