PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["router must be a table"]
  CALL R2 2 0
  GETUPVAL R2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K4 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K5 ["routeName must be a string"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["childRouters"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R0 K6 ["childRouters"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R0 K6 ["childRouters"]
  GETTABLE R2 R3 R1
  RETURN R2 1
  GETUPVAL R2 0
  GETTABLEKS R5 R0 K7 ["getComponentForRouteName"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["function"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K9 ["router.getComponentForRouteName must be a function if no child routers are specified"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K7 ["getComponentForRouteName"]
  MOVE R3 R1
  CALL R2 1 1
  FASTCALL1 TYPE R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["table"] [+4]
  GETTABLEKS R3 R2 K10 ["router"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

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
