PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_status"]
  JUMPIFNOTEQKN R1 K1 [0] [+24]
  GETTABLEKS R1 R0 K2 ["default"]
  GETIMPORT R3 K4 [_G]
  GETTABLEKS R2 R3 K5 ["__DEV__"]
  JUMPIFNOT R2 [+10]
  JUMPIFNOTEQKNIL R1 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["error"]
  LOADK R3 K7 ["lazy: Expected the result of a dynamic import() call. Instead received: `%s`

Your code should look like: 
  local MyComponent = lazy(function() return reqquire(script.Parent.MyComponent) end)"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  LOADN R3 1
  SETTABLEKS R3 R2 K0 ["_status"]
  SETTABLEKS R1 R2 K8 ["_result"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_status"]
  JUMPIFNOTEQKN R1 K1 [0] [+7]
  GETUPVAL R1 0
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["_status"]
  SETTABLEKS R0 R1 K2 ["_result"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_status"]
  JUMPIFNOTEQKN R1 K1 [-1] [+19]
  GETTABLEKS R1 R0 K2 ["_result"]
  MOVE R2 R1
  CALL R2 0 1
  LOADN R3 0
  SETTABLEKS R3 R0 K0 ["_status"]
  SETTABLEKS R2 R0 K2 ["_result"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R3 R2 K3 ["andThen"]
  CALL R3 3 0
  GETTABLEKS R1 R0 K0 ["_status"]
  JUMPIFNOTEQKN R1 K4 [1] [+4]
  GETTABLEKS R1 R0 K2 ["_result"]
  RETURN R1 1
  GETIMPORT R1 K6 [error]
  GETTABLEKS R2 R0 K2 ["_result"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKS R1 K0 ["defaultProps"] [+3]
  GETUPVAL R2 0
  RETURN R2 1
  JUMPIFNOTEQKS R1 K1 ["propTypes"] [+3]
  GETUPVAL R2 1
  RETURN R2 1
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  JUMPIFNOTEQKS R1 K0 ["defaultProps"] [+20]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["error"]
  LOADK R4 K2 ["React.lazy(...): It is not supported to assign `defaultProps` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
  CALL R3 1 0
  SETUPVAL R2 1
  DUPTABLE R5 K5 [{"__index", "__newindex"}]
  DUPCLOSURE R6 K6 [PROTO_4]
  SETTABLEKS R6 R5 K3 ["__index"]
  DUPCLOSURE R6 K7 [PROTO_5]
  SETTABLEKS R6 R5 K4 ["__newindex"]
  FASTCALL2 SETMETATABLE R0 R5 [+4]
  MOVE R4 R0
  GETIMPORT R3 K9 [setmetatable]
  CALL R3 2 0
  JUMPIFNOTEQKS R1 K10 ["propTypes"] [+20]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["error"]
  LOADK R4 K11 ["React.lazy(...): It is not supported to assign `propTypes` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
  CALL R3 1 0
  SETUPVAL R2 2
  DUPTABLE R5 K5 [{"__index", "__newindex"}]
  DUPCLOSURE R6 K12 [PROTO_6]
  SETTABLEKS R6 R5 K3 ["__index"]
  DUPCLOSURE R6 K13 [PROTO_7]
  SETTABLEKS R6 R5 K4 ["__newindex"]
  FASTCALL2 SETMETATABLE R0 R5 [+4]
  MOVE R4 R0
  GETIMPORT R3 K9 [setmetatable]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K2 [{"_status", "_result"}]
  LOADN R2 255
  SETTABLEKS R2 R1 K0 ["_status"]
  SETTABLEKS R0 R1 K1 ["_result"]
  NEWTABLE R2 4 0
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K3 ["$$typeof"]
  SETTABLEKS R1 R2 K4 ["_payload"]
  GETGLOBAL R3 K5 ["lazyInitializer"]
  SETTABLEKS R3 R2 K6 ["_init"]
  GETIMPORT R4 K8 [_G]
  GETTABLEKS R3 R4 K9 ["__DEV__"]
  JUMPIFNOT R3 [+21]
  LOADNIL R3
  LOADNIL R4
  DUPTABLE R7 K12 [{"__index", "__newindex"}]
  NEWCLOSURE R8 P0
  CAPTURE REF R3
  CAPTURE REF R4
  SETTABLEKS R8 R7 K10 ["__index"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U1
  CAPTURE REF R3
  CAPTURE REF R4
  SETTABLEKS R8 R7 K11 ["__newindex"]
  FASTCALL2 SETMETATABLE R2 R7 [+4]
  MOVE R6 R2
  GETIMPORT R5 K14 [setmetatable]
  CALL R5 2 0
  CLOSEUPVALS R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["shared"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["console"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["luau-polyfill"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R4 R2 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["inspect"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K5 ["shared"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K4 ["Parent"]
  LOADK R9 K5 ["shared"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K11 ["ReactSymbols"]
  GETTABLEKS R6 R5 K12 ["REACT_LAZY_TYPE"]
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETGLOBAL R7 K14 ["lazyInitializer"]
  NEWTABLE R7 1 0
  DUPCLOSURE R8 K15 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K16 ["lazy"]
  RETURN R7 1
