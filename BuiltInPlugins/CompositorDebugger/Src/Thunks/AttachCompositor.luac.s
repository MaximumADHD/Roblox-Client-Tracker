PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  LOADK R5 K1 ["Folder"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+1]
  RETURN R2 1
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K1 ["Folder"]
  CALL R3 1 1
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["Archivable"]
  SETTABLEKS R1 R3 K7 ["Name"]
  RETURN R3 1

PROTO_1:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  LOADK R5 K1 ["BindableEvent"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  JUMPIF R2 [+12]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K1 ["BindableEvent"]
  CALL R3 1 1
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["Archivable"]
  SETTABLEKS R1 R3 K7 ["Name"]
  SETTABLEKS R0 R3 K8 ["Parent"]
  MOVE R2 R3
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K1 ["BindableEvent"]
  NAMECALL R4 R2 K2 ["IsA"]
  CALL R4 2 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K10 [assert]
  CALL R3 1 0
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K2 ["Actor"]
  GETUPVAL R2 0
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R4 1
  CALL R4 0 -1
  NAMECALL R2 R0 K3 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["FOLDERS"]
  GETTABLEKS R4 R5 K5 ["CompositorDebugger"]
  MOVE R7 R4
  NAMECALL R5 R3 K6 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K7 ["Folder"]
  NAMECALL R6 R5 K8 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R2 R5
  JUMP [+10]
  GETIMPORT R6 K11 [Instance.new]
  LOADK R7 K7 ["Folder"]
  CALL R6 1 1
  LOADB R7 0
  SETTABLEKS R7 R6 K12 ["Archivable"]
  SETTABLEKS R4 R6 K13 ["Name"]
  MOVE R2 R6
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["FOLDERS"]
  GETTABLEKS R4 R5 K14 ["AdornmentHandles"]
  MOVE R7 R4
  NAMECALL R5 R2 K6 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K7 ["Folder"]
  NAMECALL R6 R5 K8 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R3 R5
  JUMP [+10]
  GETIMPORT R6 K11 [Instance.new]
  LOADK R7 K7 ["Folder"]
  CALL R6 1 1
  LOADB R7 0
  SETTABLEKS R7 R6 K12 ["Archivable"]
  SETTABLEKS R4 R6 K13 ["Name"]
  MOVE R3 R6
  GETUPVAL R6 3
  NAMECALL R6 R6 K15 ["IsServer"]
  CALL R6 1 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["FOLDERS"]
  GETTABLEKS R5 R6 K16 ["Server"]
  JUMP [+5]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["FOLDERS"]
  GETTABLEKS R5 R6 K17 ["Client"]
  MOVE R8 R5
  NAMECALL R6 R2 K6 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K7 ["Folder"]
  NAMECALL R7 R6 K8 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+10]
  GETIMPORT R7 K11 [Instance.new]
  LOADK R8 K7 ["Folder"]
  CALL R7 1 1
  LOADB R8 0
  SETTABLEKS R8 R7 K12 ["Archivable"]
  SETTABLEKS R5 R7 K13 ["Name"]
  MOVE R4 R7
  GETUPVAL R5 4
  MOVE R6 R4
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K18 ["EVENTS"]
  GETTABLEKS R7 R8 K19 ["DebugData"]
  CALL R5 2 1
  GETUPVAL R6 4
  MOVE R7 R4
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K18 ["EVENTS"]
  GETTABLEKS R8 R9 K20 ["PropertyOverrides"]
  CALL R6 2 1
  GETUPVAL R7 4
  MOVE R8 R4
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K18 ["EVENTS"]
  GETTABLEKS R9 R10 K21 ["LayerAdornments"]
  CALL R7 2 1
  JUMPIFNOT R5 [+2]
  JUMPIFNOT R6 [+1]
  JUMPIF R7 [+1]
  RETURN R0 0
  MOVE R9 R5
  JUMPIFNOT R9 [+3]
  MOVE R9 R6
  JUMPIFNOT R9 [+1]
  MOVE R9 R7
  FASTCALL1 ASSERT R9 [+2]
  GETIMPORT R8 K23 [assert]
  CALL R8 1 0
  GETTABLEKS R8 R5 K24 ["Event"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R8 R8 K25 ["Connect"]
  CALL R8 2 1
  GETUPVAL R11 6
  MOVE R12 R5
  MOVE R13 R8
  CALL R11 2 -1
  NAMECALL R9 R0 K3 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 7
  MOVE R12 R6
  CALL R11 1 -1
  NAMECALL R9 R0 K3 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 8
  MOVE R12 R7
  CALL R11 1 -1
  NAMECALL R9 R0 K3 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 9
  GETUPVAL R12 0
  CALL R11 1 -1
  NAMECALL R9 R0 K3 ["dispatch"]
  CALL R9 -1 0
  SETTABLEKS R2 R4 K26 ["Parent"]
  GETUPVAL R9 0
  SETTABLEKS R9 R2 K26 ["Parent"]
  SETTABLEKS R2 R3 K26 ["Parent"]
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["CompositorDebugger"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R3 R1 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Actions"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R4 R2 K12 ["SetDebugDataEvent"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R2 K13 ["SetActor"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R2 K14 ["SetLayerAdornmentEvent"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R7 R2 K15 ["SetPropertyOverrideEvent"]
  CALL R6 1 1
  GETTABLEKS R8 R1 K8 ["Src"]
  GETTABLEKS R7 R8 K16 ["Thunks"]
  GETIMPORT R8 K11 [require]
  GETTABLEKS R9 R7 K17 ["DetachCompositor"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R10 R7 K18 ["ParseDebugData"]
  CALL R9 1 1
  GETTABLEKS R11 R1 K8 ["Src"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETIMPORT R11 K11 [require]
  GETTABLEKS R12 R10 K20 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R14 R1 K8 ["Src"]
  GETTABLEKS R13 R14 K21 ["Types"]
  CALL R12 1 1
  DUPCLOSURE R13 K22 [PROTO_0]
  DUPCLOSURE R14 K23 [PROTO_1]
  DUPCLOSURE R15 K24 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R15 1
