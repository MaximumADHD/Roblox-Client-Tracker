-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastInt("LuobuDevPublishAnalyticsHundredthsPercentage")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.Util.Promise
local var5 = var3.ContextServices
local var6 = require(var1.Src.Util.DEPRECATED_Constants)
local var7 = require(var1.Src.Util.isEmpty)
local var8 = require(var1.Src.Components.ButtonBar)
local var9 = require(var1.Src.Thunks.ConfirmAndSaveChanges)
local var10 = require(var1.Src.Thunks.PostContactEmail)
local var11 = require(var1.Src.Util.CurrentStatus)
local var12 = var3.UI.TextInputDialog
local var13 = require(var1.Src.Util.GameSettingsUtilities).shouldShowDevPublishLocations
local var14 = require(var1.Src.Util.GameSettingsUtilities).sendAnalyticsToKibana
local var15 = require(var1.Src.Util.KeyProvider)
local var16 = var15.getOptInLocationsKeyName()
local var17 = var15.getChinaKeyName()
local var18 = var15.getSelectedKeyName()
local var19 = var15.getFooterKeyName()
local var20 = var15.getLuobuStudioDevPublishKeyName()
local var21 = var2.PureComponent:extend("Footer")
function var21.saveAllSettings(arg1, arg2)
   local var0 = arg1.props
   local var124 = arg1.props
   var124 = arg2
   var124.SaveAllSettings(var124, var0.Localization, var0.Dialog):andThen(function()
      arg1.props.OnClose(arg2)
   end)
end

function var21.init(arg1)
   function arg1.shouldShowEmailDialog()
      arg1.props.OnClose(arg2)
   end
   
   local var0 = {}
   var0.showEmailDialog = false
   var0.userPressedSave = false
   var0.bottomText = ""
   arg1.state = var0
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var0.PostContactEmail
   local var153 = {}
   var153.BackgroundColor3 = var1.backgroundColor
   var153.BorderSizePixel = 0
   var153.Size = UDim2.fromScale(1, 1)
   var153.ZIndex = 2
   local var161 = {}
   local var165 = {}
   var165.Size = UDim2.new(1, 0, 0, 3)
   var165.AnchorPoint = Vector2.new(0, 1)
   var165.Image = var6.GRADIENT_IMAGE
   var165.ImageRectSize = var6.GRADIENT_RECT_SIZE
   var165.BorderSizePixel = 0
   var165.BackgroundTransparency = 1
   var165.ImageColor3 = var1.footer.gradient
   var165.ImageTransparency = 0.9
   var165.ZIndex = 1
   var161.Gradient = var2.createElement("ImageLabel", var165)
   local var190 = {}
   var190.ZIndex = 2
   local var193 = {}
   var193.Name = var2:getText("General", "ButtonCancel")
   var193.Active = var0.CancelActive
   var193.Value = false
   local var199 = {}
   var199.Name = var2:getText("General", "ButtonSave")
   var199.Default = true
   var199.Active = var0.SaveActive
   var199.Value = true
   var190.Buttons = {}
   var190.HorizontalAlignment = Enum.HorizontalAlignment.Right
   function var190.ButtonClicked()
      arg1.props.OnClose(arg2)
   end
   
   local var211 = {}
   local var215 = {}
   var215.Enabled = arg1.state.showEmailDialog
   var215.Size = Vector2.new(var1.emailDialog.Size.X, var1.emailDialog.Size.Y)
   var215.Title = var2:getText(var16, "EmailDialogHeader")
   var215.Header = var2:getText(var16, "EmailDialogHeader")
   local var235 = {}
   var235.Key = "Submit"
   var235.Text = var2:getText("General", "ButtonSubmit")
   local var241 = {}
   var241.Key = "Cancel"
   var241.Text = var2:getText("General", "ButtonCancel")
   var215.Buttons = {}
   var215.Body = var2:getText(var16, "EmailDialogBody")
   var215.Description = var2:getText(var16, "EmailDialogDescription")
   {}.PlaceholderText = var2:getText(var16, "EmailAddress")
   local var7 = {}
   var7.PlaceholderText = var2:getText(var16, "ConfirmEmailAddress")
   var7.BottomText = arg1.state.bottomText
   var215.TextInput = {}
   function var215.OnClose(arg1, arg2)
      local var0 = arg1.props
      local var273 = arg1.props
      var273 = arg2
      var273.SaveAllSettings(var273, var0.Localization, var0.Dialog):andThen(function()
         arg1.props.OnClose(arg2)
      end)
   end
   
   function var215.OnButtonPressed()
      local var0 = var16.props
      local var1 = var0.CurrentOptInLocations
      local var2 = var0.ChangedOptInLocations
      if not var1 then
         assert(var2)
         return false
      end
      if not var1[var17][var18] then
         if var2 then
            assert(var2[var17][var18], "China should be selected in Changed")
            return true
         end
      end
      return false
   end
   
   var211.EmailDialog = var2.createElement(var12, var215)
   var161.SaveSettings = var2.createElement(var8, var190, var211)
   return var2.createElement("Frame", var153, var161)
