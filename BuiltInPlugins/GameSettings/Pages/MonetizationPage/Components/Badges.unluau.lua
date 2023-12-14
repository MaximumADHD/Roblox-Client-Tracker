-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = var1.PureComponent:extend(script.Name)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Button
local var7 = var5.HoverArea
local var8 = var5.TitledFrame
local var9 = game:GetService("TextService")
local var10 = game:GetService("StudioService")
local var11 = game:GetService("GuiService")
local var12 = require(var0.Src.Components.TableWithMenu)
local var13 = var3.Util.FitFrame.FitFrameOnAxis
local var14 = require(var0.Src.Util.KeyProvider)
local var15 = var14.getCopyIdKeyName
local var16 = var14.getConfigureKeyName
local var17 = require(var0.Src.Util.GameSettingsUtilities).shouldAllowBadges
local function fun2(arg1)
   if not var17() then
      return nil
   end
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var2:getText("General", "ButtonCreate")
   local var73 = var3
   local var76 = var1.fontStyle.Normal.TextSize
   local var79 = var1.fontStyle.Normal.Font
   local var83 = Vector2.new(∞, ∞)
   local var6 = var9:GetTextSize()
   local var90 = var2:getText("Monetization", "BadgeImage")
   local var94 = var2:getText("Monetization", "BadgeName")
   local var98 = var2:getText("Monetization", "BadgeDescription")
   local var106 = {}
   var106.axis = var13.Axis.Vertical
   var106.minimumSize = UDim2.new(1, 0, 0, 0)
   var106.contentPadding = UDim.new(0, var1.badges.headerPadding)
   var106.BackgroundTransparency = 1
   var106.LayoutOrder = var0.LayoutOrder
   local var122 = {}
   local var126 = {}
   var126.LayoutOrder = 1
   var126.Title = var2:getText("Monetization", "Badges")
   local var132 = {}
   local var136 = {}
   var136.PaddingRight = UDim.new(0, var1.badges.titlePadding)
   var132.Padding = var1.createElement("UIPadding", var136)
   local var146 = {}
   var146.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var146.VerticalAlignment = Enum.VerticalAlignment.Center
   var132.Layout = var1.createElement("UIListLayout", var146)
   local var153 = {}
   var153.Style = "GameSettingsPrimaryButton"
   var153.Text = var3
   var153.Size = UDim2.new(0, var6.X + var1.createButton.PaddingX, 0, var6.Y + var1.createButton.PaddingY)
   function var153.OnClick()
      local var0 = var10:GetBadgeUploadUrl()
      if var0 then
         if 0 < string.len(var0) then
            var11:OpenBrowserWindow(var0)
         end
      end
      error("Failed to open Badge Creation page")
   end
   
   local var183 = {}
   var183.Cursor = "PointingHand"
   local var185 = var1.createElement(var7, var183)
   var132.CreateButton = var1.createElement(var6, var153, {})
   var122.BadgesTitle = var1.createElement(var8, var126, var132)
   local var191 = {}
   var191.Headers = {}
   var191.Data = var0.BadgeList
   var191.TableHeight = var1.table.height / 2
   var191.LayoutOrder = 2
   var191.NextPageFunc = var0.OnLoadMoreBadges
   var191.ScrollingFrameNextPageRequestDistance = 200
   var191.EmptyText = var2:getText("Monetization", "NoBadges")
   var191.ShowTableBackground = true
   local var199 = {}
   var199.Key = var15()
   local var202 = "General"
   local var204 = var15()
   var199.Text = var2:getText()
   local var207 = {}
   var207.Key = var16()
   local var210 = "General"
   local var212 = var16()
   var207.Text = var2:getText()
   var191.MenuItems = {}
   function var191.OnItemClicked(arg1, arg2)
      if arg1 == "string" then
         var10:CopyToClipboard(arg2)
      end
      if arg1 == "string" then
         local var0 = var10:GetBadgeConfigureUrl(arg2)
         if var0 then
            if 0 < string.len(var0) then
               var11:OpenBrowserWindow(var0)
            end
         end
         error("Failed to open Badge Configuration page")
      end
      assert(false)
   end
   
   local var242 = {}
   var242.BackgroundTransparency = 1
   var242.Image = var1.badges.refreshButton.icon
   var242.Size = UDim2.new(0, var1.badges.refreshButton.size, 0, var1.badges.refreshButton.size)
   var242.Position = UDim2.new(0.5, var1.badges.refreshButton.offset.x, 0.5, 0)
   var242.AnchorPoint = Vector2.new(0.5, 0.5)
   var1.Event.Activated = var0.RefreshBadges
   local var277 = {}
   var277.Cursor = "PointingHand"
   local var12 = var1.createElement(var7, var277)
   var191.HeaderButton = var1.createElement("ImageButton", var242, {})
   var122.BadgesTable = var1.createElement(var12, var191)
   return var1.createElement(var13, var106, var122)
