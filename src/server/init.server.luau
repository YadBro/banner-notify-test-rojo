local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BannerNotify = require(ReplicatedStorage.Packages["banner-notify"])

BannerNotify:InitServer()

local debounce = false
game.Workspace.TouchMe.Touched:Connect(function (otherPart)
	if not debounce then
		debounce = true
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)

		if player then
			BannerNotify:Notify({
				duration = 3,
				header = "Example In Server",
				icon = "rbxassetid://11326670020",
				message = "Example Banner Notify In Server",
				player = player,
			})

			BannerNotify:Notify({
				duration = 3,
				header = "Example In Server With Configs",
				icon = "rbxassetid://11326670020",
				message = "Example Banner Notify In Server With Configs",
				configs = {0.8, Color3.fromRGB(255, 0, 0), 0, Color3.fromRGB(15, 0, 222)},
				player = player,
			})

		end

		task.wait(6)
		debounce = false
	end
end)