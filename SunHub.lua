local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SubHub | Blox Fruit", HidePremium = false, SaveConfig = true, ConfigFolder = "SubHub"})

--Values
_G.AutoFarm
_G.SelectWeapon

--Function Haki Buso
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
--Funtion WeaponList
WeaponList = {}
    
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(WeaponList ,v.Name)
    end
end


--Tabs
local FarmTab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Dropdown
FarmTab:AddDropdown({
	Name = "Select Weapon",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		_G.SelectWeapon = value
	end    
})
--Toogle
FarmTab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})