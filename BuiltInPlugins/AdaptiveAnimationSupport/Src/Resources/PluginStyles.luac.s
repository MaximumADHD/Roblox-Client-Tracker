MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AdaptiveAnimationSupport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 6
  MOVE R5 R2
  LOADK R6 K11 [".WireAdorn"]
  DUPTABLE R7 K14 [{"Color", "Transparency"}]
  LOADK R8 K15 ["$Color.Extended.Gray.Gray_600"]
  SETTABLEKS R8 R7 K12 ["Color"]
  LOADN R8 0
  SETTABLEKS R8 R7 K13 ["Transparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K16 [".Selected"]
  DUPTABLE R8 K14 [{"Color", "Transparency"}]
  LOADK R9 K17 ["$Color.Selection.Start"]
  SETTABLEKS R9 R8 K12 ["Color"]
  LOADK R9 K18 [0.5]
  SETTABLEKS R9 R8 K13 ["Transparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".Assigned"]
  DUPTABLE R9 K14 [{"Color", "Transparency"}]
  LOADK R10 K20 ["$Color.Extended.Orange.Orange_800"]
  SETTABLEKS R10 R9 K12 ["Color"]
  LOADK R10 K18 [0.5]
  SETTABLEKS R10 R9 K13 ["Transparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".AssignedHover"]
  DUPTABLE R10 K14 [{"Color", "Transparency"}]
  LOADK R11 K22 ["$Color.Extended.Orange.Orange_1100"]
  SETTABLEKS R11 R10 K12 ["Color"]
  LOADK R11 K18 [0.5]
  SETTABLEKS R11 R10 K13 ["Transparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".NotAssigned"]
  DUPTABLE R11 K14 [{"Color", "Transparency"}]
  LOADK R12 K24 ["$Mist_800"]
  SETTABLEKS R12 R11 K12 ["Color"]
  LOADK R12 K18 [0.5]
  SETTABLEKS R12 R11 K13 ["Transparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".NotAssignedHover"]
  DUPTABLE R12 K14 [{"Color", "Transparency"}]
  LOADK R13 K26 ["$Mist_1100"]
  SETTABLEKS R13 R12 K12 ["Color"]
  LOADK R13 K18 [0.5]
  SETTABLEKS R13 R12 K13 ["Transparency"]
  CALL R10 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K29 [{"Mist_800", "Mist_1100"}]
  GETIMPORT R6 K32 [Color3.fromRGB]
  LOADN R7 128
  LOADN R8 137
  LOADN R9 172
  CALL R6 3 1
  SETTABLEKS R6 R5 K27 ["Mist_800"]
  GETIMPORT R6 K32 [Color3.fromRGB]
  LOADN R7 196
  LOADN R8 201
  LOADN R9 217
  CALL R6 3 1
  SETTABLEKS R6 R5 K28 ["Mist_1100"]
  MOVE R6 R3
  LOADK R7 K2 ["AdaptiveAnimationSupport"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
