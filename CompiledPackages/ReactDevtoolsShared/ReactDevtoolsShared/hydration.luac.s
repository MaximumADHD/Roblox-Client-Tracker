PROTO_0:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["!!! "]
  MOVE R4 R0
  LOADK R5 K4 [" was called, but is stubbed! "]
  CONCAT R2 R3 R5
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R5 K1 [print]
  LOADK R6 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R5 1 0
  GETIMPORT R5 K1 [print]
  LOADK R6 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R5 1 0
  GETIMPORT R5 K1 [print]
  LOADK R7 K3 ["!!! "]
  LOADK R8 K4 ["createDehydrated"]
  LOADK R9 K5 [" was called, but is stubbed! "]
  CONCAT R6 R7 R9
  CALL R5 1 0
  GETIMPORT R5 K7 [error]
  LOADK R6 K8 ["unimplemented createDehydrated"]
  CALL R5 1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKNIL R5 [+2]
  LOADN R5 0
  RETURN R0 1

PROTO_3:
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R6 K3 ["!!! "]
  LOADK R7 K4 ["fillInPath"]
  LOADK R8 K5 [" was called, but is stubbed! "]
  CONCAT R5 R6 R8
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Symbol"]
  DUPCLOSURE R3 K7 [PROTO_0]
  NEWTABLE R4 8 0
  DUPTABLE R5 K17 [{"inspectable", "inspected", "name", "preview_long", "preview_short", "readonly", "size", "type", "unserializable"}]
  MOVE R6 R2
  LOADK R7 K8 ["inspectable"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["inspectable"]
  MOVE R6 R2
  LOADK R7 K9 ["inspected"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K9 ["inspected"]
  MOVE R6 R2
  LOADK R7 K10 ["name"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["name"]
  MOVE R6 R2
  LOADK R7 K11 ["preview_long"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K11 ["preview_long"]
  MOVE R6 R2
  LOADK R7 K12 ["preview_short"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["preview_short"]
  MOVE R6 R2
  LOADK R7 K13 ["readonly"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["readonly"]
  MOVE R6 R2
  LOADK R7 K14 ["size"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["size"]
  MOVE R6 R2
  LOADK R7 K15 ["type"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["type"]
  MOVE R6 R2
  LOADK R7 K16 ["unserializable"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["unserializable"]
  SETTABLEKS R5 R4 K18 ["meta"]
  DUPCLOSURE R5 K19 [PROTO_1]
  SETTABLEKS R5 R4 K20 ["createDehydrated"]
  DUPCLOSURE R5 K21 [PROTO_2]
  SETTABLEKS R5 R4 K22 ["dehydrate"]
  DUPCLOSURE R5 K23 [PROTO_3]
  SETTABLEKS R5 R4 K24 ["fillInPath"]
  DUPCLOSURE R5 K25 [PROTO_4]
  SETTABLEKS R5 R4 K26 ["hydrate"]
  RETURN R4 1
