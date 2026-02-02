PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"icon", "button"}]
  DUPTABLE R5 K7 [{"name", "size"}]
  GETTABLEKS R6 R1 K8 ["iconName"]
  SETTABLEKS R6 R5 K5 ["name"]
  GETTABLEKS R6 R1 K9 ["iconSize"]
  SETTABLEKS R6 R5 K6 ["size"]
  SETTABLEKS R5 R4 K2 ["icon"]
  GETTABLEKS R6 R1 K10 ["showButton"]
  JUMPIFNOT R6 [+5]
  DUPTABLE R5 K12 [{"onActivated"}]
  DUPCLOSURE R6 K13 [PROTO_0]
  SETTABLEKS R6 R5 K11 ["onActivated"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["button"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"icon", "text", "button"}]
  DUPTABLE R3 K7 [{"name", "size"}]
  LOADK R4 K8 ["rbxasset://textures/ui/LuaChat/icons/ic-friends.png"]
  SETTABLEKS R4 R3 K5 ["name"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["XLarge"]
  SETTABLEKS R4 R3 K6 ["size"]
  SETTABLEKS R3 R2 K1 ["icon"]
  LOADK R3 K10 ["To Party with friends, turn on Party in your privacy settings."]
  SETTABLEKS R3 R2 K2 ["text"]
  DUPTABLE R3 K12 [{"text", "icon", "onActivated"}]
  LOADK R4 K13 ["Privacy Settings"]
  SETTABLEKS R4 R3 K2 ["text"]
  LOADK R4 K14 ["icons/navigation/externallink_medium"]
  SETTABLEKS R4 R3 K1 ["icon"]
  DUPCLOSURE R4 K15 [PROTO_2]
  SETTABLEKS R4 R3 K11 ["onActivated"]
  SETTABLEKS R3 R2 K3 ["button"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["IconSize"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Empty"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K16 [{"summary", "stories", "controls"}]
  LOADK R7 K17 ["Empty component for displaying emptys"]
  SETTABLEKS R7 R6 K13 ["summary"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K20 [{"name", "story"}]
  LOADK R9 K21 ["Default"]
  SETTABLEKS R9 R8 K18 ["name"]
  SETTABLEKS R5 R8 K19 ["story"]
  DUPTABLE R9 K20 [{"name", "story"}]
  LOADK R10 K22 ["With Button"]
  SETTABLEKS R10 R9 K18 ["name"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K19 ["story"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K14 ["stories"]
  DUPTABLE R7 K27 [{"showButton", "iconName", "iconSize"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K24 ["showButton"]
  NEWTABLE R8 0 2
  LOADK R9 K28 ["icons/status/oof_xlarge"]
  LOADK R10 K29 ["icons/status/noconnection_large"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K25 ["iconName"]
  NEWTABLE R8 0 2
  GETTABLEKS R9 R3 K30 ["XLarge"]
  GETTABLEKS R10 R3 K31 ["Large"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K26 ["iconSize"]
  SETTABLEKS R7 R6 K15 ["controls"]
  RETURN R6 1
