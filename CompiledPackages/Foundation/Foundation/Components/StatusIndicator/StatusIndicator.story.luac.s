PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["FoundationStatusIndicatorVariantExperiment"]
  JUMPIF R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Contrast_Experiment"]
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["Fragment"]
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 3
  DUPTABLE R3 K5 [{"tag"}]
  LOADK R4 K6 ["size-0-0 auto-xy col align-x-center gap-small"]
  SETTABLEKS R4 R3 K4 ["tag"]
  DUPTABLE R4 K9 [{"Label", "Indicator"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K11 [{"tag", "Text"}]
  LOADK R8 K12 ["auto-xy text-align-x-center text-caption-small"]
  SETTABLEKS R8 R7 K4 ["tag"]
  SETTABLEKS R0 R7 K10 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Label"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K14 [{"variant"}]
  SETTABLEKS R0 R7 K13 ["variant"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Indicator"]
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
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R3 2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["FoundationStatusIndicatorVariantExperiment"]
  JUMPIF R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Contrast_Experiment"]
  JUMPIFEQ R0 R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Alert"]
  JUMPIFNOTEQ R0 R1 [+4]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 3
  DUPTABLE R3 K5 [{"tag"}]
  LOADK R4 K6 ["size-0-0 auto-xy col align-x-center gap-small"]
  SETTABLEKS R4 R3 K4 ["tag"]
  DUPTABLE R4 K9 [{"Label", "Indicator"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K11 [{"tag", "Text"}]
  LOADK R8 K12 ["auto-xy text-align-x-center text-caption-small"]
  SETTABLEKS R8 R7 K4 ["tag"]
  SETTABLEKS R0 R7 K10 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Label"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K16 [{"value", "variant", "max"}]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K17 ["controls"]
  GETTABLEKS R8 R9 K13 ["value"]
  SETTABLEKS R8 R7 K13 ["value"]
  SETTABLEKS R0 R7 K14 ["variant"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K17 ["controls"]
  GETTABLEKS R8 R9 K15 ["max"]
  SETTABLEKS R8 R7 K15 ["max"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Indicator"]
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
  NEWTABLE R5 0 4
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Standard"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["Emphasis"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["Alert"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["Contrast_Experiment"]
  SETLIST R5 R6 4 [1]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
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
  GETTABLEKS R4 R0 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K10 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K11 ["Components"]
  GETTABLEKS R7 R8 K13 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K11 ["Components"]
  GETTABLEKS R8 R9 K14 ["StatusIndicator"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K15 ["Enums"]
  GETTABLEKS R9 R10 K16 ["StatusIndicatorVariant"]
  CALL R8 1 1
  DUPTABLE R9 K20 [{"summary", "stories", "controls"}]
  LOADK R10 K14 ["StatusIndicator"]
  SETTABLEKS R10 R9 K17 ["summary"]
  NEWTABLE R10 0 2
  DUPTABLE R11 K23 [{"name", "summary", "story"}]
  LOADK R12 K24 ["Default"]
  SETTABLEKS R12 R11 K21 ["name"]
  LOADK R12 K25 ["Standard status indicator"]
  SETTABLEKS R12 R11 K17 ["summary"]
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K22 ["story"]
  DUPTABLE R12 K23 [{"name", "summary", "story"}]
  LOADK R13 K27 ["Numeric"]
  SETTABLEKS R13 R12 K21 ["name"]
  LOADK R13 K28 ["Indicator with a numeric value"]
  SETTABLEKS R13 R12 K17 ["summary"]
  DUPCLOSURE R13 K29 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K22 ["story"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K18 ["stories"]
  DUPTABLE R10 K32 [{"value", "max"}]
  LOADN R11 5
  SETTABLEKS R11 R10 K30 ["value"]
  LOADN R11 99
  SETTABLEKS R11 R10 K31 ["max"]
  SETTABLEKS R10 R9 K19 ["controls"]
  RETURN R9 1
