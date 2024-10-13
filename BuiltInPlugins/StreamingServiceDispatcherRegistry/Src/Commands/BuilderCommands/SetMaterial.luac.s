PROTO_0:
  LOADK R4 K0 ["BasePart"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R1 K2 ["BaseMaterial"]
  SETTABLEKS R2 R0 K3 ["Material"]
  GETTABLEKS R2 R1 K4 ["Name"]
  SETTABLEKS R2 R0 K5 ["MaterialVariant"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["get"]
  GETTABLEKS R3 R1 K1 ["applicationTargetInstanceId"]
  GETTABLEKS R4 R0 K2 ["requestId"]
  CALL R2 2 1
  JUMPIF R2 [+25]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETIMPORT R3 K4 [error]
  LOADK R5 K5 ["Failed to find target for id %*"]
  GETTABLEKS R7 R1 K1 ["applicationTargetInstanceId"]
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  JUMP [+11]
  GETIMPORT R3 K8 [warn]
  LOADK R5 K5 ["Failed to find target for id %*"]
  GETTABLEKS R7 R1 K1 ["applicationTargetInstanceId"]
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0
  FASTCALL2K ASSERT R2 K9 [+5]
  MOVE R4 R2
  LOADK R5 K9 ["Luau"]
  GETIMPORT R3 K11 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["get"]
  GETTABLEKS R4 R1 K12 ["materialId"]
  GETTABLEKS R5 R0 K2 ["requestId"]
  CALL R3 2 1
  JUMPIF R3 [+25]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+11]
  GETIMPORT R4 K4 [error]
  LOADK R6 K13 ["Failed to find material for id %*"]
  GETTABLEKS R8 R1 K12 ["materialId"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  JUMP [+11]
  GETIMPORT R4 K8 [warn]
  LOADK R6 K13 ["Failed to find material for id %*"]
  GETTABLEKS R8 R1 K12 ["materialId"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0
  FASTCALL2K ASSERT R3 K9 [+5]
  MOVE R5 R3
  LOADK R6 K9 ["Luau"]
  GETIMPORT R4 K11 [assert]
  CALL R4 2 0
  LOADK R6 K14 ["MaterialVariant"]
  NAMECALL R4 R3 K15 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+29]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+13]
  GETIMPORT R4 K4 [error]
  LOADK R6 K16 ["Bad materialVariant instance from id %*, expected class of MaterialVariant, got %*"]
  GETTABLEKS R8 R1 K12 ["materialId"]
  GETTABLEKS R9 R3 K17 ["ClassName"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  CALL R4 1 0
  JUMP [+13]
  GETIMPORT R4 K8 [warn]
  LOADK R6 K16 ["Bad materialVariant instance from id %*, expected class of MaterialVariant, got %*"]
  GETTABLEKS R8 R1 K12 ["materialId"]
  GETTABLEKS R9 R3 K17 ["ClassName"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0
  LOADK R7 K14 ["MaterialVariant"]
  NAMECALL R5 R3 K15 ["IsA"]
  CALL R5 2 1
  FASTCALL2K ASSERT R5 K9 [+4]
  LOADK R6 K9 ["Luau"]
  GETIMPORT R4 K11 [assert]
  CALL R4 2 0
  LOADK R6 K18 ["BasePart"]
  NAMECALL R4 R2 K15 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R3 K19 ["BaseMaterial"]
  SETTABLEKS R4 R2 K20 ["Material"]
  GETTABLEKS R4 R3 K21 ["Name"]
  SETTABLEKS R4 R2 K14 ["MaterialVariant"]
  NAMECALL R4 R2 K22 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K18 ["BasePart"]
  NAMECALL R9 R8 K15 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+8]
  GETTABLEKS R9 R3 K19 ["BaseMaterial"]
  SETTABLEKS R9 R8 K20 ["Material"]
  GETTABLEKS R9 R3 K21 ["Name"]
  SETTABLEKS R9 R8 K14 ["MaterialVariant"]
  FORGLOOP R4 2 [-14]
  LOADK R5 K23 ["Applied %* to"]
  GETTABLEKS R7 R3 K21 ["Name"]
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K24 ["modifyChatWithInstanceLink"]
  GETTABLEKS R6 R0 K2 ["requestId"]
  MOVE R7 R2
  MOVE R8 R4
  LOADK R10 K25 ["set_material_"]
  GETTABLEKS R11 R0 K2 ["requestId"]
  CONCAT R9 R10 R11
  CALL R5 4 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["arguments"]
  GETTABLEKS R5 R1 K1 ["applicationTargetInstanceId"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K3 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K4 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["Bad request.applicationTargetInstanceId"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETTABLEKS R5 R1 K8 ["materialId"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K3 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K4 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Bad request.materialId"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["StartRecordingActions"]
  GETTABLEKS R3 R0 K11 ["requestId"]
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["EndRecordingActions"]
  GETTABLEKS R3 R0 K11 ["requestId"]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K7 ["Utils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Commands"]
  GETTABLEKS R5 R6 K10 ["BuilderCommands"]
  GETTABLEKS R4 R5 K11 ["BuilderNameMap"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagConvAIAddClientAlerts"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
