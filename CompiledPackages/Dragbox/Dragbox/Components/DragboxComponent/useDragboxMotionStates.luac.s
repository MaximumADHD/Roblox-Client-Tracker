PROTO_0:
  DUPTABLE R0 K2 [{"Color3", "Transparency"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Color3"]
  SETTABLEKS R1 R0 K0 ["Color3"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["Transparency"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R0 K2 [{"Color3", "Transparency"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Color3"]
  SETTABLEKS R1 R0 K0 ["Color3"]
  LOADN R2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Transparency"]
  ORK R4 R5 K4 [0]
  SUBK R3 R4 K3 [0.1]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K7 [math.max]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["Transparency"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R0 K2 [{"Color3", "Transparency"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Color3"]
  SETTABLEKS R1 R0 K0 ["Color3"]
  LOADN R2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Transparency"]
  ORK R4 R5 K4 [0]
  SUBK R3 R4 K3 [0.2]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K7 [math.max]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["Transparency"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useMemo"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["useMemo"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R1
  NEWTABLE R8 0 1
  MOVE R9 R1
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  OR R7 R3 R2
  DUPTABLE R8 K5 [{"Default", "Hover", "Pressed", "Dragging"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createState"]
  DUPTABLE R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K7 ["transparency"]
  GETTABLEKS R11 R0 K15 ["Color3"]
  SETTABLEKS R11 R10 K8 ["backgroundColor3"]
  GETTABLEKS R11 R0 K16 ["Transparency"]
  SETTABLEKS R11 R10 K9 ["backgroundTransparency"]
  GETTABLEKS R11 R4 K15 ["Color3"]
  SETTABLEKS R11 R10 K10 ["strokeColor3"]
  GETTABLEKS R11 R4 K16 ["Transparency"]
  SETTABLEKS R11 R10 K11 ["strokeTransparency"]
  GETTABLEKS R11 R2 K15 ["Color3"]
  SETTABLEKS R11 R10 K12 ["knobColor3"]
  GETTABLEKS R11 R2 K16 ["Transparency"]
  SETTABLEKS R11 R10 K13 ["knobTransparency"]
  DUPTABLE R11 K18 [{"default"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["transition"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K1 ["Default"]
  DUPTABLE R14 K21 [{"duration"}]
  LOADK R15 K22 [0.15]
  SETTABLEKS R15 R14 K20 ["duration"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["default"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K1 ["Default"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createState"]
  DUPTABLE R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K7 ["transparency"]
  GETTABLEKS R11 R0 K15 ["Color3"]
  SETTABLEKS R11 R10 K8 ["backgroundColor3"]
  GETTABLEKS R11 R0 K16 ["Transparency"]
  SETTABLEKS R11 R10 K9 ["backgroundTransparency"]
  GETTABLEKS R11 R5 K15 ["Color3"]
  SETTABLEKS R11 R10 K10 ["strokeColor3"]
  GETTABLEKS R11 R5 K16 ["Transparency"]
  SETTABLEKS R11 R10 K11 ["strokeTransparency"]
  GETTABLEKS R11 R2 K15 ["Color3"]
  SETTABLEKS R11 R10 K12 ["knobColor3"]
  GETTABLEKS R11 R2 K16 ["Transparency"]
  SETTABLEKS R11 R10 K13 ["knobTransparency"]
  DUPTABLE R11 K18 [{"default"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["transition"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K1 ["Default"]
  DUPTABLE R14 K21 [{"duration"}]
  LOADK R15 K23 [0.1]
  SETTABLEKS R15 R14 K20 ["duration"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["default"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K2 ["Hover"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createState"]
  DUPTABLE R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K7 ["transparency"]
  GETTABLEKS R11 R0 K15 ["Color3"]
  SETTABLEKS R11 R10 K8 ["backgroundColor3"]
  GETTABLEKS R11 R0 K16 ["Transparency"]
  SETTABLEKS R11 R10 K9 ["backgroundTransparency"]
  GETTABLEKS R11 R6 K15 ["Color3"]
  SETTABLEKS R11 R10 K10 ["strokeColor3"]
  GETTABLEKS R11 R6 K16 ["Transparency"]
  SETTABLEKS R11 R10 K11 ["strokeTransparency"]
  GETTABLEKS R11 R7 K15 ["Color3"]
  SETTABLEKS R11 R10 K12 ["knobColor3"]
  GETTABLEKS R11 R7 K16 ["Transparency"]
  SETTABLEKS R11 R10 K13 ["knobTransparency"]
  DUPTABLE R11 K18 [{"default"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["transition"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K1 ["Default"]
  DUPTABLE R14 K21 [{"duration"}]
  LOADK R15 K24 [0.05]
  SETTABLEKS R15 R14 K20 ["duration"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["default"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K3 ["Pressed"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createState"]
  DUPTABLE R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K7 ["transparency"]
  GETTABLEKS R11 R0 K15 ["Color3"]
  SETTABLEKS R11 R10 K8 ["backgroundColor3"]
  GETTABLEKS R11 R0 K16 ["Transparency"]
  SETTABLEKS R11 R10 K9 ["backgroundTransparency"]
  GETTABLEKS R11 R6 K15 ["Color3"]
  SETTABLEKS R11 R10 K10 ["strokeColor3"]
  GETTABLEKS R11 R6 K16 ["Transparency"]
  SETTABLEKS R11 R10 K11 ["strokeTransparency"]
  GETTABLEKS R11 R7 K15 ["Color3"]
  SETTABLEKS R11 R10 K12 ["knobColor3"]
  GETTABLEKS R11 R7 K16 ["Transparency"]
  SETTABLEKS R11 R10 K13 ["knobTransparency"]
  DUPTABLE R11 K18 [{"default"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["transition"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K1 ["Default"]
  DUPTABLE R14 K21 [{"duration"}]
  LOADK R15 K23 [0.1]
  SETTABLEKS R15 R14 K20 ["duration"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["default"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Dragging"]
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dragbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Motion"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["TransitionPreset"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Components"]
  GETTABLEKS R7 R8 K11 ["DragboxComponent"]
  GETTABLEKS R6 R7 K12 ["DragboxTypes"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
