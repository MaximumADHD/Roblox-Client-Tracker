PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  LOADK R2 K0 ["ConfirmItems"]
  CALL R1 1 0
  GETUPVAL R1 2
  NEWTABLE R2 0 0
  CALL R1 1 0
  GETUPVAL R1 3
  NEWTABLE R2 0 0
  CALL R1 1 0
  GETUPVAL R1 4
  NEWTABLE R2 0 0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K0 ["ConfirmItems"]
  CALL R0 1 0
  GETUPVAL R0 2
  NEWTABLE R1 0 0
  CALL R0 1 0
  GETUPVAL R0 3
  NEWTABLE R1 0 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
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
  GETTABLEKS R7 R8 K4 ["useState"]
  LOADNIL R8
  CALL R7 1 2
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["useState"]
  LOADNIL R10
  CALL R9 1 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["useState"]
  NEWTABLE R12 0 0
  CALL R11 1 2
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K4 ["useState"]
  NEWTABLE R14 0 0
  CALL R13 1 2
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["useCallback"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R8
  NEWTABLE R17 0 0
  CALL R15 2 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["useCallback"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R14
  NEWTABLE R18 0 0
  CALL R16 2 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["useCallback"]
  NEWCLOSURE R18 P2
  CAPTURE VAL R8
  NEWTABLE R19 0 0
  CALL R17 2 1
  DUPTABLE R18 K22 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "skinColor", "itemsList", "dialogItems", "errorsList", "openDialog", "closeDialog", "setDialogStage", "setSkinColor", "setDialogItems", "setItemsList", "toggleItem"}]
  SETTABLEKS R2 R18 K7 ["canCreateLook"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  SETTABLEKS R19 R18 K8 ["isDialogOpen"]
  SETTABLEKS R3 R18 K9 ["dialogLookType"]
  SETTABLEKS R5 R18 K10 ["dialogStage"]
  SETTABLEKS R9 R18 K11 ["skinColor"]
  SETTABLEKS R13 R18 K12 ["itemsList"]
  SETTABLEKS R11 R18 K13 ["dialogItems"]
  SETTABLEKS R7 R18 K14 ["errorsList"]
  SETTABLEKS R15 R18 K15 ["openDialog"]
  SETTABLEKS R16 R18 K16 ["closeDialog"]
  SETTABLEKS R6 R18 K17 ["setDialogStage"]
  SETTABLEKS R10 R18 K18 ["setSkinColor"]
  SETTABLEKS R12 R18 K19 ["setDialogItems"]
  SETTABLEKS R14 R18 K20 ["setItemsList"]
  SETTABLEKS R17 R18 K21 ["toggleItem"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K23 ["createElement"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K24 ["Provider"]
  DUPTABLE R21 K26 [{"value"}]
  SETTABLEKS R18 R21 K25 ["value"]
  GETTABLEKS R22 R0 K1 ["children"]
  CALL R19 3 -1
  RETURN R19 -1

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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["LookComposerDialog"]
  GETTABLEKS R7 R8 K14 ["Types"]
  CALL R6 1 1
  DUPTABLE R7 K33 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "skinColor", "errorsList", "itemsList", "bodyProportions", "dialogItems", "openDialog", "closeDialog", "setDialogStage", "setSkinColor", "setDialogItems", "setItemsList", "toggleItem"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K17 ["canCreateLook"]
  LOADB R8 0
  SETTABLEKS R8 R7 K18 ["isDialogOpen"]
  LOADNIL R8
  SETTABLEKS R8 R7 K19 ["dialogLookType"]
  LOADK R8 K34 ["ConfirmItems"]
  SETTABLEKS R8 R7 K20 ["dialogStage"]
  LOADNIL R8
  SETTABLEKS R8 R7 K21 ["skinColor"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K22 ["errorsList"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K23 ["itemsList"]
  LOADNIL R8
  SETTABLEKS R8 R7 K24 ["bodyProportions"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K25 ["dialogItems"]
  MOVE R8 R2
  LOADK R9 K26 ["openDialog"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K26 ["openDialog"]
  MOVE R8 R2
  LOADK R9 K27 ["closeDialog"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K27 ["closeDialog"]
  MOVE R8 R2
  LOADK R9 K28 ["setDialogStage"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K28 ["setDialogStage"]
  MOVE R8 R2
  LOADK R9 K29 ["setSkinColor"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K29 ["setSkinColor"]
  MOVE R8 R2
  LOADK R9 K30 ["setDialogItems"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K30 ["setDialogItems"]
  MOVE R8 R2
  LOADK R9 K31 ["setItemsList"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K31 ["setItemsList"]
  MOVE R8 R2
  LOADK R9 K32 ["toggleItem"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K32 ["toggleItem"]
  GETTABLEKS R8 R1 K35 ["createContext"]
  MOVE R9 R7
  CALL R8 1 1
  DUPCLOSURE R9 K36 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R3
  DUPTABLE R10 K39 [{"Context", "Provider"}]
  SETTABLEKS R8 R10 K37 ["Context"]
  SETTABLEKS R9 R10 K38 ["Provider"]
  RETURN R10 1
