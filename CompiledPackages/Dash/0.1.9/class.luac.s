PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Error"]
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
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K11 ["toString"]
       11 SETTABLEKS                       R4 R3 K1 ["__tostring"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K12 ["equals"]
       16 SETTABLEKS                       R4 R3 K2 ["__eq"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["__lt"]
       21 SETTABLEKS                       R4 R3 K3 ["__lt"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K4 ["__le"]
       26 SETTABLEKS                       R4 R3 K4 ["__le"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K5 ["__add"]
       31 SETTABLEKS                       R4 R3 K5 ["__add"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K6 ["__sub"]
       36 SETTABLEKS                       R4 R3 K6 ["__sub"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K7 ["__mul"]
       41 SETTABLEKS                       R4 R3 K7 ["__mul"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K8 ["__div"]
       46 SETTABLEKS                       R4 R3 K8 ["__div"]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K9 ["__mod"]
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
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["new"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K6 ["Error"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K6 ["Error"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["Error"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["Error"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["Error"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["Error"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["Error"]
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
        2 DUPCLOSURE                       R2 K0 [PROTO_1]
        3 MOVE                             R1 R2
        4 DUPTABLE                         R2 K2 [{"name"}]
        5 SETTABLEKS                       R0 R2 K1 ["name"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          REF R1
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R3 R2 K3 ["new"]
       12 DUPCLOSURE                       R3 K4 [PROTO_3]
       13 SETTABLEKS                       R3 R2 K5 ["_init"]
       15 NEWCLOSURE                       R3 P3
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R2 K6 ["isInstance"]
       19 NEWCLOSURE                       R3 P4
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K7 ["extend"]
       24 DUPCLOSURE                       R3 K8 [PROTO_7]
       25 SETTABLEKS                       R3 R2 K9 ["toString"]
       27 DUPCLOSURE                       R3 K10 [PROTO_8]
       28 SETTABLEKS                       R3 R2 K11 ["equals"]
       30 NEWCLOSURE                       R3 P7
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 SETTABLEKS                       R3 R2 K12 ["__lt"]
       35 NEWCLOSURE                       R3 P8
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 SETTABLEKS                       R3 R2 K13 ["__le"]
       40 NEWCLOSURE                       R3 P9
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R3 R2 K14 ["__add"]
       45 NEWCLOSURE                       R3 P10
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U1
       48 SETTABLEKS                       R3 R2 K15 ["__sub"]
       50 NEWCLOSURE                       R3 P11
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U1
       53 SETTABLEKS                       R3 R2 K16 ["__mul"]
       55 NEWCLOSURE                       R3 P12
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 SETTABLEKS                       R3 R2 K17 ["__div"]
       60 NEWCLOSURE                       R3 P13
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U1
       63 SETTABLEKS                       R3 R2 K18 ["__mod"]
       65 CLOSEUPVALS                      R1
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 DUPCLOSURE                       R3 K7 [PROTO_16]
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 RETURN                           R3 1
