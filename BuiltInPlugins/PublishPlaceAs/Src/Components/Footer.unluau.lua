-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(512, 256)
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var1.Src.Actions.SetScreen)
local var5 = require(var1.Src.Components.ButtonBar)
local var6 = require(var1.Src.Util.Analytics)
local var7 = var2.PureComponent:extend("Footer")
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var222 = {}
   var222.BackgroundColor3 = var1.backgroundColor
   var222.BorderSizePixel = 0
   var222.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var222.AnchorPoint = Vector2.new(0, 1)
   var222.Position = UDim2.new(0, 0, 1, 0)
   var222.ZIndex = 2
   local var242 = {}
   local var246 = {}
   var246.Size = UDim2.new(1, 0, 0, 3)
   var246.AnchorPoint = Vector2.new(0, 1)
   var246.Image = "rbxasset://textures/gradient.png"
   var246.ImageRectSize = var0
   var246.BorderSizePixel = 0
   var246.BackgroundTransparency = 1
   var246.ImageColor3 = var1.footer.gradient
   var246.ImageTransparency = 0.9
   var246.ZIndex = 1
   var242.Gradient = var2.createElement("ImageLabel", var246)
   local var269 = {}
   var269.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var269.Buttons = {}
   var269.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun0(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var269.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun0 = var0[var2.Children]
   var242.SaveSettings = var2.createElement(var5, var269, fun0)
   if var4 == "props" then
      local var294 = {}
      var294.Size = UDim2.new(0.15, 0, 0.5, 0)
      var294.Position = UDim2.new(0.13, 0, 0.5, 0)
      var294.AnchorPoint = Vector2.new(0.5, 0.5)
      var294.BorderSizePixel = 3
      var294.TextColor3 = var1.defaultButton.ButtonColor
      var294.BackgroundTransparency = 1
      var294.TextXAlignment = Enum.TextXAlignment.Left
      var294.TextSize = 20
      var294.Font = var1.footer.textbutton.font
      var294.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var294)
   end
   var242.GotoNextScreen = false
   return var2.createElement("Frame", var222, var242)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var222 = {}
   var222.BackgroundColor3 = var1.backgroundColor
   var222.BorderSizePixel = 0
   var222.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var222.AnchorPoint = Vector2.new(0, 1)
   var222.Position = UDim2.new(0, 0, 1, 0)
   var222.ZIndex = 2
   local var242 = {}
   local var246 = {}
   var246.Size = UDim2.new(1, 0, 0, 3)
   var246.AnchorPoint = Vector2.new(0, 1)
   var246.Image = "rbxasset://textures/gradient.png"
   var246.ImageRectSize = var0
   var246.BorderSizePixel = 0
   var246.BackgroundTransparency = 1
   var246.ImageColor3 = var1.footer.gradient
   var246.ImageTransparency = 0.9
   var246.ZIndex = 1
   var242.Gradient = var2.createElement("ImageLabel", var246)
   local var269 = {}
   var269.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var269.Buttons = {}
   var269.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun0(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var269.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun0 = var0[var2.Children]
   var242.SaveSettings = var2.createElement(var5, var269, fun0)
   if var4 == "props" then
      local var294 = {}
      var294.Size = UDim2.new(0.15, 0, 0.5, 0)
      var294.Position = UDim2.new(0.13, 0, 0.5, 0)
      var294.AnchorPoint = Vector2.new(0.5, 0.5)
      var294.BorderSizePixel = 3
      var294.TextColor3 = var1.defaultButton.ButtonColor
      var294.BackgroundTransparency = 1
      var294.TextXAlignment = Enum.TextXAlignment.Left
      var294.TextSize = 20
      var294.Font = var1.footer.textbutton.font
      var294.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var294)
   end
   var242.GotoNextScreen = false
   return var2.createElement("Frame", var222, var242)
end

fun2 = var3.withContext
local var331 = {}
var331.Stylizer = var3.Stylizer
var331.Localization = var3.Localization
var7 = fun2(var331)(var7)
return require(var1.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.OpenNextScreen(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   return var0
end)(var7)
