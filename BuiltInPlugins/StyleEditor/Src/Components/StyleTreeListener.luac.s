PROTO_0:
  JUMPIFEQKS R1 K0 ["Destroying"] [+3]
  JUMPIFNOTEQKS R1 K1 ["DescendantRemoving"] [+16]
  GETTABLEKS R3 R2 K2 ["Parent"]
  JUMPIFNOTEQKNIL R3 [+26]
  LOADK R5 K3 ["StyleSheet"]
  NAMECALL R3 R2 K4 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+20]
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R2
  CALL R4 1 -1
  CALL R3 -1 0
  JUMP [+14]
  JUMPIFNOTEQKS R1 K5 ["PropertyChanged"] [+13]
  JUMPIFNOTEQKS R2 K6 ["Name"] [+11]
  LOADK R5 K3 ["StyleSheet"]
  NAMECALL R3 R0 K4 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  LOADB R5 1
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["IsDirty"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroyListener"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  NEWTABLE R3 0 3
  LOADK R4 K1 ["Name"]
  LOADK R5 K2 ["Parent"]
  LOADK R6 K3 ["Selector"]
  SETLIST R3 R4 3 [1]
  NEWTABLE R4 0 3
  LOADK R5 K4 ["StyleSheet"]
  LOADK R6 K5 ["Folder"]
  LOADK R7 K6 ["StyleRule"]
  SETLIST R4 R5 3 [1]
  CALL R0 4 1
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R3 3
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K0 ["IsDirty"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETUPVAL R3 4
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  NEWTABLE R5 0 0
  CALL R3 2 0
  LOADNIL R3
  RETURN R3 1

PROTO_5:
  DUPTABLE R1 K1 [{"IsDirty"}]
  GETTABLEKS R3 R0 K2 ["Window"]
  GETTABLEKS R2 R3 K0 ["IsDirty"]
  SETTABLEKS R2 R1 K0 ["IsDirty"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["useEffect"]
  GETTABLEKS R5 R3 K13 ["useLayoutEffect"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Reducers"]
  GETTABLEKS R7 R8 K16 ["RootReducer"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K14 ["Src"]
  GETTABLEKS R9 R10 K17 ["Hooks"]
  GETTABLEKS R8 R9 K18 ["useDispatch"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K14 ["Src"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETTABLEKS R9 R10 K20 ["TreeListener"]
  CALL R8 1 1
  GETTABLEKS R10 R1 K14 ["Src"]
  GETTABLEKS R9 R10 K21 ["Actions"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R9 K22 ["Window"]
  GETTABLEKS R11 R12 K23 ["SetIsDirty"]
  CALL R10 1 1
  GETTABLEKS R12 R1 K14 ["Src"]
  GETTABLEKS R11 R12 K24 ["Thunks"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R11 K25 ["StyleTree"]
  GETTABLEKS R13 R14 K26 ["UpdateStyleSheetReferences"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R1 K14 ["Src"]
  GETTABLEKS R14 R15 K27 ["Types"]
  CALL R13 1 1
  NEWTABLE R14 0 1
  MOVE R15 R0
  SETLIST R14 R15 1 [1]
  DUPCLOSURE R15 K28 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R14
  GETTABLEKS R16 R2 K29 ["connect"]
  DUPCLOSURE R17 K30 [PROTO_5]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
