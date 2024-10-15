PROTO_0:
  GETUPVAL R5 0
  FASTCALL1 ASSERT R5 [+2]
  GETIMPORT R4 K1 [assert]
  CALL R4 1 0
  NAMECALL R4 R0 K2 ["GetUri"]
  CALL R4 1 1
  LOADK R7 K3 ["Actions"]
  NAMECALL R5 R0 K4 ["GetPluginComponent"]
  CALL R5 2 1
  DUPTABLE R6 K12 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Text", "Tooltip"}]
  GETUPVAL R7 1
  MOVE R8 R4
  DUPTABLE R9 K15 [{"Category", "ItemId"}]
  LOADK R10 K3 ["Actions"]
  SETTABLEKS R10 R9 K13 ["Category"]
  LOADK R10 K16 ["ReloadTabs"]
  SETTABLEKS R10 R9 K14 ["ItemId"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["Uri"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["Enabled"]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["Exists"]
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["Visible"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Checkable"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K16 ["ReloadTabs"]
  NAMECALL R7 R1 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["Text"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K19 ["ReloadTabsTooltip"]
  NAMECALL R7 R1 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Tooltip"]
  MOVE R9 R6
  LOADB R10 1
  NAMECALL R7 R5 K20 ["CreateAsync"]
  CALL R7 3 1
  GETTABLEN R8 R7 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["reloadTabActivatedSignal"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["reloadTabActivatedSignal"]
  NAMECALL R9 R9 K22 ["Disconnect"]
  CALL R9 1 0
  GETUPVAL R9 2
  MOVE R12 R2
  NAMECALL R10 R8 K23 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["reloadTabActivatedSignal"]
  DUPTABLE R9 K12 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Text", "Tooltip"}]
  GETUPVAL R10 1
  MOVE R11 R4
  DUPTABLE R12 K15 [{"Category", "ItemId"}]
  LOADK R13 K3 ["Actions"]
  SETTABLEKS R13 R12 K13 ["Category"]
  LOADK R13 K24 ["PrintActions"]
  SETTABLEKS R13 R12 K14 ["ItemId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K5 ["Uri"]
  LOADB R10 1
  SETTABLEKS R10 R9 K6 ["Enabled"]
  LOADB R10 1
  SETTABLEKS R10 R9 K7 ["Exists"]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["Visible"]
  LOADB R10 0
  SETTABLEKS R10 R9 K9 ["Checkable"]
  LOADK R12 K17 ["Plugin"]
  LOADK R13 K24 ["PrintActions"]
  NAMECALL R10 R1 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K10 ["Text"]
  LOADK R12 K17 ["Plugin"]
  LOADK R13 K25 ["PrintActionsTooltip"]
  NAMECALL R10 R1 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["Tooltip"]
  MOVE R12 R9
  LOADB R13 1
  NAMECALL R10 R5 K20 ["CreateAsync"]
  CALL R10 3 1
  GETTABLEN R11 R10 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["printActionsActivatedSignal"]
  JUMPIFNOT R12 [+6]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["printActionsActivatedSignal"]
  NAMECALL R12 R12 K22 ["Disconnect"]
  CALL R12 1 0
  GETUPVAL R12 2
  MOVE R15 R3
  NAMECALL R13 R11 K23 ["Connect"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["printActionsActivatedSignal"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  LOADK R3 K2 ["RibbonConfiguration"]
  NAMECALL R1 R0 K3 ["GetPluginComponent"]
  CALL R1 2 1
  NAMECALL R1 R1 K4 ["ReloadAndGetRibbonDefinitionAsync"]
  CALL R1 1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["join"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagRibbonConfigReloading"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 2 0
  NEWTABLE R6 2 0
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R7 R5 K14 ["createCustomizationActionsAsync"]
  DUPCLOSURE R7 K15 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R7 R5 K16 ["getLatestRibbonControlsAsync"]
  RETURN R5 1
