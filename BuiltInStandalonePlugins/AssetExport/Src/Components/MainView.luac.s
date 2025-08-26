PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["cancelExport"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIF R0 [+6]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["exportRequested"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R4 3
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R5 4
  MOVE R6 R2
  CALL R5 1 1
  LOADK R8 K1 ["Buttons"]
  LOADK R9 K2 ["Export"]
  NAMECALL R6 R1 K3 ["getText"]
  CALL R6 3 1
  JUMPIF R3 [+1]
  JUMPIF R4 [+6]
  LOADK R9 K1 ["Buttons"]
  LOADK R10 K4 ["Processing"]
  NAMECALL R7 R1 K3 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K6 ["View"]
  DUPTABLE R9 K9 [{"tag", "LayoutOrder"}]
  LOADK R10 K10 ["bg-surface-300 size-full col padding-medium"]
  SETTABLEKS R10 R9 K7 ["tag"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K14 [{"Header", "CenterPanel", "ButtonPanel"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K6 ["View"]
  DUPTABLE R13 K15 [{"tag"}]
  LOADK R14 K16 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
  SETTABLEKS R14 R13 K7 ["tag"]
  DUPTABLE R14 K20 [{"iconElement", "textPanel", "show"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K21 ["Image"]
  DUPTABLE R17 K23 [{"Image", "Size", "LayoutOrder"}]
  LOADK R18 K24 ["rbxassetid://71912387248131"]
  SETTABLEKS R18 R17 K21 ["Image"]
  GETIMPORT R18 K27 [UDim2.fromOffset]
  LOADN R19 36
  LOADN R20 36
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K17 ["iconElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K6 ["View"]
  DUPTABLE R17 K9 [{"tag", "LayoutOrder"}]
  LOADK R18 K28 ["size-0-0 auto-y col align-y-top gap-small grow"]
  SETTABLEKS R18 R17 K7 ["tag"]
  LOADN R18 2
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  DUPTABLE R18 K31 [{"MainText", "SupportText"}]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K5 ["createElement"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K32 ["Text"]
  DUPTABLE R21 K33 [{"tag", "Text", "LayoutOrder"}]
  LOADK R22 K34 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
  SETTABLEKS R22 R21 K7 ["tag"]
  LOADK R24 K35 ["Title"]
  LOADK R25 K36 ["Customize"]
  NAMECALL R22 R1 K3 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K32 ["Text"]
  LOADN R22 1
  SETTABLEKS R22 R21 K8 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K29 ["MainText"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K5 ["createElement"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K32 ["Text"]
  DUPTABLE R21 K33 [{"tag", "Text", "LayoutOrder"}]
  LOADK R22 K37 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
  SETTABLEKS R22 R21 K7 ["tag"]
  LOADK R24 K38 ["Info"]
  LOADK R25 K36 ["Customize"]
  NAMECALL R22 R1 K3 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K32 ["Text"]
  LOADN R22 2
  SETTABLEKS R22 R21 K8 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["SupportText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["textPanel"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K6 ["View"]
  DUPTABLE R17 K9 [{"tag", "LayoutOrder"}]
  LOADK R18 K39 ["size-0-full auto-xy row align-y-center"]
  SETTABLEKS R18 R17 K7 ["tag"]
  LOADN R18 3
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  NEWTABLE R18 0 0
  CALL R15 3 1
  SETTABLEKS R15 R14 K19 ["show"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K11 ["Header"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K6 ["View"]
  DUPTABLE R13 K9 [{"tag", "LayoutOrder"}]
  LOADK R14 K40 ["size-full-0 grow padding-small row align-y-top gap-small"]
  SETTABLEKS R14 R13 K7 ["tag"]
  LOADN R14 2
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  DUPTABLE R14 K43 [{"spacer", "Settings"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K6 ["View"]
  DUPTABLE R17 K44 [{"Size", "LayoutOrder"}]
  GETIMPORT R18 K27 [UDim2.fromOffset]
  LOADN R19 36
  LOADN R20 36
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["spacer"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K6 ["View"]
  DUPTABLE R17 K9 [{"tag", "LayoutOrder"}]
  LOADK R18 K45 ["size-0-full grow"]
  SETTABLEKS R18 R17 K7 ["tag"]
  LOADN R18 2
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  DUPTABLE R18 K47 [{"scroll"}]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K5 ["createElement"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K48 ["ScrollView"]
  DUPTABLE R21 K49 [{"tag", "scroll"}]
  LOADK R22 K50 ["size-full"]
  SETTABLEKS R22 R21 K7 ["tag"]
  DUPTABLE R22 K55 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K56 ["Enums"]
  GETTABLEKS R24 R25 K57 ["ScrollBarVisibility"]
  GETTABLEKS R23 R24 K58 ["Auto"]
  SETTABLEKS R23 R22 K51 ["scrollBarVisibility"]
  GETIMPORT R23 K61 [Enum.ScrollingDirection.Y]
  SETTABLEKS R23 R22 K52 ["ScrollingDirection"]
  GETIMPORT R23 K63 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K53 ["AutomaticCanvasSize"]
  GETIMPORT R23 K65 [UDim2.fromScale]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K54 ["CanvasSize"]
  SETTABLEKS R22 R21 K46 ["scroll"]
  DUPTABLE R22 K67 [{"SettingsContainer"}]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K5 ["createElement"]
  GETUPVAL R24 7
  DUPTABLE R25 K71 [{"title", "settingsEnabled", "settings"}]
  LOADK R26 K72 ["Include"]
  SETTABLEKS R26 R25 K68 ["title"]
  JUMPIFEQKS R5 K73 ["Main"] [+2]
  LOADB R26 0 +1
  LOADB R26 1
  SETTABLEKS R26 R25 K69 ["settingsEnabled"]
  NEWTABLE R26 0 3
  LOADK R27 K74 ["skinning"]
  LOADK R28 K75 ["textures"]
  LOADK R29 K76 ["cages"]
  SETLIST R26 R27 3 [1]
  SETTABLEKS R26 R25 K70 ["settings"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["SettingsContainer"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K46 ["scroll"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["Settings"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["CenterPanel"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K6 ["View"]
  DUPTABLE R13 K9 [{"tag", "LayoutOrder"}]
  LOADK R14 K77 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
  SETTABLEKS R14 R13 K7 ["tag"]
  LOADN R14 4
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  DUPTABLE R14 K79 [{"Cancel", "Export"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K80 ["Button"]
  DUPTABLE R17 K86 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R20 K1 ["Buttons"]
  LOADK R21 K78 ["Cancel"]
  NAMECALL R18 R1 K3 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K81 ["text"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K56 ["Enums"]
  GETTABLEKS R19 R20 K87 ["ButtonVariant"]
  GETTABLEKS R18 R19 K88 ["Standard"]
  SETTABLEKS R18 R17 K82 ["variant"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K83 ["onActivated"]
  LOADB R18 0
  SETTABLEKS R18 R17 K84 ["isDisabled"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K56 ["Enums"]
  GETTABLEKS R19 R20 K89 ["InputSize"]
  GETTABLEKS R18 R19 K90 ["Small"]
  SETTABLEKS R18 R17 K85 ["size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K78 ["Cancel"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K80 ["Button"]
  DUPTABLE R17 K86 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  SETTABLEKS R6 R17 K81 ["text"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K56 ["Enums"]
  GETTABLEKS R19 R20 K87 ["ButtonVariant"]
  GETTABLEKS R18 R19 K91 ["Emphasis"]
  SETTABLEKS R18 R17 K82 ["variant"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K83 ["onActivated"]
  MOVE R18 R3
  JUMPIF R18 [+1]
  NOT R18 R4
  SETTABLEKS R18 R17 K84 ["isDisabled"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K56 ["Enums"]
  GETTABLEKS R19 R20 K89 ["InputSize"]
  GETTABLEKS R18 R19 K90 ["Small"]
  SETTABLEKS R18 R17 K85 ["size"]
  LOADN R18 2
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K2 ["Export"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["ButtonPanel"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["SettingsContainer"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Controllers"]
  GETTABLEKS R8 R9 K16 ["ExportController"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K17 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["usePermissionsReady"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["useExportProcessing"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K17 ["Hooks"]
  GETTABLEKS R11 R12 K20 ["useViewState"]
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R11 1
