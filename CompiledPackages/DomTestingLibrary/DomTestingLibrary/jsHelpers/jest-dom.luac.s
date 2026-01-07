PROTO_0:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["utils"]
  GETTABLEKS R4 R5 K1 ["matcherHint"]
  LOADK R5 K2 ["toBeInTheDocument"]
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R8 1
  CALL R4 4 1
  MOVE R1 R4
  LOADK R2 K3 ["

"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["isNot"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K5 ["element was found in the document"]
  JUMP [+1]
  LOADK R3 K6 ["element could not be found in the document"]
  CONCAT R0 R1 R3
  RETURN R0 1

PROTO_1:
  DUPTABLE R3 K2 [{"isNot", "promise"}]
  GETTABLEKS R4 R0 K0 ["isNot"]
  SETTABLEKS R4 R3 K0 ["isNot"]
  GETTABLEKS R4 R0 K1 ["promise"]
  SETTABLEKS R4 R3 K1 ["promise"]
  GETUPVAL R6 0
  NAMECALL R4 R1 K3 ["IsDescendantOf"]
  CALL R4 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  DUPTABLE R6 K6 [{"message", "pass"}]
  SETTABLEKS R5 R6 K4 ["message"]
  SETTABLEKS R4 R6 K5 ["pass"]
  RETURN R6 1

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["utils"]
  GETTABLEKS R4 R5 K1 ["matcherHint"]
  LOADK R5 K2 ["toBeEmptyDOMElement"]
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R8 1
  CALL R4 4 1
  MOVE R1 R4
  LOADK R2 K3 ["

"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["isNot"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K5 ["element is empty"]
  JUMP [+1]
  LOADK R3 K6 ["element is not empty"]
  CONCAT R0 R1 R3
  RETURN R0 1

PROTO_3:
  DUPTABLE R3 K2 [{"isNot", "promise"}]
  GETTABLEKS R4 R0 K0 ["isNot"]
  SETTABLEKS R4 R3 K0 ["isNot"]
  GETTABLEKS R4 R0 K1 ["promise"]
  SETTABLEKS R4 R3 K1 ["promise"]
  NAMECALL R6 R1 K3 ["GetChildren"]
  CALL R6 1 1
  LENGTH R5 R6
  JUMPIFEQKN R5 K4 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  DUPTABLE R6 K7 [{"message", "pass"}]
  SETTABLEKS R5 R6 K5 ["message"]
  SETTABLEKS R4 R6 K6 ["pass"]
  RETURN R6 1

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["utils"]
  GETTABLEKS R4 R5 K1 ["matcherHint"]
  LOADK R5 K2 ["toHaveTextContent"]
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R8 1
  CALL R4 4 1
  MOVE R1 R4
  LOADK R2 K3 ["

"]
  GETUPVAL R4 2
  JUMPIFNOT R4 [+2]
  LOADK R3 K4 ["Checking with empty string will always match, use .toBeEmptyDOMElement() instead"]
  JUMP [+10]
  LOADK R4 K5 ["Expected element "]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["isNot"]
  JUMPIFNOT R7 [+2]
  LOADK R5 K7 ["not to"]
  JUMP [+1]
  LOADK R5 K8 ["to"]
  LOADK R6 K9 [" have text content"]
  CONCAT R3 R4 R6
  CONCAT R0 R1 R3
  RETURN R0 1

PROTO_5:
  LOADK R5 K0 ["TextBox"]
  NAMECALL R3 R1 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K3 [error]
  LOADK R4 K4 ["toHaveTextContent is not meant to be used with TextBox"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K5 ["Text"]
  NOT R4 R2
  JUMPIF R4 [+7]
  LOADB R4 1
  JUMPIFEQKS R2 K6 [""] [+5]
  JUMPIFEQKS R3 K6 [""] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADNIL R5
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K8 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K9 ["string"] [+10]
  GETIMPORT R6 K11 [string.find]
  MOVE R7 R3
  MOVE R8 R2
  LOADN R9 1
  LOADB R10 1
  CALL R6 4 1
  MOVE R5 R6
  JUMP [+25]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K8 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K12 ["table"] [+15]
  GETTABLEKS R7 R2 K13 ["test"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K8 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K14 ["function"] [+7]
  MOVE R8 R3
  NAMECALL R6 R2 K13 ["test"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+4]
  GETIMPORT R6 K3 [error]
  LOADK R7 K15 ["Unhandled expected value type: string or regex is required"]
  CALL R6 1 0
  DUPTABLE R6 K18 [{"isNot", "promise"}]
  GETTABLEKS R7 R0 K16 ["isNot"]
  SETTABLEKS R7 R6 K16 ["isNot"]
  GETTABLEKS R7 R0 K17 ["promise"]
  SETTABLEKS R7 R6 K17 ["promise"]
  NOT R7 R4
  JUMPIFNOT R7 [+2]
  NOT R8 R5
  NOT R7 R8
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R4
  DUPTABLE R9 K21 [{"message", "pass"}]
  SETTABLEKS R8 R9 K19 ["message"]
  SETTABLEKS R7 R9 K20 ["pass"]
  RETURN R9 1

PROTO_6:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["utils"]
  GETTABLEKS R6 R7 K1 ["matcherHint"]
  LOADK R7 K2 ["toHaveValue"]
  LOADNIL R8
  LOADNIL R9
  GETUPVAL R10 1
  CALL R6 4 1
  MOVE R1 R6
  LOADK R2 K3 ["

"]
  LOADK R3 K4 ["Expected element "]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["isNot"]
  JUMPIFNOT R6 [+2]
  LOADK R4 K6 ["not to"]
  JUMP [+1]
  LOADK R4 K7 ["to"]
  LOADK R5 K8 [" have value"]
  CONCAT R0 R1 R5
  RETURN R0 1

PROTO_7:
  LOADK R5 K0 ["TextBox"]
  NAMECALL R3 R1 K1 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+4]
  GETIMPORT R3 K3 [error]
  LOADK R4 K4 ["toHaveValue is meant to be used only with TextBox"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K5 ["Text"]
  LOADNIL R4
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K7 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K8 ["string"] [+10]
  GETIMPORT R5 K10 [string.find]
  MOVE R6 R3
  MOVE R7 R2
  LOADN R8 1
  LOADB R9 1
  CALL R5 4 1
  MOVE R4 R5
  JUMP [+25]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K7 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K11 ["table"] [+15]
  GETTABLEKS R6 R2 K12 ["test"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K7 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K13 ["function"] [+7]
  MOVE R7 R3
  NAMECALL R5 R2 K12 ["test"]
  CALL R5 2 1
  MOVE R4 R5
  JUMP [+4]
  GETIMPORT R5 K3 [error]
  LOADK R6 K14 ["Unhandled expected value type: string or regex is required"]
  CALL R5 1 0
  DUPTABLE R5 K17 [{"isNot", "promise"}]
  GETTABLEKS R6 R0 K15 ["isNot"]
  SETTABLEKS R6 R5 K15 ["isNot"]
  GETTABLEKS R6 R0 K16 ["promise"]
  SETTABLEKS R6 R5 K16 ["promise"]
  NOT R7 R4
  NOT R6 R7
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R5
  DUPTABLE R8 K20 [{"message", "pass"}]
  SETTABLEKS R7 R8 K18 ["message"]
  SETTABLEKS R6 R8 K19 ["pass"]
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["DomTestingLibrary"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["document"]
  NEWTABLE R2 4 0
  DUPCLOSURE R3 K7 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K8 ["toBeInTheDocument"]
  DUPCLOSURE R4 K9 [PROTO_3]
  SETTABLEKS R4 R2 K10 ["toBeEmptyDOMElement"]
  DUPCLOSURE R5 K11 [PROTO_5]
  SETTABLEKS R5 R2 K12 ["toHaveTextContent"]
  DUPCLOSURE R6 K13 [PROTO_7]
  SETTABLEKS R6 R2 K14 ["toHaveValue"]
  RETURN R2 1
