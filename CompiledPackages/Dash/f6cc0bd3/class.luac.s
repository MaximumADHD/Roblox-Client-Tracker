PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["Error"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K3 ["new"]
        8 LOADK                            R3 K4 ["NotImplemented"]
        9 LOADK                            R4 K5 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       10 CALL                             R2 2 1
       11 MOVE                             R5 R0
       12 NAMECALL                         R3 R2 K6 ["throw"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 DUPTABLE                         R3 K10 [{"__index", "__tostring", "__eq", "__lt", "__le", "__add", "__sub", "__mul", "__div", "__mod"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K0 ["__index"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K11 ["toString"]
       11 SETTABLEKS                       R4 R3 K1 ["__tostring"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K12 ["equals"]
       16 SETTABLEKS                       R4 R3 K2 ["__eq"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K3 ["__lt"]
       21 SETTABLEKS                       R4 R3 K3 ["__lt"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K4 ["__le"]
       26 SETTABLEKS                       R4 R3 K4 ["__le"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["__add"]
       31 SETTABLEKS                       R4 R3 K5 ["__add"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K6 ["__sub"]
       36 SETTABLEKS                       R4 R3 K6 ["__sub"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K7 ["__mul"]
       41 SETTABLEKS                       R4 R3 K7 ["__mul"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K8 ["__div"]
       46 SETTABLEKS                       R4 R3 K8 ["__div"]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K9 ["__mod"]
       51 SETTABLEKS                       R4 R3 K9 ["__mod"]
       53 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       55 MOVE                             R2 R0
       56 GETIMPORT                        R1 K14 [setmetatable]
       58 CALL                             R1 2 0
       59 GETUPVAL                         R1 1
       60 SETTABLEKS                       R1 R0 K15 ["Class"]
       62 GETVARARGS                       R3 -1
       63 NAMECALL                         R1 R0 K16 ["_init"]
       65 CALL                             R1 -1 0
       66 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        GETMETATABLE R1 ; [+2]
        2 GETIMPORT                        R0 K1 [getmetatable]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETTABLEKS                       R1 R0 K2 ["__index"]
        8 GETUPVAL                         R2 1
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R0 K2 ["__index"]
       15 FASTCALL1                        GETMETATABLE R2 ; [+2]
       16 GETIMPORT                        R1 K1 [getmetatable]
       18 CALL                             R1 1 1
       19 MOVE                             R0 R1
       20 JUMPBACK                         ; [-16]
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 JUMPIF                           R5 ; [+3]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["new"]
        7 CALL                             R3 2 1
        8 DUPTABLE                         R6 K2 [{"__index"}]
        9 SETTABLEKS                       R0 R6 K1 ["__index"]
       11 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K4 [setmetatable]
       16 CALL                             R4 2 0
       17 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R1 1

PROTO_8:
        0 FASTCALL2                        RAWEQUAL R0 R1 ; [+5]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawequal]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{"methodName", "className"}]
        1 LOADK                            R3 K3 ["__lt"]
        2 SETTABLEKS                       R3 R2 K0 ["methodName"]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K1 ["className"]
        7 GETIMPORT                        R3 K5 [require]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K6 ["Error"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K7 ["new"]
       15 LOADK                            R5 K8 ["NotImplemented"]
       16 LOADK                            R6 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R4 2 1
       18 MOVE                             R7 R2
       19 NAMECALL                         R5 R4 K10 ["throw"]
       21 CALL                             R5 2 0
       22 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"methodName", "className"}]
        1 LOADK                            R3 K3 ["__le"]
        2 SETTABLEKS                       R3 R2 K0 ["methodName"]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K1 ["className"]
        7 GETIMPORT                        R3 K5 [require]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K6 ["Error"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K7 ["new"]
       15 LOADK                            R5 K8 ["NotImplemented"]
       16 LOADK                            R6 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R4 2 1
       18 MOVE                             R7 R2
       19 NAMECALL                         R5 R4 K10 ["throw"]
       21 CALL                             R5 2 0
       22 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"methodName", "className"}]
        1 LOADK                            R2 K3 ["__add"]
        2 SETTABLEKS                       R2 R1 K0 ["methodName"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["className"]
        7 GETIMPORT                        R2 K5 [require]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["Error"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["new"]
       15 LOADK                            R4 K8 ["NotImplemented"]
       16 LOADK                            R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K10 ["throw"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{"methodName", "className"}]
        1 LOADK                            R2 K3 ["__sub"]
        2 SETTABLEKS                       R2 R1 K0 ["methodName"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["className"]
        7 GETIMPORT                        R2 K5 [require]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["Error"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["new"]
       15 LOADK                            R4 K8 ["NotImplemented"]
       16 LOADK                            R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K10 ["throw"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"methodName", "className"}]
        1 LOADK                            R2 K3 ["__mul"]
        2 SETTABLEKS                       R2 R1 K0 ["methodName"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["className"]
        7 GETIMPORT                        R2 K5 [require]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["Error"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["new"]
       15 LOADK                            R4 K8 ["NotImplemented"]
       16 LOADK                            R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K10 ["throw"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"methodName", "className"}]
        1 LOADK                            R2 K3 ["__div"]
        2 SETTABLEKS                       R2 R1 K0 ["methodName"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["className"]
        7 GETIMPORT                        R2 K5 [require]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["Error"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["new"]
       15 LOADK                            R4 K8 ["NotImplemented"]
       16 LOADK                            R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K10 ["throw"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"methodName", "className"}]
        1 LOADK                            R2 K3 ["__mod"]
        2 SETTABLEKS                       R2 R1 K0 ["methodName"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["className"]
        7 GETIMPORT                        R2 K5 [require]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["Error"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["new"]
       15 LOADK                            R4 K8 ["NotImplemented"]
       16 LOADK                            R5 K9 ["The method \"{methodName}\" is not implemented on the class \"{className}\""]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K10 ["throw"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_16:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K1 [{"name"}]
        4 SETTABLEKS                       R0 R3 K0 ["name"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 SETTABLEKS                       R4 R3 K2 ["new"]
       11 DUPCLOSURE                       R4 K3 [PROTO_3]
       12 SETTABLEKS                       R4 R3 K4 ["_init"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R3
       16 SETTABLEKS                       R4 R3 K5 ["isInstance"]
       18 NEWCLOSURE                       R4 P3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R4 R3 K6 ["extend"]
       23 DUPCLOSURE                       R4 K7 [PROTO_7]
       24 SETTABLEKS                       R4 R3 K8 ["toString"]
       26 DUPCLOSURE                       R4 K9 [PROTO_8]
       27 SETTABLEKS                       R4 R3 K10 ["equals"]
       29 NEWCLOSURE                       R4 P6
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R4 R3 K11 ["__lt"]
       34 NEWCLOSURE                       R4 P7
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R4 R3 K12 ["__le"]
       39 NEWCLOSURE                       R4 P8
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R4 R3 K13 ["__add"]
       44 NEWCLOSURE                       R4 P9
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R4 R3 K14 ["__sub"]
       49 NEWCLOSURE                       R4 P10
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R4 R3 K15 ["__mul"]
       54 NEWCLOSURE                       R4 P11
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U2
       57 SETTABLEKS                       R4 R3 K16 ["__div"]
       59 NEWCLOSURE                       R4 P12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R4 R3 K17 ["__mod"]
       64 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 DUPCLOSURE                       R3 K7 [PROTO_1]
       13 DUPCLOSURE                       R4 K8 [PROTO_16]
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R0
       17 RETURN                           R4 1
