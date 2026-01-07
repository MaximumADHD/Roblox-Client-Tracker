PROTO_0:
  JUMPIFNOTEQKNIL R0 [+5]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R2 1
  RETURN R2 1
  JUMPIFEQKNIL R0 [+3]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 0
  GETTABLEKS R3 R0 K0 ["Text"]
  GETTABLEKS R4 R1 K0 ["Text"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["equals"]
  GETTABLEKS R3 R0 K2 ["Uri"]
  GETTABLEKS R4 R1 K2 ["Uri"]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createSignal"]
  LOADK R1 K1 ["Default"]
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createSignal"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createSignal"]
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createSignal"]
  LOADNIL R7
  GETUPVAL R8 1
  CALL R6 2 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createSignal"]
  LOADNIL R9
  GETUPVAL R10 1
  CALL R8 2 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createSignal"]
  LOADNIL R11
  GETUPVAL R12 1
  CALL R10 2 2
  GETIMPORT R12 K4 [table.freeze]
  DUPTABLE R13 K17 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton"}]
  SETTABLEKS R0 R13 K5 ["getType"]
  SETTABLEKS R1 R13 K6 ["setType"]
  SETTABLEKS R2 R13 K7 ["getTitle"]
  SETTABLEKS R3 R13 K8 ["setTitle"]
  SETTABLEKS R4 R13 K9 ["getDescription"]
  SETTABLEKS R5 R13 K10 ["setDescription"]
  SETTABLEKS R6 R13 K11 ["getPrimaryButton"]
  SETTABLEKS R7 R13 K12 ["setPrimaryButton"]
  SETTABLEKS R8 R13 K13 ["getSecondaryButton"]
  SETTABLEKS R9 R13 K14 ["setSecondaryButton"]
  SETTABLEKS R10 R13 K15 ["getTertiaryButton"]
  SETTABLEKS R11 R13 K16 ["setTertiaryButton"]
  CALL R12 1 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Signals"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["StudioFoundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["StudioUri"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R6 1
