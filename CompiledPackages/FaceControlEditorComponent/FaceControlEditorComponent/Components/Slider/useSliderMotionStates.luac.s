PROTO_0:
  DUPTABLE R2 K3 [{"Hidden", "Idle", "Dragging"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K7 [{"transparency", "knobStyle"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["transparency"]
  DUPTABLE R5 K10 [{"Color3", "Transparency"}]
  GETTABLEKS R6 R0 K8 ["Color3"]
  SETTABLEKS R6 R5 K8 ["Color3"]
  LOADN R6 1
  SETTABLEKS R6 R5 K9 ["Transparency"]
  SETTABLEKS R5 R4 K6 ["knobStyle"]
  DUPTABLE R5 K12 [{"default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["Default"]
  DUPTABLE R8 K16 [{"duration"}]
  LOADK R9 K17 [0.15]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["Hidden"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K7 [{"transparency", "knobStyle"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["transparency"]
  SETTABLEKS R0 R4 K6 ["knobStyle"]
  DUPTABLE R5 K12 [{"default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["Default"]
  DUPTABLE R8 K16 [{"duration"}]
  LOADK R9 K17 [0.15]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Idle"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K7 [{"transparency", "knobStyle"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["transparency"]
  SETTABLEKS R1 R4 K6 ["knobStyle"]
  DUPTABLE R5 K12 [{"default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["Default"]
  DUPTABLE R8 K16 [{"duration"}]
  LOADK R9 K18 [0.1]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Dragging"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
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
  GETTABLEKS R7 R8 K11 ["Slider"]
  GETTABLEKS R6 R7 K12 ["SliderTypes"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
