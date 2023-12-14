-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var1.Packages.Framework).Util.LayoutOrderIterator
local var5 = require(var0.Util.ConstantLayout)
local var6 = require(var0.Util.StateInterfaceSettings)
local var7 = require(var0.Util.StateInterfaceTemplates)
local var8 = require(var0.Util.StateInterfaceTheme)
local var9 = require(var0.Util.StateModelTemplate)
local var10 = require(var0.Components.DividerRow)
local var11 = require(var1.Packages.RoactStudioWidgets.RangeSlider)
local var12 = require(var0.Components.TitleBar)
local var13 = var2.Component:extend("ComponentScalePanel")
local function var14(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
   local var0 = var7.getStateModelTemplate(arg1.props)
   local var1 = arg1.props
   local var2 = var1.StateSettings.scaleBoundaries.boundaries
   local function fun0(arg1)
      local var0 = arg1 * 100
      local var87 = 0.5
      if var0 - math.floor(var0) >= var87 then
         local var0 = false
      end
      if true then
         var87 = var0
         local var0 = math.ceil(var87) or math.floor(var0)
      end
      var87 = var0
      return math.floor(var87)
   end
   
   local function var3(arg1)
      local var0 = arg1 / 100
      if 0.001 < arg4.increment then
         local var0 = math.max(arg4.increment * math.floor(var0 / arg4.increment), arg4.min)
         local var1 = math.min(var0 + arg4.increment, arg4.max)
         if math.abs(var0 - var0) < math.abs(var1 - var0) then
            local var0 = var0
            if not var0 then
               var0 = var1
            end
         end
         return var1
      end
      local var132 = arg4
      var132 = var0
      return math.min(arg4.max, math.max(var132.min, var132))
   end
   
   local var4 = arg4.min
   local var139 = var4 * 100
   local var144 = 0.5
   if var139 - math.floor(var139) >= var144 then
      local var0 = false
   end
   if true then
      var144 = var139
      var1 = math.ceil(var144)
      if not var1 then
         var1 = math.floor(var139)
      end
   end
   var144 = var139
   var1 = math.floor(var144)
   local var155 = arg4.max * 100
   local var160 = 0.5
   if var155 - math.floor(var155) >= var160 then
      local var0 = false
   end
   if true then
      var160 = var155
      var4 = math.ceil(var160)
      if not var4 then
         var4 = math.floor(var155)
      end
   end
   var160 = var155
   var4 = math.floor(var160)
   local var8 = arg1.props
   local var9 = var8.Localization
   local var176 = {}
   var176.LayoutOrder = arg2
   var176.Title = arg3
   local var178 = arg1.props.IsEnabled
   var176.Enabled = var178
   var176.Min = var1
   var176.Max = var4
   local var179 = arg4.increment
   local var180 = var179 * 100
   local var185 = 0.5
   if var180 - math.floor(var180) >= var185 then
      local var0 = false
   end
   if true then
      var185 = var180
      var178 = math.ceil(var185)
      if not var178 then
         var178 = math.floor(var180)
      end
   end
   var185 = var180
   var178 = math.floor(var185)
   var176.SnapIncrement = var178
   var179 = arg5
   var180 = var0
   local var195 = var179(var180)
   local var196 = var195 * 100
   local var201 = 0.5
   if var196 - math.floor(var196) >= var201 then
      local var0 = false
   end
   if true then
      var201 = var196
      var178 = math.ceil(var201)
      if not var178 then
         var178 = math.floor(var196)
      end
   end
   var201 = var196
   var178 = math.floor(var201)
   var176.LowerRangeValue = var178
   var195 = arg6
   var196 = var0
   local var212 = var195(var196) * 100
   local var217 = 0.5
   if var212 - math.floor(var212) >= var217 then
      local var0 = false
   end
   if true then
      var217 = var212
      var178 = math.ceil(var217)
      if not var178 then
         var178 = math.floor(var212)
      end
   end
   var217 = var212
   var178 = math.floor(var217)
   var176.UpperRangeValue = var178
   var176.Mouse = var8.Mouse:get()
   local var231 = {}
   var231.number = tostring(var1)
   var176.MinLabelText = var9:getText("General", "ScaleSliderLabel", var231)
   local var239 = {}
   var239.number = tostring(var4)
   var176.MaxLabelText = var9:getText("General", "ScaleSliderLabel", var239)
   var176.UnitsLabelText = var9:getText("General", "ScaleSliderUnits")
   function var176.SetValues(arg1, arg2)
      local var0 = var9.makeCopy(var0)
      arg7(var0, math.min(arg6(var0), var3(arg1)), var2)
      arg8(var0, math.max(arg5(var0), var3(arg2)), var2)
      local var283 = arg1.props
      var283 = var0
      arg1.props.clobberTemplate(var283.template, var283)
   end
   
   function var176.SetUpperRangeValue(arg1)
      local var0 = var9.makeCopy(var7.getStateModelTemplate(arg1.props))
      arg8(var0, math.max(arg5(var0), var3(arg1)), var2)
      local var309 = arg1.props
      var309 = var0
      arg1.props.clobberTemplate(var309.template, var309)
   end
   
   return var2.createElement(var11, var176)
end

function var13.init(arg1)
   arg1.frameRef = var2.createRef()
end

local function fun7(arg1)
   local var0 = arg1.props.Localization
   if var7.getStateModelTemplate(arg1.props):isRigTypeR6() then
      return nil
   end
   local var1 = var4.new()
   local var2 = {}
   local var333 = {}
   var333.SortOrder = Enum.SortOrder.LayoutOrder
   var333.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var333.FillDirection = Enum.FillDirection.Vertical
   var333.Padding = var5.VirticalPadding
   function var2.Change.AbsoluteContentSize(arg1)
      local var0 = arg1 * 100
      local var348 = 0.5
      if var0 - math.floor(var0) >= var348 then
         local var0 = false
      end
      if true then
         var348 = var0
         local var0 = math.ceil(var348) or math.floor(var0)
      end
      var348 = var0
      return math.floor(var348)
   end
   
   var2.UIListLayoutVertical = var2.createElement("UIListLayout", var333)
   local var363 = {}
   var363.ThemeData = arg1.props.ThemeData
   var363.LayoutOrder = var1:getNextOrder()
   var2.ComponentDividerRowAboveScale = var2.createElement(var10, var363)
   local var372 = {}
   var372.ThemeData = arg1.props.ThemeData
   var372.LayoutOrder = var1:getNextOrder()
   var372.IsEnabled = arg1.props.IsEnabled
   var372.Text = var0:getText("General", "TitleScale")
   var372.IsPlayerChoiceTitleStyle = false
   var2.ComponentTitleBar = var2.createElement(var12, var372)
   local var6 = var9
   local var387 = {}
   local var391 = var0:getText("General", "ScaleHeight")
   local var395 = var6.getHeightBoundaries(arg1.props)
   local var396 = var6.getScaleHeightMin
   local var397 = var6.getScaleHeightMax
   local var398 = var6.setScaleHeightMin
   local var399 = var6.setScaleHeightMax
   local var400 = {}
   local var404 = var0:getText("General", "ScaleWidth")
   local var408 = var6.getWidthBoundaries(arg1.props)
   local var409 = var6.getScaleWidthMin
   local var410 = var6.getScaleWidthMax
   local var411 = var6.setScaleWidthMin
   local var412 = var6.setScaleWidthMax
   local var413 = {}
   local var417 = var0:getText("General", "ScaleHead")
   local var421 = var6.getHeadBoundaries(arg1.props)
   local var422 = var6.getScaleHeadMin
   local var423 = var6.getScaleHeadMax
   local var424 = var6.setScaleHeadMin
   local var425 = var6.setScaleHeadMax
   local var426 = {}
   local var430 = var0:getText("General", "ScaleBodyType")
   local var434 = var6.getBodyTypeBoundaries(arg1.props)
   local var435 = var6.getScaleBodyTypeMin
   local var436 = var6.getScaleBodyTypeMax
   local var437 = var6.setScaleBodyTypeMin
   local var438 = var6.setScaleBodyTypeMax
   local var439 = {}
   local var443 = var0:getText("General", "ScaleProportions")
   local var447 = var6.getProportionBoundaries(arg1.props)
   local var448 = var6.getScaleProportionMin
   local var449 = var6.getScaleProportionMax
   local var450 = var6.setScaleProportionMin
   local var451 = var6.setScaleProportionMax
   var400 = {}
   local var453 = ipairs(var400)
   var448 = arg1
   var439[1] = var14(var448, var1:getNextOrder(), var439[1], var439[2], var439[3], var439[4], var439[5], var439[6])
   local var468 = {}
   var468.Size = UDim2.new(1, 0, 1, 0)
   var468.BorderSizePixel = 0
   var468.BackgroundColor3 = var8.getBackgroundColor(arg1.props)
   var468.LayoutOrder = arg1.props.LayoutOrder
   local var483 = var2.Ref
   var2.Ref = arg1.frameRef
   var483 = var2
   return var2.createElement("Frame", var468, var483)
end

function var13.render(arg1)
   local var0 = arg1.props.Localization
   if var7.getStateModelTemplate(arg1.props):isRigTypeR6() then
      return nil
   end
   local var1 = var4.new()
   local var2 = {}
   local var333 = {}
   var333.SortOrder = Enum.SortOrder.LayoutOrder
   var333.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var333.FillDirection = Enum.FillDirection.Vertical
   var333.Padding = var5.VirticalPadding
   function var2.Change.AbsoluteContentSize(arg1)
      local var0 = arg1 * 100
      local var348 = 0.5
      if var0 - math.floor(var0) >= var348 then
         local var0 = false
      end
      if true then
         var348 = var0
         local var0 = math.ceil(var348) or math.floor(var0)
      end
      var348 = var0
      return math.floor(var348)
   end
   
   var2.UIListLayoutVertical = var2.createElement("UIListLayout", var333)
   local var363 = {}
   var363.ThemeData = arg1.props.ThemeData
   var363.LayoutOrder = var1:getNextOrder()
   var2.ComponentDividerRowAboveScale = var2.createElement(var10, var363)
   local var372 = {}
   var372.ThemeData = arg1.props.ThemeData
   var372.LayoutOrder = var1:getNextOrder()
   var372.IsEnabled = arg1.props.IsEnabled
   var372.Text = var0:getText("General", "TitleScale")
   var372.IsPlayerChoiceTitleStyle = false
   var2.ComponentTitleBar = var2.createElement(var12, var372)
   local var6 = var9
   local var387 = {}
   local var391 = var0:getText("General", "ScaleHeight")
   local var395 = var6.getHeightBoundaries(arg1.props)
   local var396 = var6.getScaleHeightMin
   local var397 = var6.getScaleHeightMax
   local var398 = var6.setScaleHeightMin
   local var399 = var6.setScaleHeightMax
   local var400 = {}
   local var404 = var0:getText("General", "ScaleWidth")
   local var408 = var6.getWidthBoundaries(arg1.props)
   local var409 = var6.getScaleWidthMin
   local var410 = var6.getScaleWidthMax
   local var411 = var6.setScaleWidthMin
   local var412 = var6.setScaleWidthMax
   local var413 = {}
   local var417 = var0:getText("General", "ScaleHead")
   local var421 = var6.getHeadBoundaries(arg1.props)
   local var422 = var6.getScaleHeadMin
   local var423 = var6.getScaleHeadMax
   local var424 = var6.setScaleHeadMin
   local var425 = var6.setScaleHeadMax
   local var426 = {}
   local var430 = var0:getText("General", "ScaleBodyType")
   local var434 = var6.getBodyTypeBoundaries(arg1.props)
   local var435 = var6.getScaleBodyTypeMin
   local var436 = var6.getScaleBodyTypeMax
   local var437 = var6.setScaleBodyTypeMin
   local var438 = var6.setScaleBodyTypeMax
   local var439 = {}
   local var443 = var0:getText("General", "ScaleProportions")
   local var447 = var6.getProportionBoundaries(arg1.props)
   local var448 = var6.getScaleProportionMin
   local var449 = var6.getScaleProportionMax
   local var450 = var6.setScaleProportionMin
   local var451 = var6.setScaleProportionMax
   var400 = {}
   local var453 = ipairs(var400)
   var448 = arg1
   var439[1] = var14(var448, var1:getNextOrder(), var439[1], var439[2], var439[3], var439[4], var439[5], var439[6])
   local var468 = {}
   var468.Size = UDim2.new(1, 0, 1, 0)
   var468.BorderSizePixel = 0
   var468.BackgroundColor3 = var8.getBackgroundColor(arg1.props)
   var468.LayoutOrder = arg1.props.LayoutOrder
   local var483 = var2.Ref
   var2.Ref = arg1.frameRef
   var483 = var2
   return var2.createElement("Frame", var468, var483)
end

fun7 = var3.withContext
local var486 = {}
var486.Localization = var3.Localization
var486.Mouse = var3.Mouse
var13 = fun7(var486)(var13)
var13 = require(var1.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2)
   local var0 = {}
   var0.StateSettings = arg1.MorpherEditorRoot.StateMorpher.StateSettings
   return var0
end)(var13)
return var13
