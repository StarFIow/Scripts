local Aero = {}
local UI = {}
local UIS = game:GetService("UserInputService")

local function Dragify(Frame)
	local dragging = false
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		Frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	Frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if dragging and (
			input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		) then
			update(input)
		end
	end)
end

local function Initialize()
    UI["ScreenGui_1"] = Instance.new("ScreenGui")
    UI["ScreenGui_1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    UI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
    
    UI["Show_2"] = Instance.new("Frame")
    UI["Show_2"].Parent = UI["ScreenGui_1"]
    UI["Show_2"]["BorderSizePixel"] = 0
    UI["Show_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Show_2"]["Size"] = UDim2.new(0.21409, 0, 0.12449, 0)
    UI["Show_2"]["Position"] = UDim2.new(0.38729, 0, -0.13015, 0)
    UI["Show_2"]["Name"] = "Show"
    UI["Show_2"]["BackgroundTransparency"] = 0.6
    UI["Show_2"].Visible = false
    
    local UICorner_3 = Instance.new("UICorner")
    UICorner_3.Parent = UI["Show_2"]
    UICorner_3["CornerRadius"] = UDim.new(0, 999)
    
    UI["Logo_4"] = Instance.new("ImageLabel")
    UI["Logo_4"].Parent = UI["Show_2"]
    UI["Logo_4"]["ZIndex"] = 2
    UI["Logo_4"]["BorderSizePixel"] = 0
    UI["Logo_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Logo_4"]["Image"] = "rbxassetid://122618864500181"
    UI["Logo_4"]["Size"] = UDim2.new(0.20225, 0, 0.81818, 0)
    UI["Logo_4"]["BackgroundTransparency"] = 1
    UI["Logo_4"]["Name"] = "Logo"
    UI["Logo_4"]["Position"] = UDim2.new(0.04494, 0, 0.09091, 0)
    
    local UICorner_5 = Instance.new("UICorner")
    UICorner_5.Parent = UI["Logo_4"]
    UICorner_5["CornerRadius"] = UDim.new(0, 999)
    
    UI["TextLabel_6"] = Instance.new("TextButton")
    UI["TextLabel_6"].Parent = UI["Show_2"]
    UI["TextLabel_6"]["TextWrapped"] = true
    UI["TextLabel_6"]["BorderSizePixel"] = 0
    UI["TextLabel_6"]["TextSize"] = 18
    UI["TextLabel_6"]["TextXAlignment"] = Enum.TextXAlignment.Right
    UI["TextLabel_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["TextLabel_6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["TextLabel_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["TextLabel_6"]["BackgroundTransparency"] = 0.6
    UI["TextLabel_6"]["Size"] = UDim2.new(0.70787, 0, 0.81818, 0)
    UI["TextLabel_6"]["Text"] = "Aero library"
    UI["TextLabel_6"]["Position"] = UDim2.new(0.03371, 0, 0.09091, 0)
    
    local UICorner_7 = Instance.new("UICorner")
    UICorner_7.Parent = UI["TextLabel_6"]
    UICorner_7["CornerRadius"] = UDim.new(0, 99)
    
    local Frame_8 = Instance.new("Frame")
    Frame_8.Parent = UI["Show_2"]
    Frame_8["BorderSizePixel"] = 0
    Frame_8["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    Frame_8["Size"] = UDim2.new(0.01124, 0, 1, 0)
    Frame_8["Position"] = UDim2.new(0.75281, 0, 0, 0)
    Frame_8["BackgroundTransparency"] = 0.6
    
    UI["Icon_9"] = Instance.new("ImageLabel")
    UI["Icon_9"].Parent = UI["Show_2"]
    UI["Icon_9"]["BorderSizePixel"] = 0
    UI["Icon_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Icon_9"]["Image"] = "rbxassetid://84885202358295"
    UI["Icon_9"]["Size"] = UDim2.new(0.20225, 0, 0.81818, 0)
    UI["Icon_9"]["BackgroundTransparency"] = 0.6
    UI["Icon_9"]["Name"] = "Icon"
    UI["Icon_9"]["Position"] = UDim2.new(0.77528, 0, 0.09091, 0)
    
    local UICorner_a = Instance.new("UICorner")
    UICorner_a.Parent = UI["Icon_9"]
    UICorner_a["CornerRadius"] = UDim.new(0, 999)
    
    UI["Aero_b"] = Instance.new("Frame")
    UI["Aero_b"].Parent = UI["ScreenGui_1"]
    UI["Aero_b"]["BorderSizePixel"] = 0
    UI["Aero_b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Aero_b"]["Size"] = UDim2.new(0.67835, 0, 0.88844, 0)
    UI["Aero_b"]["Position"] = UDim2.new(0.16357, 0, 0.00566, 0)
    UI["Aero_b"]["Name"] = "Aero"
    UI["Aero_b"]["BackgroundTransparency"] = 0.3
    
    UI["Close_c"] = Instance.new("TextButton")
    UI["Close_c"].Parent = UI["Aero_b"]
    UI["Close_c"]["TextWrapped"] = true
    UI["Close_c"]["BorderSizePixel"] = 0
    UI["Close_c"]["TextSize"] = 16
    UI["Close_c"]["TextScaled"] = true
    UI["Close_c"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
    UI["Close_c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Close_c"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Close_c"]["BackgroundTransparency"] = 0.6
    UI["Close_c"]["Size"] = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Close_c"]["Text"] = "×"
    UI["Close_c"]["Name"] = "Close"
    UI["Close_c"]["Position"] = UDim2.new(0.93972, 0, 0.01274, 0)
    
    local UICorner_d = Instance.new("UICorner")
    UICorner_d.Parent = UI["Close_c"]
    
    local UICorner_e = Instance.new("UICorner")
    UICorner_e.Parent = UI["Aero_b"]
    
    UI["Hide_f"] = Instance.new("TextButton")
    UI["Hide_f"].Parent = UI["Aero_b"]
    UI["Hide_f"]["TextWrapped"] = true
    UI["Hide_f"]["BorderSizePixel"] = 0
    UI["Hide_f"]["TextSize"] = 16
    UI["Hide_f"]["TextScaled"] = true
    UI["Hide_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Hide_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Hide_f"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Hide_f"]["BackgroundTransparency"] = 0.6
    UI["Hide_f"]["Size"] = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Hide_f"]["Text"] = "-"
    UI["Hide_f"]["Name"] = "Hide"
    UI["Hide_f"]["Position"] = UDim2.new(0.87943, 0, 0.01274, 0)
    
    local UICorner_10 = Instance.new("UICorner")
    UICorner_10.Parent = UI["Hide_f"]
    
    UI["Title_11"] = Instance.new("TextLabel")
    UI["Title_11"].Parent = UI["Aero_b"]
    UI["Title_11"]["TextWrapped"] = true
    UI["Title_11"]["BorderSizePixel"] = 0
    UI["Title_11"]["TextSize"] = 18
    UI["Title_11"]["TextXAlignment"] = Enum.TextXAlignment.Left
    UI["Title_11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Title_11"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Title_11"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Title_11"]["BackgroundTransparency"] = 0.6
    UI["Title_11"]["Size"] = UDim2.new(0.80851, 0, 0.09554, 0)
    UI["Title_11"]["Text"] = "Unnamed"
    UI["Title_11"]["Name"] = "Title"
    UI["Title_11"]["Position"] = UDim2.new(0.06383, 0, 0.01274, 0)
    
    local UICorner_12 = Instance.new("UICorner")
    UICorner_12.Parent = UI["Title_11"]
    
    UI["PFP_13"] = Instance.new("ImageLabel")
    UI["PFP_13"].Parent = UI["Aero_b"]
    UI["PFP_13"]["BorderSizePixel"] = 0
    UI["PFP_13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["PFP_13"]["Size"] = UDim2.new(0.06028, 0, 0.10828, 0)
    UI["PFP_13"]["BackgroundTransparency"] = 0.6
    UI["PFP_13"]["Name"] = "PFP"
    UI["PFP_13"]["Position"] = UDim2.new(0.93262, 0, 0.12102, 0)
    
    local LocalScript_14 = Instance.new("LocalScript")
    LocalScript_14.Parent = UI["PFP_13"]
    
    local UICorner_15 = Instance.new("UICorner")
    UICorner_15.Parent = UI["PFP_13"]
    
    UI["Tabs_16"] = Instance.new("ScrollingFrame")
    UI["Tabs_16"].Parent = UI["Aero_b"]
    UI["Tabs_16"]["ScrollingDirection"] = Enum.ScrollingDirection.X
    UI["Tabs_16"]["BorderSizePixel"] = 0
    UI["Tabs_16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Tabs_16"]["Name"] = "Tabs"
    UI["Tabs_16"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X
    UI["Tabs_16"]["Size"] = UDim2.new(0.91844, 0, 0.10828, 0)
    UI["Tabs_16"]["Position"] = UDim2.new(0.00709, 0, 0.12102, 0)
    UI["Tabs_16"]["BackgroundTransparency"] = 1
    UI["Tabs_16"]["ScrollBarThickness"] = 0
    
    UI["UIListLayout_1a"] = Instance.new("UIListLayout")
    UI["UIListLayout_1a"].Parent = UI["Tabs_16"]
    UI["UIListLayout_1a"]["HorizontalFlex"] = Enum.UIFlexAlignment.None
    UI["UIListLayout_1a"]["Padding"] = UDim.new(0, 4)
    UI["UIListLayout_1a"]["FillDirection"] = Enum.FillDirection.Horizontal
    
    UI["Tab_1_17"] = Instance.new("TextButton")
    UI["Tab_1_17"].Parent = UI["Tabs_16"]
    UI["Tab_1_17"]["TextWrapped"] = true
    UI["Tab_1_17"]["BorderSizePixel"] = 0
    UI["Tab_1_17"]["TextSize"] = 16
    UI["Tab_1_17"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Tab_1_17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Tab_1_17"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Tab_1_17"]["BackgroundTransparency"] = 0.6
    UI["Tab_1_17"]["Size"] = UDim2.new(0, 110, 0, 34)
    UI["Tab_1_17"]["Text"] = "Tab 1"
    UI["Tab_1_17"]["Name"] = "Tab_1"
    
    local UICorner_18 = Instance.new("UICorner")
    UICorner_18.Parent = UI["Tab_1_17"]
    
    local UICorner_19 = Instance.new("UICorner")
    UICorner_19.Parent = UI["Tabs_16"]
    
    UI["Tab_2_1b"] = Instance.new("TextButton")
    UI["Tab_2_1b"].Parent = UI["Tabs_16"]
    UI["Tab_2_1b"]["TextWrapped"] = true
    UI["Tab_2_1b"]["BorderSizePixel"] = 0
    UI["Tab_2_1b"]["TextSize"] = 16
    UI["Tab_2_1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Tab_2_1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Tab_2_1b"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["Tab_2_1b"]["BackgroundTransparency"] = 0.6
    UI["Tab_2_1b"]["Size"] = UDim2.new(0, 110, 0, 34)
    UI["Tab_2_1b"]["Text"] = "Tab 2"
    UI["Tab_2_1b"]["Name"] = "Tab_2"
    
    local UICorner_1c = Instance.new("UICorner")
    UICorner_1c.Parent = UI["Tab_2_1b"]
    
    UI["Logo_1d"] = Instance.new("ImageLabel")
    UI["Logo_1d"].Parent = UI["Aero_b"]
    UI["Logo_1d"]["BorderSizePixel"] = 0
    UI["Logo_1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Logo_1d"]["Image"] = "rbxassetid://122618864500181"
    UI["Logo_1d"]["Size"] = UDim2.new(0.05319, 0, 0.09554, 0)
    UI["Logo_1d"]["BackgroundTransparency"] = 0.6
    UI["Logo_1d"]["Name"] = "Logo"
    UI["Logo_1d"]["Position"] = UDim2.new(0.00709, 0, 0.01274, 0)
    
    local UICorner_1e = Instance.new("UICorner")
    UICorner_1e.Parent = UI["Logo_1d"]
    
    UI["Frame_1f"] = Instance.new("Frame")
    UI["Frame_1f"].Parent = UI["Aero_b"]
    UI["Frame_1f"]["BorderSizePixel"] = 0
    UI["Frame_1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["Frame_1f"]["Size"] = UDim2.new(0.98582, 0, 0.74522, 0)
    UI["Frame_1f"]["Position"] = UDim2.new(0.00709, 0, 0.24204, 0)
    UI["Frame_1f"]["BackgroundTransparency"] = 0.6
    
    local UICorner_20 = Instance.new("UICorner")
    UICorner_20.Parent = UI["Frame_1f"]
    
    UI["Content_21"] = Instance.new("ScrollingFrame")
    UI["Content_21"].Parent = UI["Aero_b"]
    UI["Content_21"]["ScrollingDirection"] = Enum.ScrollingDirection.X
    UI["Content_21"]["BorderSizePixel"] = 0
    UI["Content_21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Content_21"]["Name"] = "Content"
    UI["Content_21"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
    UI["Content_21"]["Size"] = UDim2.new(0.97518, 0, 0.72611, 0)
    UI["Content_21"]["Position"] = UDim2.new(0.01418, 0, 0.26115, 0)
    UI["Content_21"]["BackgroundTransparency"] = 1
    UI["Content_21"]["ScrollBarThickness"] = 0
    
    UI["UIListLayout_25"] = Instance.new("UIListLayout")
    UI["UIListLayout_25"].Parent = UI["Content_21"]
    UI["UIListLayout_25"]["Wraps"] = true
    UI["UIListLayout_25"]["Padding"] = UDim.new(0, 4)
    
    UI["CreateBtn_22"] = Instance.new("TextButton")
    UI["CreateBtn_22"].Parent = UI["Content_21"]
    UI["CreateBtn_22"]["BorderSizePixel"] = 0
    UI["CreateBtn_22"]["TextXAlignment"] = Enum.TextXAlignment.Left
    UI["CreateBtn_22"]["TextSize"] = 18
    UI["CreateBtn_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["CreateBtn_22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["CreateBtn_22"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI["CreateBtn_22"]["BackgroundTransparency"] = 0.6
    UI["CreateBtn_22"]["Size"] = UDim2.new(0, 546, 0, 34)
    UI["CreateBtn_22"]["Name"] = "CreateBtn"
    UI["CreateBtn_22"]["Position"] = UDim2.new(-0.01091, 0, 0.51754, 0)
    
    local UICorner_23 = Instance.new("UICorner")
    UICorner_23.Parent = UI["CreateBtn_22"]
    
    local UICorner_24 = Instance.new("UICorner")
    UICorner_24.Parent = UI["Content_21"]
    
    UI["CreateToggle_26"] = Instance.new("Frame")
    UI["CreateToggle_26"].Parent = UI["Content_21"]
    UI["CreateToggle_26"]["BorderSizePixel"] = 0
    UI["CreateToggle_26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["CreateToggle_26"]["Size"] = UDim2.new(0, 546, 0, 34)
    UI["CreateToggle_26"]["Position"] = UDim2.new(0, 0, 0.16667, 0)
    UI["CreateToggle_26"]["Name"] = "CreateToggle"
    UI["CreateToggle_26"]["BackgroundTransparency"] = 0.6
    
    local UICorner_27 = Instance.new("UICorner")
    UICorner_27.Parent = UI["CreateToggle_26"]
    
    UI["ToggleText_28"] = Instance.new("TextLabel")
    UI["ToggleText_28"].Parent = UI["CreateToggle_26"]
    UI["ToggleText_28"]["TextWrapped"] = true
    UI["ToggleText_28"]["BorderSizePixel"] = 0
    UI["ToggleText_28"]["TextXAlignment"] = Enum.TextXAlignment.Left
    UI["ToggleText_28"]["TextScaled"] = true
    UI["ToggleText_28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["ToggleText_28"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["ToggleText_28"]["BackgroundTransparency"] = 1
    UI["ToggleText_28"]["Size"] = UDim2.new(0.90476, 0, 0.52941, 0)
    UI["ToggleText_28"]["Text"] = "Toggle"
    UI["ToggleText_28"]["Name"] = "ToggleText"
    UI["ToggleText_28"]["Position"] = UDim2.new(0.00366, 0, 0.23529, 0)
    
    UI["Toggle_29"] = Instance.new("ImageButton")
    UI["Toggle_29"].Parent = UI["CreateToggle_26"]
    UI["Toggle_29"]["BorderSizePixel"] = 0
    UI["Toggle_29"]["BackgroundTransparency"] = 1
    UI["Toggle_29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["Toggle_29"]["Image"] = "rbxassetid://89855775980457"
    UI["Toggle_29"]["Size"] = UDim2.new(0.06227, 0, 1, 0)
    UI["Toggle_29"]["Name"] = "Toggle"
    UI["Toggle_29"]["PressedImage"] = "rbxassetid://104647644132831"
    UI["Toggle_29"]["Position"] = UDim2.new(0.92674, 0, 0, 0)
    
    local UICorner_2a = Instance.new("UICorner")
    UICorner_2a.Parent = UI["Toggle_29"]
    
    LocalScript_14:Destroy()
    
    local ImageLabel = UI["PFP_13"]
    local player = game.Players.LocalPlayer
    ImageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
    
    Dragify(UI["Aero_b"])
    Dragify(UI["Show_2"])
    
    UI["Close_c"].MouseButton1Click:Connect(function()
        UI["ScreenGui_1"]:Destroy()
    end)
    
    UI["Hide_f"].MouseButton1Click:Connect(function()
        UI["Aero_b"].Visible = false
        UI["Show_2"].Visible = true
        UI["Show_2"].Position = UDim2.new(0.38729, 0, 0.00566, 0)
    end)
    
    UI["TextLabel_6"].MouseButton1Click:Connect(function()
        UI["Show_2"].Visible = false
        UI["Aero_b"].Visible = true
    end)
    
    UI["Tab_1_17"]:Destroy()
    UI["Tab_2_1b"]:Destroy()
    UI["CreateBtn_22"]:Destroy()
    UI["CreateToggle_26"]:Destroy()
    
    local Tabs = {}
    local CurrentTab = nil
    local TabContents = {}
    
    function Aero:CreateTab(Name)
        local TabButton = Instance.new("TextButton")
        TabButton.Parent = UI["Tabs_16"]
        TabButton["TextWrapped"] = true
        TabButton["BorderSizePixel"] = 0
        TabButton["TextSize"] = 16
        TabButton["TextColor3"] = Color3.fromRGB(255, 255, 255)
        TabButton["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
        TabButton["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
        TabButton["BackgroundTransparency"] = 0.6
        TabButton["Size"] = UDim2.new(0, 110, 0, 34)
        TabButton["Text"] = Name
        TabButton["Name"] = "Tab_" .. Name
        
        local UICorner = Instance.new("UICorner")
        UICorner.Parent = TabButton
        
        TabButton.MouseButton1Click:Connect(function()
            if CurrentTab then
                TabContents[CurrentTab].Visible = false
            end
            CurrentTab = Name
            TabContents[Name].Visible = true
        end)
        
        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Parent = UI["Content_21"]
        TabContent["ScrollingDirection"] = Enum.ScrollingDirection.Y
        TabContent["BorderSizePixel"] = 0
        TabContent["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
        TabContent["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
        TabContent["Size"] = UDim2.new(1, 0, 1, 0)
        TabContent["BackgroundTransparency"] = 1
        TabContent["ScrollBarThickness"] = 0
        TabContent.Visible = false
        
        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = TabContent
        UIListLayout["Padding"] = UDim.new(0, 4)
        UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
        
        TabContents[Name] = TabContent
        
        if not CurrentTab then
            CurrentTab = Name
            TabContent.Visible = true
        end
        
        Tabs[Name] = TabContent
        return TabContent
    end
    
    function Aero:CreateButton(Tab, Name, Callback)
        local TabContent = Tabs[Tab]
        if not TabContent then return end
        
        local Button = Instance.new("TextButton")
        Button.Parent = TabContent
        Button["BorderSizePixel"] = 0
        Button["TextXAlignment"] = Enum.TextXAlignment.Left
        Button["TextSize"] = 18
        Button["TextColor3"] = Color3.fromRGB(255, 255, 255)
        Button["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
        Button["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
        Button["BackgroundTransparency"] = 0.6
        Button["Size"] = UDim2.new(1, 0, 0, 34)
        Button["Text"] = "  " .. Name
        Button["LayoutOrder"] = #TabContent:GetChildren()
        
        local UICorner = Instance.new("UICorner")
        UICorner.Parent = Button
        
        if Callback then
            Button.MouseButton1Click:Connect(Callback)
        end
    end
    
    function Aero:CreateToggle(Tab, Name, Callback)
        local TabContent = Tabs[Tab]
        if not TabContent then return end
        
        local ToggleFrame = Instance.new("Frame")
        ToggleFrame.Parent = TabContent
        ToggleFrame["BorderSizePixel"] = 0
        ToggleFrame["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
        ToggleFrame["Size"] = UDim2.new(1, 0, 0, 34)
        ToggleFrame["BackgroundTransparency"] = 0.6
        ToggleFrame["LayoutOrder"] = #TabContent:GetChildren()
        
        local UICorner = Instance.new("UICorner")
        UICorner.Parent = ToggleFrame
        
        local ToggleText = Instance.new("TextLabel")
        ToggleText.Parent = ToggleFrame
        ToggleText["TextWrapped"] = true
        ToggleText["BorderSizePixel"] = 0
        ToggleText["TextXAlignment"] = Enum.TextXAlignment.Left
        ToggleText["TextScaled"] = true
        ToggleText["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
        ToggleText["TextColor3"] = Color3.fromRGB(255, 255, 255)
        ToggleText["BackgroundTransparency"] = 1
        ToggleText["Size"] = UDim2.new(0.90476, 0, 0.52941, 0)
        ToggleText["Text"] = Name
        ToggleText["Position"] = UDim2.new(0.00366, 0, 0.23529, 0)
        
        local ToggleButton = Instance.new("ImageButton")
        ToggleButton.Parent = ToggleFrame
        ToggleButton["BorderSizePixel"] = 0
        ToggleButton["BackgroundTransparency"] = 1
        ToggleButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
        ToggleButton["Image"] = "rbxassetid://89855775980457"
        ToggleButton["Size"] = UDim2.new(0.06227, 0, 1, 0)
        ToggleButton["Position"] = UDim2.new(0.92674, 0, 0, 0)
        
        local ToggleState = false
        
        local function UpdateToggle()
            if ToggleState then
                ToggleButton.Image = "rbxassetid://104647644132831"
            else
                ToggleButton.Image = "rbxassetid://89855775980457"
            end
            if Callback then
                Callback(ToggleState)
            end
        end
        
        ToggleButton.MouseButton1Click:Connect(function()
            ToggleState = not ToggleState
            UpdateToggle()
        end)
        
        UpdateToggle()
    end
    
    function Aero:SetTitle(Title)
        UI["Title_11"].Text = Title
    end
    
    UI["Show_2"].Visible = true
    UI["Show_2"].Position = UDim2.new(0.38729, 0, 0.00566, 0)
    UI["Aero_b"].Visible = false
    
    function Aero:CreateSection(Tab, Name, Text)
    local TabContent = Tabs[Tab]
    if not TabContent then return nil end

    local Section = Instance.new("TextLabel")
    Section.Parent = TabContent
    Section.TextWrapped = true
    Section.BorderSizePixel = 0
    Section.TextXAlignment = Enum.TextXAlignment.Left
    Section.TextScaled = true
    Section.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Section.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Section.TextColor3 = Color3.fromRGB(255, 255, 255)
    Section.BackgroundTransparency = 1
    Section.Size = UDim2.new(1, 0, 0, 24)
    Section.Text = Text or Name
    Section.Name = "Section_" .. Name
    Section.LayoutOrder = #TabContent:GetChildren()
    
    return Section
end
    
    return Aero
end
Initialize()
return Aero