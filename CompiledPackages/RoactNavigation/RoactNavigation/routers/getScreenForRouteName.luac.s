PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["routeConfigs must be a table"]
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
  GETTABLE R2 R0 R1
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADK R5 K6 ["There is no route defined for key '%s'."]
  MOVE R6 R1
  CALL R3 3 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["table"] [+35]
  GETTABLEKS R4 R2 K7 ["screen"]
  JUMPIFEQKNIL R4 [+12]
  GETUPVAL R4 0
  GETUPVAL R5 1
  GETTABLEKS R6 R2 K7 ["screen"]
  CALL R5 1 1
  LOADK R6 K8 ["screen param for key '%s' must be a valid Roact component."]
  MOVE R7 R1
  CALL R4 3 0
  GETTABLEKS R4 R2 K7 ["screen"]
  RETURN R4 1
  GETTABLEKS R5 R2 K9 ["getScreen"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K10 ["function"] [+12]
  GETTABLEKS R4 R2 K9 ["getScreen"]
  CALL R4 0 1
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R4
  CALL R6 1 1
  LOADK R7 K11 ["The getScreen function defined for route '%s' did not return a valid screen or navigator"]
  MOVE R8 R1
  CALL R5 3 0
  RETURN R4 1
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R2
  CALL R5 1 1
  LOADK R6 K12 ["Value for key '%s' must be a route config table or a valid Roact component."]
  MOVE R7 R1
  CALL R4 3 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["utils"]
  GETTABLEKS R1 R2 K6 ["validate"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K5 ["utils"]
  GETTABLEKS R2 R3 K7 ["isValidScreenComponent"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
