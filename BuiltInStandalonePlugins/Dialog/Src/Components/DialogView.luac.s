PROTO_0:
  LOADB R1 0
  JUMPIFEQKNIL R0 [+5]
  JUMPIFNOTEQKS R0 K0 [""] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["map"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  LOADB R1 0
  JUMPIFEQKNIL R0 [+5]
  JUMPIFNOTEQKS R0 K0 [""] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_2]
  NAMECALL R0 R0 K1 ["map"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Hooks"]
  GETTABLEKS R2 R3 K1 ["useTokens"]
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  GETTABLEKS R5 R0 K2 ["type"]
  CALL R3 2 1
  GETUPVAL R4 3
  GETTABLEKS R5 R0 K3 ["title"]
  CALL R4 1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K4 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  MOVE R8 R4
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R6 3
  GETTABLEKS R7 R0 K5 ["description"]
  CALL R6 1 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K4 ["useMemo"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R6
  NEWTABLE R9 0 1
  MOVE R10 R6
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 5
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["View"]
  DUPTABLE R10 K11 [{"tag", "onAbsoluteSizeChanged", "testId", "Size"}]
  LOADK R11 K12 ["component-dialog-view bg-surface-200 col flex-y-between auto-y gap-small padding-x-large padding-y-medium"]
  SETTABLEKS R11 R10 K7 ["tag"]
  GETTABLEKS R11 R0 K8 ["onAbsoluteSizeChanged"]
  SETTABLEKS R11 R10 K8 ["onAbsoluteSizeChanged"]
  LOADK R11 K13 ["--dialog"]
  SETTABLEKS R11 R10 K9 ["testId"]
  GETIMPORT R11 K16 [UDim2.fromOffset]
  LOADN R12 94
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["Size"]
  DUPTABLE R11 K19 [{"IconAndTextRow", "ButtonGroup"}]
  GETUPVAL R12 5
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K6 ["View"]
  DUPTABLE R14 K21 [{"tag", "LayoutOrder"}]
  LOADK R15 K22 ["row size-full-0 auto-y flex-x-between items-start gap-medium padding-bottom-medium"]
  SETTABLEKS R15 R14 K7 ["tag"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  DUPTABLE R15 K25 [{"Icon", "TextColumn"}]
  JUMPIFNOT R3 [+40]
  GETUPVAL R16 5
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K23 ["Icon"]
  DUPTABLE R18 K30 [{"name", "size", "style", "variant", "LayoutOrder", "testId"}]
  GETTABLEKS R19 R3 K31 ["icon"]
  SETTABLEKS R19 R18 K26 ["name"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K32 ["Enums"]
  GETTABLEKS R20 R21 K33 ["IconSize"]
  GETTABLEKS R19 R20 K34 ["Medium"]
  SETTABLEKS R19 R18 K27 ["size"]
  GETTABLEKS R19 R3 K35 ["color"]
  SETTABLEKS R19 R18 K28 ["style"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K32 ["Enums"]
  GETTABLEKS R20 R21 K36 ["IconVariant"]
  GETTABLEKS R19 R20 K37 ["Filled"]
  SETTABLEKS R19 R18 K29 ["variant"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  LOADK R19 K38 ["--dialog-icon"]
  SETTABLEKS R19 R18 K9 ["testId"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K23 ["Icon"]
  GETUPVAL R16 5
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["View"]
  DUPTABLE R18 K21 [{"tag", "LayoutOrder"}]
  LOADK R19 K39 ["fill col auto-y gap-medium"]
  SETTABLEKS R19 R18 K7 ["tag"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  DUPTABLE R19 K42 [{"Title", "Description"}]
  GETUPVAL R20 5
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K43 ["Text"]
  DUPTABLE R22 K45 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
  LOADK R23 K46 ["size-full-0 auto-y text-wrap text-title-medium text-align-x-left text-align-y-center"]
  SETTABLEKS R23 R22 K7 ["tag"]
  SETTABLEKS R4 R22 K43 ["Text"]
  SETTABLEKS R5 R22 K44 ["Visible"]
  MOVE R23 R1
  CALL R23 0 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R23 K47 ["--dialog-title"]
  SETTABLEKS R23 R22 K9 ["testId"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K40 ["Title"]
  GETUPVAL R20 5
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K43 ["Text"]
  DUPTABLE R22 K45 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
  LOADK R23 K48 ["size-full-0 auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow"]
  SETTABLEKS R23 R22 K7 ["tag"]
  SETTABLEKS R6 R22 K43 ["Text"]
  SETTABLEKS R7 R22 K44 ["Visible"]
  MOVE R23 R1
  CALL R23 0 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R23 K49 ["--dialog-description"]
  SETTABLEKS R23 R22 K9 ["testId"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["Description"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K24 ["TextColumn"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["IconAndTextRow"]
  GETUPVAL R12 5
  GETUPVAL R13 6
  DUPTABLE R14 K53 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  GETTABLEKS R15 R0 K50 ["primaryAction"]
  SETTABLEKS R15 R14 K50 ["primaryAction"]
  GETTABLEKS R15 R0 K51 ["secondaryAction"]
  SETTABLEKS R15 R14 K51 ["secondaryAction"]
  GETTABLEKS R15 R0 K52 ["tertiaryAction"]
  SETTABLEKS R15 R14 K52 ["tertiaryAction"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["ButtonGroup"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Components"]
  GETTABLEKS R2 R3 K8 ["DialogButtonGroup"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K14 ["Hooks"]
  GETTABLEKS R7 R8 K15 ["useBindable"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K14 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useDialogIconProps"]
  CALL R7 1 1
  GETTABLEKS R9 R3 K17 ["Util"]
  GETTABLEKS R8 R9 K18 ["counter"]
  GETTABLEKS R9 R4 K19 ["createElement"]
  DUPCLOSURE R10 K20 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  GETTABLEKS R11 R4 K21 ["memo"]
  MOVE R12 R10
  CALL R11 1 -1
  RETURN R11 -1
