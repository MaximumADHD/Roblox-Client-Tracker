PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["object"]
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R4 R1
  LOADK R5 K0 ["object"]
  CALL R3 2 1
  LOADK R5 K1 ["The use()-d %*"]
  MOVE R7 R3
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADK R6 K3 ["the %*"]
  MOVE R8 R2
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R4 2

PROTO_1:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETUPVAL R4 0
  MOVE R5 R1
  LOADK R6 K1 ["value"]
  CALL R4 2 1
  LOADK R6 K2 ["The %* (bound to the %* property)"]
  MOVE R8 R4
  MOVE R9 R2
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R7 K4 ["the %* instance"]
  MOVE R9 R3
  NAMECALL R7 R7 K3 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2

PROTO_2:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETUPVAL R4 0
  MOVE R5 R1
  LOADK R6 K1 ["value"]
  CALL R4 2 1
  LOADK R6 K2 ["The %* (bound to the %* attribute)"]
  MOVE R8 R4
  MOVE R9 R2
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R7 K4 ["the %* instance"]
  MOVE R9 R3
  NAMECALL R7 R7 K3 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2

PROTO_3:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETUPVAL R4 0
  MOVE R5 R1
  LOADK R6 K1 ["object"]
  CALL R4 2 1
  LOADK R6 K2 ["The %* (which the %* property outputs to)"]
  MOVE R8 R4
  MOVE R9 R2
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R7 K4 ["the %* instance"]
  MOVE R9 R3
  NAMECALL R7 R7 K3 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETUPVAL R4 0
  MOVE R5 R1
  LOADK R6 K1 ["object"]
  CALL R4 2 1
  LOADK R6 K2 ["The %* (which the %* attribute outputs to)"]
  MOVE R8 R4
  MOVE R9 R2
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R7 K4 ["the %* instance"]
  MOVE R9 R3
  NAMECALL R7 R7 K3 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2

PROTO_5:
  GETTABLEKS R2 R0 K0 ["Name"]
  GETUPVAL R3 0
  MOVE R4 R1
  LOADK R5 K1 ["object"]
  CALL R3 2 1
  LOADK R5 K2 ["The %* (which the Ref key outputs to)"]
  MOVE R7 R3
  NAMECALL R5 R5 K3 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADK R6 K4 ["the %* instance"]
  MOVE R8 R2
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R4 2

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["object"]
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R4 R1
  LOADK R5 K0 ["object"]
  CALL R3 2 1
  LOADK R5 K1 ["The goal %*"]
  MOVE R7 R3
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADK R6 K3 ["the %* that is following it"]
  MOVE R8 R2
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R4 2

PROTO_7:
  GETUPVAL R3 0
  MOVE R4 R0
  LOADK R5 K0 ["object"]
  CALL R3 2 1
  GETUPVAL R4 0
  MOVE R5 R1
  LOADK R6 K0 ["object"]
  CALL R4 2 1
  JUMPIFNOTEQKB R2 FALSE [+14]
  LOADK R6 K1 ["The %* parameter"]
  MOVE R8 R4
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  LOADK R7 K3 ["the %* that it was used for"]
  MOVE R9 R3
  NAMECALL R7 R7 K2 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2
  LOADK R6 K4 ["The %* representing the %* parameter"]
  MOVE R8 R4
  MOVE R9 R2
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R7 K3 ["the %* that it was used for"]
  MOVE R9 R3
  NAMECALL R7 R7 K2 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R5 2

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["object"]
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R4 R1
  LOADK R5 K0 ["object"]
  CALL R3 2 1
  LOADK R5 K1 ["The watched %*"]
  MOVE R7 R3
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADK R6 K3 ["the %* that's observing it for changes"]
  MOVE R8 R2
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R4 2

PROTO_9:
  PREPVARARGS 5
  JUMPIFNOTEQKNIL R2 [+13]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["logError"]
  LOADK R6 K1 ["useAfterDestroy"]
  LOADNIL R7
  MOVE R8 R4
  MOVE R9 R1
  MOVE R10 R3
  GETVARARGS R11 -1
  CALL R8 -1 -1
  CALL R5 -1 0
  RETURN R0 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 1
  JUMPIFNOTEQKS R5 K2 ["definitely-a"] [+18]
  MOVE R5 R4
  MOVE R6 R1
  MOVE R7 R3
  GETVARARGS R8 -1
  CALL R5 -1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["logWarn"]
  LOADK R8 K4 ["possiblyOutlives"]
  MOVE R9 R5
  MOVE R10 R6
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R11 K5 ["they're in the same scope, but the latter is destroyed too quickly"]
  JUMP [+1]
  LOADK R11 K6 ["the latter is in a different scope that gets destroyed too quickly"]
  CALL R7 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["External"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Memory"]
  GETTABLEKS R4 R5 K8 ["whichLivesLonger"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Utility"]
  GETTABLEKS R5 R6 K10 ["nameOf"]
  CALL R4 1 1
  NEWTABLE R5 2 0
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K11 ["formatters"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K13 ["useFunction"]
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K15 ["boundProperty"]
  DUPCLOSURE R6 K16 [PROTO_2]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K17 ["boundAttribute"]
  DUPCLOSURE R6 K18 [PROTO_3]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K19 ["propertyOutputsTo"]
  DUPCLOSURE R6 K20 [PROTO_4]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K21 ["attributeOutputsTo"]
  DUPCLOSURE R6 K22 [PROTO_5]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K23 ["refOutputsTo"]
  DUPCLOSURE R6 K24 [PROTO_6]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K25 ["animationGoal"]
  DUPCLOSURE R6 K26 [PROTO_7]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K27 ["parameter"]
  DUPCLOSURE R6 K28 [PROTO_8]
  CAPTURE VAL R4
  GETTABLEKS R7 R5 K11 ["formatters"]
  SETTABLEKS R6 R7 K29 ["observer"]
  DUPCLOSURE R6 K30 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K31 ["bOutlivesA"]
  RETURN R5 1
