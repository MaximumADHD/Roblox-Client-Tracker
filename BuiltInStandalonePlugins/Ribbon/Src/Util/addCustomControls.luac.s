PROTO_0:
  GETTABLEKS R3 R0 K0 ["Uri"]
  GETTABLEKS R2 R3 K1 ["PluginId"]
  GETTABLEKS R4 R1 K0 ["Uri"]
  GETTABLEKS R3 R4 K1 ["PluginId"]
  JUMPIFNOTEQ R2 R3 [+14]
  GETTABLEKS R4 R0 K0 ["Uri"]
  GETTABLEKS R3 R4 K2 ["ItemId"]
  GETTABLEKS R5 R1 K0 ["Uri"]
  GETTABLEKS R4 R5 K2 ["ItemId"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["Uri"]
  GETTABLEKS R3 R4 K1 ["PluginId"]
  GETTABLEKS R5 R1 K0 ["Uri"]
  GETTABLEKS R4 R5 K1 ["PluginId"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R5 0
  FASTCALL1 ASSERT R5 [+2]
  GETIMPORT R4 K1 [assert]
  CALL R4 1 0
  GETIMPORT R4 K4 [table.sort]
  MOVE R5 R3
  DUPCLOSURE R6 K5 [PROTO_0]
  CALL R4 2 0
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R8 K6 ["PreferredToolbarUri"]
  GETTABLEKS R9 R10 K7 ["PluginId"]
  GETTABLEKS R10 R0 K7 ["PluginId"]
  JUMPIFNOTEQ R9 R10 [+41]
  GETTABLEKS R10 R8 K6 ["PreferredToolbarUri"]
  GETTABLEKS R9 R10 K8 ["DataModel"]
  GETTABLEKS R10 R0 K8 ["DataModel"]
  JUMPIFNOTEQ R9 R10 [+33]
  GETTABLEKS R10 R8 K6 ["PreferredToolbarUri"]
  GETTABLEKS R9 R10 K9 ["PluginType"]
  GETTABLEKS R10 R0 K9 ["PluginType"]
  JUMPIFNOTEQ R9 R10 [+25]
  GETTABLEKS R10 R8 K6 ["PreferredToolbarUri"]
  GETTABLEKS R9 R10 K10 ["ItemId"]
  LOADK R11 K11 ["Tabs/%*"]
  MOVE R13 R1
  NAMECALL R11 R11 K12 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  JUMPIFNOTEQ R9 R10 [+13]
  GETUPVAL R9 1
  MOVE R10 R2
  GETTABLEKS R11 R8 K13 ["Controls"]
  CALL R9 2 0
  GETUPVAL R11 2
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-49]
  LENGTH R4 R3
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+5]
  GETIMPORT R4 K17 [table.remove]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

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
  GETTABLEKS R3 R2 K10 ["append"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAddSeparatorsBetweenCustomTools"]
  CALL R4 1 1
  CALL R4 0 1
  DUPTABLE R5 K15 [{"Type", "Size"}]
  LOADK R6 K16 ["Separator"]
  SETTABLEKS R6 R5 K13 ["Type"]
  LOADK R6 K17 ["Large"]
  SETTABLEKS R6 R5 K14 ["Size"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETGLOBAL R6 K19 ["addCustomControls"]
  GETGLOBAL R6 K19 ["addCustomControls"]
  RETURN R6 1
