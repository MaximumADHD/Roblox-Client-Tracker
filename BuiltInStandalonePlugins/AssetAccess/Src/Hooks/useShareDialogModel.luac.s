PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["ShareDialogModel"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["OnSetItem"]
  CALL R0 3 1
  GETUPVAL R1 1
  GETUPVAL R2 0
  LOADK R4 K0 ["ShareDialogModel"]
  NAMECALL R2 R2 K2 ["GetItem"]
  CALL R2 2 -1
  CALL R1 -1 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["ShareAccess"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["ShareDialogDismissed"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["use"]
  CALL R0 0 1
  NAMECALL R0 R0 K1 ["get"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R5 0 2
  MOVE R6 R0
  MOVE R7 R2
  SETLIST R5 R6 2 [1]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["useCallback"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  MOVE R5 R1
  MOVE R6 R3
  MOVE R7 R4
  RETURN R5 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Plugin"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
