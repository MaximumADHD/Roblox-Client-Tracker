PROTO_0:
  DUPTABLE R0 K2 [{"Default", "Loading"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createState"]
  DUPTABLE R2 K6 [{"scale", "transparency"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["scale"]
  LOADN R3 1
  SETTABLEKS R3 R2 K5 ["transparency"]
  DUPTABLE R3 K8 [{"default", "transparency"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["transition"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Default"]
  DUPTABLE R6 K11 [{"duration"}]
  LOADK R7 K12 [0.2]
  SETTABLEKS R7 R6 K10 ["duration"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["default"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["transition"]
  DUPTABLE R5 K14 [{"easingStyle", "duration"}]
  GETIMPORT R6 K18 [Enum.EasingStyle.Linear]
  SETTABLEKS R6 R5 K13 ["easingStyle"]
  LOADK R6 K12 [0.2]
  SETTABLEKS R6 R5 K10 ["duration"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["transparency"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["Default"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createState"]
  DUPTABLE R2 K6 [{"scale", "transparency"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["scale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["transparency"]
  DUPTABLE R3 K8 [{"default", "transparency"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["transition"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Default"]
  DUPTABLE R6 K20 [{"duration", "delay"}]
  LOADK R7 K12 [0.2]
  SETTABLEKS R7 R6 K10 ["duration"]
  LOADK R7 K21 [0.1]
  SETTABLEKS R7 R6 K19 ["delay"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["default"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["transition"]
  DUPTABLE R5 K14 [{"easingStyle", "duration"}]
  GETIMPORT R6 K18 [Enum.EasingStyle.Linear]
  SETTABLEKS R6 R5 K13 ["easingStyle"]
  LOADK R6 K12 [0.2]
  SETTABLEKS R6 R5 K10 ["duration"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["transparency"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["Loading"]
  RETURN R0 1

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
