PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedTab"}]
  SETTABLEKS R0 R3 K0 ["selectedTab"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K2 [{"selectedTab", "tabs"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["selectedTab"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["tabs"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onTabSelected"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 0 4
  LOADK R4 K2 ["CharacterConversion"]
  LOADK R5 K3 ["AnimationConversion"]
  LOADK R6 K4 ["ScriptConversion"]
  LOADK R7 K5 ["AdapterPane"]
  SETLIST R3 R4 4 [1]
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  DUPTABLE R12 K9 [{"Tooltip", "Key", "Icon"}]
  LOADK R15 K10 ["Tabs"]
  MOVE R16 R9
  NAMECALL R13 R2 K11 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K6 ["Tooltip"]
  SETTABLEKS R9 R12 K7 ["Key"]
  GETIMPORT R13 K14 [string.format]
  LOADK R14 K15 ["rbxasset://textures/R15Migrator/Icon_%sTab.png"]
  MOVE R15 R9
  CALL R13 2 1
  SETTABLEKS R13 R12 K8 ["Icon"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K18 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-24]
  DUPTABLE R7 K21 [{"tabs", "selectedTab"}]
  SETTABLEKS R4 R7 K19 ["tabs"]
  GETTABLEN R8 R4 1
  SETTABLEKS R8 R7 K20 ["selectedTab"]
  NAMECALL R5 R0 K22 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["tabs"]
  GETTABLEKS R3 R1 K2 ["selectedTab"]
  GETTABLEKS R5 R0 K3 ["props"]
  GETTABLEKS R4 R5 K4 ["Stylizer"]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K5 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K12 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder"}]
  GETIMPORT R10 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETTABLEKS R10 R4 K11 ["Size"]
  SETTABLEKS R10 R9 K11 ["Size"]
  SETTABLEKS R5 R9 K5 ["LayoutOrder"]
  DUPTABLE R10 K23 [{"Tabs", "View"}]
  JUMPIFNOT R2 [+28]
  JUMPIFNOT R3 [+27]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K27 [{"LayoutOrder", "Tabs", "SelectedTab", "OnTabSelected", "FillDirection", "TabComponent"}]
  NAMECALL R14 R6 K28 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  SETTABLEKS R2 R13 K21 ["Tabs"]
  SETTABLEKS R3 R13 K24 ["SelectedTab"]
  GETTABLEKS R14 R0 K29 ["onTabSelected"]
  SETTABLEKS R14 R13 K25 ["OnTabSelected"]
  GETIMPORT R14 K31 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K14 ["FillDirection"]
  GETUPVAL R14 4
  SETTABLEKS R14 R13 K26 ["TabComponent"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["Tabs"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K32 [{"LayoutOrder", "Size"}]
  NAMECALL R14 R6 K28 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  GETTABLEKS R14 R4 K33 ["TabPaneSize"]
  SETTABLEKS R14 R13 K11 ["Size"]
  DUPTABLE R14 K38 [{"ScriptConversionPane", "CharacterConversion", "AnimationConversionPane", "AdapterPane"}]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R16 R3 K39 ["Key"]
  JUMPIFNOTEQKS R16 K40 ["ScriptConversion"] [+7]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 5
  CALL R15 1 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["ScriptConversionPane"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R16 R3 K39 ["Key"]
  JUMPIFNOTEQKS R16 K35 ["CharacterConversion"] [+7]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 6
  CALL R15 1 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["CharacterConversion"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R16 R3 K39 ["Key"]
  JUMPIFNOTEQKS R16 K41 ["AnimationConversion"] [+7]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 7
  CALL R15 1 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K36 ["AnimationConversionPane"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R16 R3 K39 ["Key"]
  JUMPIFNOTEQKS R16 K37 ["AdapterPane"] [+7]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 8
  CALL R15 1 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K37 ["AdapterPane"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["View"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["Tabs"]
  GETTABLEKS R7 R1 K12 ["Util"]
  GETTABLEKS R8 R7 K13 ["LayoutOrderIterator"]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K16 ["CharacterConversionPane"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K17 ["ScriptConversionPane"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K18 ["AnimationConversionPane"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R9 K19 ["IconTab"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R9 K20 ["AdapterPane"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K21 ["PureComponent"]
  LOADK R17 K22 ["MainTabsView"]
  NAMECALL R15 R15 K23 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K24 [PROTO_1]
  SETTABLEKS R16 R15 K25 ["init"]
  DUPCLOSURE R16 K26 [PROTO_2]
  SETTABLEKS R16 R15 K27 ["didMount"]
  DUPCLOSURE R16 K28 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K29 ["render"]
  GETTABLEKS R16 R3 K30 ["withContext"]
  DUPTABLE R17 K33 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R3 K31 ["Localization"]
  SETTABLEKS R18 R17 K31 ["Localization"]
  GETTABLEKS R18 R3 K32 ["Stylizer"]
  SETTABLEKS R18 R17 K32 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
