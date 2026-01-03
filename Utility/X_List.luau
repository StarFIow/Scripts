local UIElement_X = script.Parent

local UIListLayout_X = Instance.new("UIListLayout")
UIListLayout_X.Parent = UIElement_X
UIListLayout_X.Padding = UDim.new(0, 2)
UIListLayout_X.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_X.FillDirection = Enum.FillDirection.Horizontal

UIListLayout_X:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	UIElement_X.CanvasSize = UDim2.new(
		0, UIListLayout_X.AbsoluteContentSize.X,
		0, 0
	)
end)