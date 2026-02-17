PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onDismiss"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["setDontShowAgain"]
  GETUPVAL R1 2
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GetService"]
  LOADK R1 K1 ["GuiService"]
  CALL R0 1 1
  LOADK R3 K2 ["https://create.roblox.com/docs/art/modeling/reimport"]
  NAMECALL R1 R0 K3 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ContextServices"]
  GETTABLEKS R3 R4 K2 ["Localization"]
  GETTABLEKS R2 R3 K3 ["Context"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ContextServices"]
  GETTABLEKS R3 R4 K4 ["Plugin"]
  GETTABLEKS R2 R3 K5 ["use"]
  CALL R2 0 1
  NAMECALL R2 R2 K6 ["get"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  DUPCLOSURE R4 K7 [PROTO_1]
  CAPTURE UPVAL U3
  GETUPVAL R5 4
  CALL R5 0 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K8 ["new"]
  CALL R6 0 1
  LOADK R9 K9 ["ReimportCallout"]
  LOADK R10 K10 ["Header"]
  NAMECALL R7 R1 K11 ["getText"]
  CALL R7 3 1
  LOADK R10 K12 ["Buttons"]
  LOADK R11 K13 ["LearnMore"]
  NAMECALL R8 R1 K11 ["getText"]
  CALL R8 3 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K15 ["View"]
  DUPTABLE R11 K18 [{"tag", "testId"}]
  LOADK R12 K19 ["size-full-0 auto-y padding-medium"]
  SETTABLEKS R12 R11 K16 ["tag"]
  LOADK R12 K20 ["ReimportCallout_MainView"]
  SETTABLEKS R12 R11 K17 ["testId"]
  NEWTABLE R12 0 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["createElement"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K15 ["View"]
  DUPTABLE R15 K23 [{"backgroundStyle", "stroke", "tag"}]
  DUPTABLE R16 K26 [{"Color3", "Transparency"}]
  GETTABLEKS R20 R5 K27 ["Color"]
  GETTABLEKS R19 R20 K28 ["System"]
  GETTABLEKS R18 R19 K29 ["Emphasis"]
  GETTABLEKS R17 R18 K24 ["Color3"]
  SETTABLEKS R17 R16 K24 ["Color3"]
  LOADK R17 K30 [0.95]
  SETTABLEKS R17 R16 K25 ["Transparency"]
  SETTABLEKS R16 R15 K21 ["backgroundStyle"]
  DUPTABLE R16 K31 [{"Color", "Transparency"}]
  GETTABLEKS R20 R5 K27 ["Color"]
  GETTABLEKS R19 R20 K28 ["System"]
  GETTABLEKS R18 R19 K29 ["Emphasis"]
  GETTABLEKS R17 R18 K24 ["Color3"]
  SETTABLEKS R17 R16 K27 ["Color"]
  LOADK R17 K32 [0.5]
  SETTABLEKS R17 R16 K25 ["Transparency"]
  SETTABLEKS R16 R15 K22 ["stroke"]
  LOADK R16 K33 ["row size-full-0 auto-y padding-small radius-medium"]
  SETTABLEKS R16 R15 K16 ["tag"]
  NEWTABLE R16 0 2
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K15 ["View"]
  DUPTABLE R19 K34 [{"tag"}]
  LOADK R20 K35 ["col size-0 auto-xy fill padding-small gap-xsmall"]
  SETTABLEKS R20 R19 K16 ["tag"]
  NEWTABLE R20 0 2
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K14 ["createElement"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K36 ["Text"]
  DUPTABLE R23 K41 [{"Text", "TextWrapped", "RichText", "LayoutOrder", "onActivated", "tag"}]
  LOADK R25 K42 ["<b>%*</b> <u>%*</u>"]
  MOVE R27 R7
  MOVE R28 R8
  NAMECALL R25 R25 K43 ["format"]
  CALL R25 3 1
  MOVE R24 R25
  SETTABLEKS R24 R23 K36 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K37 ["TextWrapped"]
  LOADB R24 1
  SETTABLEKS R24 R23 K38 ["RichText"]
  NAMECALL R24 R6 K44 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K39 ["LayoutOrder"]
  SETTABLEKS R4 R23 K40 ["onActivated"]
  LOADK R24 K45 ["auto-xy align-x-left align-y-center text-body-medium text-align-x-left"]
  SETTABLEKS R24 R23 K16 ["tag"]
  CALL R21 2 1
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K14 ["createElement"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K36 ["Text"]
  DUPTABLE R24 K46 [{"Text", "TextWrapped", "LayoutOrder", "tag"}]
  LOADK R27 K9 ["ReimportCallout"]
  LOADK R28 K47 ["Body"]
  NAMECALL R25 R1 K11 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K36 ["Text"]
  LOADB R25 1
  SETTABLEKS R25 R24 K37 ["TextWrapped"]
  NAMECALL R25 R6 K44 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K39 ["LayoutOrder"]
  LOADK R25 K45 ["auto-xy align-x-left align-y-center text-body-medium text-align-x-left"]
  SETTABLEKS R25 R24 K16 ["tag"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K14 ["createElement"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K15 ["View"]
  DUPTABLE R20 K48 [{"onActivated", "tag", "testId"}]
  SETTABLEKS R3 R20 K40 ["onActivated"]
  LOADK R21 K49 ["auto-xy align-x-right align-y-top"]
  SETTABLEKS R21 R20 K16 ["tag"]
  LOADK R21 K50 ["ReimportCallout_DismissButton"]
  SETTABLEKS R21 R20 K17 ["testId"]
  NEWTABLE R21 0 1
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K14 ["createElement"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K51 ["Icon"]
  DUPTABLE R24 K54 [{"name", "size", "tag"}]
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K55 ["Enums"]
  GETTABLEKS R26 R27 K56 ["IconName"]
  GETTABLEKS R25 R26 K57 ["XSmall"]
  SETTABLEKS R25 R24 K52 ["name"]
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K55 ["Enums"]
  GETTABLEKS R26 R27 K58 ["IconSize"]
  GETTABLEKS R25 R26 K59 ["Medium"]
  SETTABLEKS R25 R24 K53 ["size"]
  LOADK R25 K60 ["align-x-right align-y-top"]
  SETTABLEKS R25 R24 K16 ["tag"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Controllers"]
  GETTABLEKS R5 R6 K12 ["ReimportCalloutController"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Utility"]
  GETTABLEKS R6 R7 K14 ["Services"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["LayoutOrderIterator"]
  GETTABLEKS R8 R1 K17 ["Hooks"]
  GETTABLEKS R7 R8 K18 ["useTokens"]
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R8 1
