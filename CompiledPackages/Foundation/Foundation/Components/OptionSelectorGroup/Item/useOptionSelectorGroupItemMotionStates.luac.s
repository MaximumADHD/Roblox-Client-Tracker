PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  DUPTABLE R3 K2 [{"Default", "Disabled"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createState"]
  DUPTABLE R5 K6 [{"transparency", "textTransparency"}]
  ORK R6 R0 K7 [0]
  SETTABLEKS R6 R5 K4 ["transparency"]
  ORK R6 R0 K7 [0]
  SETTABLEKS R6 R5 K5 ["textTransparency"]
  DUPTABLE R6 K10 [{"iconTransparency", "transparency", "default"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["transition"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["Default"]
  DUPTABLE R9 K14 [{"easingStyle", "duration"}]
  GETIMPORT R10 K18 [Enum.EasingStyle.Linear]
  SETTABLEKS R10 R9 K12 ["easingStyle"]
  GETTABLEKS R11 R2 K19 ["Time"]
  GETTABLEKS R10 R11 K20 ["Time_500"]
  SETTABLEKS R10 R9 K13 ["duration"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["iconTransparency"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["transition"]
  DUPTABLE R8 K14 [{"easingStyle", "duration"}]
  GETIMPORT R9 K18 [Enum.EasingStyle.Linear]
  SETTABLEKS R9 R8 K12 ["easingStyle"]
  GETTABLEKS R10 R2 K19 ["Time"]
  GETTABLEKS R9 R10 K21 ["Time_200"]
  SETTABLEKS R9 R8 K13 ["duration"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K4 ["transparency"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["transition"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["Default"]
  DUPTABLE R9 K22 [{"duration"}]
  GETTABLEKS R11 R2 K19 ["Time"]
  GETTABLEKS R10 R11 K21 ["Time_200"]
  SETTABLEKS R10 R9 K13 ["duration"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["default"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["Default"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createState"]
  DUPTABLE R5 K6 [{"transparency", "textTransparency"}]
  SETTABLEKS R1 R5 K4 ["transparency"]
  SETTABLEKS R1 R5 K5 ["textTransparency"]
  DUPTABLE R6 K23 [{"default"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["transition"]
  DUPTABLE R8 K14 [{"easingStyle", "duration"}]
  GETIMPORT R9 K18 [Enum.EasingStyle.Linear]
  SETTABLEKS R9 R8 K12 ["easingStyle"]
  GETTABLEKS R10 R2 K19 ["Time"]
  GETTABLEKS R9 R10 K24 ["Time_100"]
  SETTABLEKS R9 R8 K13 ["duration"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K9 ["default"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["Disabled"]
  RETURN R3 1

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
  GETTABLEKS R6 R0 K8 ["Providers"]
  GETTABLEKS R5 R6 K9 ["Style"]
  GETTABLEKS R4 R5 K10 ["useTokens"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K11 ["Motion"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["TransitionPreset"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
