PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["shortcuts"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETIMPORT R0 K3 [table.concat]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shortcuts"]
  LOADK R2 K4 [", "]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  LOADN R3 64
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["useMemo"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K1 ["shortcuts"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K7 [{"onAbsoluteSizeChanged", "backgroundStyle", "tag", "sizeConstraint"}]
  GETTABLEKS R7 R0 K3 ["onAbsoluteSizeChanged"]
  SETTABLEKS R7 R6 K3 ["onAbsoluteSizeChanged"]
  GETTABLEKS R9 R1 K8 ["Inverse"]
  GETTABLEKS R8 R9 K9 ["Surface"]
  GETTABLEKS R7 R8 K10 ["Surface_0"]
  SETTABLEKS R7 R6 K4 ["backgroundStyle"]
  NEWTABLE R7 4 0
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["col gap-xsmall auto-xy"]
  GETTABLEKS R9 R0 K12 ["text"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["padding-y-small padding-x-medium"]
  GETTABLEKS R9 R0 K12 ["text"]
  JUMPIFEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["padding-y-xsmall padding-x-small"]
  SETTABLEKS R7 R6 K5 ["tag"]
  DUPTABLE R7 K16 [{"MaxSize"}]
  GETIMPORT R8 K19 [Vector2.new]
  MOVE R9 R2
  LOADK R10 K20 [∞]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["MaxSize"]
  SETTABLEKS R7 R6 K6 ["sizeConstraint"]
  DUPTABLE R7 K23 [{"Header", "Text"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K25 [{"LayoutOrder", "tag"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K24 ["LayoutOrder"]
  LOADK R11 K26 ["row gap-small size-full-0 auto-y flex-between"]
  SETTABLEKS R11 R10 K5 ["tag"]
  DUPTABLE R11 K29 [{"Title", "Shortcut"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K24 ["LayoutOrder"]
  GETTABLEKS R15 R0 K31 ["title"]
  SETTABLEKS R15 R14 K22 ["Text"]
  LOADK R15 K32 ["auto-xy text-title-small content-inverse-emphasis"]
  SETTABLEKS R15 R14 K5 ["tag"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["Title"]
  GETTABLEKS R13 R0 K1 ["shortcuts"]
  JUMPIFNOT R13 [+15]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K24 ["LayoutOrder"]
  SETTABLEKS R3 R14 K22 ["Text"]
  LOADK R15 K33 ["auto-xy text-body-small content-inverse-muted"]
  SETTABLEKS R15 R14 K5 ["tag"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K28 ["Shortcut"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K21 ["Header"]
  GETTABLEKS R9 R0 K12 ["text"]
  JUMPIFNOT R9 [+21]
  GETTABLEKS R9 R0 K12 ["text"]
  JUMPIFEQKS R9 K34 [""] [+18]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K24 ["LayoutOrder"]
  GETTABLEKS R11 R0 K12 ["text"]
  SETTABLEKS R11 R10 K22 ["Text"]
  LOADK R11 K35 ["size-full-0 auto-y text-wrap text-align-x-left text-body-small content-inverse-default"]
  SETTABLEKS R11 R10 K5 ["tag"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K22 ["Text"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StudioFoundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["Text"]
  GETTABLEKS R5 R3 K10 ["View"]
  GETTABLEKS R7 R3 K11 ["Hooks"]
  GETTABLEKS R6 R7 K12 ["useTokens"]
  GETTABLEKS R8 R3 K11 ["Hooks"]
  GETTABLEKS R7 R8 K13 ["useScaledValue"]
  DUPCLOSURE R8 K14 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R8 1
