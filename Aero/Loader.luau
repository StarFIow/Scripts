local UI = {}

local AeroLib = {}

function AeroLib:Init()
    self.Components = UI
    self.Tabs = {}
    self.CurrentTab = nil
    self.IsMainVisible = true
    
    UI["ScreenGui_1"] = Instance.new("ScreenGui")
    UI["ScreenGui_1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    UI["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    UI["Show_2"] = Instance.new("Frame", UI["ScreenGui_1"])
    UI["Show_2"].BorderSizePixel = 0
    UI["Show_2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Show_2"].Size = UDim2.new(0.21409, 0, 0.12449, 0)
    UI["Show_2"].Position = UDim2.new(0.38729, 0, -0.13015, 0)
    UI["Show_2"].Name = "Show"
    UI["Show_2"].BackgroundTransparency = 0.6
    
    local UICorner = Instance.new("UICorner", UI["Show_2"])
    UICorner.CornerRadius = UDim.new(0, 999)
    
    UI["Logo_4"] = Instance.new("ImageLabel", UI["Show_2"])
    UI["Logo_4"].ZIndex = 2
    UI["Logo_4"].BorderSizePixel = 0
    UI["Logo_4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Logo_4"].Image = "rbxassetid://122618864500181"
    UI["Logo_4"].Size = UDim2.new(0.20225, 0, 0.81818, 0)
    UI["Logo_4"].BackgroundTransparency = 1
    UI["Logo_4"].Name = "Logo"
    UI["Logo_4"].Position = UDim2.new(0.04494, 0, 0.09091, 0)
    
    local UICorner2 = Instance.new("UICorner", UI["Logo_4"])
    UICorner2.CornerRadius = UDim.new(0, 999)
    
    UI["ShowButton"] = Instance.new("TextButton", UI["Show_2"])
    UI["ShowButton"].TextWrapped = true
    UI["ShowButton"].BorderSizePixel = 0
    UI["ShowButton"].TextSize = 18
    UI["ShowButton"].TextXAlignment = Enum.TextXAlignment.Right
    UI["ShowButton"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["ShowButton"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["ShowButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
    UI["ShowButton"].BackgroundTransparency = 0.6
    UI["ShowButton"].Size = UDim2.new(0.70787, 0, 0.81818, 0)
    UI["ShowButton"].Text = "Aero library"
    UI["ShowButton"].Position = UDim2.new(0.03371, 0, 0.09091, 0)
    
    local UICorner3 = Instance.new("UICorner", UI["ShowButton"])
    UICorner3.CornerRadius = UDim.new(0, 99)
    
    UI["Frame_8"] = Instance.new("Frame", UI["Show_2"])
    UI["Frame_8"].BorderSizePixel = 0
    UI["Frame_8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Frame_8"].Size = UDim2.new(0.01124, 0, 1, 0)
    UI["Frame_8"].Position = UDim2.new(0.75281, 0, 0, 0)
    UI["Frame_8"].BackgroundTransparency = 0.6
    
    UI["Icon_9"] = Instance.new("ImageLabel", UI["Show_2"])
    UI["Icon_9"].BorderSizePixel = 0
    UI["Icon_9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Icon_9"].Image = "rbxassetid://84885202358295"
    UI["Icon_9"].Size = UDim2.new(0.20225, 0, 0.81818, 0)
    UI["Icon_9"].BackgroundTransparency = 0.6
    UI["Icon_9"].Name = "Icon"
    UI["Icon_9"].Position = UDim2.new(0.77528, 0, 0.09091, 0)
    
    local UICorner4 = Instance.new("UICorner", UI["Icon_9"])
    UICorner4.CornerRadius = UDim.new(0, 999)
    
    UI["Aero_b"] = Instance.new("Frame", UI["ScreenGui_1"])
    UI["Aero_b"].BorderSizePixel = 0
    UI["Aero_b"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Aero_b"].Size = UDim2.new(0.67835, 0, 0.88844, 0)
    UI["Aero_b"].Position = UDim2.new(0.16357, 0, 0.00566, 0)
    UI["Aero_b"].Name = "Aero"
    UI["Aero_b"].BackgroundTransparency = 0.3
    
    UI["Close_c"] = Instance.new("TextButton", UI["Aero_b"])
    UI["Close_c"].TextWrapped = true
    UI["Close_c"].BorderSizePixel = 0
    UI["Close_c"].TextSize = 16
    UI["Close_c"].TextScaled = true
    UI["Close_c"].TextColor3 = Color3.fromRGB(255, 0, 0)
    UI["Close_c"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Close_c"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Close_c"].BackgroundTransparency = 0.6
    UI["Close_c"].Size = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Close_c"].Text = "×"
    UI["Close_c"].Name = "Close"
    UI["Close_c"].Position = UDim2.new(0.93972, 0, 0.01274, 0)
    
    Instance.new("UICorner", UI["Close_c"])
    
    Instance.new("UICorner", UI["Aero_b"])
    
    UI["Hide_f"] = Instance.new("TextButton", UI["Aero_b"])
    UI["Hide_f"].TextWrapped = true
    UI["Hide_f"].BorderSizePixel = 0
    UI["Hide_f"].TextSize = 16
    UI["Hide_f"].TextScaled = true
    UI["Hide_f"].TextColor3 = Color3.fromRGB(255, 255, 255)
    UI["Hide_f"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Hide_f"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Hide_f"].BackgroundTransparency = 0.6
    UI["Hide_f"].Size = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Hide_f"].Text = "-"
    UI["Hide_f"].Name = "Hide"
    UI["Hide_f"].Position = UDim2.new(0.87943, 0, 0.01274, 0)
    
    Instance.new("UICorner", UI["Hide_f"])
    
    UI["Title_11"] = Instance.new("TextLabel", UI["Aero_b"])
    UI["Title_11"].TextWrapped = true
    UI["Title_11"].BorderSizePixel = 0
    UI["Title_11"].TextSize = 18
    UI["Title_11"].TextXAlignment = Enum.TextXAlignment.Left
    UI["Title_11"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Title_11"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Title_11"].TextColor3 = Color3.fromRGB(255, 255, 255)
    UI["Title_11"].BackgroundTransparency = 0.6
    UI["Title_11"].Size = UDim2.new(0.80851, 0, 0.09554, 0)
    UI["Title_11"].Text = "Unnamed"
    UI["Title_11"].Name = "Title"
    UI["Title_11"].Position = UDim2.new(0.06383, 0, 0.01274, 0)
    
    Instance.new("UICorner", UI["Title_11"])
    
    UI["PFP_13"] = Instance.new("ImageLabel", UI["Aero_b"])
    UI["PFP_13"].BorderSizePixel = 0
    UI["PFP_13"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["PFP_13"].Size = UDim2.new(0.06028, 0, 0.10828, 0)
    UI["PFP_13"].BackgroundTransparency = 0.6
    UI["PFP_13"].Name = "PFP"
    UI["PFP_13"].Position = UDim2.new(0.93262, 0, 0.12102, 0)
    
    local script = Instance.new("LocalScript", UI["PFP_13"])
    script.Name = "LocalScript_14"
    script.Source = [[
        local ImageLabel = script.Parent
        local player = game.Players.LocalPlayer
        ImageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
    ]]
    
    Instance.new("UICorner", UI["PFP_13"])
    
    UI["Tabs_16"] = Instance.new("ScrollingFrame", UI["Aero_b"])
    UI["Tabs_16"].ScrollingDirection = Enum.ScrollingDirection.X
    UI["Tabs_16"].BorderSizePixel = 0
    UI["Tabs_16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI["Tabs_16"].Name = "Tabs"
    UI["Tabs_16"].AutomaticCanvasSize = Enum.AutomaticSize.X
    UI["Tabs_16"].Size = UDim2.new(0.91844, 0, 0.10828, 0)
    UI["Tabs_16"].Position = UDim2.new(0.00709, 0, 0.12102, 0)
    UI["Tabs_16"].BackgroundTransparency = 1
    
    UI["UIListLayout_1a"] = Instance.new("UIListLayout", UI["Tabs_16"])
    UI["UIListLayout_1a"].HorizontalFlex = Enum.UIFlexAlignment.Fill
    UI["UIListLayout_1a"].Padding = UDim.new(0, 4)
    UI["UIListLayout_1a"].FillDirection = Enum.FillDirection.Horizontal
    
    Instance.new("UICorner", UI["Tabs_16"])
    
    UI["Logo_1d"] = Instance.new("ImageLabel", UI["Aero_b"])
    UI["Logo_1d"].BorderSizePixel = 0
    UI["Logo_1d"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Logo_1d"].Image = "rbxassetid://122618864500181"
    UI["Logo_1d"].Size = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Logo_1d"].BackgroundTransparency = 0.6
    UI["Logo_1d"].Name = "Logo"
    UI["Logo_1d"].Position = UDim2.new(0.00709, 0, 0.01274, 0)
    
    Instance.new("UICorner", UI["Logo_1d"])
    
    UI["Frame_1f"] = Instance.new("Frame", UI["Aero_b"])
    UI["Frame_1f"].BorderSizePixel = 0
    UI["Frame_1f"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI["Frame_1f"].Size = UDim2.new(0.98582, 0, 0.74522, 0)
    UI["Frame_1f"].Position = UDim2.new(0.00709, 0, 0.24204, 0)
    UI["Frame_1f"].BackgroundTransparency = 0.6
    
    Instance.new("UICorner", UI["Frame_1f"])
    
    UI["Content_21"] = Instance.new("ScrollingFrame", UI["Aero_b"])
    UI["Content_21"].ScrollingDirection = Enum.ScrollingDirection.Y
    UI["Content_21"].BorderSizePixel = 0
    UI["Content_21"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI["Content_21"].Name = "Content"
    UI["Content_21"].AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI["Content_21"].Size = UDim2.new(0.97518, 0, 0.72611, 0)
    UI["Content_21"].Position = UDim2.new(0.01418, 0, 0.26115, 0)
    UI["Content_21"].BackgroundTransparency = 1
    
    UI["UIListLayout_25"] = Instance.new("UIListLayout", UI["Content_21"])
    UI["UIListLayout_25"].Wraps = true
    UI["UIListLayout_25"].Padding = UDim.new(0, 4)
    
    Instance.new("UICorner", UI["Content_21"])
    
    self:SetupEvents()
    UI["Show_2"].Visible = false
    
    self:CreateTab("Main", 1)
    
    return self
end

function AeroLib:SetupEvents()
    local dragging, dragInput, dragStart, startPos
    local frame = UI["Aero_b"]
    
    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    local showDragging, showDragInput, showDragStart, showStartPos
    local showFrame = UI["Show_2"]
    
    local function showUpdate(input)
        local delta = input.Position - showDragStart
        showFrame.Position = UDim2.new(showStartPos.X.Scale, showStartPos.X.Offset + delta.X, showStartPos.Y.Scale, showStartPos.Y.Offset + delta.Y)
    end
    
    showFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            showDragging = true
            showDragStart = input.Position
            showStartPos = showFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    showDragging = false
                end
            end)
        end
    end)
    
    showFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            showDragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == showDragInput and showDragging then
            showUpdate(input)
        end
    end)
    
    UI["Close_c"].MouseButton1Click:Connect(function()
        UI["ScreenGui_1"]:Destroy()
    end)
    
    UI["Hide_f"].MouseButton1Click:Connect(function()
        self.IsMainVisible = false
        UI["Aero_b"].Visible = false
        UI["Show_2"].Visible = true
        
        local tween = game:GetService("TweenService"):Create(UI["Show_2"], TweenInfo.new(0.3), {Position = UDim2.new(0.38729, 0, 0.015, 0)})
        tween:Play()
    end)
    
    UI["ShowButton"].MouseButton1Click:Connect(function()
        self.IsMainVisible = true
        UI["Show_2"].Visible = false
        UI["Aero_b"].Visible = true
    end)
end

function AeroLib:CreateTab(name, order)
    local tabId = #self.Tabs + 1
    local tabFrame = Instance.new("TextButton")
    tabFrame.TextWrapped = true
    tabFrame.BorderSizePixel = 0
    tabFrame.TextSize = 16
    tabFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    tabFrame.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    tabFrame.BackgroundTransparency = 0.6
    tabFrame.Size = UDim2.new(0, 110, 0, 34)
    tabFrame.Text = name
    tabFrame.Name = "Tab_" .. tabId
    tabFrame.Parent = UI["Tabs_16"]
    
    Instance.new("UICorner", tabFrame)
    
    self.Tabs[tabId] = {
        Name = name,
        Order = order,
        Frame = tabFrame,
        Content = {}
    }
    
    if #self.Tabs == 1 then
        self:SwitchTab(tabId)
        tabFrame.BackgroundTransparency = 0.3
    end
    
    tabFrame.MouseButton1Click:Connect(function()
        self:SwitchTab(tabId)
    end)
    
    return tabId
end

function AeroLib:SwitchTab(tabId)
    for id, tab in pairs(self.Tabs) do
        if id == tabId then
            tab.Frame.BackgroundTransparency = 0.3
            self.CurrentTab = tabId
        else
            tab.Frame.BackgroundTransparency = 0.6
        end
    end
    
    self:UpdateContent()
end

function AeroLib:UpdateContent()
    if not self.CurrentTab then return end
    
    for _, child in pairs(UI["Content_21"]:GetChildren()) do
        if child:IsA("Frame") or child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    local tabContent = self.Tabs[self.CurrentTab].Content
    table.sort(tabContent, function(a, b) return a.Order < b.Order end)
    
    for _, item in pairs(tabContent) do
        if item.Type == "Button" then
            local btn = Instance.new("TextButton", UI["Content_21"])
            btn.TextWrapped = true
            btn.BorderSizePixel = 0
            btn.TextXAlignment = Enum.TextXAlignment.Left
            btn.TextSize = 18
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            btn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
            btn.BackgroundTransparency = 0.6
            btn.Size = UDim2.new(0, 546, 0, 34)
            btn.Text = item.Text
            btn.Name = item.Name
            
            Instance.new("UICorner", btn)
            
            btn.MouseButton1Click:Connect(item.Callback)
            
        elseif item.Type == "Toggle" then
            local toggleFrame = Instance.new("Frame", UI["Content_21"])
            toggleFrame.BorderSizePixel = 0
            toggleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            toggleFrame.Size = UDim2.new(0, 546, 0, 34)
            toggleFrame.Name = item.Name
            toggleFrame.BackgroundTransparency = 0.6
            
            Instance.new("UICorner", toggleFrame)
            
            local textLabel = Instance.new("TextLabel", toggleFrame)
            textLabel.TextWrapped = true
            textLabel.BorderSizePixel = 0
            textLabel.TextXAlignment = Enum.TextXAlignment.Left
            textLabel.TextScaled = true
            textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.BackgroundTransparency = 1
            textLabel.Size = UDim2.new(0.90476, 0, 0.52941, 0)
            textLabel.Text = item.Text
            textLabel.Name = "ToggleText"
            textLabel.Position = UDim2.new(0.00366, 0, 0.23529, 0)
            
            local toggleBtn = Instance.new("ImageButton", toggleFrame)
            toggleBtn.BorderSizePixel = 0
            toggleBtn.BackgroundTransparency = 1
            toggleBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleBtn.Image = item.State and "rbxassetid://104647644132831" or "rbxassetid://89855775980457"
            toggleBtn.Size = UDim2.new(0.06227, 0, 1, 0)
            toggleBtn.Name = "Toggle"
            toggleBtn.PressedImage = "rbxassetid://104647644132831"
            toggleBtn.Position = UDim2.new(0.92674, 0, 0, 0)
            
            Instance.new("UICorner", toggleBtn)
            
            toggleBtn.MouseButton1Click:Connect(function()
                item.State = not item.State
                toggleBtn.Image = item.State and "rbxassetid://104647644132831" or "rbxassetid://89855775980457"
                item.Callback(item.State)
            end)
        end
    end
end

function AeroLib:CreateButton(tabId, name, text, callback)
    local tab = self.Tabs[tabId]
    if not tab then return end
    
    local order = #tab.Content + 1
    table.insert(tab.Content, {
        Type = "Button",
        Name = name,
        Text = text,
        Order = order,
        Callback = callback
    })
    
    if self.CurrentTab == tabId then
        self:UpdateContent()
    end
end

function AeroLib:CreateToggle(tabId, name, text, callback)
    local tab = self.Tabs[tabId]
    if not tab then return end
    
    local order = #tab.Content + 1
    table.insert(tab.Content, {
        Type = "Toggle",
        Name = name,
        Text = text,
        Order = order,
        Callback = callback,
        State = false
    })
    
    if self.CurrentTab == tabId then
        self:UpdateContent()
    end
end

function AeroLib:SetTitle(title)
    UI["Title_11"].Text = title
end

local function CreateAero()
    local aero = setmetatable({}, {__index = AeroLib})
    return aero:Init()
end

return CreateAero