--// METATABLES \\--

local Pane = {}
Pane.__index = Pane

local Page = {}
Page.__index = Page

local Button = {}
Button.__index = Button

local Toggle = {}
Toggle.__index = Toggle

local Label = {}
Label.__index = Label

local TextBox = {}
TextBox.__index = TextBox

local Slider = {}
Slider.__index = Slider

local Dropdown = {}
Dropdown.__index = Dropdown

--// TYPES \\--

export type LibOptions = {
	AccentColor : Color3,
	ToggleBind : Enum.KeyCode,
	TranslucentMode : boolean,
	Label : string
}

export type PageOptions = {
	Label:string,
	Open:boolean
}

export type ButtonOptions = {
	Label:string,
	Callback:any,
	Description:string
}

export type ToggleOptions = {
	Label:string,
	Callback:any,
	Enabled:boolean,
	RunOnCreation:boolean,
	Description:string
}

export type LabelOptions = {
	Label:string
}

export type TextBoxOptions = {
	Placeholder:string,
	Label:string,
	Callback:any,
	RunOnCreation:boolean,
	DefaultText:string,
	Description:string
}

export type SliderOptions = {
	Placeholder:string,
	Label:string,
	Callback:any,
	RunOnCreation:boolean,
	Value:number,
	MinValue:number,
	MaxValue:number,
	Description:string
}

export type DropdownOptions = {
	Options:any,
	DefaultValue:string,
	Label:string,
	Callback:any,
	RunOnCreation:boolean,
	Description:string
}

--// SERVICES & CONSTANTS \\--

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local localPlr = Players.LocalPlayer
local mouse = localPlr:GetMouse()
local UITools = require("@modules/UITools.lua")

--// FUNCTIONS \\--

local function addInfoFrame(infoFrame:Frame, element:GuiObject, text:string)
	if not text then return end
	element.MouseEnter:Connect(function()
		infoFrame.Label.Text = text
		infoFrame.Visible = true
	end)
	
	element.MouseLeave:Connect(function()
		infoFrame.Visible = false
	end)
end

--// MAIN UI \\--

function Pane.Create(options:LibOptions)
	local self = setmetatable({}, Pane)
	
	if getgenv then
		local pane = getgenv().pane
		if pane then
			pane:Destroy()
		end
	end
	
	local gui = require("@modules/UI.lua")
	if gethui then
		gui.Parent = gethui()
	else
		gui.Parent = localPlr.PlayerGui
	end
	
	self.gui = gui
	self.options = options
	
	self.highContainer = self.gui.Container
	self.mainFrame = self.highContainer.MainFrame
	self.topbar = self.mainFrame.Topbar
	self.container = self.mainFrame.Container
	
	self.modulesFrame = self.container.Modules
	self.pagesFolder = self.modulesFrame.Pages
	self.templatePage = self.pagesFolder.TemplatePage

	self.tabsFrame = self.container.Tabs
	self.templateTab = self.tabsFrame.Template
	self.openPage = nil
	
	self.infoFrame = gui.InfoFrame
	
	self.connections = {}
	
	UITools.makeDraggable(self.mainFrame)
	
	for _, v in pairs(self.topbar.Buttons:GetChildren()) do
		if v:IsA("ImageButton") then
			UITools.menuButton(v)
		end
	end
	
	local topbarButtons = self.topbar.Buttons
	topbarButtons.Close.MouseButton1Up:Connect(function()
		self:Destroy()
	end)
	
	topbarButtons.Minimize.MouseButton1Up:Connect(function()
		self.gui.Enabled = not self.gui.Enabled
	end)
	
	local maximized = false
	local prevPos
	local prevSiz
	topbarButtons.Maximize.MouseButton1Up:Connect(function()
		maximized = not maximized
		if not maximized then
			UITools.targetPosition = prevPos or UDim2.fromScale(0.5,0.5)
			UITools.tween(self.highContainer, 0.1, {Size = prevSiz or UDim2.fromScale(0.75,0.75)}):Play()
		else
			prevPos = self.highContainer.Position
			prevSiz = self.highContainer.Size
			UITools.targetPosition = UDim2.fromScale(0.5,0.5)
			UITools.tween(self.highContainer, 0.1, {Size = UDim2.fromScale(1,1)}):Play()
		end
	end)
	
	table.insert(self.connections, UserInputService.InputBegan:Connect(function(inp, gpe)
		if inp.KeyCode == (self.options.ToggleBind or Enum.KeyCode.RightShift) then
			--: gui open/close anim
			self.gui.Enabled = not self.gui.Enabled
		end
	end))
	
	table.insert(self.connections, RunService.RenderStepped:Connect(function()
		local mousePos = UserInputService:GetMouseLocation()
		self.infoFrame.Position = UDim2.fromOffset(mousePos.X,mousePos.Y)
	end))
	
	self:Update()
	return self
