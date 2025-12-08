PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["GetEditableMeshVerticesSimilarityRate"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R4 K1 [tick]
  CALL R4 0 1
  GETTABLEKS R5 R1 K2 ["isServer"]
  GETUPVAL R6 0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R2
  MOVE R8 R1
  CALL R6 2 2
  JUMPIF R6 [+35]
  JUMPIFEQKNIL R5 [+11]
  JUMPIFNOT R5 [+9]
  GETIMPORT R8 K4 [error]
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K8 ["Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R11 R0 K9 ["fullName"]
  CALL R9 2 -1
  CALL R8 -1 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["reportFailure"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["ErrorType"]
  GETTABLEKS R9 R10 K12 ["validateVerticesSimilarity_FailedToExecute"]
  LOADNIL R10
  MOVE R11 R1
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  GETIMPORT R10 K7 [string.format]
  LOADK R11 K8 ["Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R12 R0 K9 ["fullName"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  RETURN R8 2
  MULK R9 R7 K13 [100]
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K16 [math.floor]
  CALL R8 1 1
  MOVE R7 R8
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOTLT R8 R7 [+33]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["reportFailure"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["ErrorType"]
  GETTABLEKS R9 R10 K17 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  LOADNIL R10
  MOVE R11 R1
  CALL R8 3 0
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K18 ["%s has %d%% of vertices too close to each other. Please edit the vertices to have at most %d%% coincident or close to one another."]
  MOVE R10 R3
  MOVE R11 R7
  GETUPVAL R12 3
  CALL R12 0 -1
  CALL R8 -1 1
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  MOVE R9 R8
  LOADK R10 K19 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageDensity)"]
  CONCAT R8 R9 R10
  LOADB R9 0
  NEWTABLE R10 0 1
  MOVE R11 R8
  SETLIST R10 R11 1 [1]
  RETURN R9 2
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K20 ["recordScriptTime"]
  GETIMPORT R10 K22 [script]
  GETTABLEKS R9 R10 K23 ["Name"]
  MOVE R10 R4
  MOVE R11 R1
  CALL R8 3 0
  LOADB R8 1
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["util"]
  GETTABLEKS R4 R5 K11 ["pcallDeferred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["flags"]
  GETTABLEKS R5 R6 K13 ["getFIntUGCLCCageVerticesSimilarityMaximum"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K14 ["Analytics"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K12 ["flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagUGCValidationHyperlinksInCageQuality"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R7 1
