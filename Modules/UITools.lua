local UITools = {}

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

function UITools.tween(instance:Instance, tweenTime:number, properties:any, style:Enum.EasingStyle, direction:Enum.EasingDirection)
	local info = TweenInfo.new(tweenTime or 0.15, style or Enum.EasingStyle.Sine, direction or Enum.EasingDirection.Out)
	return TweenService:Create(instance, info, properties)
end

function UITools.makeDraggable(frame:Frame, LERP_SPEED, mainFrame:Frame)
	local parentFrame: Frame = mainFrame or frame.Parent
	local initialMousePos
	local initialFramePos
	local isDragging = false
	local dragConnection
	local heartbeatConnection
	UITools.targetPosition = parentFrame.Position
	local function onMouseDown(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = true
			initialMousePos = input.Position
			initialFramePos = parentFrame.Position
			UITools.targetPosition = parentFrame.Position
			dragConnection = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					isDragging = false
					if dragConnection then
						dragConnection:Disconnect()
					end
				end
			end)
		end
	end
	local function onMouseMove(input)
		if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - initialMousePos
			UITools.targetPosition = initialFramePos + UDim2.new(0, delta.X, 0, delta.Y)
		end
	end
	heartbeatConnection = RunService.Heartbeat:Connect(function(dt)
		parentFrame.Position = parentFrame.Position:Lerp(UITools.targetPosition, math.min(1, (LERP_SPEED or 15) * dt))
	end)
	frame.InputBegan:Connect(onMouseDown)
	UserInputService.InputChanged:Connect(onMouseMove)
	return function()
		if dragConnection then dragConnection:Disconnect() end
		if heartbeatConnection then heartbeatConnection:Disconnect() end
	end
end

function UITools.menuButton(button:TextButton)
	button.MouseEnter:Connect(function()
		UITools.tween(button, 0.15, {Size=UDim2.fromScale(button.Size.X.Scale, 1.25)}):Play()
		UITools.tween(button, 0.15, {ImageColor3=Color3.fromRGB(200, 0, 255)}):Play()
	end)
	button.MouseLeave:Connect(function()
		UITools.tween(button, 0.15, {Size=UDim2.fromScale(button.Size.X.Scale, 1)}):Play()
		UITools.tween(button, 0.15, {ImageColor3=Color3.fromRGB(170, 0, 255)}):Play()
	end)
	button.MouseButton1Up:Connect(function()
		UITools.tween(button, 0.15, {Size=UDim2.fromScale(button.Size.X.Scale, 1.25)}):Play()
	end)
	button.MouseButton1Down:Connect(function()
		UITools.tween(button, 0.15, {Size=UDim2.fromScale(button.Size.X.Scale, 0.75)}):Play()
	end)
end

return UITools
