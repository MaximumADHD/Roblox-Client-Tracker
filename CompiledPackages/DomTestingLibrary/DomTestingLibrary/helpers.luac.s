PROTO_0:
  GETIMPORT R1 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["JestGlobals"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["jest"]
  JUMPIFEQKNIL R0 [+7]
  GETIMPORT R1 K5 [pcall]
  GETTABLEKS R2 R0 K6 ["getTimerCount"]
  CALL R1 1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K1 ["defaultView"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["defaultView"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K2 ["ownerDocument"]
  CALL R1 1 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R3 R0 K2 ["ownerDocument"]
  GETTABLEKS R2 R3 K1 ["defaultView"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K2 ["ownerDocument"]
  GETTABLEKS R1 R2 K1 ["defaultView"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K3 ["window"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K3 ["window"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K2 ["ownerDocument"]
  CALL R1 1 1
  JUMPIFNOT R1 [+22]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R4 R0 K2 ["ownerDocument"]
  GETTABLEKS R3 R4 K1 ["defaultView"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K5 [error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["new"]
  LOADK R3 K7 ["It looks like the window object is not available for the provided node."]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K8 ["andThen"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K10 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K11 ["function"] [+10]
  GETIMPORT R1 K5 [error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["new"]
  LOADK R3 K12 ["It looks like you passed a Promise object instead of a DOM node. Did you do something like `fireEvent.click(screen.findBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`, or await the findBy query `fireEvent.click(await screen.findBy...`?"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K13 ["isArray"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K5 [error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["new"]
  LOADK R3 K14 ["It looks like you passed an Array instead of a DOM node. Did you do something like `fireEvent.click(screen.getAllBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`?"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K15 ["debug"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K10 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K11 ["function"] [+18]
  GETTABLEKS R2 R0 K16 ["logTestingPlaygroundURL"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K10 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K11 ["function"] [+10]
  GETIMPORT R1 K5 [error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["new"]
  LOADK R3 K17 ["It looks like you passed a `screen` object. Did you do something like `fireEvent.click(screen, ...` when you meant to use a query, e.g. `fireEvent.click(screen.getBy..., `?"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETIMPORT R1 K5 [error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["new"]
  LOADK R3 K18 ["The given node is not an Element, the node type is: %s."]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K10 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K19 ["format"]
  CALL R3 2 -1
  CALL R2 -1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  RETURN R1 1

PROTO_4:
  DUPCLOSURE R1 K0 [PROTO_3]
  JUMPIFNOT R0 [+8]
  GETTABLEKS R3 R0 K1 ["GetChildren"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K4 ["function"] [+17]
  GETIMPORT R2 K6 [error]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["new"]
  LOADK R4 K8 ["Expected container to be an Element, a Document or a DocumentFragment but got %s."]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K3 [typeof]
  CALL R6 1 1
  NAMECALL R4 R4 K9 ["format"]
  CALL R4 2 -1
  CALL R3 -1 -1
  CALL R2 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Array"]
  GETTABLEKS R3 R1 K7 ["Boolean"]
  GETTABLEKS R4 R1 K8 ["Error"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K9 ["jsHelpers"]
  GETTABLEKS R6 R7 K10 ["typeError"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K9 ["jsHelpers"]
  GETTABLEKS R7 R8 K11 ["document"]
  CALL R6 1 1
  NEWTABLE R7 8 0
  DUPCLOSURE R8 K12 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R9 K13 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R10 K14 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  DUPCLOSURE R11 K15 [PROTO_4]
  CAPTURE VAL R5
  SETTABLEKS R10 R7 K16 ["getWindowFromNode"]
  SETTABLEKS R9 R7 K17 ["getDocument"]
  SETTABLEKS R11 R7 K18 ["checkContainerType"]
  SETTABLEKS R8 R7 K19 ["jestFakeTimersAreEnabled"]
  LOADN R12 3
  SETTABLEKS R12 R7 K20 ["TEXT_NODE"]
  RETURN R7 1
