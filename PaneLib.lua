local a={cache={}::any}do do local function __modImpl()local b={}local c=game:
GetService'UserInputService'local d=game:GetService'RunService'local e=game:
GetService'TweenService'function b.tween(f:Instance,g:number,h:any,i:Enum.
EasingStyle,j:Enum.EasingDirection)local k=TweenInfo.new(g or 0.15,i or Enum.
EasingStyle.Sine,j or Enum.EasingDirection.Out)return e:Create(f,k,h)end
function b.makeDraggable(f:Frame,g,h:Frame)local i:Frame=h or f.Parent local j
local k local l=false local m local n b.targetPosition=i.Position local function
onMouseDown(o)if o.UserInputType==Enum.UserInputType.MouseButton1 then l=true j=
o.Position k=i.Position b.targetPosition=i.Position m=o.Changed:Connect(function
()if o.UserInputState==Enum.UserInputState.End then l=false if m then m:
Disconnect()end end end)end end local function onMouseMove(o)if l and o.
UserInputType==Enum.UserInputType.MouseMovement then local p=o.Position-j b.
targetPosition=k+UDim2.new(0,p.X,0,p.Y)end end n=d.Heartbeat:Connect(function(o)
i.Position=i.Position:Lerp(b.targetPosition,math.min(1,(g or 15)*o))end)f.
InputBegan:Connect(onMouseDown)c.InputChanged:Connect(onMouseMove)return
function()if m then m:Disconnect()end if n then n:Disconnect()end end end
function b.menuButton(f:TextButton)f.MouseEnter:Connect(function()b.tween(f,0.15
,{Size=UDim2.fromScale(f.Size.X.Scale,1.25)}):Play()b.tween(f,0.15,{ImageColor3=
Color3.fromRGB(200,0,255)}):Play()end)f.MouseLeave:Connect(function()b.tween(f,
0.15,{Size=UDim2.fromScale(f.Size.X.Scale,1)}):Play()b.tween(f,0.15,{ImageColor3
=Color3.fromRGB(170,0,255)}):Play()end)f.MouseButton1Up:Connect(function()b.
tween(f,0.15,{Size=UDim2.fromScale(f.Size.X.Scale,1.25)}):Play()end)f.
MouseButton1Down:Connect(function()b.tween(f,0.15,{Size=UDim2.fromScale(f.Size.X
.Scale,0.75)}):Play()end)end return b end function a.a():typeof(__modImpl())
local b=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b end return b.c end
end do local function __modImpl()local function create(b:string,c:{}?,d:{}?):
Instance|boolean local e,f=pcall(Instance.new,b)if not e then return false end
if c then for g,h in next,c do local i,j=pcall(function()(f::any)[g]=h end)if
not i then warn(j)return nil end end end if d then for g,h in pairs(d)do f:
SetAttribute(g,h)end end return f end local b=create('ScreenGui',{ScreenInsets=
Enum.ScreenInsets.DeviceSafeInsets,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,
ResetOnSpawn=false,Parent=game.StarterGui,Name='StudioUI'})::ScreenGui local c=
create('Frame',{BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.new(0.5,
0.5),Parent=b,BackgroundTransparency=1,Position=UDim2.fromScale(0.5,0.5),Name=
'Container',Size=UDim2.fromScale(0.75,0.75),BorderSizePixel=0,BackgroundColor3=
Color3.fromRGB(255,255,255)})::Frame create('ImageLabel',{ImageColor3=Color3.
fromRGB(170,0,255),ImageTransparency=0.5,BorderColor3=Color3.fromRGB(0,0,0),
Image='rbxassetid://90166083119663',BackgroundTransparency=1,Parent=c,Name=
'Glow',Size=UDim2.fromScale(1,1),BorderSizePixel=0,BackgroundColor3=Color3.
fromRGB(255,255,255)})local d=create('Frame',{BorderColor3=Color3.fromRGB(0,0,0)
,AnchorPoint=Vector2.new(0.5,0.5),Parent=c,BackgroundTransparency=0.5,Position=
UDim2.fromScale(0.5,0.44999998807907104),Name='MainFrame',Size=UDim2.fromScale(
0.699999988079071,0.699999988079071),BorderSizePixel=0,BackgroundColor3=Color3.
fromRGB(0,0,0)})::Frame create('UIStroke',{Color=Color3.fromRGB(170,0,255),
Parent=d,ApplyStrokeMode=Enum.ApplyStrokeMode.Border})create('UICorner',{
TopLeftRadius=UDim.new(0.02500000037252903,0),TopRightRadius=UDim.new(
0.02500000037252903,0),BottomRightRadius=UDim.new(0.02500000037252903,0),Parent=
d,BottomLeftRadius=UDim.new(0.02500000037252903,0)})local e=create('Frame',{
LayoutOrder=2,BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.new(0.5,0.5
),Name='Partition',Position=UDim2.fromScale(0.4905392527580261,
0.1359180361032486),Parent=d,Size=UDim2.fromScale(1,0.005109294317662716),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0,255)})::Frame create(
'UICorner',{TopLeftRadius=UDim.new(1,0),TopRightRadius=UDim.new(1,0),
BottomRightRadius=UDim.new(1,0),Parent=e,BottomLeftRadius=UDim.new(1,0)})create(
'UIPadding',{PaddingTop=UDim.new(0.014999999664723873,0),PaddingBottom=UDim.new(
0.014999999664723873,0),Parent=d,PaddingRight=UDim.new(0.014999999664723873,0),
PaddingLeft=UDim.new(0.014999999664723873,0)})create('UIListLayout',{Parent=d,
Padding=UDim.new(0.014999999664723873,0),SortOrder=Enum.SortOrder.LayoutOrder,
HorizontalFlex=Enum.UIFlexAlignment.Fill})local f=create('Frame',{LayoutOrder=1,
BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.new(0.5,0.5),Parent=d,
BackgroundTransparency=1,Position=UDim2.fromScale(0.5,0.058424703776836395),Name
='Topbar',Size=UDim2.fromScale(1,0.10000000149011612),BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(255,255,255)})::Frame create('TextLabel',{
TextWrapped=true,TextColor3=Color3.fromRGB(170,0,255),BorderColor3=Color3.
fromRGB(0,0,0),Text='Nullix Hub',Parent=f,Name='HubName',Size=UDim2.fromScale(
0.5,1),BorderSizePixel=0,BackgroundTransparency=1,TextXAlignment=Enum.
TextXAlignment.Left,TextSize=14,FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextScaled=true,BackgroundColor3=Color3.fromRGB(255,255,255)})
local g=create('Frame',{BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.
new(1,0.5),Parent=f,BackgroundTransparency=1,Position=UDim2.fromScale(
0.9999997615814209,0.5000003576278687),Name='Buttons',Size=UDim2.fromScale(
0.210999995470047,0.6000000238418579),BorderSizePixel=0,BackgroundColor3=Color3.
fromRGB(255,255,255)})::Frame create('ImageButton',{LayoutOrder=2,ScaleType=Enum
.ScaleType.Fit,BorderColor3=Color3.fromRGB(0,0,0),Parent=g,Image=
'rbxassetid://76045941763188',BackgroundTransparency=1,Name='Maximize',Size=
UDim2.fromScale(0.30000001192092896,1),ImageColor3=Color3.fromRGB(170,0,255),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255)})create(
'ImageButton',{LayoutOrder=1,ScaleType=Enum.ScaleType.Fit,BorderColor3=Color3.
fromRGB(0,0,0),Parent=g,Image='rbxassetid://118026365011536',
BackgroundTransparency=1,Name='Minimize',Size=UDim2.fromScale(
0.30000001192092896,1),ImageColor3=Color3.fromRGB(170,0,255),BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(255,255,255)})create('ImageButton',{LayoutOrder=
3,ScaleType=Enum.ScaleType.Fit,BorderColor3=Color3.fromRGB(0,0,0),Parent=g,Image
='rbxassetid://110786993356448',BackgroundTransparency=1,Name='Close',Size=UDim2
.fromScale(0.30000001192092896,1),ImageColor3=Color3.fromRGB(170,0,255),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255)})create(
'UIListLayout',{VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.
SortOrder.LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right,Parent=
g,FillDirection=Enum.FillDirection.Horizontal})local h=create('Frame',{
LayoutOrder=3,BorderColor3=Color3.fromRGB(0,0,0),Parent=d,BackgroundTransparency
=1,Position=UDim2.fromScale(9.789383881297908e-8,0.13510926067829132),Name=
'Container',Size=UDim2.fromScale(0.9999998807907104,0.8538240790367126),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255)})::Frame create(
'UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalFlex=Enum.
UIFlexAlignment.Fill,Parent=h,Padding=UDim.new(0.009999999776482582,0),SortOrder
=Enum.SortOrder.LayoutOrder})local i=create('ScrollingFrame',{
ScrollBarImageColor3=Color3.fromRGB(0,0,0),Active=true,AutomaticCanvasSize=Enum.
AutomaticSize.Y,ScrollBarThickness=0,Parent=h,Name='Tabs',Size=UDim2.fromScale(
0.25,1),BackgroundTransparency=1,Position=UDim2.fromScale(9.363518671534621e-8,-
9.757093977214026E-8),BackgroundColor3=Color3.fromRGB(255,255,255),BorderColor3=
Color3.fromRGB(0,0,0),BorderSizePixel=0,CanvasSize=UDim2.fromScale(0,0)})::
ScrollingFrame local j=create('TextButton',{Visible=false,Active=false,
BorderColor3=Color3.fromRGB(0,0,0),Text='',AnchorPoint=Vector2.new(0.5,0.5),
Parent=i,BackgroundTransparency=0.75,Name='Template',Size=UDim2.fromScale(1,
0.125),Selectable=false,BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0,
255)})::TextButton create('UICorner',{TopLeftRadius=UDim.new(0.20000000298023224
,0),TopRightRadius=UDim.new(0.20000000298023224,0),BottomRightRadius=UDim.new(
0.20000000298023224,0),Parent=j,BottomLeftRadius=UDim.new(0.20000000298023224,0)
})create('TextLabel',{TextWrapped=true,Parent=j,TextColor3=Color3.fromRGB(255,
255,255),BorderColor3=Color3.fromRGB(0,0,0),Text='Home',Name='Label',Size=UDim2.
fromScale(0.8999999761581421,0.800000011920929),AnchorPoint=Vector2.new(0.5,0.5)
,BorderSizePixel=0,BackgroundTransparency=1,Position=UDim2.fromScale(0.5,0.5),
FontFace=Font.new('rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.
Regular,Enum.FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=
Color3.fromRGB(255,255,255)})create('UIListLayout',{Parent=i,Padding=UDim.new(
0.009999999776482582,0),SortOrder=Enum.SortOrder.LayoutOrder})local k=create(
'ScrollingFrame',{ScrollBarImageColor3=Color3.fromRGB(0,0,0),Active=true,
AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=0,Parent=h,Name=
'Modules',Size=UDim2.fromScale(0.7400000095367432,1),LayoutOrder=1,
BackgroundTransparency=1,Position=UDim2.fromScale(9.363518671534621e-8,-
9.757093977214026E-8),BackgroundColor3=Color3.fromRGB(255,255,255),BorderColor3=
Color3.fromRGB(0,0,0),BorderSizePixel=0,CanvasSize=UDim2.fromScale(0,0)})::
ScrollingFrame local l=create('Folder',{Name='Pages',Parent=k})::Folder local m=
create('Frame',{Visible=false,BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=
Vector2.new(0.5,0.5),Parent=l,BackgroundTransparency=1,Position=UDim2.fromScale(
0.5,0.5),Name='TemplatePage',Size=UDim2.fromScale(1,1),BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(255,255,255)})::Frame create('UIListLayout',{
Parent=m,Padding=UDim.new(0.014999999664723873,0),HorizontalAlignment=Enum.
HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder})local n=create(
'Frame',{Visible=false,BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.
new(0.5,0.5),BackgroundTransparency=0.75,Parent=m,Name='TemplateTextBox',Size=
UDim2.fromScale(1,0.125),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0
,255)})::Frame create('UICorner',{TopLeftRadius=UDim.new(0.20000000298023224,0),
TopRightRadius=UDim.new(0.20000000298023224,0),BottomRightRadius=UDim.new(
0.20000000298023224,0),Parent=n,BottomLeftRadius=UDim.new(0.20000000298023224,0)
})create('TextLabel',{TextWrapped=true,Parent=n,TextColor3=Color3.fromRGB(255,
255,255),BorderColor3=Color3.fromRGB(0,0,0),Text='Text Box',Name='Label',Size=
UDim2.fromScale(0.4000000059604645,0.699999988079071),AnchorPoint=Vector2.new(0,
0.5),BorderSizePixel=0,BackgroundTransparency=1,Position=UDim2.fromScale(
0.024999918416142464,0.5000000596046448),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local o=create('TextBox',{TextWrapped=true,TextColor3=Color3.
fromRGB(0,0,0),BorderColor3=Color3.fromRGB(0,0,0),Text=
'ALL HAIL BENJAMIN NETANYAHU',Parent=n,BorderSizePixel=0,AnchorPoint=Vector2.
new(1,0.5),Size=UDim2.fromScale(0.5410000085830688,0.699999988079071),Name=
'Input',Position=UDim2.fromScale(0.9746381044387817,0.5000000596046448),FontFace
=Font.new('rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,
Enum.FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.
fromRGB(255,255,255)})::TextBox create('UICorner',{TopLeftRadius=UDim.new(
0.20000000298023224,0),TopRightRadius=UDim.new(0.20000000298023224,0),
BottomRightRadius=UDim.new(0.20000000298023224,0),Parent=o,BottomLeftRadius=UDim
.new(0.20000000298023224,0)})create('UITextSizeConstraint',{MaxTextSize=20,
Parent=o,MinTextSize=20})local p=create('Frame',{Visible=false,BorderColor3=
Color3.fromRGB(0,0,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=
0.75,Parent=m,Name='TemplateDropdown',Size=UDim2.fromScale(1,0.125),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0,255)})::Frame create(
'UICorner',{TopLeftRadius=UDim.new(0.20000000298023224,0),TopRightRadius=UDim.
new(0.20000000298023224,0),BottomRightRadius=UDim.new(0.20000000298023224,0),
Parent=p,BottomLeftRadius=UDim.new(0.20000000298023224,0)})create('TextLabel',{
TextWrapped=true,Parent=p,TextColor3=Color3.fromRGB(255,255,255),BorderColor3=
Color3.fromRGB(0,0,0),Text='Dropdown',Name='Label',Size=UDim2.fromScale(
0.4000000059604645,0.699999988079071),AnchorPoint=Vector2.new(0,0.5),
BorderSizePixel=0,BackgroundTransparency=1,Position=UDim2.fromScale(
0.024999918416142464,0.5000000596046448),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local q=create('TextButton',{TextWrapped=true,TextColor3=Color3.
fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text='',Parent=p,
BorderSizePixel=0,AnchorPoint=Vector2.new(1,0.5),Size=UDim2.fromScale(
0.5410000085830688,0.699999988079071),Name='Button',Position=UDim2.fromScale(
0.9746381044387817,0.5000000596046448),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
170,0,255)})::TextButton create('UICorner',{TopLeftRadius=UDim.new(
0.20000000298023224,0),TopRightRadius=UDim.new(0.20000000298023224,0),
BottomRightRadius=UDim.new(0.20000000298023224,0),Parent=q,BottomLeftRadius=UDim
.new(0.20000000298023224,0)})create('UITextSizeConstraint',{MaxTextSize=20,
Parent=q,MinTextSize=20})create('TextLabel',{TextWrapped=true,Parent=q,
TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text=
'Enabled',Name='Label',Size=UDim2.fromScale(0.8999999761581421,0.800000011920929
),AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=0,BackgroundTransparency=1,
Position=UDim2.fromScale(0.5,0.5),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})create('UIStroke',{Color=Color3.fromRGB(255,255,255),Parent=q,
Thickness=3,ApplyStrokeMode=Enum.ApplyStrokeMode.Border})local r=create('Frame',
{Visible=false,BorderColor3=Color3.fromRGB(0,0,0),Parent=q,Name='Dropdown',
Rotation=9.99999993922529e-9,Size=UDim2.fromScale(1,0),BackgroundTransparency=1,
Position=UDim2.fromScale(0.5,1.100000023841858),AnchorPoint=Vector2.new(0.5,0),
BorderSizePixel=0,AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.
fromRGB(255,255,255)})::Frame create('UIListLayout',{Parent=r,Padding=UDim.new(
0.029999999329447746,0),SortOrder=Enum.SortOrder.LayoutOrder})local s=create(
'TextButton',{Visible=false,FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextColor3=Color3.fromRGB(0,0,0),BorderColor3=Color3.fromRGB(0
,0,0),Text='',Name='Template',Parent=r,Size=UDim2.new(1,0,0,40),BorderSizePixel=
0,TextSize=14,BackgroundColor3=Color3.fromRGB(170,0,255)})::TextButton create(
'UICorner',{TopLeftRadius=UDim.new(0.20000000298023224,0),TopRightRadius=UDim.
new(0.20000000298023224,0),BottomRightRadius=UDim.new(0.20000000298023224,0),
Parent=s,BottomLeftRadius=UDim.new(0.20000000298023224,0)})create('TextLabel',{
TextWrapped=true,Parent=s,TextColor3=Color3.fromRGB(255,255,255),BorderColor3=
Color3.fromRGB(0,0,0),Text='Enabled',Name='Label',Size=UDim2.fromScale(
0.8999999761581421,0.800000011920929),AnchorPoint=Vector2.new(0.5,0.5),
BorderSizePixel=0,BackgroundTransparency=1,Position=UDim2.fromScale(0.5,0.5),
FontFace=Font.new('rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.
Regular,Enum.FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=
Color3.fromRGB(255,255,255)})create('UIStroke',{Color=Color3.fromRGB(255,255,255
),Parent=s,Thickness=3,ApplyStrokeMode=Enum.ApplyStrokeMode.Border})local t=
create('Frame',{Visible=false,BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=
Vector2.new(0.5,0.5),BackgroundTransparency=0.75,Parent=m,Name='TemplateSlider',
Size=UDim2.fromScale(1,0.125),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(
170,0,255)})::Frame create('UICorner',{TopLeftRadius=UDim.new(
0.20000000298023224,0),TopRightRadius=UDim.new(0.20000000298023224,0),
BottomRightRadius=UDim.new(0.20000000298023224,0),Parent=t,BottomLeftRadius=UDim
.new(0.20000000298023224,0)})create('TextLabel',{TextWrapped=true,Parent=t,
TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text=
'Slider',Name='Label',Size=UDim2.fromScale(0.4000000059604645,0.699999988079071)
,AnchorPoint=Vector2.new(0,0.5),BorderSizePixel=0,BackgroundTransparency=1,
Position=UDim2.fromScale(0.024999918416142464,0.5000000596046448),FontFace=Font.
new('rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local u=create('Frame',{Active=true,BorderColor3=Color3.fromRGB(0,
0,0),AnchorPoint=Vector2.new(1,0.5),Parent=t,Name='Slider',Position=UDim2.
fromScale(0.9549999833106995,0.5),Size=UDim2.fromScale(0.5099999904632568,
0.10000000149011612),Selectable=true,BorderSizePixel=0,BackgroundColor3=Color3.
fromRGB(0,0,0)})::Frame create('UICorner',{TopLeftRadius=UDim.new(1,0),
TopRightRadius=UDim.new(1,0),BottomRightRadius=UDim.new(1,0),Parent=u,
BottomLeftRadius=UDim.new(1,0)})create('UITextSizeConstraint',{MaxTextSize=20,
Parent=u,MinTextSize=20})local v=create('TextButton',{FontFace=Font.new(
'rbxasset://fonts/families/SourceSansPro.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextColor3=Color3.fromRGB(0,0,0),BorderColor3=Color3.fromRGB(0
,0,0),Text='',AnchorPoint=Vector2.new(0.5,0.5),Name='Button',Parent=u,Size=UDim2
.fromScale(0.08941425383090973,5.968115329742432),BorderSizePixel=0,TextSize=14,
BackgroundColor3=Color3.fromRGB(255,255,255)})::TextButton create('UICorner',{
TopLeftRadius=UDim.new(1,0),TopRightRadius=UDim.new(1,0),BottomRightRadius=UDim.
new(1,0),Parent=v,BottomLeftRadius=UDim.new(1,0)})local w=create('Frame',{
Visible=false,BorderColor3=Color3.fromRGB(0,0,0),AnchorPoint=Vector2.new(0.5,0.5
),BackgroundTransparency=0.75,Parent=m,Name='TemplateToggle',Size=UDim2.
fromScale(1,0.125),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0,255)}
)::Frame create('UICorner',{TopLeftRadius=UDim.new(0.20000000298023224,0),
TopRightRadius=UDim.new(0.20000000298023224,0),BottomRightRadius=UDim.new(
0.20000000298023224,0),Parent=w,BottomLeftRadius=UDim.new(0.20000000298023224,0)
})create('TextLabel',{TextWrapped=true,Parent=w,TextColor3=Color3.fromRGB(255,
255,255),BorderColor3=Color3.fromRGB(0,0,0),Text='Toggle',Name='Label',Size=
UDim2.fromScale(0.4000000059604645,0.699999988079071),AnchorPoint=Vector2.new(0,
0.5),BorderSizePixel=0,BackgroundTransparency=1,Position=UDim2.fromScale(
0.024999918416142464,0.5000000596046448),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local x=create('TextButton',{TextWrapped=true,TextColor3=Color3.
fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text='',Parent=w,
BorderSizePixel=0,AnchorPoint=Vector2.new(1,0.5),Size=UDim2.fromScale(
0.5410000085830688,0.699999988079071),Name='Button',Position=UDim2.fromScale(
0.9746381044387817,0.5000000596046448),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
154,0,0)})::TextButton create('UICorner',{TopLeftRadius=UDim.new(
0.20000000298023224,0),TopRightRadius=UDim.new(0.20000000298023224,0),
BottomRightRadius=UDim.new(0.20000000298023224,0),Parent=x,BottomLeftRadius=UDim
.new(0.20000000298023224,0)})create('UITextSizeConstraint',{MaxTextSize=20,
Parent=x,MinTextSize=20})create('TextLabel',{TextWrapped=true,Parent=x,
TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text=
'Enabled',Name='Label',Size=UDim2.fromScale(0.8999999761581421,0.800000011920929
),AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=0,BackgroundTransparency=1,
Position=UDim2.fromScale(0.5,0.5),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local y=create('TextButton',{Visible=false,Active=false,
BorderColor3=Color3.fromRGB(0,0,0),Text='',AnchorPoint=Vector2.new(0.5,0.5),
Parent=m,BackgroundTransparency=0.5,Name='TemplateButton',Size=UDim2.fromScale(1
,0.125),Selectable=false,BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(170,0
,255)})::TextButton create('UICorner',{TopLeftRadius=UDim.new(
0.20000000298023224,0),TopRightRadius=UDim.new(0.20000000298023224,0),
BottomRightRadius=UDim.new(0.20000000298023224,0),Parent=y,BottomLeftRadius=UDim
.new(0.20000000298023224,0)})create('TextLabel',{TextWrapped=true,Parent=y,
TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text=
'Button',Name='Label',Size=UDim2.fromScale(0.8999999761581421,0.800000011920929)
,AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=0,BackgroundTransparency=1,
Position=UDim2.fromScale(0.5,0.5),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})local z=create('TextLabel',{Visible=false,TextWrapped=true,Parent=
m,TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text
='Goyim',Name='TemplateLabel',Size=UDim2.fromScale(0.9748477935791016,
0.08390240371227264),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(
0.4874241054058075,0.04195120558142662),BackgroundTransparency=1,TextXAlignment=
Enum.TextXAlignment.Left,BorderSizePixel=0,FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextScaled=true,BackgroundColor3=Color3.fromRGB(170,0,255)})::
TextLabel create('UICorner',{TopLeftRadius=UDim.new(0.20000000298023224,0),
TopRightRadius=UDim.new(0.20000000298023224,0),BottomRightRadius=UDim.new(
0.20000000298023224,0),Parent=z,BottomLeftRadius=UDim.new(0.20000000298023224,0)
})local A=create('Frame',{Visible=false,BorderColor3=Color3.fromRGB(0,0,0),
Parent=b,BackgroundTransparency=0.5,Position=UDim2.fromScale(0.5828753709793091,
0.5415031313896179),Name='InfoFrame',Size=UDim2.fromScale(0.231,0.064),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(0,0,0)})::Frame create(
'UIStroke',{Color=Color3.fromRGB(170,0,255),Parent=A,ApplyStrokeMode=Enum.
ApplyStrokeMode.Border})create('UICorner',{TopLeftRadius=UDim.new(
0.10000000149011612,0),TopRightRadius=UDim.new(0.10000000149011612,0),
BottomRightRadius=UDim.new(0.10000000149011612,0),Parent=A,BottomLeftRadius=UDim
.new(0.10000000149011612,0)})create('UIPadding',{PaddingTop=UDim.new(
0.014999999664723873,0),PaddingBottom=UDim.new(0.014999999664723873,0),Parent=A,
PaddingRight=UDim.new(0.014999999664723873,0),PaddingLeft=UDim.new(
0.014999999664723873,0)})create('TextLabel',{TextWrapped=true,Parent=A,
TextColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),Text=
'Adjust your WalkSpeed!',Name='Label',Size=UDim2.fromScale(0.8999999761581421,
0.8999999761581421),AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=0,
BackgroundTransparency=1,Position=UDim2.fromScale(0.5,0.5),FontFace=Font.new(
'rbxasset://fonts/families/Inconsolata.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=14,TextScaled=true,BackgroundColor3=Color3.fromRGB(
255,255,255)})return b end function a.b():typeof(__modImpl())local b=a.cache.b
if not b then b={c=__modImpl()}a.cache.b=b end return b.c end end end local b={}
b.__index=b local c={}c.__index=c local d={}d.__index=d local e={}e.__index=e
local f={}f.__index=f local g={}g.__index=g local h={}h.__index=h local i={}i.
__index=i export type LibOptions={AccentColor:Color3,ToggleBind:Enum.KeyCode,
TranslucentMode:boolean,Label:string}export type PageOptions={Label:string,Open:
boolean}export type ButtonOptions={Label:string,Callback:any,Description:string}
export type ToggleOptions={Label:string,Callback:any,Enabled:boolean,
RunOnCreation:boolean,Description:string}export type LabelOptions={Label:string}
export type TextBoxOptions={Placeholder:string,Label:string,Callback:any,
RunOnCreation:boolean,DefaultText:string,Description:string}export type
SliderOptions={Placeholder:string,Label:string,Callback:any,RunOnCreation:
boolean,Value:number,MinValue:number,MaxValue:number,Description:string}export
type DropdownOptions={Options:any,DefaultValue:string,Label:string,Callback:any,
RunOnCreation:boolean,Description:string}local j=game:GetService
'UserInputService'local k=game:GetService'RunService'local l=game:GetService
'Players'game:GetService'TweenService'local m=l.LocalPlayer local n=m:GetMouse()
local o=a.a()local function addInfoFrame(p:Frame,q:GuiObject,r:string)if not r
then return end q.MouseEnter:Connect(function()p.Label.Text=r p.Visible=true end
)q.MouseLeave:Connect(function()p.Visible=false end)end function b.Create(p:
LibOptions)local q=setmetatable({},b)if getgenv then local r=getgenv().pane if r
then r:Destroy()end end local r=a.b()if gethui then r.Parent=gethui()else r.
Parent=m.PlayerGui end q.gui=r q.options=p q.highContainer=q.gui.Container q.
mainFrame=q.highContainer.MainFrame q.topbar=q.mainFrame.Topbar q.container=q.
mainFrame.Container q.modulesFrame=q.container.Modules q.pagesFolder=q.
modulesFrame.Pages q.templatePage=q.pagesFolder.TemplatePage q.tabsFrame=q.
container.Tabs q.templateTab=q.tabsFrame.Template q.openPage=nil q.infoFrame=r.
InfoFrame q.connections={}o.makeDraggable(q.mainFrame)for s,t in pairs(q.topbar.
Buttons:GetChildren())do if t:IsA'ImageButton'then o.menuButton(t)end end local
s=q.topbar.Buttons s.Close.MouseButton1Up:Connect(function()q:Destroy()end)s.
Minimize.MouseButton1Up:Connect(function()q.gui.Enabled=not q.gui.Enabled end)
local t=false local u local v s.Maximize.MouseButton1Up:Connect(function()t=not
t if not t then o.targetPosition=u or UDim2.fromScale(0.5,0.5)o.tween(q.
highContainer,0.1,{Size=v or UDim2.fromScale(0.75,0.75)}):Play()else u=q.
highContainer.Position v=q.highContainer.Size o.targetPosition=UDim2.fromScale(
0.5,0.5)o.tween(q.highContainer,0.1,{Size=UDim2.fromScale(1,1)}):Play()end end)
table.insert(q.connections,j.InputBegan:Connect(function(w,x)if w.KeyCode==(q.
options.ToggleBind or Enum.KeyCode.RightShift)then q.gui.Enabled=not q.gui.
Enabled end end))table.insert(q.connections,k.RenderStepped:Connect(function()
local w=j:GetMouseLocation()q.infoFrame.Position=UDim2.fromOffset(w.X,w.Y)end))q
:Update()return q end function b.Update(p,q:LibOptions)if q then p.options=q end
p.topbar.HubName.Text=p.options.Label or'Nullix Hub'if not p.options.
TranslucentMode then p.mainFrame.BackgroundTransparency=0 p.highContainer.Glow.
ImageTransparency=0 end end function b.Destroy(p)p.gui:Destroy()for q,r in p.
connections do r:Disconnect()end end function b.Page(p,q:PageOptions)local r=
setmetatable({},c)r.Pane=p r.options=q local s=p.templateTab:Clone()s.Parent=p.
tabsFrame s.MouseButton1Up:Connect(function()r:Open()end)local t=p.templatePage:
Clone()t.Parent=p.pagesFolder r.tabButton=s r.pageFrame=t r.infoFrame=p.
infoFrame r:Update()if q.Open then r:Open()end return r end function c.Update(p,
q:PageOptions)if q then p.options=q end p.pageFrame.Name=p.options.Label or''p.
tabButton.Name=p.options.Label or''p.tabButton.Label.Text=p.options.Label or''p.
tabButton.Visible=true end function c.Open(p)if p.Pane.openPage then p.Pane.
openPage.Visible=false end p.Pane.openPage=p.pageFrame p.pageFrame.Visible=true
end function c.Button(p,q:ButtonOptions)local r=setmetatable({},d)local s:
TextButton=p.pageFrame.TemplateButton:Clone()s.Parent=p.pageFrame r.button=s r.
options=q r.page=p addInfoFrame(p.infoFrame,s,q.Description)s.MouseButton1Up:
Connect(q.Callback)r:Update()return r end function d.Update(p,q:ButtonOptions)if
q then p.options=q end local r=p.button r.Label.Text=p.options.Label or''r.
Visible=true end function c.Toggle(p,q:ToggleOptions)local r=setmetatable({},e)
local s:Frame=p.pageFrame.TemplateToggle:Clone()s.Parent=p.pageFrame r.frame=s r
.options=q r.page=p r.enabled=q.Enabled or false addInfoFrame(p.infoFrame,s.
Label,q.Description)r:Set((q.Enabled or false),not(q.RunOnCreation or false))s.
Button.MouseButton1Up:Connect(function()r:Set(not r.enabled)end)r:Update()return
r end function e.Set(p,q:boolean,r)p.enabled=q if not r then p.options.Callback(
p.enabled)end local s:TextButton=p.frame:FindFirstChild'Button'local t:TextLabel
=s:FindFirstChild'Label't.Text=q and'Enabled'or'Disabled's.BackgroundColor3=q
and Color3.fromRGB(33,154,0)or Color3.fromRGB(154,0,0)end function e.Update(p,q:
ToggleOptions)if q then p.options=q end local r=p.frame r.Label.Text=p.options.
Label or''r.Visible=true end function c.Label(p,q:LabelOptions)local r=
setmetatable({},f)r.page=p local s=p.pageFrame.TemplateLabel:Clone()r.options=q
s.Parent=p.pageFrame r.label=s r:Update()return r end function f.Update(p,q:
LabelOptions)if q then p.options=q end p.label.Text=p.options.Label or''p.label.
Visible=true end function c.TextBox(p,q:TextBoxOptions)local r=setmetatable({},g
)local s=p.pageFrame.TemplateTextBox:Clone()s.Parent=p.pageFrame r.frame=s r.
options=q r.page=p r.value=q.Placeholder or''r:Set((q.DefaultText or''),not(q.
RunOnCreation or false))s.Input.FocusLost:Connect(function()r:Set(s.Input.Text)
end)addInfoFrame(p.infoFrame,s.Label,q.Description)r:Update()return r end
function g.Set(p,q:string,r)p.value=(q~='')and q or p.options.Placeholder if not
r then p.options.Callback(p.value)end local s=p.frame s.Input.Text=q or''end
function g.Update(p,q:TextBoxOptions)if q then p.options=q end local r=p.frame r
.Label.Text=p.options.Label or''r.Input.Text=p.options.DefaultText or''r.Input.
PlaceholderText=p.options.Placeholder or''r.Visible=true end function c.Slider(p
,q:SliderOptions)local r=setmetatable({},h)local s=p.pageFrame.TemplateSlider:
Clone()s.Parent=p.pageFrame r.frame=s r.options=q r.page=p r.value=q.Value or''r
:Set((q.Value/q.MaxValue),not(q.RunOnCreation or false))r:Update()local t=s.
Slider r.holding=false t.Button.MouseButton1Down:Connect(function()r.holding=
true end)j.InputEnded:Connect(function(u,v)if u.UserInputType==Enum.
UserInputType.MouseButton1 then r.holding=false end end)r.runConnection=k.
Heartbeat:Connect(function()if r.holding then r.value=math.clamp((n.X-t.
AbsolutePosition.X)/t.AbsoluteSize.X,0,1)r.trueValue=((q.MaxValue-q.MinValue)*r.
value)+q.MinValue r:Set()end end)addInfoFrame(p.infoFrame,s.Label,q.Description)
return r end function h.Set(p,q:number,r)if not r then p.options.Callback(p.
trueValue)end local s=p.frame p.value=q or p.value p:Update()end function h.
Update(p,q:SliderOptions)if q then p.options=q end local r=p.frame r.Label.Text=
p.options.Label or''r.Visible=true r.Slider.Button.Position=UDim2.fromScale(p.
value,0)end function c.Dropdown(p,q:DropdownOptions)local r=setmetatable({},i)r.
Page=p r.options=q local s=p.pageFrame.TemplateDropdown:Clone()s.Parent=p.
pageFrame s.Visible=true r.frame=s local t=s.Button t.MouseButton1Up:Connect(
function()t.Dropdown.Visible=not t.Dropdown.Visible end)addInfoFrame(p.infoFrame
,s.Label,q.Description)r:Update()return r end function i.Update(p,q:
DropdownOptions)if q then p.options=q end q=p.options local r:TextButton=p.frame
.Button local s:Frame=r.Dropdown local t:TextButton=s.Template r.Label.Text=q.
DefaultValue or'Choose One'for u,v in pairs(s:GetChildren())do if v~=t and v:IsA
'TextButton'then v:Destroy()end end for u,v in pairs(q.Options)do local w=t:
Clone()w.Parent=s w.Visible=true w.Name=v w.Label.Text=v w.MouseButton1Up:
Connect(function()p.selected=v q.Callback(v)r.Label.Text=v s.Visible=false end)
end end return b