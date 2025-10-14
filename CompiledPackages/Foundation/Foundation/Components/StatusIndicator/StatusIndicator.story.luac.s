PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-0-0 auto-xy col align-x-center gap-small"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K6 [{"Label", "Indicator"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"tag", "Text"}]
  LOADK R8 K9 ["auto-xy text-align-x-center text-caption-small"]
  SETTABLEKS R8 R7 K1 ["tag"]
  SETTABLEKS R0 R7 K7 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Label"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K11 [{"variant"}]
  SETTABLEKS R0 R7 K10 ["variant"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Indicator"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"tag"}]
  LOADK R3 K3 ["size-full-0 auto-y row align-x-left align-y-center gap-xxlarge"]
  SETTABLEKS R3 R2 K1 ["tag"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["map"]
  GETUPVAL R4 3
  DUPCLOSURE R5 K5 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R3 2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-0-0 auto-xy col align-x-center gap-small"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K6 [{"Label", "Indicator"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"tag", "Text"}]
  LOADK R8 K9 ["auto-xy text-align-x-center text-caption-small"]
  SETTABLEKS R8 R7 K1 ["tag"]
  SETTABLEKS R0 R7 K7 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Label"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K12 [{"value", "variant"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K13 ["controls"]
  GETTABLEKS R8 R9 K10 ["value"]
  SETTABLEKS R8 R7 K10 ["value"]
  SETTABLEKS R0 R7 K11 ["variant"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Indicator"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-full-0 auto-y row align-x-left align-y-center gap-xxlarge"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["map"]
  NEWTABLE R5 0 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Standard"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["Emphasis"]
  SETLIST R5 R6 2 [1]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["StatusIndicator"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["StatusIndicatorVariant"]
  CALL R7 1 1
  DUPTABLE R8 K18 [{"summary", "stories", "controls"}]
  LOADK R9 K12 ["StatusIndicator"]
  SETTABLEKS R9 R8 K15 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K21 [{"name", "summary", "story"}]
  LOADK R11 K22 ["Default"]
  SETTABLEKS R11 R10 K19 ["name"]
  LOADK R11 K23 ["Standard status indicator"]
  SETTABLEKS R11 R10 K15 ["summary"]
  DUPCLOSURE R11 K24 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K20 ["story"]
  DUPTABLE R11 K21 [{"name", "summary", "story"}]
  LOADK R12 K25 ["Numeric"]
  SETTABLEKS R12 R11 K19 ["name"]
  LOADK R12 K26 ["Indicator with a numeric value"]
  SETTABLEKS R12 R11 K15 ["summary"]
  DUPCLOSURE R12 K27 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K20 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K16 ["stories"]
  DUPTABLE R9 K29 [{"value"}]
  LOADN R10 5
  SETTABLEKS R10 R9 K28 ["value"]
  SETTABLEKS R9 R8 K17 ["controls"]
  RETURN R8 1
