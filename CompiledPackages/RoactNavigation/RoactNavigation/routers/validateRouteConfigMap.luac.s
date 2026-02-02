PROTO_0:
  GETUPVAL R1 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADK R3 K3 ["routeConfigs must be a table"]
  CALL R1 2 0
  LOADB R1 0
  GETIMPORT R2 K5 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R7 1
  FASTCALL1 TYPE R6 [+3]
  MOVE R9 R6
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["table"] [+2]
  LOADB R7 0
  JUMPIFNOT R7 [+2]
  MOVE R8 R6
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  JUMPIFNOT R7 [+3]
  GETTABLEKS R9 R6 K6 ["screen"]
  JUMPIF R9 [+1]
  MOVE R9 R6
  GETUPVAL R10 0
  GETUPVAL R11 1
  MOVE R12 R9
  CALL R11 1 1
  JUMPIF R11 [+14]
  LOADB R11 0
  GETTABLEKS R13 R8 K7 ["getScreen"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K1 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K8 ["function"] [+6]
  GETUPVAL R11 1
  GETTABLEKS R12 R8 K7 ["getScreen"]
  CALL R12 0 -1
  CALL R11 -1 1
  LOADK R12 K9 ["The component for route '%s' must be a Roact Function/Stateful component or table with 'getScreen'.getScreen function must return Roact Function/Stateful component."]
  MOVE R13 R5
  CALL R10 3 0
  GETUPVAL R10 0
  LOADB R11 1
  GETTABLEKS R12 R8 K6 ["screen"]
  JUMPIFEQKNIL R12 [+7]
  GETTABLEKS R12 R8 K7 ["getScreen"]
  JUMPIFEQKNIL R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADK R12 K10 ["Route '%s' should provide 'screen' or 'getScreen', but not both."]
  MOVE R13 R5
  CALL R10 3 0
  LOADB R1 1
  FORGLOOP R2 2 [-58]
  GETUPVAL R2 0
  MOVE R3 R1
  LOADK R4 K11 ["Please specify at least one route when configuring a navigator."]
  CALL R2 2 0
  RETURN R0 1

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
