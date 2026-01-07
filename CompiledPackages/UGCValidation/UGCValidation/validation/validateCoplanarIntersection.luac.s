PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["GetEditableMeshTriCount"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R3 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  MOVE R5 R1
  CALL R3 2 2
  JUMPIF R3 [+31]
  GETIMPORT R5 K2 [string.format]
  LOADK R6 K3 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
  GETTABLEKS R7 R0 K4 ["fullName"]
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["reportFailure"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["ErrorType"]
  GETTABLEKS R7 R8 K7 ["validateCoplanarIntersection_FailedToExecute"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  JUMPIFEQKNIL R2 [+6]
  JUMPIFNOT R2 [+4]
  GETIMPORT R6 K9 [error]
  MOVE R7 R5
  CALL R6 1 0
  LOADB R6 0
  NEWTABLE R7 0 1
  MOVE R8 R5
  SETLIST R7 R8 1 [1]
  RETURN R6 2
  LOADB R5 1
  LOADNIL R6
  MOVE R7 R4
  RETURN R5 3

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  LOADB R5 1
  NAMECALL R0 R0 K1 ["IsEditableMeshNumCoplanarIntersectionsOverLimit"]
  CALL R0 5 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  GETTABLEKS R4 R2 K2 ["isServer"]
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R2
  MOVE R8 R4
  CALL R5 3 3
  JUMPIF R5 [+3]
  LOADB R8 0
  MOVE R9 R6
  RETURN R8 2
  GETUPVAL R11 1
  CALL R11 0 1
  DIVK R10 R11 K3 [100]
  MUL R9 R10 R7
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K6 [math.floor]
  CALL R8 1 1
  GETUPVAL R9 2
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R1
  MOVE R11 R2
  CALL R9 2 2
  JUMPIF R9 [+31]
  GETIMPORT R11 K9 [string.format]
  LOADK R12 K10 ["Failed to execute coplanar triangle intersection check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R13 R0 K11 ["fullName"]
  CALL R11 2 1
  JUMPIFEQKNIL R4 [+6]
  JUMPIFNOT R4 [+4]
  GETIMPORT R12 K13 [error]
  MOVE R13 R11
  CALL R12 1 0
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K14 ["reportFailure"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K15 ["ErrorType"]
  GETTABLEKS R13 R14 K16 ["validateCoplanarIntersection_FailedToExecute"]
  LOADNIL R14
  MOVE R15 R2
  CALL R12 3 0
  LOADB R12 0
  NEWTABLE R13 0 1
  MOVE R14 R11
  SETLIST R13 R14 1 [1]
  RETURN R12 2
  JUMPIFNOT R10 [+25]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K14 ["reportFailure"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K15 ["ErrorType"]
  GETTABLEKS R12 R13 K17 ["validateCoplanarIntersection_CoplanarIntersection"]
  LOADNIL R13
  MOVE R14 R2
  CALL R11 3 0
  LOADB R11 0
  NEWTABLE R12 0 1
  GETIMPORT R13 K9 [string.format]
  LOADK R14 K18 ["Detected too many coplanar triangles intersecting in model mesh '%s'. The maximum is %d intersections in a %d triangle mesh. Edit your mesh to reduce the number of coplanar triangle intersections."]
  GETTABLEKS R15 R0 K11 ["fullName"]
  MOVE R16 R8
  MOVE R17 R7
  CALL R13 4 -1
  SETLIST R12 R13 -1 [1]
  RETURN R11 2
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K19 ["recordScriptTime"]
  GETIMPORT R13 K21 [script]
  GETTABLEKS R12 R13 K22 ["Name"]
  MOVE R13 R3
  MOVE R14 R2
  CALL R11 3 0
  LOADB R11 1
  RETURN R11 1

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
  GETTABLEKS R4 R1 K9 ["flags"]
  GETTABLEKS R3 R4 K10 ["getFIntMaxCoplanarIntersectionsPercentage"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["util"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["util"]
  GETTABLEKS R5 R6 K13 ["pcallDeferred"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K14 ["Analytics"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R5
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R5
  RETURN R7 1
