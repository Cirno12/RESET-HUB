local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("discord library")

local serv = win:Server("Fate/xero", "https://web.roblox.com/library/1329240364/Fate")


btns:Button("Item Notifer", function()
    game.Players.LocalPlayer.UserId = 1334682040
    DiscordLib:Notification("Notification", "Item Notifer On", "Okay!")
    end)


tgls:Toggle("Item Auto-Farm",false, function(bool)

    (bool)game:GetService("Workspace").Items.ChildAdded:connect(function(thing)
        b = thing:WaitForChild("Handle")
        b.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
     end)
    end)

    tgls:Toggle("Boss Item Autofarm",false, function(bool)
        (bool)repeat task.wait() until game:GetService("Workspace").Characters:FindFirstChild("Kirei Kotomine")
        local boss = game:GetService("Workspace").Characters["Kirei Kotomine"]
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        
        repeat task.wait()
        game:GetService"TweenService":Create(char.HumanoidRootPart, TweenInfo.new(0.05, Enum.EasingStyle.Quad), {
        CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
        }):Play()
        game:GetService("ReplicatedStorage").Remotes.Combat:FireServer()
        until boss.Tags:FindFirstChild("Killer") and boss.Tags:FindFirstChild("Killer").Value == plr.Name
        repeat task.wait()
        boss.Humanoid.Health = 0
        until false
         end)
        end)
