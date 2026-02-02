PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["screenOptions must be a table"]
  CALL R2 2 0
  GETUPVAL R2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K4 ["route must be a table"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R5 R1 K5 ["routeName"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K7 ["route.routeName must be a string"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R5 R0 K8 ["title"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K9 ["function"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K10 ["title cannot be defined as a function in navigation options for screen '%s'"]
  GETTABLEKS R5 R1 K5 ["routeName"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["utils"]
  GETTABLEKS R1 R2 K6 ["validate"]
  CALL R0 1 1
  DUPCLOSURE R1 K7 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
