PROTO_0:
  GETTABLEKS R1 R0 K0 ["node"]
  GETTABLEKS R2 R0 K1 ["context"]
  GETTABLEKS R3 R0 K2 ["extraContext"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+2]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Hooks"]
  GETTABLEKS R4 R5 K4 ["useTokens"]
  CALL R4 0 1
  GETTABLEKS R6 R1 K5 ["index"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R7 R3 K6 ["stepNumbers"]
  GETTABLEKS R8 R1 K5 ["index"]
  GETTABLE R6 R7 R8
  JUMPIF R6 [+2]
  GETTABLEKS R6 R1 K5 ["index"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  JUMP [+1]
  LOADK R5 K9 ["?"]
  GETTABLEKS R8 R3 K10 ["stepCompletions"]
  GETTABLEKS R10 R1 K5 ["index"]
  ORK R9 R10 K11 [-1]
  GETTABLE R7 R8 R9
  JUMPIFEQKB R7 TRUE [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K15 [{"tag", "LayoutOrder"}]
  LOADK R10 K16 ["size-full-0 auto-y bg-surface-100"]
  SETTABLEKS R10 R9 K13 ["tag"]
  GETTABLEKS R10 R1 K5 ["index"]
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  DUPTABLE R10 K18 [{"Background"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K19 [{"tag"}]
  LOADK R14 K20 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
  SETTABLEKS R14 R13 K13 ["tag"]
  DUPTABLE R14 K23 [{"Number", "Content"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K26 [{"backgroundStyle", "tag", "Text", "LayoutOrder"}]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R21 R4 K27 ["Color"]
  GETTABLEKS R20 R21 K28 ["Extended"]
  GETTABLEKS R19 R20 K29 ["Green"]
  GETTABLEKS R18 R19 K30 ["Green_600"]
  JUMP [+6]
  GETTABLEKS R20 R4 K27 ["Color"]
  GETTABLEKS R19 R20 K31 ["ActionStandard"]
  GETTABLEKS R18 R19 K17 ["Background"]
  SETTABLEKS R18 R17 K24 ["backgroundStyle"]
  LOADK R18 K32 ["text-body-medium size-800-800 text-align-x-center radius-circle content-action-standard"]
  SETTABLEKS R18 R17 K13 ["tag"]
  JUMPIFNOT R6 [+2]
  LOADK R18 K33 [""]
  JUMP [+1]
  MOVE R18 R5
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADN R18 0
  SETTABLEKS R18 R17 K14 ["LayoutOrder"]
  DUPTABLE R18 K35 [{"Checkmark"}]
  JUMPIFNOT R6 [+23]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K38 [{"Image", "imageStyle", "tag"}]
  LOADK R22 K39 ["icons/status/success"]
  SETTABLEKS R22 R21 K36 ["Image"]
  GETTABLEKS R25 R4 K27 ["Color"]
  GETTABLEKS R24 R25 K28 ["Extended"]
  GETTABLEKS R23 R24 K40 ["White"]
  GETTABLEKS R22 R23 K41 ["White_100"]
  SETTABLEKS R22 R21 K37 ["imageStyle"]
  LOADK R22 K42 ["anchor-center-center position-center-center size-500-500"]
  SETTABLEKS R22 R21 K13 ["tag"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K34 ["Checkmark"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K21 ["Number"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K44 [{"tag", "Size", "LayoutOrder"}]
  LOADK R18 K45 ["col gap-small auto-y content-action-standard"]
  SETTABLEKS R18 R17 K13 ["tag"]
  GETIMPORT R18 K48 [UDim2.new]
  LOADN R19 1
  LOADN R20 216
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K43 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["LayoutOrder"]
  DUPTABLE R18 K50 [{"Elements"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K51 ["Fragment"]
  LOADNIL R21
  GETTABLEKS R22 R2 K52 ["processChildren"]
  GETTABLEKS R23 R1 K53 ["children"]
  MOVE R24 R2
  CALL R22 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K49 ["Elements"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Content"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Background"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["View"]
  GETTABLEKS R5 R3 K12 ["Text"]
  GETTABLEKS R6 R3 K13 ["Image"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
