PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["previewId"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["previewId"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R4 R0 K0 ["previewAngle"]
  GETUPVAL R5 0
  GETTABLE R3 R5 R4
  GETTABLEKS R5 R1 K0 ["previewAngle"]
  GETUPVAL R6 0
  GETTABLE R4 R6 R5
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETIMPORT R2 K2 [table.clone]
  GETTABLEKS R4 R1 K3 ["uuid"]
  GETTABLE R3 R0 R4
  CALL R2 1 1
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  JUMPIFEQKS R6 K3 ["uuid"] [+4]
  JUMPIFEQKS R6 K4 ["previewId"] [+2]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-6]
  GETTABLEKS R3 R1 K4 ["previewId"]
  JUMPIFEQKNIL R3 [+60]
  GETTABLEKS R3 R2 K5 ["allPreviews"]
  JUMPIFNOTEQKNIL R3 [+17]
  NEWTABLE R3 0 1
  DUPTABLE R4 K7 [{"previewId", "status"}]
  GETTABLEKS R5 R1 K4 ["previewId"]
  SETTABLEKS R5 R4 K4 ["previewId"]
  GETTABLEKS R5 R1 K6 ["status"]
  SETTABLEKS R5 R4 K6 ["status"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K5 ["allPreviews"]
  JUMP [+47]
  GETIMPORT R3 K2 [table.clone]
  GETTABLEKS R4 R2 K5 ["allPreviews"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["find"]
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  SETTABLE R1 R3 R4
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R3 R1 [+5]
  MOVE R6 R3
  MOVE R7 R1
  GETIMPORT R5 K10 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K12 [table.sort]
  MOVE R6 R3
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE UPVAL U1
  CALL R5 2 0
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETIMPORT R5 K15 [print]
  LOADK R6 K16 ["all previews"]
  MOVE R7 R3
  CALL R5 2 0
  SETTABLEKS R3 R2 K5 ["allPreviews"]
  JUMP [+8]
  GETTABLEKS R3 R2 K5 ["allPreviews"]
  JUMPIFNOTEQKNIL R3 [+5]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["allPreviews"]
  GETTABLEKS R3 R1 K3 ["uuid"]
  SETTABLE R2 R0 R3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagDebugTextureGeneratorLogging"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  LOADN R5 1
  SETTABLEKS R5 R4 K12 ["PreviewFront"]
  LOADN R5 2
  SETTABLEKS R5 R4 K13 ["Preview90"]
  LOADN R5 3
  SETTABLEKS R5 R4 K14 ["Preview180"]
  LOADN R5 4
  SETTABLEKS R5 R4 K15 ["Preview270"]
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R6 K17 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R6 1
