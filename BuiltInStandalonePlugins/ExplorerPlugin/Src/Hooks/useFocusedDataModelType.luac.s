PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["MultipleDocumentInterfaceInstance"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["FocusedDataModelSession"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["Luau"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["FocusedDataModelSession"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADK R2 K3 ["FocusedDataModelSession"]
  NAMECALL R0 R0 K4 ["GetPropertyChangedSignal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K5 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["CurrentDataModelType"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["Luau"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["CurrentDataModelType"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["CurrentDataModelTypeChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K5 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  NAMECALL R0 R0 K1 ["get"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["useState"]
  GETTABLEKS R2 R0 K3 ["MultipleDocumentInterfaceInstance"]
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["useEventConnection"]
  LOADK R10 K3 ["MultipleDocumentInterfaceInstance"]
  NAMECALL R8 R0 K5 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useEffect"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R9 0 1
  MOVE R10 R1
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useEffect"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R3
  CAPTURE VAL R6
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Plugin"]
  DUPCLOSURE R5 K12 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
