PROTO_0:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  GETUPVAL R1 0
  GETTABLEN R2 R0 1
  CALL R1 1 0
  GETUPVAL R1 1
  LOADK R2 K0 ["PlaceholderText"]
  GETVARARGS R3 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_1:
  LOADK R2 K0 ["Found multiple elements with the placeholder text of: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  LOADK R2 K0 ["Unable to find an element with the placeholder text of: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  GETIMPORT R4 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K6 ["query-helpers"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["wrapAllByQueryWithSuggestion"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K8 ["helpers"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K9 ["checkContainerType"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["types"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["all-utils"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K12 ["queryAllByAttribute"]
  GETTABLEKS R8 R6 K13 ["buildQueries"]
  LOADNIL R9
  DUPCLOSURE R9 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R7
  LOADNIL R10
  DUPCLOSURE R10 K15 [PROTO_1]
  LOADNIL R11
  DUPCLOSURE R11 K16 [PROTO_2]
  MOVE R12 R3
  MOVE R13 R9
  GETIMPORT R14 K19 [debug.info]
  MOVE R15 R9
  LOADK R16 K20 ["n"]
  CALL R14 2 1
  LOADK R15 K21 ["queryAll"]
  CALL R12 3 1
  MOVE R13 R8
  MOVE R14 R9
  MOVE R15 R10
  MOVE R16 R11
  CALL R13 3 5
  SETTABLEKS R13 R2 K22 ["queryByPlaceholderText"]
  SETTABLEKS R12 R2 K23 ["queryAllByPlaceholderText"]
  SETTABLEKS R15 R2 K24 ["getByPlaceholderText"]
  SETTABLEKS R14 R2 K25 ["getAllByPlaceholderText"]
  SETTABLEKS R16 R2 K26 ["findAllByPlaceholderText"]
  SETTABLEKS R17 R2 K27 ["findByPlaceholderText"]
  RETURN R2 1
