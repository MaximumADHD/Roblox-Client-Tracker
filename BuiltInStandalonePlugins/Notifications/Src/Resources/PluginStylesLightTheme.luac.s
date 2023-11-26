MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleSheet"]
  DUPTABLE R3 K17 [{"NotificationScrollBarColor", "NotificationSettingsIcon", "NotificationStatusDisabledIcon", "NotificationStatusUnreadIcon", "NotificationEmptyTrayIcon", "NotificationErrorIcon", "PlaceholderIcon", "StaticDevForumAnnouncements"}]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K21 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["NotificationScrollBarColor"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationSettings.png"]
  SETTABLEKS R4 R3 K10 ["NotificationSettingsIcon"]
  LOADK R4 K23 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeDisabled.png"]
  SETTABLEKS R4 R3 K11 ["NotificationStatusDisabledIcon"]
  LOADK R4 K24 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeUnread.png"]
  SETTABLEKS R4 R3 K12 ["NotificationStatusUnreadIcon"]
  LOADK R4 K25 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Celebration.png"]
  SETTABLEKS R4 R3 K13 ["NotificationEmptyTrayIcon"]
  LOADK R4 K26 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Oof.png"]
  SETTABLEKS R4 R3 K14 ["NotificationErrorIcon"]
  LOADK R4 K27 ["rbxasset://studio_svg_textures/Shared/Placeholder/Light/Standard/Placeholder.png"]
  SETTABLEKS R4 R3 K15 ["PlaceholderIcon"]
  LOADK R4 K28 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/CampaignFilledNeutral.png"]
  SETTABLEKS R4 R3 K16 ["StaticDevForumAnnouncements"]
  MOVE R4 R2
  LOADK R5 K29 ["NotificationsPluginLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
