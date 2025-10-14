PROTO_0:
  GETIMPORT R1 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Error"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K3 ["new"]
  LOADK R3 K4 ["NotImplemented"]
  LOADK R4 K5 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R2 2 1
  MOVE R5 R0
  NAMECALL R3 R2 K6 ["throw"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R1 -1
  CALL R0 -1 1
  DUPTABLE R3 K10 [{"__index", "__tostring", "__eq", "__lt", "__le", "__add", "__sub", "__mul", "__div", "__mod"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K0 ["__index"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["toString"]
  SETTABLEKS R4 R3 K1 ["__tostring"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["equals"]
  SETTABLEKS R4 R3 K2 ["__eq"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["__lt"]
  SETTABLEKS R4 R3 K3 ["__lt"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["__le"]
  SETTABLEKS R4 R3 K4 ["__le"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["__add"]
  SETTABLEKS R4 R3 K5 ["__add"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["__sub"]
  SETTABLEKS R4 R3 K6 ["__sub"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["__mul"]
  SETTABLEKS R4 R3 K7 ["__mul"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["__div"]
  SETTABLEKS R4 R3 K8 ["__div"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["__mod"]
  SETTABLEKS R4 R3 K9 ["__mod"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K14 [setmetatable]
  CALL R1 2 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K15 ["Class"]
  GETVARARGS R3 -1
  NAMECALL R1 R0 K16 ["_init"]
  CALL R1 -1 0
  RETURN R0 1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  FASTCALL1 GETMETATABLE R1 [+2]
  GETIMPORT R0 K1 [getmetatable]
  CALL R0 1 1
  JUMPIFNOT R0 [+15]
  GETTABLEKS R1 R0 K2 ["__index"]
  GETUPVAL R2 1
  JUMPIFNOTEQ R1 R2 [+3]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R2 R0 K2 ["__index"]
  FASTCALL1 GETMETATABLE R2 [+2]
  GETIMPORT R1 K1 [getmetatable]
  CALL R1 1 1
  MOVE R0 R1
  JUMPBACK [-16]
  LOADB R1 0
  RETURN R1 1

PROTO_5:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R1 1 2
  AND R3 R1 R2
  RETURN R3 1

PROTO_6:
  GETUPVAL R3 0
  MOVE R4 R1
  MOVE R5 R2
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["new"]
  CALL R3 2 1
  DUPTABLE R6 K2 [{"__index"}]
  SETTABLEKS R0 R6 K1 ["__index"]
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [setmetatable]
  CALL R4 2 0
  RETURN R3 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["name"]
  RETURN R1 1

PROTO_8:
  FASTCALL2 RAWEQUAL R0 R1 [+5]
  MOVE R3 R0
  MOVE R4 R1
  GETIMPORT R2 K1 [rawequal]
  CALL R2 2 1
  RETURN R2 1

PROTO_9:
  DUPTABLE R2 K2 [{"methodName", "className"}]
  LOADK R3 K3 ["__lt"]
  SETTABLEKS R3 R2 K0 ["methodName"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K1 ["className"]
  GETIMPORT R3 K5 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Error"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["new"]
  LOADK R5 K8 ["NotImplemented"]
  LOADK R6 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R4 2 1
  MOVE R7 R2
  NAMECALL R5 R4 K10 ["throw"]
  CALL R5 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R2 K2 [{"methodName", "className"}]
  LOADK R3 K3 ["__le"]
  SETTABLEKS R3 R2 K0 ["methodName"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K1 ["className"]
  GETIMPORT R3 K5 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Error"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["new"]
  LOADK R5 K8 ["NotImplemented"]
  LOADK R6 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R4 2 1
  MOVE R7 R2
  NAMECALL R5 R4 K10 ["throw"]
  CALL R5 2 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K2 [{"methodName", "className"}]
  LOADK R2 K3 ["__add"]
  SETTABLEKS R2 R1 K0 ["methodName"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["className"]
  GETIMPORT R2 K5 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["new"]
  LOADK R4 K8 ["NotImplemented"]
  LOADK R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R3 K10 ["throw"]
  CALL R4 2 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K2 [{"methodName", "className"}]
  LOADK R2 K3 ["__sub"]
  SETTABLEKS R2 R1 K0 ["methodName"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["className"]
  GETIMPORT R2 K5 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["new"]
  LOADK R4 K8 ["NotImplemented"]
  LOADK R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R3 K10 ["throw"]
  CALL R4 2 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K2 [{"methodName", "className"}]
  LOADK R2 K3 ["__mul"]
  SETTABLEKS R2 R1 K0 ["methodName"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["className"]
  GETIMPORT R2 K5 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["new"]
  LOADK R4 K8 ["NotImplemented"]
  LOADK R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R3 K10 ["throw"]
  CALL R4 2 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K2 [{"methodName", "className"}]
  LOADK R2 K3 ["__div"]
  SETTABLEKS R2 R1 K0 ["methodName"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["className"]
  GETIMPORT R2 K5 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["new"]
  LOADK R4 K8 ["NotImplemented"]
  LOADK R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R3 K10 ["throw"]
  CALL R4 2 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K2 [{"methodName", "className"}]
  LOADK R2 K3 ["__mod"]
  SETTABLEKS R2 R1 K0 ["methodName"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["className"]
  GETIMPORT R2 K5 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["new"]
  LOADK R4 K8 ["NotImplemented"]
  LOADK R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R3 K10 ["throw"]
  CALL R4 2 0
  RETURN R0 0

PROTO_16:
  MOVE R2 R1
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"name"}]
  SETTABLEKS R0 R3 K0 ["name"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K2 ["new"]
  DUPCLOSURE R4 K3 [PROTO_3]
  SETTABLEKS R4 R3 K4 ["_init"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K5 ["isInstance"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K6 ["extend"]
  DUPCLOSURE R4 K7 [PROTO_7]
  SETTABLEKS R4 R3 K8 ["toString"]
  DUPCLOSURE R4 K9 [PROTO_8]
  SETTABLEKS R4 R3 K10 ["equals"]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K11 ["__lt"]
  NEWCLOSURE R4 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K12 ["__le"]
  NEWCLOSURE R4 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K13 ["__add"]
  NEWCLOSURE R4 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K14 ["__sub"]
  NEWCLOSURE R4 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K15 ["__mul"]
  NEWCLOSURE R4 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K16 ["__div"]
  NEWCLOSURE R4 P12
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K17 ["__mod"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R3 K7 [PROTO_1]
  DUPCLOSURE R4 K8 [PROTO_16]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R4 1