end

function var21.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var0.PostContactEmail
   local var153 = {}
   var153.BackgroundColor3 = var1.backgroundColor
   var153.BorderSizePixel = 0
   var153.Size = UDim2.fromScale(1, 1)
   var153.ZIndex = 2
   local var161 = {}
   local var165 = {}
   var165.Size = UDim2.new(1, 0, 0, 3)
   var165.AnchorPoint = Vector2.new(0, 1)
   var165.Image = var6.GRADIENT_IMAGE
   var165.ImageRectSize = var6.GRADIENT_RECT_SIZE
   var165.BorderSizePixel = 0
   var165.BackgroundTransparency = 1
   var165.ImageColor3 = var1.footer.gradient
   var165.ImageTransparency = 0.9
   var165.ZIndex = 1
   var161.Gradient = var2.createElement("ImageLabel", var165)
   local var190 = {}
   var190.ZIndex = 2
   local var193 = {}
   var193.Name = var2:getText("General", "ButtonCancel")
   var193.Active = var0.CancelActive
   var193.Value = false
   local var199 = {}
   var199.Name = var2:getText("General", "ButtonSave")
   var199.Default = true
   var199.Active = var0.SaveActive
   var199.Value = true
   var190.Buttons = {}
   var190.HorizontalAlignment = Enum.HorizontalAlignment.Right
   function var190.ButtonClicked()
      arg1.props.OnClose(arg2)
   end
   
   local var211 = {}
   local var215 = {}
   var215.Enabled = arg1.state.showEmailDialog
   var215.Size = Vector2.new(var1.emailDialog.Size.X, var1.emailDialog.Size.Y)
   var215.Title = var2:getText(var16, "EmailDialogHeader")
   var215.Header = var2:getText(var16, "EmailDialogHeader")
   local var235 = {}
   var235.Key = "Submit"
   var235.Text = var2:getText("General", "ButtonSubmit")
   local var241 = {}
   var241.Key = "Cancel"
   var241.Text = var2:getText("General", "ButtonCancel")
   var215.Buttons = {}
   var215.Body = var2:getText(var16, "EmailDialogBody")
   var215.Description = var2:getText(var16, "EmailDialogDescription")
   {}.PlaceholderText = var2:getText(var16, "EmailAddress")
   local var7 = {}
   var7.PlaceholderText = var2:getText(var16, "ConfirmEmailAddress")
   var7.BottomText = arg1.state.bottomText
   var215.TextInput = {}
   function var215.OnClose(arg1, arg2)
      local var0 = arg1.props
      local var273 = arg1.props
      var273 = arg2
      var273.SaveAllSettings(var273, var0.Localization, var0.Dialog):andThen(function()
         arg1.props.OnClose(arg2)
      end)
   end
   
   function var215.OnButtonPressed()
      local var0 = var16.props
      local var1 = var0.CurrentOptInLocations
      local var2 = var0.ChangedOptInLocations
      if not var1 then
         assert(var2)
         return false
      end
      if not var1[var17][var18] then
         if var2 then
            assert(var2[var17][var18], "China should be selected in Changed")
            return true
         end
      end
      return false
   end
   
   var211.EmailDialog = var2.createElement(var12, var215)
   var161.SaveSettings = var2.createElement(var8, var190, var211)
   return var2.createElement("Frame", var153, var161)
end

fun8 = var5.withContext
local var305 = {}
var305.Stylizer = var5.Stylizer
var305.Localization = var5.Localization
var305.Dialog = require(var1.Src.ContextServices.Dialog)
var21 = fun8(var305)(var21)
var21 = require(var1.Packages.RoactRodux).connect(function(arg1, arg2)
   if not arg1 then
   end
   local var0 = {}
   local var319 = var7(arg1.Settings.Changed)
   if var319 then
      local var0 = false
      if arg1.Status == "Settings" then
         local var0 = var7(arg1.Settings.Errors)
      end
   end
   var0.SaveActive = var319
   if arg1.Status ~= var11.Open then
      local var0 = false
   end
   var0.CancelActive = true
   var0.CurrentOptInLocations = arg1.Settings.Current[var16]
   var0.ChangedOptInLocations = arg1.Settings.Changed[var16]
   return var0
end, function(arg1)
   local var0 = {}
   function var0.SaveAllSettings()
      arg1.props.OnClose(arg2)
   end
   
   function var0.PostContactEmail(arg1, arg2)
      local var0 = arg1.props
      local var352 = arg1.props
      var352 = arg2
      var352.SaveAllSettings(var352, var0.Localization, var0.Dialog):andThen(function()
         arg1.props.OnClose(arg2)
      end)
   end
   
   return var0
end)(var21)
return var21
