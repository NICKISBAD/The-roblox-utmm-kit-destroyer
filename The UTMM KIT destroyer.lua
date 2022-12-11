local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Invisible = Instance.new("TextButton")
local Refresh = Instance.new("TextButton")
local Weapons = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Folder = Instance.new("Folder")
local AWeaponFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local WeaponName = Instance.new("TextLabel")
local WeaponDamage = Instance.new("TextLabel")
local EquipButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local InputBox = Instance.new("TextBox")
local visibleButton = Instance.new("TextButton")

local LocalPlayer = game.Players.LocalPlayer or game.Players:FindFirstChild(game.Players.LocalPlayer.Name)

if LocalPlayer.UserId == 301617547 or LocalPlayer.UserId == 714670511 or LocalPlayer.UserId == 1574854667 or LocalPlayer.UserId == 2325738495 or LocalPlayer.UserId == 61700698 or LocalPlayer.UserId == 1042373472 or LocalPlayer.UserId == 1060156758 then

	LocalPlayer:Kick("WHY DO YOU EXPLOIT?")

end

local CanRefresh = true

ScreenGui.Name = "The Script"
ScreenGui.Parent = game.CoreGui
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(39, 1, 127)
Frame.BorderColor3 = Color3.fromRGB(128, 0, 255)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.518846035, 0, 0.173758492, 0)
Frame.Size = UDim2.new(0, 523, 0, 508)
Frame.Active = true
Frame.Draggable = true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 128, 0, 50)
Title.Font = Enum.Font.Arcade
Title.Text = "Nick's UTMM GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.904397726, 0, 0, 0)
Close.Size = UDim2.new(0, 50, 0, 50)
Close.Font = Enum.Font.Arcade
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()

	ScreenGui:Destroy()

end)

Invisible.Name = "Invisible"
Invisible.Parent = Frame
Invisible.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Invisible.BackgroundTransparency = 1.000
Invisible.Position = UDim2.new(0.824091792, 0, 0, 0)
Invisible.Size = UDim2.new(0, 50, 0, 50)
Invisible.Font = Enum.Font.Arcade
Invisible.Text = "-"
Invisible.TextColor3 = Color3.fromRGB(255, 0, 0)
Invisible.TextScaled = true
Invisible.TextSize = 14.000
Invisible.TextWrapped = true
Invisible.MouseButton1Click:Connect(function()

	Frame.Visible = false

	visibleButton.Visible = true

end)

Refresh.Name = "Nothing"
Refresh.Parent = Frame
Refresh.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Refresh.BorderColor3 = Color3.fromRGB(255, 255, 255)
Refresh.Position = UDim2.new(0.573613763, 0, 0.0118110236, 0)
Refresh.Size = UDim2.new(0, 150, 0, 38)
Refresh.Font = Enum.Font.Arcade
Refresh.Text = "GOD MODE"
Refresh.TextColor3 = Color3.fromRGB(255, 255, 255)
Refresh.TextScaled = true
Refresh.TextSize = 14.000
Refresh.TextWrapped = true
Refresh.MouseButton1Click:Connect(function()
game:GetService("Players").LocalPlayer.PlayerGui.Handler.Disabled=true
game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(c)
wait()
if c.Name=="Handler" then
c.Disabled = true
end
end)

	--for i, v in ipairs(Weapons:GetChildren()) do

		--if v.ClassName ~= "UIGridLayout" and v.Name ~= nil then

			--local damage = game:GetService("Lighting").Weapons:FindFirstChild(v.Name):FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("Damage").Value + (game:GetService("Lighting").Weapons:FindFirstChild(v.Name):FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("DamageModify").Value * (LocalPlayer.LOVE.Value - 1))
			--local damageboost = math.floor(damage * game:GetService("Lighting").Weapons:FindFirstChild(v.Name):FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("DamageIncrease").Value)
			--local tooldamage = damage + damageboost

			--v.WeaponDamage.Text = "Damage: "..tooldamage

			--wait()

		--end

	--end

end)

Weapons.Name = "Weapons"
Weapons.Parent = Frame
Weapons.Active = true
Weapons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Weapons.BackgroundTransparency = 1.000
Weapons.Position = UDim2.new(0, 0, 0.0984251946, 0)
Weapons.Size = UDim2.new(0, 523, 0, 458)
Weapons.CanvasSize = UDim2.new(0, 0, 1, 0)
Weapons.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIGridLayout.Parent = Weapons
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0.975000024, 0, 0, 100)

Folder.Parent = game:GetService("Lighting"):FindFirstChild("Weapons")

AWeaponFrame.Name = "AWeaponFrame"
AWeaponFrame.Parent = Folder
AWeaponFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AWeaponFrame.Position = UDim2.new(0, 0, 0.0118110226, 0)
AWeaponFrame.Size = UDim2.new(0, 100, 0, 100)

UICorner.CornerRadius = UDim.new(0, 25)
UICorner.Parent = AWeaponFrame

ImageLabel.Parent = AWeaponFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0411825255, 0, 0.0199999996, 0)
ImageLabel.Size = UDim2.new(0, 95, 0, 95)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

