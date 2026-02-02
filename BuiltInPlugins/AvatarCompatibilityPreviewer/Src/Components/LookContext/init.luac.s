PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  LOADK R2 K0 ["ConfirmItems"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K0 ["ConfirmItems"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETUPVAL R2 3
  JUMPIFEQ R1 R2 [+4]
  GETTABLEKS R2 R0 K1 ["children"]
  RETURN R2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["useCanCreateLookAsync"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["canCreateLookAsync"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["useState"]
  LOADK R6 K5 ["ConfirmItems"]
  CALL R5 1 2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useCallback"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R4
  CAPTURE VAL R6
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["useCallback"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R4
  CAPTURE VAL R6
  NEWTABLE R10 0 0
  CALL R8 2 1
  DUPTABLE R9 K14 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "openDialog", "closeDialog", "setDialogStage"}]
  SETTABLEKS R2 R9 K7 ["canCreateLook"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["isDialogOpen"]
  SETTABLEKS R3 R9 K9 ["dialogLookType"]
  SETTABLEKS R5 R9 K10 ["dialogStage"]
  SETTABLEKS R7 R9 K11 ["openDialog"]
  SETTABLEKS R8 R9 K12 ["closeDialog"]
  SETTABLEKS R6 R9 K13 ["setDialogStage"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K16 ["Provider"]
  DUPTABLE R12 K18 [{"value"}]
  SETTABLEKS R9 R12 K17 ["value"]
  GETTABLEKS R13 R0 K1 ["children"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["createUnimplemented"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K11 ["useCanCreateLookAsync"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R4 1 1
  DUPTABLE R5 K21 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "openDialog", "closeDialog", "setDialogStage"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["canCreateLook"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["isDialogOpen"]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["dialogLookType"]
  LOADK R6 K22 ["ConfirmItems"]
  SETTABLEKS R6 R5 K17 ["dialogStage"]
  MOVE R6 R2
  LOADK R7 K18 ["openDialog"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["openDialog"]
  MOVE R6 R2
  LOADK R7 K19 ["closeDialog"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["closeDialog"]
  MOVE R6 R2
  LOADK R7 K20 ["setDialogStage"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["setDialogStage"]
  GETTABLEKS R6 R1 K23 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K24 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPTABLE R8 K27 [{"Context", "Provider"}]
  SETTABLEKS R6 R8 K25 ["Context"]
  SETTABLEKS R7 R8 K26 ["Provider"]
  RETURN R8 1