end

function Pane:Update(options:LibOptions)
	if options then
		self.options = options
	end
	
	self.topbar.HubName.Text = self.options.Label or "Nullix Hub"
	if not self.options.TranslucentMode then
		self.mainFrame.BackgroundTransparency = 0
		self.highContainer.Glow.ImageTransparency = 0
	end
	
	--: accent color
end

function Pane:Destroy()
	self.gui:Destroy()
	for _, v in self.connections do
		v:Disconnect()
	end
end

--| Page |--

function Pane:Page(options:PageOptions)
	local newPage = setmetatable({}, Page)
	
	newPage.Pane = self
	newPage.options = options
	
	local tabButton = self.templateTab:Clone()
	tabButton.Parent = self.tabsFrame
	
	tabButton.MouseButton1Up:Connect(function()
		newPage:Open()
	end)
	
	local pageFrame = self.templatePage:Clone()
	pageFrame.Parent = self.pagesFolder
	
	newPage.tabButton = tabButton
	newPage.pageFrame = pageFrame
	newPage.infoFrame = self.infoFrame
	
	newPage:Update()
	
	if options.Open then
		newPage:Open()
	end
	
	return newPage
end

function Page:Update(options:PageOptions)
	if options then
		self.options = options
	end
	
	self.pageFrame.Name = self.options.Label or ""
	self.tabButton.Name = self.options.Label or ""
	self.tabButton.Label.Text = self.options.Label or ""
	self.tabButton.Visible = true
end

function Page:Open()
	if self.Pane.openPage then
		self.Pane.openPage.Visible = false
	end
	--: make opening better
	self.Pane.openPage = self.pageFrame
	self.pageFrame.Visible = true
end

--| Button |--

function Page:Button(options:ButtonOptions)
	local newButton = setmetatable({}, Button)
	
	local button:TextButton = self.pageFrame.TemplateButton:Clone()
	button.Parent = self.pageFrame
	newButton.button = button
	newButton.options = options
	newButton.page = self
	
	addInfoFrame(self.infoFrame, button, options.Description)
	
	button.MouseButton1Up:Connect(options.Callback)
	--: add tweens or something
	
	newButton:Update()
	
	return newButton
end

function Button:Update(options:ButtonOptions)
	if options then
		self.options = options
	end
	
	local button = self.button
	button.Label.Text = self.options.Label or ""
	button.Visible = true
end

--| Toggle |--

function Page:Toggle(options:ToggleOptions)
	local newToggle = setmetatable({}, Toggle)

	local frame:Frame = self.pageFrame.TemplateToggle:Clone()
	frame.Parent = self.pageFrame
	newToggle.frame = frame
	newToggle.options = options
	newToggle.page = self
	newToggle.enabled = options.Enabled or false
	
	addInfoFrame(self.infoFrame, frame.Label, options.Description)
	
	newToggle:Set((options.Enabled or false), not (options.RunOnCreation or false))
	frame.Button.MouseButton1Up:Connect(function()
		newToggle:Set(not newToggle.enabled)
	end)

	newToggle:Update()

	return newToggle
end

function Toggle:Set(val:boolean, noCallback)
	self.enabled = val
	
	if not noCallback then
		self.options.Callback(self.enabled)
	end
	
	local button:TextButton = self.frame:FindFirstChild("Button")
	local label:TextLabel = button:FindFirstChild("Label")
	label.Text = val and "Enabled" or "Disabled"
	button.BackgroundColor3 = val and Color3.fromRGB(33, 154, 0) or Color3.fromRGB(154, 0, 0)
	--: add tweens or something
end

function Toggle:Update(options:ToggleOptions)
	if options then
		self.options = options
	end
	
	local frame = self.frame
	frame.Label.Text = self.options.Label or ""
	frame.Visible = true
end

--| Label |--

function Page:Label(options:LabelOptions)
	local newLabel = setmetatable({}, Label)
	newLabel.page = self
	local label = self.pageFrame.TemplateLabel:Clone()
	newLabel.options = options
	label.Parent = self.pageFrame
	
	newLabel.label = label
	
	newLabel:Update()
	return newLabel
end

function Label:Update(options:LabelOptions)
	if options then
		self.options = options
	end
	
	self.label.Text = self.options.Label or ""
	self.label.Visible = true
end

--| Text Box |--

