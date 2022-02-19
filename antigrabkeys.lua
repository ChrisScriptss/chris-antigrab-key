if not game:IsLoaded() then 
game.Loaded:Wait() 
end
    
repeat wait() until game:IsLoaded()
queue = "k"
game.StarterGui:SetCore("SendNotification", {
        Title = "Made By Chris";
        Text = "SirChris@6235"; 
        Duration = 5;
    })

_G.antigrab = true


--------------------------------------------------------------------------------------------------------


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
if key == queue then
DisableRobloxOnlyOutput = true
_G.antigrab = true
game.StarterGui:SetCore("SendNotification", {
        Title = "Activated";
        Text = "k to deactive"; 
        Duration = 5;
    })

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
if key == queue then
DisableRobloxOnlyOutput = true
wait(.8)
_G.antigrab = false
game.StarterGui:SetCore("SendNotification", {
        Title = "Deactivated";
        Text = "k to activate"; 
        Duration = 5;
    })

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end)




game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
    if v.Name:find("MoveStart") and _G.antigrab == true then
        v:Destroy()
    if game.PlaceId == 536102540 then
    local args = {
		[1] = workspace.FriendlyNPCs:FindFirstChild("Hair Stylist")
	}

	game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(unpack(args))
	
	wait(.3)
	local args = {
		[1] = {
			[1] = "Yes"
		}
	}

	game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
	wait(.3)
	

	local args = {
		[1] = "woah"
	}

	game:GetService("Players").LocalPlayer.Backpack.HairScript.RemoteEvent:FireServer(unpack(args))
end
local args = {
		[1] = workspace.FriendlyNPCs:FindFirstChild("FINISH")
	}

	game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(unpack(args))
	
	wait(.3)
	local args = {
		[1] = {
			[1] = "woah"
		}
	}
game:GetService("Players").LocalPlayer.Backpack.HairScript.RemoteEvent:FireServer(unpack(args))

    end
end
end)
end;
end)
   