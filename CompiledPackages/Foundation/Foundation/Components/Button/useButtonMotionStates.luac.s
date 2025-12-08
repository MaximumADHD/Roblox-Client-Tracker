PROTO_0:
  DUPTABLE R2 K3 [{"Default", "Loading", "Disabled"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K8 [{"transparency", "textTransparency", "iconScale"}]
  ORK R5 R0 K9 [0]
  SETTABLEKS R5 R4 K5 ["transparency"]
  ORK R5 R0 K9 [0]
  SETTABLEKS R5 R4 K6 ["textTransparency"]
  LOADN R5 1
  SETTABLEKS R5 R4 K7 ["iconScale"]
  DUPTABLE R5 K12 [{"iconTransparency", "transparency", "default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Default"]
  DUPTABLE R8 K16 [{"easingStyle", "duration"}]
  GETIMPORT R9 K20 [Enum.EasingStyle.Linear]
  SETTABLEKS R9 R8 K14 ["easingStyle"]
  LOADK R9 K21 [0.5]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["iconTransparency"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  DUPTABLE R7 K16 [{"easingStyle", "duration"}]
  GETIMPORT R8 K20 [Enum.EasingStyle.Linear]
  SETTABLEKS R8 R7 K14 ["easingStyle"]
  LOADK R8 K22 [0.2]
  SETTABLEKS R8 R7 K15 ["duration"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["transparency"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Default"]
  DUPTABLE R8 K23 [{"duration"}]
  LOADK R9 K22 [0.2]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["Default"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K24 [{"transparency", "textTransparency", "iconTransparency", "iconScale"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["transparency"]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["textTransparency"]
  LOADN R5 1
  SETTABLEKS R5 R4 K10 ["iconTransparency"]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["iconScale"]
  DUPTABLE R5 K25 [{"iconTransparency", "default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Default"]
  DUPTABLE R8 K16 [{"easingStyle", "duration"}]
  GETIMPORT R9 K20 [Enum.EasingStyle.Linear]
  SETTABLEKS R9 R8 K14 ["easingStyle"]
  LOADK R9 K22 [0.2]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["iconTransparency"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Default"]
  DUPTABLE R8 K23 [{"duration"}]
  LOADK R9 K22 [0.2]
  SETTABLEKS R9 R8 K15 ["duration"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Loading"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createState"]
  DUPTABLE R4 K26 [{"transparency", "textTransparency"}]
  SETTABLEKS R1 R4 K5 ["transparency"]
  SETTABLEKS R1 R4 K6 ["textTransparency"]
  DUPTABLE R5 K27 [{"default"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["transition"]
  DUPTABLE R7 K16 [{"easingStyle", "duration"}]
  GETIMPORT R8 K20 [Enum.EasingStyle.Linear]
  SETTABLEKS R8 R7 K14 ["easingStyle"]
  LOADK R8 K28 [0.1]
  SETTABLEKS R8 R7 K15 ["duration"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K11 ["default"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Disabled"]
  RETURN R2 1

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
  GETTABLEKS R4 R1 K8 ["Motion"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["TransitionPreset"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
