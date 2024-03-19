-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Dash)
local var4 = var2.ContextServices
local var5 = var4.Localization
local var6 = var4.Analytics
local var7 = require(var0.Src.ContextServices.CollaboratorsServiceContext)
local var8 = var2.Style.Stylizer
local var9 = var2.Util.StyleModifier
local var10 = var2.UI
local var11 = var10.Button
local var12 = var10.RoundBox
local var13 = game:GetService("StudioService"):GetUserId()
return function(arg1)
   local var0 = var7:use():get()
   local var1 = var5.use()
   local var2 = var8:use()
   local var3 = var6:use()
   local var55 = {}
   function var55.OnClick()
      var0:RequestFlyToCollaborator(arg1.Id)
      if arg1.OnJump then
         arg1.OnJump()
      end
      var3:report("jumpToCollaboratorPressed")
   end
   
   if arg1.Id == "Id" then
      local var0 = var1:getText("Collaborator", "Return") or var1:getText("Collaborator", "Join")
   end
   var55.Text = var1:getText("Collaborator", "Join")
   var55.Size = UDim2.new(1, 0, 0, 28)
   var55.AnchorPoint = Vector2.new(0, 1)
   var55.Position = UDim2.fromOffset(0, 80)
   local var4 = {}
   var4.Background = var12
   local var100 = {}
   var100.Color = var2.jumpButton.background
   var4.BackgroundStyle = var3.join(var100, var2.jumpButton.baseStyle)
   local var108 = {}
   local var111 = {}
   var111.Color = var2.jumpButton.hoveredBackground
   var108.BackgroundStyle = var3.join(var111, var2.jumpButton.baseStyle)
   var9.Hover = var108
   local var119 = {}
   local var122 = {}
   var122.Color = var2.jumpButton.pressedBackground
   var119.BackgroundStyle = var3.join(var122, var2.jumpButton.baseStyle)
   var9.Pressed = var119
   var4.Font = Enum.Font.SourceSans
   var4.TextColor = var2.jumpButton.textColor
   var4.TextSize = 18
   var55.Style = var4
   return var1.createElement(var11, var55)
end
