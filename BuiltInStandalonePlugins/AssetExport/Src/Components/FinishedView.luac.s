PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["closeExport"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFEQKS R3 K1 ["Success"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["View"]
  DUPTABLE R7 K5 [{"tag"}]
  LOADK R8 K6 ["bg-surface-300 size-full col padding-medium"]
  SETTABLEKS R8 R7 K4 ["tag"]
  DUPTABLE R8 K9 [{"Top", "ButtonPanel"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["View"]
  DUPTABLE R11 K11 [{"tag", "LayoutOrder"}]
  LOADK R12 K12 ["size-full-0 grow"]
  SETTABLEKS R12 R11 K4 ["tag"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K14 [{"Header"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K3 ["View"]
  DUPTABLE R15 K5 [{"tag"}]
  LOADK R16 K15 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
  SETTABLEKS R16 R15 K4 ["tag"]
  DUPTABLE R16 K19 [{"iconElement", "textPanel", "show"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K2 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K20 ["Image"]
  DUPTABLE R19 K22 [{"Image", "Size", "LayoutOrder"}]
  JUMPIFNOT R4 [+2]
  LOADK R20 K23 ["rbxassetid://71912387248131"]
  JUMP [+1]
  LOADK R20 K24 ["rbxassetid://117968062074216"]
  SETTABLEKS R20 R19 K20 ["Image"]
  GETIMPORT R20 K27 [UDim2.fromOffset]
  LOADN R21 36
  LOADN R22 36
  CALL R20 2 1
  SETTABLEKS R20 R19 K21 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["iconElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K2 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K3 ["View"]
  DUPTABLE R19 K11 [{"tag", "LayoutOrder"}]
  LOADK R20 K28 ["size-0-0 auto-y col align-y-top gap-small grow"]
  SETTABLEKS R20 R19 K4 ["tag"]
  LOADN R20 2
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  DUPTABLE R20 K31 [{"MainText", "SupportText"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K2 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K32 ["Text"]
  DUPTABLE R23 K33 [{"tag", "Text", "LayoutOrder"}]
  LOADK R24 K34 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
  SETTABLEKS R24 R23 K4 ["tag"]
  JUMPIFNOT R4 [+6]
  LOADK R26 K35 ["Title"]
  LOADK R27 K1 ["Success"]
  NAMECALL R24 R1 K36 ["getText"]
  CALL R24 3 1
  JUMP [+5]
  LOADK R26 K35 ["Title"]
  LOADK R27 K37 ["Failure"]
  NAMECALL R24 R1 K36 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K32 ["Text"]
  LOADN R24 1
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K29 ["MainText"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K2 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K32 ["Text"]
  DUPTABLE R23 K33 [{"tag", "Text", "LayoutOrder"}]
  LOADK R24 K38 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
  SETTABLEKS R24 R23 K4 ["tag"]
  JUMPIFNOT R4 [+6]
  LOADK R26 K39 ["Info"]
  LOADK R27 K1 ["Success"]
  NAMECALL R24 R1 K36 ["getText"]
  CALL R24 3 1
  JUMP [+5]
  LOADK R26 K39 ["Info"]
  LOADK R27 K37 ["Failure"]
  NAMECALL R24 R1 K36 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K32 ["Text"]
  LOADN R24 2
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K30 ["SupportText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K17 ["textPanel"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K2 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K3 ["View"]
  DUPTABLE R19 K11 [{"tag", "LayoutOrder"}]
  LOADK R20 K40 ["size-0-full auto-xy row align-y-center"]
  SETTABLEKS R20 R19 K4 ["tag"]
  LOADN R20 3
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  NEWTABLE R20 0 0
  CALL R17 3 1
  SETTABLEKS R17 R16 K18 ["show"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K13 ["Header"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Top"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["View"]
  DUPTABLE R11 K11 [{"tag", "LayoutOrder"}]
  LOADK R12 K41 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
  SETTABLEKS R12 R11 K4 ["tag"]
  LOADN R12 2
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K43 [{"Ok"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K44 ["Button"]
  DUPTABLE R15 K50 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R18 K51 ["Buttons"]
  LOADK R19 K52 ["Done"]
  NAMECALL R16 R1 K36 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K45 ["text"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K53 ["Enums"]
  GETTABLEKS R17 R18 K54 ["ButtonVariant"]
  GETTABLEKS R16 R17 K55 ["Emphasis"]
  SETTABLEKS R16 R15 K46 ["variant"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R2
  SETTABLEKS R16 R15 K47 ["onActivated"]
  LOADB R16 0
  SETTABLEKS R16 R15 K48 ["isDisabled"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K53 ["Enums"]
  GETTABLEKS R17 R18 K56 ["InputSize"]
  GETTABLEKS R16 R17 K57 ["Small"]
  SETTABLEKS R16 R15 K49 ["size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["Ok"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["ButtonPanel"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R8 R9 K13 ["Controllers"]
  GETTABLEKS R7 R8 K14 ["ExportController"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useViewState"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R8 1
