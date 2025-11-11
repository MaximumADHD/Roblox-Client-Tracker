PROTO_0:
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Size"]
  GETTABLEKS R5 R6 K4 ["Size_800"]
  SUB R4 R0 R5
  FASTCALL2K MATH_MAX R4 K5 [+4]
  LOADK R5 K5 [0]
  GETIMPORT R3 K8 [math.max]
  CALL R3 2 1
  LOADN R4 1
  LOADN R5 0
  CALL R1 4 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["property"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createNextOrder"]
  CALL R2 0 1
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["useContext"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["Context"]
  CALL R4 1 1
  GETUPVAL R5 4
  GETUPVAL R6 5
  DUPTABLE R7 K8 [{"tag", "LayoutOrder", "onSecondaryActivated", "stateLayer"}]
  LOADK R8 K9 ["auto-y size-full-0 row padding-left-medium padding-y-xxsmall"]
  SETTABLEKS R8 R7 K4 ["tag"]
  GETTABLEKS R8 R0 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETTABLEKS R8 R0 K6 ["onSecondaryActivated"]
  SETTABLEKS R8 R7 K6 ["onSecondaryActivated"]
  DUPTABLE R8 K11 [{"affordance"}]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["None"]
  SETTABLEKS R9 R8 K10 ["affordance"]
  SETTABLEKS R8 R7 K7 ["stateLayer"]
  DUPTABLE R8 K16 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
  GETUPVAL R9 4
  GETUPVAL R10 5
  DUPTABLE R11 K17 [{"tag", "LayoutOrder"}]
  LOADK R12 K18 ["auto-x row size-0-600"]
  SETTABLEKS R12 R11 K4 ["tag"]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  DUPTABLE R12 K21 [{"LeftSpacer", "Text"}]
  GETUPVAL R13 4
  GETUPVAL R14 7
  DUPTABLE R15 K23 [{"LayoutOrder", "addTrailingGap"}]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K22 ["addTrailingGap"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["LeftSpacer"]
  GETUPVAL R13 4
  GETUPVAL R14 8
  DUPTABLE R15 K25 [{"tag", "LayoutOrder", "Text", "Size"}]
  LOADK R16 K26 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small"]
  SETTABLEKS R16 R15 K4 ["tag"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  GETTABLEKS R17 R1 K27 ["id"]
  GETTABLEKS R16 R17 K28 ["name"]
  SETTABLEKS R16 R15 K20 ["Text"]
  GETTABLEKS R16 R0 K29 ["labelWidthBinding"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R3
  NAMECALL R16 R16 K30 ["map"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["Size"]
  DUPTABLE R16 K32 [{"CoolFade"}]
  GETUPVAL R17 4
  GETUPVAL R18 5
  DUPTABLE R19 K34 [{"tag", "Size", "backgroundStyle"}]
  LOADK R20 K35 ["anchor-center-right position-center-right"]
  SETTABLEKS R20 R19 K4 ["tag"]
  GETIMPORT R20 K38 [UDim2.new]
  LOADN R21 0
  GETTABLEKS R23 R3 K39 ["Padding"]
  GETTABLEKS R22 R23 K40 ["Medium"]
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K24 ["Size"]
  DUPTABLE R20 K43 [{"Color3", "Transparency"}]
  GETTABLEKS R22 R4 K44 ["theme"]
  JUMPIFNOTEQKS R22 K45 ["Light"] [+6]
  GETIMPORT R21 K47 [Color3.fromHex]
  LOADK R22 K48 ["#FFFFFF"]
  CALL R21 1 1
  JUMP [+16]
  GETUPVAL R22 9
  CALL R22 0 1
  JUMPIFNOT R22 [+9]
  GETTABLEKS R24 R3 K49 ["Color"]
  GETTABLEKS R23 R24 K50 ["Surface"]
  GETTABLEKS R22 R23 K51 ["Surface_100"]
  GETTABLEKS R21 R22 K41 ["Color3"]
  JUMP [+4]
  GETIMPORT R21 K47 [Color3.fromHex]
  LOADK R22 K52 ["#2E2E2E"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K41 ["Color3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K42 ["Transparency"]
  SETTABLEKS R20 R19 K33 ["backgroundStyle"]
  DUPTABLE R20 K54 [{"UIGradient"}]
  GETUPVAL R21 4
  LOADK R22 K53 ["UIGradient"]
  DUPTABLE R23 K55 [{"Transparency"}]
  GETIMPORT R24 K57 [NumberSequence.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K42 ["Transparency"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["UIGradient"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["CoolFade"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K20 ["Text"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["PropertyName"]
  GETUPVAL R9 4
  GETUPVAL R10 10
  DUPTABLE R11 K62 [{"layoutOrder", "zIndex", "record", "session", "labelWidthBinding"}]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K58 ["layoutOrder"]
  LOADN R12 2
  SETTABLEKS R12 R11 K59 ["zIndex"]
  SETTABLEKS R1 R11 K60 ["record"]
  GETTABLEKS R12 R0 K61 ["session"]
  SETTABLEKS R12 R11 K61 ["session"]
  GETTABLEKS R12 R0 K29 ["labelWidthBinding"]
  SETTABLEKS R12 R11 K29 ["labelWidthBinding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["PropertyValue"]
  GETUPVAL R9 4
  LOADK R10 K63 ["UISizeConstraint"]
  DUPTABLE R11 K65 [{"MinSize"}]
  GETIMPORT R12 K67 [Vector2.new]
  LOADN R13 0
  GETTABLEKS R15 R3 K24 ["Size"]
  GETTABLEKS R14 R15 K68 ["Size_600"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K64 ["MinSize"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["SizeConstraint"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["LeftArrowSpacer"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R0 K11 ["PropertyTypes"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K12 ["PropertyEntries"]
  GETTABLEKS R6 R7 K13 ["PropertyView"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K14 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R1 K15 ["ReactUtils"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R0 K16 ["RpcTypes"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K8 ["Components"]
  GETTABLEKS R11 R12 K17 ["Contexts"]
  GETTABLEKS R10 R11 K18 ["ThemeContext"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K19 ["Flags"]
  GETTABLEKS R11 R12 K20 ["getFFlagEnableRibbonPlugin"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K21 ["Enums"]
  GETTABLEKS R11 R12 K22 ["StateLayerAffordance"]
  GETTABLEKS R12 R2 K23 ["Text"]
  GETTABLEKS R13 R2 K24 ["View"]
  GETTABLEKS R15 R2 K25 ["Hooks"]
  GETTABLEKS R14 R15 K26 ["useTokens"]
  GETTABLEKS R15 R6 K27 ["createElement"]
  DUPCLOSURE R16 K28 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R5
  RETURN R16 1
