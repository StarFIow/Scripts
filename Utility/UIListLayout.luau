--[[ How to use this:
Open Gui creator roblox game, make a ScrollingFrame, make a LocalScript inside it, put this raw link inside it:
https://raw.githubusercontent.com/its-starflow/Scripts/refs/heads/main/Utility/UIListLayout.luau
]]
local UIElement = script.Parent

local UIListLayout_Internal = Instance.new("UIListLayout")
UIListLayout_Internal.Parent = UIElement
UIListLayout_Internal.Padding = UDim.new(0, 2)
UIListLayout_Internal.SortOrder = Enum.SortOrder.LayoutOrder

UIListLayout_Internal:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	UIElement.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_Internal.AbsoluteContentSize.Y)
end)