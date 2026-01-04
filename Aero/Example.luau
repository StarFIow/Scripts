-- loader
local Aero = loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/refs/heads/main/Aero/Loader.luau"))()

-- window title
Aero:SetTitle("Example Hub")

-- tab
Aero:CreateTab("Main")

-- section (1 is tab, 2 is text)
Aero:CreateSection("Main", "Examples") 

-- button (1 is tab, 2 is text)
Aero:CreateButton("Main", "Example Button", function()
    print("Button clicked")
end)

-- toggle (1 is tab, 2 is text)
Aero:CreateToggle("Main", "Example Toggle", function(enabled)
    if enabled then
        print("Toggle enabled")
    else
        print("Toggle disabled")
    end
end)