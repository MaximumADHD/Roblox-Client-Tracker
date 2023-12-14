-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices.withContext
local var3 = require(var0.Src.ContextItems)
local var4 = nil
var4 = var1.PureComponent:extend("SingleSelectButton")
function var4.init(arg1)
   local var26 = {}
   var26.isHovered = false
   arg1.state = var26
   function arg1.onMouseEnter()
      local var29 = {}
      var29.isHovered = true
      arg1:setState(var29)
   end
   
   function arg1.onMouseLeave()
      local var33 = {}
      var33.isHovered = false
      arg1:setState(var33)
   end
   
   function arg1.onActivated()
      if not arg1.props.IsSelected then
         arg1.props.Select(arg1.props.Data)
      end
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props.Width
   local var1 = arg1.props.IsLeftmost
   local var2 = arg1.props.IsRightmost
   local var3 = arg1.state.isHovered
   local var4 = arg1.props.Theme:get()
   local var5 = var4.singleSelectButtonGroupTheme
   local var6 = var5.buttonHoveredColor
   if arg1.props.IsSelected then
      local var0 = var4.singleSelectButtonGroupTheme.buttonSelectedColor
      if not var0 then
         var0 = var6
      end
   end
   local var7 = var6
   local var73 = {}
   var73.Position = UDim2.new((arg1.props.LayoutOrder - 1) * var0, 0, 0, 0)
   var73.Size = UDim2.new(var0, 0, 1, 0)
   var73.AutoButtonColor = false
   var73.BackgroundTransparency = 1
   var73.BorderSizePixel = 0
   var1.Event.Activated = arg1.onActivated
   var1.Event.MouseEnter = arg1.onMouseEnter
   local var101 = arg1.onMouseLeave
   var1.Event.MouseLeave = var101
   local var102 = {}
   var101 = var5
   if var101 then
      local var105 = {}
      local var106 = var1
      if var106 then
         local var110 = {}
         var110.Position = UDim2.new(0, 0, 0, 0)
         var110.Size = UDim2.new(0, 8, 1, 0)
         var110.BackgroundTransparency = 1
         var110.BorderSizePixel = 0
         var110.ImageTransparency = 0
         var110.Image = var4.singleSelectButtonGroupTheme.roundedBackgroundImage
         var110.ImageColor3 = var7
         var110.ScaleType = Enum.ScaleType.Slice
         var110.SliceCenter = var4.singleSelectButtonGroupTheme.roundedElementSlice
         local var0 = var1.createElement("ImageLabel", var110)
      end
      var105.LeftBackground = var106
      var106 = var2
      if var106 then
         local var135 = {}
         var135.AnchorPoint = Vector2.new(1, 0)
         var135.Position = UDim2.new(1, 0, 0, 0)
         var135.Size = UDim2.new(0, 8, 1, 0)
         var135.BackgroundTransparency = 1
         var135.BorderSizePixel = 0
         var135.ImageTransparency = 0
         var135.Image = var4.singleSelectButtonGroupTheme.roundedBackgroundImage
         var135.ImageColor3 = var7
         var135.ScaleType = Enum.ScaleType.Slice
         var135.SliceCenter = var4.singleSelectButtonGroupTheme.roundedElementSlice
         local var0 = var1.createElement("ImageLabel", var135)
      end
      var105.RightBackground = var106
      local var164 = {}
      if var1 then
         local var0 = UDim2.new(0, 4, 0, 0) or UDim2.new(0, 0, 0, 0)
      end
      var164.Position = UDim2.new(0, 0, 0, 0)
      if var1 then
         if var2 then
            if not UDim2.new(1, 65528, 1, 0) then
               if not var1 then
                  if var2 then
                     local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
                  end
               end
               local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
            end
         end
      end
      if not var1 then
         if var2 then
            local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
         end
      end
      var164.Size = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
      var164.BackgroundColor3 = var7
      var164.BorderSizePixel = 0
      var105.Background = var1.createElement("Frame", var164)
      local var1 = var1.createFragment(var105)
   end
   var102.BackgroundContents = var101
   local var248 = {}
   var248.Size = UDim2.new(1, 0, 1, 0)
   var248.BackgroundTransparency = 1
   var248.BorderSizePixel = 0
   var248.Text = arg1.props.Text
   var248.TextSize = var4.textSize
   var248.Font = var4.font
   var248.TextColor3 = var4.textColor
   var248.ZIndex = 3
   var102.Label = var1.createElement("TextLabel", var248)
   return var1.createElement("ImageButton", var73, var102)
end

