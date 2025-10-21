PROTO_0:
  GETTABLEKS R4 R0 K0 ["Color"]
  GETTABLEKS R3 R4 K1 ["Content"]
  GETTABLEKS R2 R3 K2 ["Default"]
  GETTABLEKS R5 R0 K0 ["Color"]
  GETTABLEKS R4 R5 K1 ["Content"]
  GETTABLEKS R3 R4 K3 ["Emphasis"]
  MOVE R4 R1
  JUMPIF R4 [+6]
  GETTABLEKS R6 R0 K0 ["Color"]
  GETTABLEKS R5 R6 K4 ["ActionSubEmphasis"]
  GETTABLEKS R4 R5 K5 ["Background"]
  DUPTABLE R5 K8 [{"Default", "Hover", "Checked"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createState"]
  DUPTABLE R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  DUPTABLE R8 K16 [{"Color3", "Transparency"}]
  GETTABLEKS R9 R2 K14 ["Color3"]
  SETTABLEKS R9 R8 K14 ["Color3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["Transparency"]
  SETTABLEKS R8 R7 K10 ["backgroundStyle"]
  SETTABLEKS R2 R7 K11 ["strokeStyle"]
  SETTABLEKS R2 R7 K12 ["labelStyle"]
  DUPTABLE R8 K19 [{"default", "transparency"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["Default"]
  DUPTABLE R11 K22 [{"duration"}]
  LOADK R12 K23 [0.2]
  SETTABLEKS R12 R11 K21 ["duration"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["default"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  DUPTABLE R10 K25 [{"easingStyle", "duration"}]
  GETIMPORT R11 K29 [Enum.EasingStyle.Linear]
  SETTABLEKS R11 R10 K24 ["easingStyle"]
  LOADK R11 K23 [0.2]
  SETTABLEKS R11 R10 K21 ["duration"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K18 ["transparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["Default"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createState"]
  DUPTABLE R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  DUPTABLE R8 K16 [{"Color3", "Transparency"}]
  GETTABLEKS R9 R3 K14 ["Color3"]
  SETTABLEKS R9 R8 K14 ["Color3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["Transparency"]
  SETTABLEKS R8 R7 K10 ["backgroundStyle"]
  SETTABLEKS R3 R7 K11 ["strokeStyle"]
  SETTABLEKS R3 R7 K12 ["labelStyle"]
  DUPTABLE R8 K19 [{"default", "transparency"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["Default"]
  DUPTABLE R11 K22 [{"duration"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["duration"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["default"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  DUPTABLE R10 K25 [{"easingStyle", "duration"}]
  GETIMPORT R11 K29 [Enum.EasingStyle.Linear]
  SETTABLEKS R11 R10 K24 ["easingStyle"]
  LOADN R11 0
  SETTABLEKS R11 R10 K21 ["duration"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K18 ["transparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Hover"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createState"]
  DUPTABLE R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  SETTABLEKS R4 R7 K10 ["backgroundStyle"]
  SETTABLEKS R4 R7 K11 ["strokeStyle"]
  SETTABLEKS R3 R7 K12 ["labelStyle"]
  DUPTABLE R8 K19 [{"default", "transparency"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["Default"]
  DUPTABLE R11 K22 [{"duration"}]
  LOADK R12 K23 [0.2]
  SETTABLEKS R12 R11 K21 ["duration"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["default"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["transition"]
  DUPTABLE R10 K25 [{"easingStyle", "duration"}]
  GETIMPORT R11 K29 [Enum.EasingStyle.Linear]
  SETTABLEKS R11 R10 K24 ["easingStyle"]
  LOADK R11 K23 [0.2]
  SETTABLEKS R11 R10 K21 ["duration"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K18 ["transparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Checked"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K9 ["Providers"]
  GETTABLEKS R5 R6 K10 ["Style"]
  GETTABLEKS R4 R5 K11 ["Tokens"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K13 ["Motion"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["TransitionPreset"]
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