WeaponName.Name = "WeaponName"
WeaponName.Parent = AWeaponFrame
WeaponName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WeaponName.BackgroundTransparency = 1.000
WeaponName.Position = UDim2.new(0.247095138, 0, 0.0199999996, 0)
WeaponName.Size = UDim2.new(0, 362, 0, 50)
WeaponName.Font = Enum.Font.Arcade
WeaponName.Text = "WEAPON NAME"
WeaponName.TextColor3 = Color3.fromRGB(255, 255, 255)
WeaponName.TextScaled = true
WeaponName.TextSize = 14.000
WeaponName.TextWrapped = true
WeaponName.TextXAlignment = Enum.TextXAlignment.Left

WeaponDamage.Name = "WeaponDamage"
WeaponDamage.Parent = AWeaponFrame
WeaponDamage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WeaponDamage.BackgroundTransparency = 1.000
WeaponDamage.Position = UDim2.new(0.247095138, 0, 0.610000014, 0)
WeaponDamage.Size = UDim2.new(0, 184, 0, 36)
WeaponDamage.Font = Enum.Font.Arcade
WeaponDamage.Text = "DAMAGE:"
WeaponDamage.TextColor3 = Color3.fromRGB(255, 255, 255)
WeaponDamage.TextScaled = true
WeaponDamage.TextSize = 14.000
WeaponDamage.TextWrapped = true
WeaponDamage.TextXAlignment = Enum.TextXAlignment.Left

EquipButton.Name = "EquipButton"
EquipButton.Parent = AWeaponFrame
EquipButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EquipButton.Position = UDim2.new(0.684414327, 0, 0.610000014, 0)
EquipButton.Size = UDim2.new(0, 124, 0, 34)
EquipButton.Font = Enum.Font.Arcade
EquipButton.Text = "Equip"
EquipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EquipButton.TextScaled = true
EquipButton.TextSize = 14.000
EquipButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = EquipButton

InputBox.Name = "InputBox"
InputBox.Parent = Frame
InputBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InputBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Position = UDim2.new(0.258126199, 0, 0.0118110236, 0)
InputBox.Size = UDim2.new(0, 150, 0, 38)
InputBox.Font = Enum.Font.Arcade
InputBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputBox.PlaceholderText = "Search"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextScaled = true
InputBox.TextSize = 14.000
InputBox.TextWrapped = true
InputBox.Changed:Connect(function()

	if InputBox.Text ~= "" then

		local String = InputBox.Text

		for i, v in ipairs(Weapons:GetChildren()) do

			if v ~= nil and v.ClassName ~= "UIGridLayout" then

				local wN = v.WeaponName

				if string.find(wN.Text, String) then

					v.Visible = true

				else

					v.Visible = false

				end

			end

		end

	else

		for i, v in ipairs(Weapons:GetChildren()) do

			if v ~= nil and v.ClassName ~= "UIGridLayout" then

				if v.Visible == false then

					v.Visible = true

				end

			end

		end

	end

end)

visibleButton.Name = "visibleButton"
visibleButton.Parent = ScreenGui
visibleButton.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
visibleButton.BorderSizePixel = 0
visibleButton.Position = UDim2.new(0.246805117, 0, 0.642547011, 0)
visibleButton.Size = UDim2.new(0, 50, 0, 50)
visibleButton.Visible = false
visibleButton.Font = Enum.Font.Arcade
visibleButton.Text = "Visible"
visibleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
visibleButton.TextScaled = true
visibleButton.TextSize = 14.000
visibleButton.TextWrapped = true
visibleButton.Active = true
visibleButton.Draggable = true
visibleButton.MouseButton1Click:Connect(function()

	visibleButton.Visible = false

	Frame.Visible = true

end)

for i, v in ipairs(game:GetService("Lighting"):FindFirstChild("Weapons"):GetChildren()) do

	local damage = v:FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("Damage").Value + (v:FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("DamageModify").Value * (LocalPlayer.LOVE.Value - 1))
	local damageboost = math.floor(damage * v:FindFirstChild("Tool"):FindFirstChild("AttackTool"):FindFirstChild("DamageIncrease").Value)
	local tooldamage = damage + damageboost

	local NewFrame = AWeaponFrame:Clone()
	NewFrame.Name = v.Name
	NewFrame.WeaponName.Text = v:FindFirstChild("WeaponName").Value
	NewFrame.WeaponDamage.Text = "Damage: "..tooldamage
	NewFrame.ImageLabel.Image = v:FindFirstChild("Tool"):FindFirstChild("AttackTool").TextureId
	NewFrame.Parent = Weapons
	NewFrame.EquipButton.MouseButton1Click:Connect(function()

		local args = {

			[1] = game:GetService("Lighting").Weapons:FindFirstChild(NewFrame.Name)

		}

		game:GetService("Lighting").EquipSkin:FireServer(unpack(args))

	end)

	wait()

end

Folder:Destroy()

game.StarterGui:SetCore("SendNotification", {

	Title = "Loaded",

	Text = "Loaded successfully!"

})