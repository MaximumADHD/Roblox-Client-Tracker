PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["values"]
  GETUPVAL R2 1
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R8 K1 ["Divider-"]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  CONCAT R7 R8 R9
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K8 [{"variant", "orientation", "LayoutOrder"}]
  SETTABLEKS R6 R10 K5 ["variant"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K9 ["Horizontal"]
  SETTABLEKS R11 R10 K6 ["orientation"]
  SETTABLEKS R5 R10 K7 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLE R8 R0 R7
  FORGLOOP R2 2 [-24]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 5
  DUPTABLE R4 K11 [{"tag"}]
  LOADK R5 K12 ["size-full-2000 col gap-xxlarge align-y-center bg-surface-0 padding-large"]
  SETTABLEKS R5 R4 K10 ["tag"]
  MOVE R5 R0
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"tag"}]
  LOADK R3 K3 ["size-full-2000 row align-x-center align-y-center bg-surface-0 padding-large gap-large"]
  SETTABLEKS R3 R2 K1 ["tag"]
  DUPTABLE R3 K5 [{"Divider"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K7 [{"orientation"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["Vertical"]
  SETTABLEKS R7 R6 K6 ["orientation"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Divider"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Divider"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["DividerVariant"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K14 ["Orientation"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  DUPTABLE R10 K19 [{"summary", "stories"}]
  LOADK R11 K11 ["Divider"]
  SETTABLEKS R11 R10 K17 ["summary"]
  NEWTABLE R11 0 2
  DUPTABLE R12 K22 [{"name", "summary", "story"}]
  LOADK R13 K23 ["Horizontal"]
  SETTABLEKS R13 R12 K20 ["name"]
  LOADK R13 K24 ["All variants (Default, Heavy, Inset, InsetLeft, InsetRight)"]
  SETTABLEKS R13 R12 K17 ["summary"]
  SETTABLEKS R8 R12 K21 ["story"]
  DUPTABLE R13 K22 [{"name", "summary", "story"}]
  LOADK R14 K25 ["Vertical"]
  SETTABLEKS R14 R13 K20 ["name"]
  LOADK R14 K26 ["Vertical divider (variant not applicable)"]
  SETTABLEKS R14 R13 K17 ["summary"]
  SETTABLEKS R9 R13 K21 ["story"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K18 ["stories"]
  RETURN R10 1
