PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshCageNonManifoldAndHoles"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 3
  JUMPIF R2 [+23]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["reportFailure"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["ErrorType"]
  GETTABLEKS R6 R7 K4 ["validateCageNonManifoldAndHoles_FailedToExecute"]
  LOADNIL R7
  MOVE R8 R1
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K7 [string.format]
  LOADK R8 K8 ["Failed to execute cage non-manifold check for '%s'. Make sure cage mesh exists and try again."]
  GETTABLEKS R9 R0 K9 ["fullName"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  NEWTABLE R5 0 0
  LOADB R6 1
  JUMPIF R3 [+23]
  LOADB R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["reportFailure"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["ErrorType"]
  GETTABLEKS R8 R9 K10 ["validateCageNonManifoldAndHoles_NonManifold"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  MOVE R8 R5
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K11 ["'%s' is non-manifold (i.e. there are edges with 3 or more incident faces). Some vertices are likely too close and welded together as a single vertex causing edges to collapse into a non-manifold. You need to edit the cage mesh so that vertices aren't too close together."]
  GETTABLEKS R11 R0 K9 ["fullName"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K14 [table.insert]
  CALL R7 -1 0
  JUMPIF R4 [+23]
  LOADB R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["reportFailure"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["ErrorType"]
  GETTABLEKS R8 R9 K15 ["validateCageNonManifoldAndHoles_CageHoles"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  MOVE R8 R5
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K16 ["'%s' is not watertight (i.e. detected holes in the mesh). You need to edit the mesh and close the holes (may leave eyes and mouth areas open when applicable)."]
  GETTABLEKS R11 R0 K9 ["fullName"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K14 [table.insert]
  CALL R7 -1 0
  MOVE R7 R6
  MOVE R8 R5
  RETURN R7 2

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
  GETTABLEKS R4 R1 K11 ["Analytics"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R4 1
