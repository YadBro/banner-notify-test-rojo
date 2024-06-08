local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BannerNotify = require(ReplicatedStorage.Packages["banner-notify"])

BannerNotify:InitClient()

local PlayerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui");
local ScreenGui = PlayerGui:WaitForChild("ScreenGui");
local TextButton = ScreenGui:FindFirstChild("TextButton");


if TextButton then
	TextButton.MouseButton1Click:Connect(function()
        BannerNotify:Notify({
            duration= 1,
            header= "Example",
            icon= "rbxassetid://11326670020",
            message= "Example Banner Notify",
        });
    
        BannerNotify:Notify({
            duration= 3,
            header= "Example Configs",
            icon= "rbxassetid://11326670020",
            message= "Example Banner Notify With Configs",
            configs= {0.8, Color3.fromRGB(0, 237, 79), 0, Color3.fromRGB(0, 0, 0)},
        });
    end)
end