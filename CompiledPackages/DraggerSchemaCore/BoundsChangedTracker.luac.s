PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["_basisObject"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R3 K4 [{"_handler", "_installed", "_partToEntry", "_attachmentToEntry"}]
  SETTABLEKS R1 R3 K0 ["_handler"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["_installed"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K2 ["_partToEntry"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["_attachmentToEntry"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K6 [setmetatable]
  CALL R2 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K7 ["_basisPivotChangedTrampoline"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["CFrameChangedSignal"]
  GETTABLEKS R3 R0 K1 ["Trampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["CFrameChangedConnection"]
  GETTABLEKS R1 R0 K4 ["RootCFrameChangedSignal"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K4 ["RootCFrameChangedSignal"]
  GETTABLEKS R3 R0 K1 ["Trampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["RootCFrameChangedConnection"]
  GETTABLEKS R1 R0 K6 ["SizeChangedSignal"]
  GETTABLEKS R3 R0 K1 ["Trampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["SizeChangedConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["CFrameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["RootCFrameChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["RootCFrameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["SizeChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["CFrameChangedSignal"]
  GETTABLEKS R3 R0 K1 ["Trampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["CFrameChangedConnection"]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+12]
  GETTABLEKS R1 R0 K4 ["CameraCFrameChangedSignal"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K4 ["CameraCFrameChangedSignal"]
  GETTABLEKS R3 R0 K1 ["Trampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["CameraCFrameChangedConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["CFrameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["CameraCFrameChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["CameraCFrameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_basisPivotChangedSignal"]
  GETTABLEKS R3 R0 K1 ["_basisPivotChangedTrampoline"]
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["_basisPivotChangedConnection"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_basisPivotChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_installed"]
  NOT R2 R3
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_installed"]
  GETIMPORT R1 K4 [pairs]
  GETTABLEKS R2 R0 K5 ["_partToEntry"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K6 ["CFrameChangedSignal"]
  GETTABLEKS R8 R5 K7 ["Trampoline"]
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["CFrameChangedConnection"]
  GETTABLEKS R6 R5 K10 ["RootCFrameChangedSignal"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R5 K10 ["RootCFrameChangedSignal"]
  GETTABLEKS R8 R5 K7 ["Trampoline"]
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["RootCFrameChangedConnection"]
  GETTABLEKS R6 R5 K12 ["SizeChangedSignal"]
  GETTABLEKS R8 R5 K7 ["Trampoline"]
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["SizeChangedConnection"]
  FORGLOOP R1 2 [-31]
  GETIMPORT R1 K4 [pairs]
  GETTABLEKS R2 R0 K14 ["_attachmentToEntry"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K6 ["CFrameChangedSignal"]
  GETTABLEKS R8 R5 K7 ["Trampoline"]
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["CFrameChangedConnection"]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+12]
  GETTABLEKS R6 R5 K15 ["CameraCFrameChangedSignal"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R5 K15 ["CameraCFrameChangedSignal"]
  GETTABLEKS R8 R5 K7 ["Trampoline"]
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["CameraCFrameChangedConnection"]
  FORGLOOP R1 2 [-24]
  GETTABLEKS R1 R0 K17 ["_basisObject"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K18 ["_hookupBasisConnection"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_installed"]
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_installed"]
  GETIMPORT R1 K4 [pairs]
  GETTABLEKS R2 R0 K5 ["_partToEntry"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K6 ["CFrameChangedConnection"]
  NAMECALL R6 R6 K7 ["Disconnect"]
  CALL R6 1 0
  GETTABLEKS R6 R5 K8 ["RootCFrameChangedConnection"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R5 K8 ["RootCFrameChangedConnection"]
  NAMECALL R6 R6 K7 ["Disconnect"]
  CALL R6 1 0
  GETTABLEKS R6 R5 K9 ["SizeChangedConnection"]
  NAMECALL R6 R6 K7 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-19]
  GETIMPORT R1 K4 [pairs]
  GETTABLEKS R2 R0 K10 ["_attachmentToEntry"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K6 ["CFrameChangedConnection"]
  NAMECALL R6 R6 K7 ["Disconnect"]
  CALL R6 1 0
  GETUPVAL R6 0
  JUMPIFNOT R6 [+8]
  GETTABLEKS R6 R5 K11 ["CameraCFrameChangedConnection"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R5 K11 ["CameraCFrameChangedConnection"]
  NAMECALL R6 R6 K7 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-16]
  GETTABLEKS R1 R0 K12 ["_basisObject"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K13 ["_disconnectBasisConnection"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R4 R1 K0 ["getAllAttachments"]
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["_setAttachments"]
  CALL R2 -1 0
  NAMECALL R4 R1 K2 ["getObjectsToTransform"]
  CALL R4 1 -1
  NAMECALL R2 R0 K3 ["_setParts"]
  CALL R2 -1 0
  NAMECALL R4 R1 K4 ["getBasisObject"]
  CALL R4 1 -1
  NAMECALL R2 R0 K5 ["_setBasisObject"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["_setParts"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_basisObject"]
  JUMPIFEQ R2 R1 [+58]
  GETTABLEKS R2 R0 K1 ["_installed"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K0 ["_basisObject"]
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K2 ["_disconnectBasisConnection"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K0 ["_basisObject"]
  JUMPIFNOT R1 [+45]
  LOADK R4 K3 ["BasePart"]
  NAMECALL R2 R1 K4 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  LOADK R4 K5 ["PivotOffset"]
  NAMECALL R2 R1 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_basisPivotChangedSignal"]
  JUMP [+27]
  LOADK R4 K8 ["Model"]
  NAMECALL R2 R1 K4 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R1 K9 ["PrimaryPart"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K9 ["PrimaryPart"]
  LOADK R4 K5 ["PivotOffset"]
  NAMECALL R2 R2 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_basisPivotChangedSignal"]
  JUMP [+10]
  LOADK R4 K10 ["WorldPivot"]
  NAMECALL R2 R1 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_basisPivotChangedSignal"]
  JUMP [+3]
  LOADNIL R2
  SETTABLEKS R2 R0 K7 ["_basisPivotChangedSignal"]
  GETTABLEKS R2 R0 K1 ["_installed"]
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K11 ["_hookupBasisConnection"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_handler"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R9 R0 K2 ["_attachmentToEntry"]
  GETTABLE R8 R9 R7
  GETTABLEKS R9 R0 K2 ["_attachmentToEntry"]
  LOADNIL R10
  SETTABLE R10 R9 R7
  JUMPIF R8 [+58]
  DUPTABLE R9 K5 [{"CFrameChangedSignal", "Trampoline"}]
  LOADK R12 K6 ["CFrame"]
  NAMECALL R10 R7 K7 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["CFrameChangedSignal"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K4 ["Trampoline"]
  MOVE R8 R9
  GETUPVAL R9 0
  JUMPIFNOT R9 [+16]
  LOADK R11 K8 ["PVInstance"]
  NAMECALL R9 R7 K9 ["FindFirstAncestorWhichIsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+11]
  LOADK R12 K10 ["Camera"]
  NAMECALL R10 R9 K11 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+6]
  LOADK R12 K6 ["CFrame"]
  NAMECALL R10 R9 K7 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  SETTABLEKS R10 R8 K12 ["CameraCFrameChangedSignal"]
  GETTABLEKS R9 R0 K13 ["_installed"]
  JUMPIFNOT R9 [+24]
  MOVE R9 R8
  GETTABLEKS R10 R9 K3 ["CFrameChangedSignal"]
  GETTABLEKS R12 R9 K4 ["Trampoline"]
  NAMECALL R10 R10 K14 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["CFrameChangedConnection"]
  GETUPVAL R10 0
  JUMPIFNOT R10 [+12]
  GETTABLEKS R10 R9 K12 ["CameraCFrameChangedSignal"]
  JUMPIFNOT R10 [+9]
  GETTABLEKS R10 R9 K12 ["CameraCFrameChangedSignal"]
  GETTABLEKS R12 R9 K4 ["Trampoline"]
  NAMECALL R10 R10 K14 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["CameraCFrameChangedConnection"]
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [inext] [-68]
  GETTABLEKS R3 R0 K13 ["_installed"]
  JUMPIFNOT R3 [+25]
  GETIMPORT R3 K18 [pairs]
  GETTABLEKS R4 R0 K2 ["_attachmentToEntry"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R2 R6
  JUMPIF R8 [+15]
  GETTABLEKS R8 R7 K15 ["CFrameChangedConnection"]
  NAMECALL R8 R8 K19 ["Disconnect"]
  CALL R8 1 0
  GETUPVAL R8 0
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R7 K16 ["CameraCFrameChangedConnection"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R7 K16 ["CameraCFrameChangedConnection"]
  NAMECALL R8 R8 K19 ["Disconnect"]
  CALL R8 1 0
  FORGLOOP R3 2 [-18]
  SETTABLEKS R2 R0 K2 ["_attachmentToEntry"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_handler"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  LOADN R8 0
  JUMPIFLT R8 R6 [+85]
  GETTABLEKS R9 R0 K2 ["_partToEntry"]
  GETTABLE R8 R9 R7
  GETTABLEKS R9 R0 K2 ["_partToEntry"]
  LOADNIL R10
  SETTABLE R10 R9 R7
  JUMPIF R8 [+67]
  NAMECALL R9 R7 K3 ["GetRootPart"]
  CALL R9 1 1
  LOADNIL R10
  JUMPIFNOT R9 [+7]
  JUMPIFEQ R9 R7 [+6]
  LOADK R13 K4 ["CFrame"]
  NAMECALL R11 R9 K5 ["GetPropertyChangedSignal"]
  CALL R11 2 1
  MOVE R10 R11
  DUPTABLE R11 K10 [{"CFrameChangedSignal", "RootCFrameChangedSignal", "SizeChangedSignal", "Trampoline"}]
  LOADK R14 K4 ["CFrame"]
  NAMECALL R12 R7 K5 ["GetPropertyChangedSignal"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K6 ["CFrameChangedSignal"]
  SETTABLEKS R10 R11 K7 ["RootCFrameChangedSignal"]
  LOADK R14 K11 ["Size"]
  NAMECALL R12 R7 K5 ["GetPropertyChangedSignal"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K8 ["SizeChangedSignal"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K9 ["Trampoline"]
  MOVE R8 R11
  GETTABLEKS R11 R0 K12 ["_installed"]
  JUMPIFNOT R11 [+31]
  MOVE R11 R8
  GETTABLEKS R12 R11 K6 ["CFrameChangedSignal"]
  GETTABLEKS R14 R11 K9 ["Trampoline"]
  NAMECALL R12 R12 K13 ["Connect"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["CFrameChangedConnection"]
  GETTABLEKS R12 R11 K7 ["RootCFrameChangedSignal"]
  JUMPIFNOT R12 [+9]
  GETTABLEKS R12 R11 K7 ["RootCFrameChangedSignal"]
  GETTABLEKS R14 R11 K9 ["Trampoline"]
  NAMECALL R12 R12 K13 ["Connect"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["RootCFrameChangedConnection"]
  GETTABLEKS R12 R11 K8 ["SizeChangedSignal"]
  GETTABLEKS R14 R11 K9 ["Trampoline"]
  NAMECALL R12 R12 K13 ["Connect"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["SizeChangedConnection"]
  GETTABLE R11 R2 R7
  NOT R10 R11
  FASTCALL1 ASSERT R10 [+2]
  GETIMPORT R9 K18 [assert]
  CALL R9 1 0
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [inext] [-86]
  GETTABLEKS R3 R0 K12 ["_installed"]
  JUMPIFNOT R3 [+28]
  GETIMPORT R3 K20 [pairs]
  GETTABLEKS R4 R0 K2 ["_partToEntry"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R2 R6
  JUMPIF R8 [+18]
  GETTABLEKS R8 R7 K14 ["CFrameChangedConnection"]
  NAMECALL R8 R8 K21 ["Disconnect"]
  CALL R8 1 0
  GETTABLEKS R8 R7 K15 ["RootCFrameChangedConnection"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R7 K15 ["RootCFrameChangedConnection"]
  NAMECALL R8 R8 K21 ["Disconnect"]
  CALL R8 1 0
  GETTABLEKS R8 R7 K16 ["SizeChangedConnection"]
  NAMECALL R8 R8 K21 ["Disconnect"]
  CALL R8 1 0
  FORGLOOP R3 2 [-21]
  SETTABLEKS R2 R0 K2 ["_partToEntry"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETTABLEKS R2 R1 K3 ["DraggerFramework"]
  GETIMPORT R3 K5 [game]
  LOADK R5 K6 ["DetachedAttachments"]
  NAMECALL R3 R3 K7 ["GetEngineFeature"]
  CALL R3 2 1
  DUPCLOSURE R4 K8 [PROTO_0]
  CAPTURE VAL R3
  NEWTABLE R5 16 0
  SETTABLEKS R5 R5 K9 ["__index"]
  DUPCLOSURE R6 K10 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K11 ["new"]
  DUPCLOSURE R6 K12 [PROTO_3]
  DUPCLOSURE R7 K13 [PROTO_4]
  DUPCLOSURE R8 K14 [PROTO_5]
  CAPTURE VAL R3
  DUPCLOSURE R9 K15 [PROTO_6]
  CAPTURE VAL R3
  DUPCLOSURE R10 K16 [PROTO_7]
  SETTABLEKS R10 R5 K17 ["_hookupBasisConnection"]
  DUPCLOSURE R10 K18 [PROTO_8]
  SETTABLEKS R10 R5 K19 ["_disconnectBasisConnection"]
  DUPCLOSURE R10 K20 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R10 R5 K21 ["install"]
  DUPCLOSURE R10 K22 [PROTO_10]
  CAPTURE VAL R3
  SETTABLEKS R10 R5 K23 ["uninstall"]
  DUPCLOSURE R10 K24 [PROTO_11]
  SETTABLEKS R10 R5 K25 ["setSelection"]
  DUPCLOSURE R10 K26 [PROTO_12]
  SETTABLEKS R10 R5 K27 ["setParts"]
  DUPCLOSURE R10 K28 [PROTO_13]
  SETTABLEKS R10 R5 K29 ["_setBasisObject"]
  DUPCLOSURE R10 K30 [PROTO_15]
  CAPTURE VAL R3
  SETTABLEKS R10 R5 K31 ["_setAttachments"]
  DUPCLOSURE R10 K32 [PROTO_17]
  SETTABLEKS R10 R5 K33 ["_setParts"]
  RETURN R5 1
