PROTO_0:
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R7 [+66]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R7 R1 K1 ["backgroundStyle"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R2 R1 K1 ["backgroundStyle"]
  JUMP [+6]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R2 R7 K4 ["Default"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R7 R1 K5 ["hoverStyle"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R3 R1 K5 ["hoverStyle"]
  JUMP [+6]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R3 R7 K6 ["Emphasis"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R7 R1 K7 ["checkedStyle"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R4 R1 K7 ["checkedStyle"]
  JUMP [+6]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K8 ["ActionSubEmphasis"]
  GETTABLEKS R4 R7 K9 ["Background"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R7 R1 K10 ["labelStyle"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R5 R1 K10 ["labelStyle"]
  JUMP [+6]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R5 R7 K4 ["Default"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R7 R1 K11 ["labelHoverStyle"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R1 K11 ["labelHoverStyle"]
  JUMP [+40]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R6 R7 K6 ["Emphasis"]
  JUMP [+33]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R2 R7 K4 ["Default"]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R3 R7 K6 ["Emphasis"]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R5 R7 K4 ["Default"]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K3 ["Content"]
  GETTABLEKS R6 R7 K6 ["Emphasis"]
  JUMPIFNOT R1 [+2]
  MOVE R4 R1
  JUMP [+6]
  GETTABLEKS R8 R0 K2 ["Color"]
  GETTABLEKS R7 R8 K8 ["ActionSubEmphasis"]
  GETTABLEKS R4 R7 K9 ["Background"]
  DUPTABLE R7 K14 [{"Default", "Hover", "Checked"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createState"]
  DUPTABLE R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  DUPTABLE R10 K20 [{"Color3", "Transparency"}]
  GETTABLEKS R11 R2 K18 ["Color3"]
  SETTABLEKS R11 R10 K18 ["Color3"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R12 R1 K1 ["backgroundStyle"]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R1 K1 ["backgroundStyle"]
  GETTABLEKS R11 R12 K19 ["Transparency"]
  JUMP [+1]
  LOADN R11 1
  SETTABLEKS R11 R10 K19 ["Transparency"]
  SETTABLEKS R10 R9 K1 ["backgroundStyle"]
  SETTABLEKS R2 R9 K16 ["strokeStyle"]
  SETTABLEKS R5 R9 K10 ["labelStyle"]
  DUPTABLE R10 K23 [{"default", "transparency"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K4 ["Default"]
  DUPTABLE R13 K26 [{"duration"}]
  LOADK R14 K27 [0.2]
  SETTABLEKS R14 R13 K25 ["duration"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["default"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  DUPTABLE R12 K29 [{"easingStyle", "duration"}]
  GETIMPORT R13 K33 [Enum.EasingStyle.Linear]
  SETTABLEKS R13 R12 K28 ["easingStyle"]
  LOADK R13 K27 [0.2]
  SETTABLEKS R13 R12 K25 ["duration"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["transparency"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["Default"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createState"]
  DUPTABLE R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  DUPTABLE R10 K20 [{"Color3", "Transparency"}]
  GETTABLEKS R11 R3 K18 ["Color3"]
  SETTABLEKS R11 R10 K18 ["Color3"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R12 R1 K5 ["hoverStyle"]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R1 K5 ["hoverStyle"]
  GETTABLEKS R11 R12 K19 ["Transparency"]
  JUMP [+1]
  LOADN R11 1
  SETTABLEKS R11 R10 K19 ["Transparency"]
  SETTABLEKS R10 R9 K1 ["backgroundStyle"]
  SETTABLEKS R3 R9 K16 ["strokeStyle"]
  SETTABLEKS R6 R9 K10 ["labelStyle"]
  DUPTABLE R10 K23 [{"default", "transparency"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K4 ["Default"]
  DUPTABLE R13 K26 [{"duration"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K25 ["duration"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["default"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  DUPTABLE R12 K29 [{"easingStyle", "duration"}]
  GETIMPORT R13 K33 [Enum.EasingStyle.Linear]
  SETTABLEKS R13 R12 K28 ["easingStyle"]
  LOADN R13 0
  SETTABLEKS R13 R12 K25 ["duration"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["transparency"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Hover"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createState"]
  DUPTABLE R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
  SETTABLEKS R4 R9 K1 ["backgroundStyle"]
  SETTABLEKS R4 R9 K16 ["strokeStyle"]
  SETTABLEKS R6 R9 K10 ["labelStyle"]
  DUPTABLE R10 K23 [{"default", "transparency"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K4 ["Default"]
  DUPTABLE R13 K26 [{"duration"}]
  LOADK R14 K27 [0.2]
  SETTABLEKS R14 R13 K25 ["duration"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["default"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K24 ["transition"]
  DUPTABLE R12 K29 [{"easingStyle", "duration"}]
  GETIMPORT R13 K33 [Enum.EasingStyle.Linear]
  SETTABLEKS R13 R12 K28 ["easingStyle"]
  LOADK R13 K27 [0.2]
  SETTABLEKS R13 R12 K25 ["duration"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["transparency"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Checked"]
  RETURN R7 1

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
  GETTABLEKS R6 R0 K12 ["Utility"]
  GETTABLEKS R5 R6 K13 ["Flags"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K15 ["Motion"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["TransitionPreset"]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
