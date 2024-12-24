
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Luxware-UI-Library/main/Source.lua"))()

-- Create Window
local lib = Library.CreateWindow("Xotux", 6105620301)

-- Create Tabs
local tab1 = lib:Tab("GUIS", 6087485864)
local tab2 = lib:Tab("tab2")



-- Create tab1 Section
local section1 = tab1:Section("Fisch Exploit Guis")
section1:Button("Open Average Hub", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/AverageHub/1980eccce4133d77fb24d166dc296125/raw/2d9c88acc21a302d92aed0e8b6f0dcd287c8b96b/gistfile1.txt"))()
end)
section1:Button("Open Switch Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/refs/heads/main/Fisch.lua"))()
end)

local section1 = tab1:Section("Universal Exploit Guis")
section1:Button("Open Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
section1:Button("Open Dex Explorer", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

--section1:Label("Welcome to Wisteria GUI")

local Examples = lib:Tab("Examples")

local ff = Examples:Section("All Examples")

ff:Label("Welcome to Wisteria GUI")
ff:Button("TextButton Text", function()
    print("Clicked!")
end)
ff:Toggle("Toggle Me!", function(isToggled)
    print(isToggled) -- prints true or false
end)
ff:KeyBind("Print('Hey') on bind", Enum.KeyCode.R, function() --Enum.KeyCode.R is starting Key
    print('Hey')
end)
ff:TextBox("TextBox Info", "Epic PlaceHolder", function(getText)
    print(getText) -- Prints whatever player types
end)
ff:Slider("WalkSpeed", 16, 503, function(currentValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentValue 
end)
ff:DropDown("Favorite Food?", {"Pizza", "Burger", "Sandwiches"}, function(food) -- food is chosen item
    print(food)
end)
