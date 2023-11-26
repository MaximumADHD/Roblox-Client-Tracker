PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["checkUpgradeCapability"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R6 K7 [{"_changeHistoryService", "_shorelineUpgraderService", "_analytics", "_plugin", "_store", "_terrain", "_mock"}]
  GETIMPORT R7 K9 [game]
  LOADK R9 K10 ["ChangeHistoryService"]
  NAMECALL R7 R7 K11 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K0 ["_changeHistoryService"]
  GETIMPORT R7 K9 [game]
  LOADK R9 K12 ["ShorelineUpgraderService"]
  NAMECALL R7 R7 K11 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K1 ["_shorelineUpgraderService"]
  SETTABLEKS R0 R6 K2 ["_analytics"]
  SETTABLEKS R1 R6 K3 ["_plugin"]
  SETTABLEKS R2 R6 K4 ["_store"]
  SETTABLEKS R3 R6 K5 ["_terrain"]
  SETTABLEKS R4 R6 K6 ["_mock"]
  GETUPVAL R7 0
  FASTCALL2 SETMETATABLE R6 R7 [+3]
  GETIMPORT R5 K14 [setmetatable]
  CALL R5 2 1
  JUMPIFNOT R4 [+1]
  RETURN R5 1
  GETTABLEKS R6 R5 K5 ["_terrain"]
  NAMECALL R6 R6 K15 ["get"]
  CALL R6 1 1
  LOADK R9 K16 ["ShorelinesUpgraded"]
  NAMECALL R7 R6 K17 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  NAMECALL R7 R7 K18 ["Connect"]
  CALL R7 2 1
  SETTABLEKS R7 R5 K19 ["_onShorelinesUpgradedChanged"]
  GETTABLEKS R7 R5 K3 ["_plugin"]
  LOADK R9 K20 ["UpgradeShorelines_DontAsk"]
  NAMECALL R7 R7 K21 ["GetSetting"]
  CALL R7 2 1
  SETTABLEKS R7 R5 K22 ["_dontAsk"]
  NAMECALL R7 R5 K23 ["checkUpgradeCapability"]
  CALL R7 1 0
  RETURN R5 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_onShorelinesUpgradedChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["_onShorelinesUpgradedChanged"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R2 1
  SETTABLEKS R2 R0 K1 ["_dismiss"]
  SETTABLEKS R1 R0 K2 ["_dontAsk"]
  GETTABLEKS R2 R0 K3 ["_plugin"]
  LOADK R4 K4 ["UpgradeShorelines_DontAsk"]
  MOVE R5 R1
  NAMECALL R2 R2 K5 ["SetSetting"]
  CALL R2 3 0
  GETTABLEKS R2 R0 K6 ["_analytics"]
  LOADK R4 K7 ["upgradeShorelinesDismiss"]
  MOVE R5 R1
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  NAMECALL R2 R0 K9 ["checkUpgradeCapability"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_terrain"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  MOVE R2 R1
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R1 K3 ["CanShorelinesBeUpgraded"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["_store"]
  GETUPVAL R5 0
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K5 ["dispatch"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K4 ["_store"]
  GETUPVAL R5 1
  GETTABLEKS R7 R0 K6 ["_dontAsk"]
  NOT R6 R7
  JUMPIFNOT R6 [+9]
  GETTABLEKS R7 R0 K7 ["_dismiss"]
  NOT R6 R7
  JUMPIFNOT R6 [+5]
  GETTABLEKS R7 R0 K8 ["_updating"]
  NOT R6 R7
  JUMPIFNOT R6 [+1]
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K5 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_mock"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["_updating"]
  GETTABLEKS R3 R0 K2 ["_store"]
  NAMECALL R3 R3 K3 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K4 ["Tools"]
  GETTABLEKS R1 R2 K5 ["ShorelinesUpgradePercent"]
  LOADN R2 0
  JUMPIFLE R2 R1 [+4]
  LOADN R2 1
  JUMPIFNOTLT R1 R2 [+20]
  GETTABLEKS R2 R0 K6 ["_shorelineUpgraderService"]
  NAMECALL R2 R2 K7 ["Cancel"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["upgradeShorelinesCancel"]
  NAMECALL R2 R2 K10 ["report"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["_store"]
  GETUPVAL R4 0
  LOADN R5 255
  CALL R4 1 -1
  NAMECALL R2 R2 K11 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_store"]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["checkUpgradeCapability"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R2 1
  SETTABLEKS R2 R0 K1 ["_updating"]
  GETTABLEKS R2 R0 K2 ["_shorelineUpgraderService"]
  NAMECALL R2 R2 K3 ["Start"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K2 ["_shorelineUpgraderService"]
  GETTABLEKS R2 R3 K4 ["Status"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["_analytics"]
  LOADK R4 K7 ["upgradeShorelinesAction"]
  MOVE R5 R1
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  RETURN R0 0

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
  GETTABLEKS R3 R0 K7 ["Src"]
  GETTABLEKS R2 R3 K8 ["Actions"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K9 ["SetShorelinesUpgradePercent"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K10 ["SetShorelinesUpgradePossible"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K11 ["SetShorelinesUpgradeSuggestion"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["ContextItem"]
  LOADK R10 K14 ["ShorelineController"]
  NAMECALL R8 R7 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K17 ["new"]
  DUPCLOSURE R9 K18 [PROTO_2]
  SETTABLEKS R9 R8 K19 ["destroy"]
  DUPCLOSURE R9 K20 [PROTO_3]
  SETTABLEKS R9 R8 K21 ["dismiss"]
  DUPCLOSURE R9 K22 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K23 ["checkUpgradeCapability"]
  DUPCLOSURE R9 K24 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K25 ["cancel"]
  DUPCLOSURE R9 K26 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K27 ["start"]
  RETURN R8 1
