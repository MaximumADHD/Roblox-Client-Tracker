PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 JUMPIFEQ                         R0 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 LOADK                            R4 K0 ["Expected ':' not '.' calling member function %*"]
        7 GETUPVAL                         R6 1
        8 NAMECALL                         R4 R4 K1 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 FASTCALL2                        ASSERT R2 R3 ; [+3]
       14 GETIMPORT                        R1 K3 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 3
       19 GETVARARGS                       R3 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+15]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U0
       14 FASTCALL3                        RAWSET R0 R1 R3
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 MOVE                             R7 R3
       19 GETIMPORT                        R4 K4 [rawset]
       21 CALL                             R4 3 0
       22 RETURN                           R3 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_mockedMethods"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 GETTABLEKS                       R3 R2 K1 ["methodFn"]
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R1
       11 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__index"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["Name"]
        5 CALL                             R2 2 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R1 K3 [tostring]
        9 CALL                             R1 -1 1
       10 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 4 0
        2 NEWTABLE                         R4 0 0
        4 FASTCALL2                        SETMETATABLE R4 R2 ; [+4]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R3 K1 [setmetatable]
        9 CALL                             R3 2 1
       10 GETIMPORT                        R4 K4 [table.freeze]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 NEWTABLE                         R5 0 0
       16 DUPTABLE                         R6 K6 [{"__index"}]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R7 R6 K5 ["__index"]
       22 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       24 GETIMPORT                        R4 K1 [setmetatable]
       26 CALL                             R4 2 1
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R5 R2 K5 ["__index"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R5 R2 K7 ["__newindex"]
       36 NEWCLOSURE                       R5 P3
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R2 K8 ["__tostring"]
       40 LOADK                            R5 K9 ["The metatable is locked"]
       41 SETTABLEKS                       R5 R2 K10 ["__metatable"]
       43 GETTABLEKS                       R5 R1 K11 ["_validSelfSet"]
       45 LOADB                            R6 1
       46 SETTABLE                         R6 R5 R3
       47 RETURN                           R3 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["_validSelfSet"]
        4 GETTABLE                         R2 R3 R0
        5 LOADK                            R4 K1 ["Expected ':' not '.' calling member function %*"]
        6 GETUPVAL                         R6 1
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 FASTCALL2                        ASSERT R2 R3 ; [+3]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 2
       17 MOVE                             R2 R0
       18 GETVARARGS                       R3 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_mockedMethods"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["_mockedMethods"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R3 K1 [{"methodFn"}]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 SETTABLEKS                       R4 R3 K0 ["methodFn"]
        7 GETTABLEKS                       R4 R0 K2 ["_mockedMethods"]
        9 SETTABLE                         R3 R4 R1
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R3
       14 RETURN                           R4 1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{"_validSelfSet", "_mockedMethods"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_validSelfSet"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["_mockedMethods"]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K4 [setmetatable]
       14 CALL                             R1 2 1
       15 DUPTABLE                         R2 K8 [{"spy", "controls", "original"}]
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K5 ["spy"]
       22 SETTABLEKS                       R1 R2 K6 ["controls"]
       24 SETTABLEKS                       R0 R2 K7 ["original"]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_5]
        2 NEWTABLE                         R1 2 0
        4 SETTABLEKS                       R1 R1 K1 ["__index"]
        6 DUPCLOSURE                       R2 K2 [PROTO_8]
        7 SETTABLEKS                       R2 R1 K3 ["mockMethod"]
        9 NEWTABLE                         R2 1 0
       11 DUPCLOSURE                       R3 K4 [PROTO_9]
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R3 R2 K5 ["new"]
       16 RETURN                           R2 1
