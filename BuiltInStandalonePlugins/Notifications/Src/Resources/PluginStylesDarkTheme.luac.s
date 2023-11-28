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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["NotificationLuaIcons"]
  CALL R3 1 1
  DUPTABLE R4 K17 [{"NotificationScrollBarColor", "NotificationStatusDisabledIcon", "NotificationStatusUnreadIcon", "NotificationEmptyTrayIcon", "NotificationErrorIcon"}]
  GETIMPORT R5 K20 [Color3.fromHex]
  LOADK R6 K21 ["#939393"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["NotificationScrollBarColor"]
  LOADK R5 K22 ["rbxasset://studio_svg_textures/Lua/Notifications/Dark/Standard/NotificationBadgeDisabled.png"]
  SETTABLEKS R5 R4 K13 ["NotificationStatusDisabledIcon"]
  LOADK R5 K23 ["rbxasset://studio_svg_textures/Lua/Notifications/Dark/Standard/NotificationBadgeUnread.png"]
  SETTABLEKS R5 R4 K14 ["NotificationStatusUnreadIcon"]
  LOADK R5 K24 ["rbxasset://studio_svg_textures/Lua/Notifications/Dark/SI-Standard/Celebration.png"]
  SETTABLEKS R5 R4 K15 ["NotificationEmptyTrayIcon"]
  LOADK R5 K25 ["rbxasset://studio_svg_textures/Lua/Notifications/Dark/SI-Standard/Oof.png"]
  SETTABLEKS R5 R4 K16 ["NotificationErrorIcon"]
  GETIMPORT R5 K27 [ipairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_INEXT R5
  LOADK R11 K28 ["%*Icon"]
  MOVE R13 R9
  NAMECALL R11 R11 K29 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  LOADK R12 K30 ["rbxasset://studio_svg_textures/Lua/Notifications/Dark/Large/%*.png"]
  MOVE R14 R9
  NAMECALL R12 R12 K29 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLE R11 R4 R10
  FORGLOOP R5 2 [inext] [-14]
  MOVE R5 R2
  LOADK R6 K31 ["NotificationsPluginDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
