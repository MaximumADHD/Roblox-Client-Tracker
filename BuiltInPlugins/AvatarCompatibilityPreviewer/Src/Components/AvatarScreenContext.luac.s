PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onIsColorableAcquired"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["selectedAvatar"]
  CALL R0 1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["onIsColorableAcquired"]
  JUMPIFEQKNIL R1 [+6]
  GETIMPORT R1 K4 [task.defer]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useState"]
  NEWTABLE R3 0 0
  CALL R2 1 2
  GETUPVAL R4 2
  CALL R4 0 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R7 0 2
  GETTABLEKS R8 R0 K3 ["selectedAvatar"]
  GETTABLEKS R9 R1 K4 ["onIsColorableAcquired"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  DUPTABLE R6 K14 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable"}]
  GETTABLEKS R7 R0 K5 ["openPalette"]
  SETTABLEKS R7 R6 K5 ["openPalette"]
  SETTABLEKS R2 R6 K6 ["focusedAttachments"]
  SETTABLEKS R3 R6 K7 ["setFocusedAttachments"]
  GETTABLEKS R8 R4 K15 ["amount"]
  LOADN R9 0
  JUMPIFLT R9 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["dummyPreviewLocked"]
  GETTABLEKS R7 R4 K16 ["increment"]
  SETTABLEKS R7 R6 K9 ["incrementDummyPreviewLock"]
  GETTABLEKS R7 R4 K17 ["decrement"]
  SETTABLEKS R7 R6 K10 ["decrementDummyPreviewLock"]
  GETTABLEKS R7 R0 K11 ["resetCamera"]
  SETTABLEKS R7 R6 K11 ["resetCamera"]
  GETTABLEKS R7 R0 K12 ["stage"]
  SETTABLEKS R7 R6 K12 ["stage"]
  GETTABLEKS R8 R5 K18 ["state"]
  JUMPIFNOTEQKS R8 K19 ["ok"] [+4]
  GETTABLEKS R7 R5 K20 ["value"]
  JUMP [+1]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["isColorable"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K21 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K22 ["Provider"]
  DUPTABLE R9 K23 [{"value"}]
  SETTABLEKS R6 R9 K20 ["value"]
  GETTABLEKS R10 R0 K24 ["children"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["Screens"]
  GETTABLEKS R5 R6 K11 ["AvatarScreen"]
  GETTABLEKS R4 R5 K12 ["Stages"]
  GETTABLEKS R3 R4 K13 ["StageType"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K14 ["TestingInterfaceContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K15 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["createUnimplemented"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K16 ["Util"]
  GETTABLEKS R7 R8 K18 ["skinToneAvailableAsync"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K19 ["Hooks"]
  GETTABLEKS R8 R9 K20 ["useAsync"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K19 ["Hooks"]
  GETTABLEKS R9 R10 K21 ["useIncrementedState"]
  CALL R8 1 1
  DUPTABLE R9 K31 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable"}]
  MOVE R10 R5
  LOADK R11 K22 ["openPalette"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["openPalette"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K23 ["focusedAttachments"]
  MOVE R10 R5
  LOADK R11 K24 ["setFocusedAttachments"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["setFocusedAttachments"]
  LOADB R10 0
  SETTABLEKS R10 R9 K25 ["dummyPreviewLocked"]
  MOVE R10 R5
  LOADK R11 K26 ["incrementDummyPreviewLock"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K26 ["incrementDummyPreviewLock"]
  MOVE R10 R5
  LOADK R11 K27 ["decrementDummyPreviewLock"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K27 ["decrementDummyPreviewLock"]
  DUPCLOSURE R10 K32 [PROTO_0]
  SETTABLEKS R10 R9 K28 ["resetCamera"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K29 ["stage"]
  LOADB R10 1
  SETTABLEKS R10 R9 K30 ["isColorable"]
  GETTABLEKS R10 R1 K33 ["createContext"]
  MOVE R11 R9
  CALL R10 1 1
  DUPCLOSURE R11 K34 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  DUPTABLE R12 K37 [{"Context", "Provider"}]
  SETTABLEKS R10 R12 K35 ["Context"]
  SETTABLEKS R11 R12 K36 ["Provider"]
  RETURN R12 1