end

function var2.render(arg1)
   if not var17() then
      return nil
   end
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var2:getText("General", "ButtonCreate")
   local var73 = var3
   local var76 = var1.fontStyle.Normal.TextSize
   local var79 = var1.fontStyle.Normal.Font
   local var83 = Vector2.new(∞, ∞)
   local var6 = var9:GetTextSize()
   local var90 = var2:getText("Monetization", "BadgeImage")
   local var94 = var2:getText("Monetization", "BadgeName")
   local var98 = var2:getText("Monetization", "BadgeDescription")
   local var106 = {}
   var106.axis = var13.Axis.Vertical
   var106.minimumSize = UDim2.new(1, 0, 0, 0)
   var106.contentPadding = UDim.new(0, var1.badges.headerPadding)
   var106.BackgroundTransparency = 1
   var106.LayoutOrder = var0.LayoutOrder
   local var122 = {}
   local var126 = {}
   var126.LayoutOrder = 1
   var126.Title = var2:getText("Monetization", "Badges")
   local var132 = {}
   local var136 = {}
   var136.PaddingRight = UDim.new(0, var1.badges.titlePadding)
   var132.Padding = var1.createElement("UIPadding", var136)
   local var146 = {}
   var146.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var146.VerticalAlignment = Enum.VerticalAlignment.Center
   var132.Layout = var1.createElement("UIListLayout", var146)
   local var153 = {}
   var153.Style = "GameSettingsPrimaryButton"
   var153.Text = var3
   var153.Size = UDim2.new(0, var6.X + var1.createButton.PaddingX, 0, var6.Y + var1.createButton.PaddingY)
   function var153.OnClick()
      local var0 = var10:GetBadgeUploadUrl()
      if var0 then
         if 0 < string.len(var0) then
            var11:OpenBrowserWindow(var0)
         end
      end
      error("Failed to open Badge Creation page")
   end
   
   local var183 = {}
   var183.Cursor = "PointingHand"
   local var185 = var1.createElement(var7, var183)
   var132.CreateButton = var1.createElement(var6, var153, {})
   var122.BadgesTitle = var1.createElement(var8, var126, var132)
   local var191 = {}
   var191.Headers = {}
   var191.Data = var0.BadgeList
   var191.TableHeight = var1.table.height / 2
   var191.LayoutOrder = 2
   var191.NextPageFunc = var0.OnLoadMoreBadges
   var191.ScrollingFrameNextPageRequestDistance = 200
   var191.EmptyText = var2:getText("Monetization", "NoBadges")
   var191.ShowTableBackground = true
   local var199 = {}
   var199.Key = var15()
   local var202 = "General"
   local var204 = var15()
   var199.Text = var2:getText()
   local var207 = {}
   var207.Key = var16()
   local var210 = "General"
   local var212 = var16()
   var207.Text = var2:getText()
   var191.MenuItems = {}
   function var191.OnItemClicked(arg1, arg2)
      if arg1 == "string" then
         var10:CopyToClipboard(arg2)
      end
      if arg1 == "string" then
         local var0 = var10:GetBadgeConfigureUrl(arg2)
         if var0 then
            if 0 < string.len(var0) then
               var11:OpenBrowserWindow(var0)
            end
         end
         error("Failed to open Badge Configuration page")
      end
      assert(false)
   end
   
   local var242 = {}
   var242.BackgroundTransparency = 1
   var242.Image = var1.badges.refreshButton.icon
   var242.Size = UDim2.new(0, var1.badges.refreshButton.size, 0, var1.badges.refreshButton.size)
   var242.Position = UDim2.new(0.5, var1.badges.refreshButton.offset.x, 0.5, 0)
   var242.AnchorPoint = Vector2.new(0.5, 0.5)
   var1.Event.Activated = var0.RefreshBadges
   local var277 = {}
   var277.Cursor = "PointingHand"
   local var12 = var1.createElement(var7, var277)
   var191.HeaderButton = var1.createElement("ImageButton", var242, {})
   var122.BadgesTable = var1.createElement(var12, var191)
   return var1.createElement(var13, var106, var122)
end

fun2 = var4.withContext
local var283 = {}
var283.Localization = var4.Localization
var283.Stylizer = var4.Stylizer
var2 = fun2(var283)(var2)
return var2
