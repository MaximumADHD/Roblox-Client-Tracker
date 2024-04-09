PROTO_0:
  GETIMPORT R1 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["FileSyncIcons"]
  GETTABLE R2 R3 R0
  GETIMPORT R6 K5 [settings]
  CALL R6 0 1
  GETTABLEKS R5 R6 K6 ["Studio"]
  GETTABLEKS R4 R5 K7 ["Theme"]
  GETTABLEKS R3 R4 K8 ["Name"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPTABLE R1 K9 [{"Export", "Import", "Info", "Open", "Recent", "ServerScriptService", "UptoDate", "Warning", "Notification"}]
  LOADK R2 K0 ["Export"]
  SETTABLEKS R2 R1 K0 ["Export"]
  LOADK R2 K1 ["Import"]
  SETTABLEKS R2 R1 K1 ["Import"]
  LOADK R2 K2 ["Info"]
  SETTABLEKS R2 R1 K2 ["Info"]
  LOADK R2 K3 ["Open"]
  SETTABLEKS R2 R1 K3 ["Open"]
  LOADK R2 K4 ["Recent"]
  SETTABLEKS R2 R1 K4 ["Recent"]
  LOADK R2 K5 ["ServerScriptService"]
  SETTABLEKS R2 R1 K5 ["ServerScriptService"]
  LOADK R2 K10 ["Success"]
  SETTABLEKS R2 R1 K6 ["UptoDate"]
  LOADK R2 K7 ["Warning"]
  SETTABLEKS R2 R1 K7 ["Warning"]
  LOADK R2 K11 ["NotificationBadgeUnread"]
  SETTABLEKS R2 R1 K8 ["Notification"]
  SETTABLEKS R1 R0 K12 ["IconEnums"]
  NEWTABLE R1 16 0
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K0 ["Export"]
  LOADK R4 K13 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K0 ["Export"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K2 ["Info"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K2 ["Info"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K1 ["Import"]
  LOADK R4 K13 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K1 ["Import"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K4 ["Recent"]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K4 ["Recent"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K3 ["Open"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K3 ["Open"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K2 ["Info"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K2 ["Info"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K5 ["ServerScriptService"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K5 ["ServerScriptService"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K6 ["UptoDate"]
  LOADK R4 K17 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K6 ["UptoDate"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K7 ["Warning"]
  LOADK R4 K13 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K7 ["Warning"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K12 ["IconEnums"]
  GETTABLEKS R2 R3 K8 ["Notification"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/"]
  GETTABLEKS R7 R0 K12 ["IconEnums"]
  GETTABLEKS R5 R7 K8 ["Notification"]
  LOADK R6 K14 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K18 ["FileSyncIcons"]
  DUPCLOSURE R1 K19 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["getIconForCurrentTheme"]
  RETURN R0 1
