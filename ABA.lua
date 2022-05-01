
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("SnowHub")

local serv = win:Server("Preview", "ABA")

serv:Channel("Main")

local drop = drops:Dropdown("Characters",{"Luffy [Pre-Timeskip]","Sanji [Pre-Timeskip]","Ace","Zoro [Timeskip]","Sanji [Timeskip]","GOD Usopp","Akainu","Kizaru","Usopp","Enel","Whitebeard","Shanks","Zoro [Pre-Timeskip]","Trafalgar Law","Luffy [Timeskip]","Crocodile","Sasuke","Rock Lee","Kakashi","Neji","Zabuza","Gaara","Sasuke [Shippuden]","Itachi","Might Guy","Nagato","Pain","Tenten","Minato [4th Hokage]","Edo Madara","Naruto [Shippuden]","Naruto","Rukia","Byakuya","Shinji","Shunsui","Grimmjow","Gin","Ichigo [Hollow Mask]","Toshiro","Ulquiorra","Coyote Starrk","Aizen","Yoruichi","Ulquiorra2","Kisuke","Yamamoto","Ichigo","Deku","Todoroki","Bakugou","All Might","Option 5","Option 5","Option 5","Option 5","Option 5","Option 5","Option 5","Option 5","Option 5","Option 5"}, function(bool)

   win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
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

serv:Channel("by dawid#7205")