function Page:TextBox(options:TextBoxOptions)
	local newTextBox = setmetatable({}, TextBox)

	local frame = self.pageFrame.TemplateTextBox:Clone()
	frame.Parent = self.pageFrame
	newTextBox.frame = frame
	newTextBox.options = options
	newTextBox.page = self
	newTextBox.value = options.Placeholder or ""
	newTextBox:Set((options.DefaultText or ""), not (options.RunOnCreation or false))
	frame.Input.FocusLost:Connect(function()
		newTextBox:Set(frame.Input.Text)
	end)
	
	addInfoFrame(self.infoFrame, frame.Label, options.Description)
	newTextBox:Update()

	return newTextBox
end

function TextBox:Set(val:string, noCallback)
	self.value = (val~="") and val or self.options.Placeholder

	if not noCallback then
		self.options.Callback(self.value)
	end

	local frame = self.frame
	frame.Input.Text = val or ""
	--: add tweens or something
end

function TextBox:Update(options:TextBoxOptions)
	if options then
		self.options = options
	end
	
	local frame = self.frame
	frame.Label.Text = self.options.Label or ""
	frame.Input.Text = self.options.DefaultText or ""
	frame.Input.PlaceholderText = self.options.Placeholder or ""
	frame.Visible = true
end

--| Slider |--

function Page:Slider(options:SliderOptions)
	local newSlider = setmetatable({}, Slider)

	local frame = self.pageFrame.TemplateSlider:Clone()
	frame.Parent = self.pageFrame
	newSlider.frame = frame
	newSlider.options = options
	newSlider.page = self
	newSlider.value = options.Value or ""
	newSlider:Set((options.Value/options.MaxValue), not (options.RunOnCreation or false))
	newSlider:Update()
	
	local sliderFrame = frame.Slider
	newSlider.holding = false
	sliderFrame.Button.MouseButton1Down:Connect(function()
		newSlider.holding = true
	end)
	UserInputService.InputEnded:Connect(function(key, gpe)
		if key.UserInputType == Enum.UserInputType.MouseButton1 then
			newSlider.holding = false
		end
	end)
	
	newSlider.runConnection = RunService.Heartbeat:Connect(function()
		if newSlider.holding then
			newSlider.value = math.clamp((mouse.X-sliderFrame.AbsolutePosition.X)/sliderFrame.AbsoluteSize.X,0,1)
			newSlider.trueValue = ((options.MaxValue-options.MinValue)*newSlider.value)+options.MinValue
			newSlider:Set()
		end
	end)
	
	addInfoFrame(self.infoFrame, frame.Label, options.Description)

	return newSlider
end

function Slider:Set(val:number, noCallback)
	if not noCallback then
		self.options.Callback(self.trueValue)
	end

	local frame = self.frame
	self.value = val or self.value
	self:Update()
end

function Slider:Update(options:SliderOptions)
	if options then
		self.options = options
	end

	local frame = self.frame
	frame.Label.Text = self.options.Label or ""
	frame.Visible = true
	frame.Slider.Button.Position = UDim2.fromScale(self.value, 0)
end

--| Dropdown |--

function Page:Dropdown(options:DropdownOptions)
	--: add multiple here, make it look better too
	local newDropdown = setmetatable({}, Dropdown)
	newDropdown.Page = self
	newDropdown.options = options
	
	local frame = self.pageFrame.TemplateDropdown:Clone()
	frame.Parent = self.pageFrame
	frame.Visible = true
	newDropdown.frame = frame
	
	local button = frame.Button
	button.MouseButton1Up:Connect(function()
		button.Dropdown.Visible = not button.Dropdown.Visible
		--: add cool tween here
	end)
	
	addInfoFrame(self.infoFrame, frame.Label, options.Description)
	
	newDropdown:Update()
	
	return newDropdown
end

function Dropdown:Update(options:DropdownOptions)
	if options then
		self.options = options
	end
	options = self.options
	
	local button:TextButton = self.frame.Button
	local dropdownFrame:Frame = button.Dropdown
	local templateOption:TextButton = dropdownFrame.Template
	button.Label.Text = options.DefaultValue or "Choose One"
	
	for _, v in pairs(dropdownFrame:GetChildren()) do
		if v ~= templateOption and v:IsA("TextButton") then
			v:Destroy()
		end
	end
	
	for _, v in pairs(options.Options) do
		local newButton = templateOption:Clone()
		newButton.Parent = dropdownFrame
		newButton.Visible = true
		newButton.Name = v
		newButton.Label.Text = v
		newButton.MouseButton1Up:Connect(function()
			self.selected = v
			options.Callback(v)
			button.Label.Text = v
			dropdownFrame.Visible = false
		end)
	end
end

return Pane