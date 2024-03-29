PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K3 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["expected listRef to contain list of connections"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  JUMPIFNOT R0 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K8 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  FASTCALL1 TYPE R1 [+2]
  GETIMPORT R0 K2 [type]
  CALL R0 1 1
  JUMPIFEQKS R0 K3 ["table"] [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  FASTCALL1 TYPE R3 [+2]
  GETIMPORT R2 K2 [type]
  CALL R2 1 1
  JUMPIFEQKS R2 K3 ["table"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K4 [+4]
  LOADK R2 K4 ["expecting table of connections"]
  GETIMPORT R0 K6 [assert]
  CALL R0 2 0
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K0 ["current"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  JUMPIFNOT R4 [+3]
  NAMECALL R5 R4 K7 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-5]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  CALL R0 1 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R2 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 0
  CALL R2 2 0
  DUPTABLE R2 K1 [{"add"}]
  SETTABLEKS R1 R2 K0 ["add"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["useEffect"]
  GETTABLEKS R4 R2 K9 ["useRef"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
