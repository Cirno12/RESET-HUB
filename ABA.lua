
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("SnowHub")

local serv = win:Server("ABA", "")


local Main = serv:Channel("Main")

local Misc = serv:Channel("Misc/Characters")


local drop = Misc:Dropdown("Characters",{"Luffy [Pre-Timeskip]","Sanji [Pre-Timeskip]","Ace","Zoro [Timeskip]","Sanji [Timeskip]","GOD Usopp","Akainu","Kizaru","Usopp","Enel","Whitebeard","Shanks","Zoro [Pre-Timeskip]","Trafalgar Law","Luffy [Timeskip]","Crocodile","Sasuke","Rock Lee","Kakashi","Neji","Zabuza","Gaara","Sasuke [Shippuden]","Itachi","Might Guy","Nagato","Pain","Tenten","Minato [4th Hokage]","Edo Madara","Naruto [Shippuden]","Naruto","Rukia","Byakuya","Shinji","Shunsui","Grimmjow","Gin","Ichigo [Hollow Mask]","Toshiro","Ulquiorra","Coyote Starrk","Aizen","Yoruichi","Ulquiorra2","Kisuke","Yamamoto","Ichigo","Deku","Todoroki","Bakugou","All Might"}, function(bool)

   local AnimeCharacter = (bool)
   
   --//⚠️DO NOT TOUCH ANYTHING BELOW THIS LINE UNLESS U KNOW WHAT U ARE DOING⚠️\\
   local Player = game.Players.LocalPlayer
   local Args = {AnimeCharacter, "Close", "PLAY"}
   Player.Character:WaitForChild("Head"):Destroy()
   Player.PlayerGui:WaitForChild("Respawning"):Destroy()
   wait(7)
   Player.Backpack.ServerTraits.Respawn:FireServer()
   for i = 1, #Args do
      Player.Backpack.ServerTraits.Choose:FireServer(Args[i])
   end
   Player.Backpack.ServerTraits.Input:FireServer("charclose")
end)


local sldr = Misc:Slider("Stress Mode", 0, 100, 50, function(t)
    while true do --loop
        wait()--So it dosent fuck itself over
     local me = game.Players.LocalPlayer.Character.Humanoid--locals
     local lp = game.Players.LocalPlayer--locals
     if lp.PlayerGui.HUD.Ultimate.ulti.visible == true then --CHECK 1: checks if awaken is ready
     if me.Health < (t) then --CHECK 2: checks if health is below 30 can be changed
     -- below will run a script that will activate an awaken
     local args = {
        [1] = "g"
     }
     
     game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer(unpack(args))
     end
     end
     end
    end)

    tgls:Toggle("Itadori AUto Black Flash",false, function(bool)
     (bool)local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Two then
        wait(0.6)
        mouse1click()
    else
        return;
    end
end)
        end)
