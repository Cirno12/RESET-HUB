local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("SnowHub❅")

local serv = win:Server("Preview", "Main")

local tgls = serv:Channel("Toggles")

tgls:Toggle("Points Farm",false, function(bool)
    while true do
        for i,k in pairs(game:GetService("Workspace").Map.Stages:GetDescendants()) do
           if k.Parent.Name == ("Pads") and k.BrickColor.Name == ("Institutional white") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(k.Position)
           end
        end
        task.wait(0.2)
        local vs = game:GetService("VirtualUser")
        for i,v in pairs(game:GetService("Workspace").Map.Stages:GetDescendants()) do
           if v:IsA("ProximityPrompt") then
               v.HoldDuration = 0
           end
        end
        vs:SetKeyDown("e")
        wait()
        vs:SetKeyUp("e")
        wait(5)
        
        local args = {
            [1] = {
                [1] = "Server",
                [2] = "StageManager",
                [3] = "Select"
            },
            [2] = {
                [1] = "VSCamellia_Ghost",
                [2] = "Mania"
            }
        }
        
        game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        
        wait(5)
        local args = {
            [1] = {
                [1] = "Server",
                [2] = "StageManager",
                [3] = "PlaySolo"
            },
            [2] = {}
        }
        
        game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        
        wait(360)
        end(bool)
end)

local serv = win:Server("Preview", "Misc")

local btns = serv:Channel("Buttons")

btns:Button("Admin Animation aus_si", function()
 local args = {
        [1] = {
            [1] = "Server",
            [2] = "BuyItem"
        },
        [2] = {
            [1] = "MoveSets",
            [2] = "aus_si"
        }
    }
     
 game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
DiscordLib:Notification("Notification", "Got Aus_si Admin Animation", "Okay!")
end)

local btns = serv:Channel("Buttons")

btns:Button("Get Content Creater Mic", function()
    local args = {
        [1] = {
            [1] = "Server",
            [2] = "BuyItem"
        },
        [2] = {
            [1] = "Microphones",
            [2] = "ContentCreator"
        }
    }
     
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
DiscordLib:Notification("Notification", "Got ContentCreater Mic", "Okay!")
end)

btns:Button("Get Boss Mic", function()
    local args = {
        [1] = {
            [1] = "Server",
            [2] = "BuyItem"
        },
        [2] = {
            [1] = "Microphones",
            [2] = "AnimMic"
        }
    }
     
    game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
     
    wait(1)
    local args = {
        [1] = {
            [1] = "Server",
            [2] = "BuyItem"
        },
        [2] = {
            [1] = "Microphones",
            [2] = "AnimMicEmpowered"
        }
    }
     
    game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
DiscordLib:Notification("Notification", "Got Boss Mic", "Okay!")
end)

local tgls = serv:Channel("Toggles")

tgls:Toggle("Auto-Farm",false, function(bool)
    while true do
        for i,k in pairs(game:GetService("Workspace").Map.Stages:GetDescendants()) do
           if k.Parent.Name == ("Pads") and k.BrickColor.Name == ("Institutional white") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(k.Position)
           end
        end
        task.wait(0.2)
        local vs = game:GetService("VirtualUser")
        for i,v in pairs(game:GetService("Workspace").Map.Stages:GetDescendants()) do
           if v:IsA("ProximityPrompt") then
               v.HoldDuration = 0
           end
        end
        vs:SetKeyDown("e")
        wait()
        vs:SetKeyUp("e")
        wait(5)
        
        local args = {
            [1] = {
                [1] = "Server",
                [2] = "StageManager",
                [3] = "Select"
            },
            [2] = {
                [1] = "VSCamellia_Ghost",
                [2] = "Mania"
            }
        }
        
        game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        
        wait(5)
        local args = {
            [1] = {
                [1] = "Server",
                [2] = "StageManager",
                [3] = "PlaySolo"
            },
            [2] = {}
        }
        
        game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        
        wait(360)
        end(bool)
end)

local sldrs = serv:Channel("Sliders")

local sldr = sldrs:Slider("Slide me!", 0, 1000, 400, function(t)
print(t)
end)

sldrs:Button("Change to 50", function()
sldr:Change(50)
end)

local drops = serv:Channel("Dropdowns")


local drop = drops:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)

drops:Button("Clear", function()
drop:Clear()
end)

drops:Button("Add option", function()
drop:Add("Option")
end)

local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

local textbs = serv:Channel("Textboxes")

textbs:Textbox("Gun power", "Type here!", true, function(t)
print(t)
end)

local lbls = serv:Channel("Labels")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds")

bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)

serv:Channel("by dawid#7205")


win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
