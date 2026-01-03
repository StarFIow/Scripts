local UIElement_Y = script.Parent

local UIListLayout_Y = Instance.new("UIListLayout")
UIListLayout_Y.Parent = UIElement_Y
UIListLayout_Y.Padding = UDim.new(0, 2)
UIListLayout_Y.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_Y.FillDirection = Enum.FillDirection.Vertical

UIListLayout_Y:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	UIElement_Y.CanvasSize = UDim2.new(
		0, 0,
		0, UIListLayout_Y.AbsoluteContentSize.Y
	)
end)