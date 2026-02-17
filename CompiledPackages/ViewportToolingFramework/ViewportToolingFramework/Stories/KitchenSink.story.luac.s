PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Button clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Option A clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Option B clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Clicked on"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Should be unreachable"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K5 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
  LOADK R2 K6 ["Button"]
  SETTABLEKS R2 R1 K0 ["Type"]
  LOADK R2 K7 ["A button"]
  SETTABLEKS R2 R1 K1 ["Tooltip"]
  LOADK R3 K8 ["This is a %*long description."]
  GETIMPORT R5 K11 [string.rep]
  LOADK R6 K12 ["very "]
  LOADN R7 10
  CALL R5 2 1
  NAMECALL R3 R3 K13 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  SETTABLEKS R2 R1 K2 ["TooltipDescription"]
  LOADK R2 K14 ["rbxassetid://11560341132"]
  SETTABLEKS R2 R1 K3 ["Icon"]
  DUPCLOSURE R2 K15 [PROTO_0]
  SETTABLEKS R2 R1 K4 ["OnClick"]
  GETIMPORT R2 K18 [table.clone]
  MOVE R3 R1
  CALL R2 1 1
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["Selected"]
  DUPTABLE R3 K21 [{"Type", "Options"}]
  LOADK R4 K22 ["SplitButton"]
  SETTABLEKS R4 R3 K0 ["Type"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K24 [{"Icon", "Text", "OnClick"}]
  LOADK R6 K25 ["rbxasset://textures/StudioToolbox/Search.png"]
  SETTABLEKS R6 R5 K3 ["Icon"]
  LOADK R6 K26 ["Option A"]
  SETTABLEKS R6 R5 K23 ["Text"]
  DUPCLOSURE R6 K27 [PROTO_1]
  SETTABLEKS R6 R5 K4 ["OnClick"]
  DUPTABLE R6 K28 [{"Icon", "Text", "TooltipDescription", "OnClick"}]
  LOADK R7 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
  SETTABLEKS R7 R6 K3 ["Icon"]
  LOADK R7 K30 ["This is the second option, as you can see"]
  SETTABLEKS R7 R6 K23 ["Text"]
  LOADK R7 K31 ["The name is long on purpose!"]
  SETTABLEKS R7 R6 K2 ["TooltipDescription"]
  DUPCLOSURE R7 K32 [PROTO_2]
  SETTABLEKS R7 R6 K4 ["OnClick"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K20 ["Options"]
  DUPTABLE R4 K33 [{"Type"}]
  LOADK R5 K34 ["Separator"]
  SETTABLEKS R5 R4 K0 ["Type"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K35 ["useState"]
  LOADK R6 K36 ["gallery"]
  CALL R5 1 2
  DUPTABLE R7 K40 [{"Type", "Value", "OnChange", "Items"}]
  LOADK R8 K41 ["Radio"]
  SETTABLEKS R8 R7 K0 ["Type"]
  SETTABLEKS R5 R7 K37 ["Value"]
  SETTABLEKS R6 R7 K38 ["OnChange"]
  NEWTABLE R8 0 3
  DUPTABLE R9 K43 [{"Id", "Tooltip", "TooltipDescription", "Icon"}]
  LOADK R10 K36 ["gallery"]
  SETTABLEKS R10 R9 K42 ["Id"]
  LOADK R10 K44 ["Gallery"]
  SETTABLEKS R10 R9 K1 ["Tooltip"]
  LOADK R10 K45 ["The gallery"]
  SETTABLEKS R10 R9 K2 ["TooltipDescription"]
  LOADK R10 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
  SETTABLEKS R10 R9 K3 ["Icon"]
  DUPTABLE R10 K46 [{"Id", "Tooltip", "Icon"}]
  LOADK R11 K47 ["list"]
  SETTABLEKS R11 R10 K42 ["Id"]
  LOADK R11 K48 ["List"]
  SETTABLEKS R11 R10 K1 ["Tooltip"]
  LOADK R11 K49 ["rbxasset://textures/StudioToolbox/List.png"]
  SETTABLEKS R11 R10 K3 ["Icon"]
  DUPTABLE R11 K46 [{"Id", "Tooltip", "Icon"}]
  LOADK R12 K50 ["search"]
  SETTABLEKS R12 R11 K42 ["Id"]
  LOADK R12 K51 ["Search"]
  SETTABLEKS R12 R11 K1 ["Tooltip"]
  LOADK R12 K25 ["rbxasset://textures/StudioToolbox/Search.png"]
  SETTABLEKS R12 R11 K3 ["Icon"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K39 ["Items"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K35 ["useState"]
  LOADN R9 5
  CALL R8 1 2
  DUPTABLE R10 K55 [{"Type", "Value", "OnChange", "Min", "Max", "IncrementStep", "Icon", "Tooltip"}]
  LOADK R11 K56 ["Slider"]
  SETTABLEKS R11 R10 K0 ["Type"]
  SETTABLEKS R8 R10 K37 ["Value"]
  SETTABLEKS R9 R10 K38 ["OnChange"]
  LOADN R11 0
  SETTABLEKS R11 R10 K52 ["Min"]
  LOADN R11 10
  SETTABLEKS R11 R10 K53 ["Max"]
  LOADN R11 1
  SETTABLEKS R11 R10 K54 ["IncrementStep"]
  LOADK R11 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
  SETTABLEKS R11 R10 K3 ["Icon"]
  LOADK R11 K57 ["My slider"]
  SETTABLEKS R11 R10 K1 ["Tooltip"]
  DUPTABLE R11 K58 [{"Type", "Text"}]
  LOADK R12 K59 ["Label"]
  SETTABLEKS R12 R11 K0 ["Type"]
  LOADK R12 K60 ["This is a label."]
  SETTABLEKS R12 R11 K23 ["Text"]
  DUPTABLE R12 K62 [{"HorizontalItems"}]
  NEWTABLE R13 0 12
  MOVE R14 R1
  MOVE R15 R2
  GETUPVAL R17 1
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  MOVE R16 R3
  JUMP [+1]
  MOVE R16 R4
  MOVE R17 R4
  MOVE R18 R7
  MOVE R19 R4
  MOVE R20 R10
  MOVE R21 R4
  DUPTABLE R22 K63 [{"Type", "Text", "OnClick"}]
  LOADK R23 K64 ["TextButton"]
  SETTABLEKS R23 R22 K0 ["Type"]
  LOADK R23 K65 ["On"]
  SETTABLEKS R23 R22 K23 ["Text"]
  DUPCLOSURE R23 K66 [PROTO_3]
  SETTABLEKS R23 R22 K4 ["OnClick"]
  DUPTABLE R23 K68 [{"Type", "Text", "Enabled", "OnClick"}]
  LOADK R24 K64 ["TextButton"]
  SETTABLEKS R24 R23 K0 ["Type"]
  LOADK R24 K69 ["Off"]
  SETTABLEKS R24 R23 K23 ["Text"]
  LOADB R24 0
  SETTABLEKS R24 R23 K67 ["Enabled"]
  DUPCLOSURE R24 K70 [PROTO_4]
  SETTABLEKS R24 R23 K4 ["OnClick"]
  MOVE R24 R4
  MOVE R25 R11
  SETLIST R13 R14 12 [1]
  SETTABLEKS R13 R12 K61 ["HorizontalItems"]
  DUPTABLE R13 K72 [{"VerticalItems"}]
  NEWTABLE R14 0 5
  MOVE R15 R1
  MOVE R16 R2
  GETUPVAL R18 1
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  MOVE R17 R3
  JUMP [+1]
  MOVE R17 R4
  MOVE R18 R4
  MOVE R19 R7
  SETLIST R14 R15 5 [1]
  SETTABLEKS R14 R13 K71 ["VerticalItems"]
  GETTABLEKS R16 R0 K73 ["controls"]
  GETTABLEKS R15 R16 K74 ["PutInViewport"]
  JUMPIFNOT R15 [+2]
  GETUPVAL R14 2
  JUMP [+1]
  GETUPVAL R14 3
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K75 ["createElement"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K76 ["Fragment"]
  NEWTABLE R17 0 0
  DUPTABLE R18 K79 [{"HorizontalToolbar", "VerticalToolbar"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K75 ["createElement"]
  MOVE R20 R14
  MOVE R21 R12
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["HorizontalToolbar"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K75 ["createElement"]
  MOVE R20 R14
  MOVE R21 R13
  CALL R19 2 1
  SETTABLEKS R19 R18 K78 ["VerticalToolbar"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ViewportToolingFramework"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["Toolbar"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K10 ["ToolbarBase"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagViewportToolingFrameworkSplitButtons"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R7 K17 [{"story", "controls"}]
  SETTABLEKS R6 R7 K15 ["story"]
  DUPTABLE R8 K19 [{"PutInViewport"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["PutInViewport"]
  SETTABLEKS R8 R7 K16 ["controls"]
  RETURN R7 1
