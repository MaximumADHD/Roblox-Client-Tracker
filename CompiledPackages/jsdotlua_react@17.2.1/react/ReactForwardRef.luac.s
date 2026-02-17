PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKN R0 K0 [1] [+3]
  LOADK R0 K1 ["Did you forget to use the ref parameter?"]
  RETURN R0 1
  LOADK R0 K2 ["Any additional parameter will be undefined."]
  RETURN R0 1

PROTO_1:
  JUMPIFNOTEQKS R1 K0 ["displayName"] [+3]
  GETUPVAL R2 0
  RETURN R2 1
  FASTCALL2 RAWGET R0 R1 [+5]
  MOVE R3 R0
  MOVE R4 R1
  GETIMPORT R2 K2 [rawget]
  CALL R2 2 1
  RETURN R2 1

PROTO_2:
  JUMPIFNOTEQKS R1 K0 ["displayName"] [+3]
  SETUPVAL R2 0
  RETURN R0 0
  FASTCALL3 RAWSET R0 R1 R2
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R3 K2 [rawset]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K2 ["__DEV__"]
  JUMPIFNOT R1 [+55]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K4 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K5 ["table"] [+12]
  GETTABLEKS R1 R0 K6 ["$$typeof"]
  GETUPVAL R2 0
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["error"]
  LOADK R2 K8 ["forwardRef requires a render function but received a `memo` component. Instead of forwardRef(memo(...)), use memo(forwardRef(...))."]
  CALL R1 1 0
  JUMP [+37]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K4 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["function"] [+12]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["error"]
  LOADK R2 K10 ["forwardRef requires a render function but was given %s."]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K4 [typeof]
  CALL R3 1 1
  CALL R1 2 0
  JUMP [+19]
  GETIMPORT R1 K13 [debug.info]
  MOVE R2 R0
  LOADK R3 K14 ["a"]
  CALL R1 2 2
  JUMPIFEQKN R1 K15 [0] [+13]
  JUMPIFEQKN R1 K16 [2] [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["error"]
  LOADK R4 K17 ["forwardRef render functions accept exactly two parameters: props and ref. %s"]
  JUMPIFNOTEQKN R1 K18 [1] [+3]
  LOADK R5 K19 ["Did you forget to use the ref parameter?"]
  JUMP [+1]
  LOADK R5 K20 ["Any additional parameter will be undefined."]
  CALL R3 2 0
  NEWTABLE R1 2 0
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K6 ["$$typeof"]
  SETTABLEKS R0 R1 K21 ["render"]
  GETIMPORT R3 K1 [_G]
  GETTABLEKS R2 R3 K2 ["__DEV__"]
  JUMPIFNOT R2 [+17]
  LOADNIL R2
  DUPTABLE R5 K24 [{"__index", "__newindex"}]
  NEWCLOSURE R6 P0
  CAPTURE REF R2
  SETTABLEKS R6 R5 K22 ["__index"]
  NEWCLOSURE R6 P1
  CAPTURE REF R2
  SETTABLEKS R6 R5 K23 ["__newindex"]
  FASTCALL2 SETMETATABLE R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K26 [setmetatable]
  CALL R3 2 0
  CLOSEUPVALS R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["console"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K5 ["shared"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K8 ["ReactSymbols"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K5 ["shared"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R3 R1 K9 ["REACT_FORWARD_REF_TYPE"]
  GETTABLEKS R4 R1 K10 ["REACT_MEMO_TYPE"]
  NEWTABLE R5 1 0
  DUPCLOSURE R6 K11 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K12 ["forwardRef"]
  RETURN R5 1
