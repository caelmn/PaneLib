--@ generated using luauify
--@ generation settions:
--@ > ADD_COMMENTS = false
--@ > FUNCTION_NAME = create
--@ > USE_COMPRESSION = false

local function create(class: string, properties: {}?, attributes: {}?): Instance | boolean
	local success, instance = pcall(Instance.new, class)

	if not success then
		return false
	end

	if properties then
		for key, value in next, properties do
			local succ, err = pcall(function()
				(instance :: any)[key] = value
			end)

			if not succ then
				warn(err)
				return nil
			end
		end
	end

	if attributes then
		for key, value in pairs(attributes) do
			instance:SetAttribute(key, value)
		end
	end

	return instance
end

local StudioUI = create("ScreenGui", { 
	ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets, 
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling, 
	ResetOnSpawn = false, 
	Parent = game.StarterGui, 
	Name = "StudioUI", 
}) :: ScreenGui

local Container = create("Frame", { 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = StudioUI, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	Name = "Container", 
	Size = UDim2.fromScale(0.75, 0.75), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("ImageLabel", { 
	ImageColor3 = Color3.fromRGB(170, 0, 255), 
	ImageTransparency = 0.5, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Image = "rbxassetid://90166083119663", 
	BackgroundTransparency = 1, 
	Parent = Container, 
	Name = "Glow", 
	Size = UDim2.fromScale(1, 1), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local MainFrame = create("Frame", { 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = Container, 
	BackgroundTransparency = 0.5, 
	Position = UDim2.fromScale(0.5, 0.44999998807907104), 
	Name = "MainFrame", 
	Size = UDim2.fromScale(0.699999988079071, 0.699999988079071), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(0, 0, 0), 
}) :: Frame

create("UIStroke", { 
	Color = Color3.fromRGB(170, 0, 255), 
	Parent = MainFrame, 
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
})

create("UICorner", { 
	TopLeftRadius = UDim.new(0.02500000037252903, 0), 
	TopRightRadius = UDim.new(0.02500000037252903, 0), 
	BottomRightRadius = UDim.new(0.02500000037252903, 0), 
	Parent = MainFrame, 
	BottomLeftRadius = UDim.new(0.02500000037252903, 0), 
})

local Partition = create("Frame", { 
	LayoutOrder = 2, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Name = "Partition", 
	Position = UDim2.fromScale(0.4905392527580261, 0.1359180361032486), 
	Parent = MainFrame, 
	Size = UDim2.fromScale(1, 0.005109294317662716), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(1, 0), 
	TopRightRadius = UDim.new(1, 0), 
	BottomRightRadius = UDim.new(1, 0), 
	Parent = Partition, 
	BottomLeftRadius = UDim.new(1, 0), 
})

create("UIPadding", { 
	PaddingTop = UDim.new(0.014999999664723873, 0), 
	PaddingBottom = UDim.new(0.014999999664723873, 0), 
	Parent = MainFrame, 
	PaddingRight = UDim.new(0.014999999664723873, 0), 
	PaddingLeft = UDim.new(0.014999999664723873, 0), 
})

create("UIListLayout", { 
	Parent = MainFrame, 
	Padding = UDim.new(0.014999999664723873, 0), 
	SortOrder = Enum.SortOrder.LayoutOrder, 
	HorizontalFlex = Enum.UIFlexAlignment.Fill, 
})

local Topbar = create("Frame", { 
	LayoutOrder = 1, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = MainFrame, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.058424703776836395), 
	Name = "Topbar", 
	Size = UDim2.fromScale(1, 0.10000000149011612), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("TextLabel", { 
	TextWrapped = true, 
	TextColor3 = Color3.fromRGB(170, 0, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Nullix Hub", 
	Parent = Topbar, 
	Name = "HubName", 
	Size = UDim2.fromScale(0.5, 1), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	TextXAlignment = Enum.TextXAlignment.Left, 
	TextSize = 14, 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local Buttons = create("Frame", { 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(1, 0.5), 
	Parent = Topbar, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.9999997615814209, 0.5000003576278687), 
	Name = "Buttons", 
	Size = UDim2.fromScale(0.210999995470047, 0.6000000238418579), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("ImageButton", { 
	LayoutOrder = 2, 
	ScaleType = Enum.ScaleType.Fit, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = Buttons, 
	Image = "rbxassetid://76045941763188", 
	BackgroundTransparency = 1, 
	Name = "Maximize", 
	Size = UDim2.fromScale(0.30000001192092896, 1), 
	ImageColor3 = Color3.fromRGB(170, 0, 255), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("ImageButton", { 
	LayoutOrder = 1, 
	ScaleType = Enum.ScaleType.Fit, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = Buttons, 
	Image = "rbxassetid://118026365011536", 
	BackgroundTransparency = 1, 
	Name = "Minimize", 
	Size = UDim2.fromScale(0.30000001192092896, 1), 
	ImageColor3 = Color3.fromRGB(170, 0, 255), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("ImageButton", { 
	LayoutOrder = 3, 
	ScaleType = Enum.ScaleType.Fit, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = Buttons, 
	Image = "rbxassetid://110786993356448", 
	BackgroundTransparency = 1, 
	Name = "Close", 
	Size = UDim2.fromScale(0.30000001192092896, 1), 
	ImageColor3 = Color3.fromRGB(170, 0, 255), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("UIListLayout", { 
	VerticalAlignment = Enum.VerticalAlignment.Center, 
	SortOrder = Enum.SortOrder.LayoutOrder, 
	HorizontalAlignment = Enum.HorizontalAlignment.Right, 
	Parent = Buttons, 
	FillDirection = Enum.FillDirection.Horizontal, 
})

local Container_1 = create("Frame", { 
	LayoutOrder = 3, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = MainFrame, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(9.789383881297908e-08, 0.13510926067829132), 
	Name = "Container", 
	Size = UDim2.fromScale(0.9999998807907104, 0.8538240790367126), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("UIListLayout", { 
	FillDirection = Enum.FillDirection.Horizontal, 
	VerticalFlex = Enum.UIFlexAlignment.Fill, 
	Parent = Container_1, 
	Padding = UDim.new(0.009999999776482582, 0), 
	SortOrder = Enum.SortOrder.LayoutOrder, 
})

local Tabs = create("ScrollingFrame", { 
	ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0), 
	Active = true, 
	AutomaticCanvasSize = Enum.AutomaticSize.Y, 
	ScrollBarThickness = 0, 
	Parent = Container_1, 
	Name = "Tabs", 
	Size = UDim2.fromScale(0.25, 1), 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(9.363518671534621e-08, -9.757093977214026e-08), 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	BorderSizePixel = 0, 
	CanvasSize = UDim2.fromScale(0, 0), 
}) :: ScrollingFrame

local Template = create("TextButton", { 
	Visible = false, 
	Active = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = Tabs, 
	BackgroundTransparency = 0.75, 
	Name = "Template", 
	Size = UDim2.fromScale(1, 0.125), 
	Selectable = false, 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = Template, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = Template, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Home", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.800000011920929), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("UIListLayout", { 
	Parent = Tabs, 
	Padding = UDim.new(0.009999999776482582, 0), 
	SortOrder = Enum.SortOrder.LayoutOrder, 
})

local Modules = create("ScrollingFrame", { 
	ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0), 
	Active = true, 
	AutomaticCanvasSize = Enum.AutomaticSize.Y, 
	ScrollBarThickness = 0, 
	Parent = Container_1, 
	Name = "Modules", 
	Size = UDim2.fromScale(0.7400000095367432, 1), 
	LayoutOrder = 1, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(9.363518671534621e-08, -9.757093977214026e-08), 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	BorderSizePixel = 0, 
	CanvasSize = UDim2.fromScale(0, 0), 
}) :: ScrollingFrame

local Pages = create("Folder", { 
	Name = "Pages", 
	Parent = Modules, 
}) :: Folder

local TemplatePage = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = Pages, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	Name = "TemplatePage", 
	Size = UDim2.fromScale(1, 1), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("UIListLayout", { 
	Parent = TemplatePage, 
	Padding = UDim.new(0.014999999664723873, 0), 
	HorizontalAlignment = Enum.HorizontalAlignment.Center, 
	SortOrder = Enum.SortOrder.LayoutOrder, 
})

local TemplateTextBox = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BackgroundTransparency = 0.75, 
	Parent = TemplatePage, 
	Name = "TemplateTextBox", 
	Size = UDim2.fromScale(1, 0.125), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateTextBox, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = TemplateTextBox, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Text Box", 
	Name = "Label", 
	Size = UDim2.fromScale(0.4000000059604645, 0.699999988079071), 
	AnchorPoint = Vector2.new(0, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.024999918416142464, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local Input = create("TextBox", { 
	TextWrapped = true, 
	TextColor3 = Color3.fromRGB(0, 0, 0), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "ALL HAIL BENJAMIN NETANYAHU", 
	Parent = TemplateTextBox, 
	BorderSizePixel = 0, 
	AnchorPoint = Vector2.new(1, 0.5), 
	Size = UDim2.fromScale(0.5410000085830688, 0.699999988079071), 
	Name = "Input", 
	Position = UDim2.fromScale(0.9746381044387817, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: TextBox

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = Input, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("UITextSizeConstraint", { 
	MaxTextSize = 20, 
	Parent = Input, 
	MinTextSize = 20, 
})

local TemplateDropdown = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BackgroundTransparency = 0.75, 
	Parent = TemplatePage, 
	Name = "TemplateDropdown", 
	Size = UDim2.fromScale(1, 0.125), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateDropdown, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = TemplateDropdown, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Dropdown", 
	Name = "Label", 
	Size = UDim2.fromScale(0.4000000059604645, 0.699999988079071), 
	AnchorPoint = Vector2.new(0, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.024999918416142464, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local Button = create("TextButton", { 
	TextWrapped = true, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	Parent = TemplateDropdown, 
	BorderSizePixel = 0, 
	AnchorPoint = Vector2.new(1, 0.5), 
	Size = UDim2.fromScale(0.5410000085830688, 0.699999988079071), 
	Name = "Button", 
	Position = UDim2.fromScale(0.9746381044387817, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = Button, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("UITextSizeConstraint", { 
	MaxTextSize = 20, 
	Parent = Button, 
	MinTextSize = 20, 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = Button, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Enabled", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.800000011920929), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("UIStroke", { 
	Color = Color3.fromRGB(255, 255, 255), 
	Parent = Button, 
	Thickness = 3, 
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
})

local Dropdown = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = Button, 
	Name = "Dropdown", 
	Rotation = 9.99999993922529e-09, 
	Size = UDim2.fromScale(1, 0), 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 1.100000023841858), 
	AnchorPoint = Vector2.new(0.5, 0), 
	BorderSizePixel = 0, 
	AutomaticSize = Enum.AutomaticSize.Y, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: Frame

create("UIListLayout", { 
	Parent = Dropdown, 
	Padding = UDim.new(0.029999999329447746, 0), 
	SortOrder = Enum.SortOrder.LayoutOrder, 
})

local Template_1 = create("TextButton", { 
	Visible = false, 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextColor3 = Color3.fromRGB(0, 0, 0), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	Name = "Template", 
	Parent = Dropdown, 
	Size = UDim2.new(1, 0, 0, 40), 
	BorderSizePixel = 0, 
	TextSize = 14, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = Template_1, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = Template_1, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Enabled", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.800000011920929), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

create("UIStroke", { 
	Color = Color3.fromRGB(255, 255, 255), 
	Parent = Template_1, 
	Thickness = 3, 
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
})

local TemplateSlider = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BackgroundTransparency = 0.75, 
	Parent = TemplatePage, 
	Name = "TemplateSlider", 
	Size = UDim2.fromScale(1, 0.125), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateSlider, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = TemplateSlider, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Slider", 
	Name = "Label", 
	Size = UDim2.fromScale(0.4000000059604645, 0.699999988079071), 
	AnchorPoint = Vector2.new(0, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.024999918416142464, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local Slider = create("Frame", { 
	Active = true, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(1, 0.5), 
	Parent = TemplateSlider, 
	Name = "Slider", 
	Position = UDim2.fromScale(0.9549999833106995, 0.5), 
	Size = UDim2.fromScale(0.5099999904632568, 0.10000000149011612), 
	Selectable = true, 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(0, 0, 0), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(1, 0), 
	TopRightRadius = UDim.new(1, 0), 
	BottomRightRadius = UDim.new(1, 0), 
	Parent = Slider, 
	BottomLeftRadius = UDim.new(1, 0), 
})

create("UITextSizeConstraint", { 
	MaxTextSize = 20, 
	Parent = Slider, 
	MinTextSize = 20, 
})

local Button_1 = create("TextButton", { 
	FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextColor3 = Color3.fromRGB(0, 0, 0), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Name = "Button", 
	Parent = Slider, 
	Size = UDim2.fromScale(0.08941425383090973, 5.968115329742432), 
	BorderSizePixel = 0, 
	TextSize = 14, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(1, 0), 
	TopRightRadius = UDim.new(1, 0), 
	BottomRightRadius = UDim.new(1, 0), 
	Parent = Button_1, 
	BottomLeftRadius = UDim.new(1, 0), 
})

local TemplateToggle = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BackgroundTransparency = 0.75, 
	Parent = TemplatePage, 
	Name = "TemplateToggle", 
	Size = UDim2.fromScale(1, 0.125), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: Frame

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateToggle, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = TemplateToggle, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Toggle", 
	Name = "Label", 
	Size = UDim2.fromScale(0.4000000059604645, 0.699999988079071), 
	AnchorPoint = Vector2.new(0, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.024999918416142464, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local Button_2 = create("TextButton", { 
	TextWrapped = true, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	Parent = TemplateToggle, 
	BorderSizePixel = 0, 
	AnchorPoint = Vector2.new(1, 0.5), 
	Size = UDim2.fromScale(0.5410000085830688, 0.699999988079071), 
	Name = "Button", 
	Position = UDim2.fromScale(0.9746381044387817, 0.5000000596046448), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(154, 0, 0), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = Button_2, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("UITextSizeConstraint", { 
	MaxTextSize = 20, 
	Parent = Button_2, 
	MinTextSize = 20, 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = Button_2, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Enabled", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.800000011920929), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local TemplateButton = create("TextButton", { 
	Visible = false, 
	Active = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "", 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Parent = TemplatePage, 
	BackgroundTransparency = 0.5, 
	Name = "TemplateButton", 
	Size = UDim2.fromScale(1, 0.125), 
	Selectable = false, 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: TextButton

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateButton, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = TemplateButton, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Button", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.800000011920929), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

local TemplateLabel = create("TextLabel", { 
	Visible = false, 
	TextWrapped = true, 
	Parent = TemplatePage, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Goyim", 
	Name = "TemplateLabel", 
	Size = UDim2.fromScale(0.9748477935791016, 0.08390240371227264), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	Position = UDim2.fromScale(0.4874241054058075, 0.04195120558142662), 
	BackgroundTransparency = 1, 
	TextXAlignment = Enum.TextXAlignment.Left, 
	BorderSizePixel = 0, 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(170, 0, 255), 
}) :: TextLabel

create("UICorner", { 
	TopLeftRadius = UDim.new(0.20000000298023224, 0), 
	TopRightRadius = UDim.new(0.20000000298023224, 0), 
	BottomRightRadius = UDim.new(0.20000000298023224, 0), 
	Parent = TemplateLabel, 
	BottomLeftRadius = UDim.new(0.20000000298023224, 0), 
})

local InfoFrame = create("Frame", { 
	Visible = false, 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Parent = StudioUI, 
	BackgroundTransparency = 0.5, 
	Position = UDim2.fromScale(0.5828753709793091, 0.5415031313896179), 
	Name = "InfoFrame", 
	Size = UDim2.fromScale(0.231, 0.064), 
	BorderSizePixel = 0, 
	BackgroundColor3 = Color3.fromRGB(0, 0, 0), 
}) :: Frame

create("UIStroke", { 
	Color = Color3.fromRGB(170, 0, 255), 
	Parent = InfoFrame, 
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
})

create("UICorner", { 
	TopLeftRadius = UDim.new(0.10000000149011612, 0), 
	TopRightRadius = UDim.new(0.10000000149011612, 0), 
	BottomRightRadius = UDim.new(0.10000000149011612, 0), 
	Parent = InfoFrame, 
	BottomLeftRadius = UDim.new(0.10000000149011612, 0), 
})

create("UIPadding", { 
	PaddingTop = UDim.new(0.014999999664723873, 0), 
	PaddingBottom = UDim.new(0.014999999664723873, 0), 
	Parent = InfoFrame, 
	PaddingRight = UDim.new(0.014999999664723873, 0), 
	PaddingLeft = UDim.new(0.014999999664723873, 0), 
})

create("TextLabel", { 
	TextWrapped = true, 
	Parent = InfoFrame, 
	TextColor3 = Color3.fromRGB(255, 255, 255), 
	BorderColor3 = Color3.fromRGB(0, 0, 0), 
	Text = "Adjust your WalkSpeed!", 
	Name = "Label", 
	Size = UDim2.fromScale(0.8999999761581421, 0.8999999761581421), 
	AnchorPoint = Vector2.new(0.5, 0.5), 
	BorderSizePixel = 0, 
	BackgroundTransparency = 1, 
	Position = UDim2.fromScale(0.5, 0.5), 
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
	TextSize = 14, 
	TextScaled = true, 
	BackgroundColor3 = Color3.fromRGB(255, 255, 255), 
})

return StudioUI