PROTO_0:
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADB R7 0
  LOADK R10 K1 ["BasePart"]
  NAMECALL R8 R6 K2 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+17]
  JUMPIFEQKNIL R1 [+11]
  GETIMPORT R8 K5 [table.find]
  MOVE R9 R1
  GETTABLEKS R10 R6 K6 ["Name"]
  CALL R8 2 1
  JUMPIFEQKNIL R8 [+3]
  LOADB R7 1
  JUMP [+18]
  NAMECALL R8 R6 K7 ["Destroy"]
  CALL R8 1 0
  JUMP [+36]
  JUMP [+13]
  GETUPVAL R8 0
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  MOVE R15 R12
  NAMECALL R13 R6 K2 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+2]
  LOADB R7 1
  JUMP [+2]
  FORGLOOP R8 2 [-8]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+10]
  LOADK R10 K8 ["LocalScript"]
  NAMECALL R8 R6 K2 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R6 K6 ["Name"]
  JUMPIFNOTEQKS R8 K9 ["Animate"] [+2]
  LOADB R7 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R8 2
  MOVE R9 R6
  MOVE R10 R1
  CALL R8 2 0
  JUMP [+3]
  NAMECALL R8 R6 K7 ["Destroy"]
  CALL R8 1 0
  FORGLOOP R2 2 [-59]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R1 1 1
  NEWTABLE R2 0 8
  LOADK R3 K9 ["Attachment"]
  LOADK R4 K10 ["BasePart"]
  LOADK R5 K11 ["BaseWrap"]
  LOADK R6 K12 ["DataModelMesh"]
  LOADK R7 K13 ["FaceControls"]
  LOADK R8 K14 ["Humanoid"]
  LOADK R9 K15 ["SurfaceAppearance"]
  LOADK R10 K16 ["ValueBase"]
  SETLIST R2 R3 8 [1]
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  FASTCALL2K TABLE_INSERT R2 K17 [+5]
  MOVE R4 R2
  LOADK R5 K17 ["Animation"]
  GETIMPORT R3 K20 [table.insert]
  CALL R3 2 0
  DUPCLOSURE R3 K21 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R3 1