function var4.render(arg1)
   local var0 = arg1.props.Width
   local var1 = arg1.props.IsLeftmost
   local var2 = arg1.props.IsRightmost
   local var3 = arg1.state.isHovered
   local var4 = arg1.props.Theme:get()
   local var5 = var4.singleSelectButtonGroupTheme
   local var6 = var5.buttonHoveredColor
   if arg1.props.IsSelected then
      local var0 = var4.singleSelectButtonGroupTheme.buttonSelectedColor
      if not var0 then
         var0 = var6
      end
   end
   local var7 = var6
   local var73 = {}
   var73.Position = UDim2.new((arg1.props.LayoutOrder - 1) * var0, 0, 0, 0)
   var73.Size = UDim2.new(var0, 0, 1, 0)
   var73.AutoButtonColor = false
   var73.BackgroundTransparency = 1
   var73.BorderSizePixel = 0
   var1.Event.Activated = arg1.onActivated
   var1.Event.MouseEnter = arg1.onMouseEnter
   local var101 = arg1.onMouseLeave
   var1.Event.MouseLeave = var101
   local var102 = {}
   var101 = var5
   if var101 then
      local var105 = {}
      local var106 = var1
      if var106 then
         local var110 = {}
         var110.Position = UDim2.new(0, 0, 0, 0)
         var110.Size = UDim2.new(0, 8, 1, 0)
         var110.BackgroundTransparency = 1
         var110.BorderSizePixel = 0
         var110.ImageTransparency = 0
         var110.Image = var4.singleSelectButtonGroupTheme.roundedBackgroundImage
         var110.ImageColor3 = var7
         var110.ScaleType = Enum.ScaleType.Slice
         var110.SliceCenter = var4.singleSelectButtonGroupTheme.roundedElementSlice
         local var0 = var1.createElement("ImageLabel", var110)
      end
      var105.LeftBackground = var106
      var106 = var2
      if var106 then
         local var135 = {}
         var135.AnchorPoint = Vector2.new(1, 0)
         var135.Position = UDim2.new(1, 0, 0, 0)
         var135.Size = UDim2.new(0, 8, 1, 0)
         var135.BackgroundTransparency = 1
         var135.BorderSizePixel = 0
         var135.ImageTransparency = 0
         var135.Image = var4.singleSelectButtonGroupTheme.roundedBackgroundImage
         var135.ImageColor3 = var7
         var135.ScaleType = Enum.ScaleType.Slice
         var135.SliceCenter = var4.singleSelectButtonGroupTheme.roundedElementSlice
         local var0 = var1.createElement("ImageLabel", var135)
      end
      var105.RightBackground = var106
      local var164 = {}
      if var1 then
         local var0 = UDim2.new(0, 4, 0, 0) or UDim2.new(0, 0, 0, 0)
      end
      var164.Position = UDim2.new(0, 0, 0, 0)
      if var1 then
         if var2 then
            if not UDim2.new(1, 65528, 1, 0) then
               if not var1 then
                  if var2 then
                     local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
                  end
               end
               local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
            end
         end
      end
      if not var1 then
         if var2 then
            local var0 = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
         end
      end
      var164.Size = UDim2.new(1, 65532, 1, 0) or UDim2.new(1, 0, 1, 0)
      var164.BackgroundColor3 = var7
      var164.BorderSizePixel = 0
      var105.Background = var1.createElement("Frame", var164)
      local var1 = var1.createFragment(var105)
   end
   var102.BackgroundContents = var101
   local var248 = {}
   var248.Size = UDim2.new(1, 0, 1, 0)
   var248.BackgroundTransparency = 1
   var248.BorderSizePixel = 0
   var248.Text = arg1.props.Text
   var248.TextSize = var4.textSize
   var248.Font = var4.font
   var248.TextColor3 = var4.textColor
   var248.ZIndex = 3
   var102.Label = var1.createElement("TextLabel", var248)
   return var1.createElement("ImageButton", var73, var102)
end

fun4 = var2
local var263 = {}
var263.Theme = var3.DEPRECATED_Theme
var4 = fun4(var263)(var4)
local var6 = var1.PureComponent:extend("SingleSelectButtonGroup")
local function fun5()
   if not arg1.props.IsSelected then
      arg1.props.Select(arg1.props.Data)
   end
end

function var6.render()
   if not arg1.props.IsSelected then
      arg1.props.Select(arg1.props.Data)
   end
end

fun5 = var2
local var281 = {}
var281.Theme = var3.DEPRECATED_Theme
var6 = fun5(var281)(var6)
return var6
