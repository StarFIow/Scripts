local UI = {};

UI["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

UI["Button_2"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Button_2"]["BorderSizePixel"] = 0;
UI["Button_2"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 22);
UI["Button_2"]["Size"] = UDim2.new(0.05292, 0, 0.12449, 0);
UI["Button_2"]["Position"] = UDim2.new(0.01924, 0, 0.00566, 0);
UI["Button_2"]["Name"] = [[Button]];
UI["Button_2"]["BackgroundTransparency"] = 0.08;

UI["UICorner_3"] = Instance.new("UICorner", UI["Button_2"]);
UI["UICorner_3"]["CornerRadius"] = UDim.new(0, 99);

UI["Toggle_4"] = Instance.new("ImageButton", UI["Button_2"]);
UI["Toggle_4"]["BorderSizePixel"] = 0;
UI["Toggle_4"]["BackgroundTransparency"] = 1;
UI["Toggle_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle_4"]["Image"] = [[rbxassetid://11707615313]];
UI["Toggle_4"]["Size"] = UDim2.new(0.63636, 0, 0.63636, 0);
UI["Toggle_4"]["Name"] = [[Toggle]];
UI["Toggle_4"]["Position"] = UDim2.new(0.18182, 0, 0.18182, 0);

UI["Chat_5"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Chat_5"]["BorderSizePixel"] = 0;
UI["Chat_5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Chat_5"]["Size"] = UDim2.new(0.39691, 0, 0.42441, 0);
UI["Chat_5"]["Position"] = UDim2.new(0.08179, 0, 0.00566, 0);
UI["Chat_5"]["Name"] = [[Chat]];
UI["Chat_5"]["BackgroundTransparency"] = 0.5;

UI["Messages_6"] = Instance.new("ScrollingFrame", UI["Chat_5"]);
UI["Messages_6"]["BorderSizePixel"] = 0;
UI["Messages_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Messages_6"]["Name"] = [[Messages]];
UI["Messages_6"]["Size"] = UDim2.new(0.96364, 0, 0.66667, 0);
UI["Messages_6"]["Position"] = UDim2.new(0.01818, 0, 0.01333, 0);
UI["Messages_6"]["ScrollBarThickness"] = 0;
UI["Messages_6"]["BackgroundTransparency"] = 1;

UI["UIListLayout_7"] = Instance.new("UIListLayout", UI["Messages_6"]);
UI["UIListLayout_7"]["Padding"] = UDim.new(0, 2);
UI["UIListLayout_7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

UI["UICorner_8"] = Instance.new("UICorner", UI["Chat_5"]);

UI["Textbox_a"] = Instance.new("Frame", UI["Chat_5"]);
UI["Textbox_a"]["BorderSizePixel"] = 0;
UI["Textbox_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Textbox_a"]["Size"] = UDim2.new(0.96364, 0, 0.25333, 0);
UI["Textbox_a"]["Position"] = UDim2.new(0.01818, 0, 0.70667, 0);
UI["Textbox_a"]["Name"] = [[Textbox]];
UI["Textbox_a"]["BackgroundTransparency"] = 0.6;

UI["UICorner_b"] = Instance.new("UICorner", UI["Textbox_a"]);

UI["Send_c"] = Instance.new("TextButton", UI["Textbox_a"]);
UI["Send_c"]["BorderSizePixel"] = 0;
UI["Send_c"]["TextSize"] = 1;
UI["Send_c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
UI["Send_c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Send_c"]["BackgroundTransparency"] = 1;
UI["Send_c"]["Size"] = UDim2.new(0.1195, 0, 1, 0);
UI["Send_c"]["Text"] = [[]];
UI["Send_c"]["Name"] = [[Send]];
UI["Send_c"]["Position"] = UDim2.new(0.8805, 0, 0, 0);

UI["Icon_d"] = Instance.new("ImageLabel", UI["Send_c"]);
UI["Icon_d"]["Interactable"] = false;
UI["Icon_d"]["BorderSizePixel"] = 0;
UI["Icon_d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Icon_d"]["Image"] = [[rbxassetid://18517619049]];
UI["Icon_d"]["Size"] = UDim2.new(0.68421, 0, 0.68421, 0);
UI["Icon_d"]["BackgroundTransparency"] = 1;
UI["Icon_d"]["Name"] = [[Icon]];
UI["Icon_d"]["Position"] = UDim2.new(0.10526, 0, 0.15789, 0);

UI["TextBox_e"] = Instance.new("TextBox", UI["Textbox_a"]);
UI["TextBox_e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["TextBox_e"]["PlaceholderColor3"] = Color3.fromRGB(112, 112, 112);
UI["TextBox_e"]["ZIndex"] = 3;
UI["TextBox_e"]["BorderSizePixel"] = 0;
UI["TextBox_e"]["TextSize"] = 12;
UI["TextBox_e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextBox_e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["TextBox_e"]["PlaceholderText"] = [[Type here...]];
UI["TextBox_e"]["Size"] = UDim2.new(0.86164, 0, 1, 0);
UI["TextBox_e"]["Position"] = UDim2.new(0.01258, 0, 0, 0);
UI["TextBox_e"]["Text"] = [[]];
UI["TextBox_e"]["BackgroundTransparency"] = 1;

UI["UICorner_f"] = Instance.new("UICorner", UI["TextBox_e"]);

UI["UIStroke_9"] = Instance.new("UIStroke", UI["Textbox_a"]);
UI["UIStroke_9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_9"]["Color"] = Color3.fromRGB(112, 112, 112);

local SChat = {
    ws = nil,
    isHidden = false,
    allowedUsers = {
        "IdkMyNameBro_012",
        "yourgames9", 
        "Levibreyties1"
    }
}

local function makeChatLabel(displayName, message)
    local scrollFrame = UI["Messages_6"]
    if not scrollFrame then return end
    
    local lbl = Instance.new("TextLabel")
    lbl.Parent = scrollFrame
    lbl.Size = UDim2.new(1, -6, 0, 20)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.Font = Enum.Font.GothamSemibold
    lbl.TextSize = 14
    lbl.TextWrapped = true
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextYAlignment = Enum.TextYAlignment.Top
    lbl.LayoutOrder = #scrollFrame:GetChildren()
    lbl.Text = displayName .. ": " .. message
    lbl.AutomaticSize = Enum.AutomaticSize.Y
    
    local MAX_MSG = 100
    local messages = {}
    for _, child in ipairs(scrollFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            table.insert(messages, child)
        end
    end
    
    if #messages > MAX_MSG then
        for i = 1, #messages - MAX_MSG do
            messages[i]:Destroy()
        end
    end
    
    task.wait()
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, UI["UIListLayout_7"].AbsoluteContentSize.Y + 10)
    scrollFrame.CanvasPosition = Vector2.new(0, scrollFrame.CanvasSize.Y.Offset)
    
    return lbl
end

local function isUserAllowed(username)
    for _, allowedName in ipairs(SChat.allowedUsers) do
        if username == allowedName then
            return true
        end
    end
    return false
end

local function connectWebSocket()
    if SChat.ws then
        SChat.ws:Close()
        SChat.ws = nil
    end
    
    local player = game:GetService("Players").LocalPlayer
    if not player then return end
    
    if not isUserAllowed(player.Name) then
        makeChatLabel("System", "You are not authorized to use this chat.")
        return
    end
    
    local wsUrl = "wss://ratty-erminia-adonis-98016d83.koyeb.app/swimhub"
    
    local success, ws = pcall(function()
        if syn and syn.websocket then
            return syn.websocket.connect(wsUrl)
        elseif WebSocket then
            return WebSocket.connect(wsUrl)
        elseif request and type(request) == "table" and request.WebSocket then
            return request.WebSocket.connect(wsUrl)
        else
            makeChatLabel("System", "No WebSocket support")
            return nil
        end
    end)
    
    if success and ws then
        SChat.ws = ws
        
        ws.OnMessage:Connect(function(message)
            local success, data = pcall(function()
                return game:GetService("HttpService"):JSONDecode(message)
            end)
            
            if success and data and data.type == "message" then
                local senderName = data.username or "Unknown"
                local displayName = data.displayName or senderName
                local msg = data.message or ""
                
                if isUserAllowed(senderName) then
                    makeChatLabel(displayName, msg)
                end
            end
        end)
        
        ws.OnClose:Connect(function()
            makeChatLabel("System", "Disconnected")
            SChat.ws = nil
            task.wait(3)
            connectWebSocket()
        end)
        
        makeChatLabel("System", "Connected")
        
        task.spawn(function()
            while ws and SChat.ws == ws do
                local pingMsg = game:GetService("HttpService"):JSONEncode({type = "ping"})
                ws:Send(pingMsg)
                task.wait(30)
            end
        end)
        
        local joinMsg = game:GetService("HttpService"):JSONEncode({
            type = "join",
            username = player.Name,
            displayName = player.DisplayName,
            userId = player.UserId
        })
        ws:Send(joinMsg)
    else
        makeChatLabel("System", "Failed to connect")
    end
end

local function sendMessage(text)
    if SChat.isHidden then
        return
    end
    
    if not text or text == "" then
        return
    end
    
    text = string.gsub(text, "^%s+", "")
    text = string.gsub(text, "%s+$", "")
    
    if text == "" then
        return
    end
    
    local player = game:GetService("Players").LocalPlayer
    if not player then return end
    
    makeChatLabel(player.DisplayName, text)
    
    if SChat.ws then
        local messageData = game:GetService("HttpService"):JSONEncode({
            type = "message",
            username = player.Name,
            displayName = player.DisplayName,
            userId = player.UserId,
            message = text
        })
        
        pcall(function()
            SChat.ws:Send(messageData)
        end)
    else
        makeChatLabel("System", "Not connected")
    end
end

UI["Toggle_4"].MouseButton1Click:Connect(function()
    SChat.isHidden = not SChat.isHidden
    UI["Chat_5"].Visible = not SChat.isHidden
end)

UI["Send_c"].MouseButton1Click:Connect(function()
    sendMessage(UI["TextBox_e"].Text)
    UI["TextBox_e"].Text = ""
end)

UI["TextBox_e"].FocusLost:Connect(function(enterPressed)
    if enterPressed then
        sendMessage(UI["TextBox_e"].Text)
        UI["TextBox_e"].Text = ""
    end
end)

task.spawn(function()
    task.wait(1)
    connectWebSocket()
end)

return UI["ScreenGui_1"]