PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+13]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R5 K2 [{"key", "objectName"}]
        8 SETTABLEKS                       R1 R5 K0 ["key"]
       10 GETUPVAL                         R6 3
       11 SETTABLEKS                       R6 R5 K1 ["objectName"]
       13 NAMECALL                         R3 R3 K3 ["throw"]
       15 CALL                             R3 2 0
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"key", "objectName"}]
        2 SETTABLEKS                       R1 R4 K0 ["key"]
        4 GETUPVAL                         R5 1
        5 SETTABLEKS                       R5 R4 K1 ["objectName"]
        7 NAMECALL                         R2 R2 K3 ["throw"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Frozen({})"]
        2 GETUPVAL                         R2 1
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R1
        3 GETVARARGS                       R3 -1
        4 CALL                             R2 -1 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 DUPTABLE                         R6 K5 [{"__index", "__newindex", "__len", "__tostring", "__call"}]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R7 R6 K0 ["__index"]
       10 NEWCLOSURE                       R7 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R7 R6 K1 ["__newindex"]
       15 NEWCLOSURE                       R7 P2
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R7 R6 K2 ["__len"]
       19 NEWCLOSURE                       R7 P3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R7 R6 K3 ["__tostring"]
       24 NEWCLOSURE                       R7 P4
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R7 R6 K4 ["__call"]
       28 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K7 [setmetatable]
       33 CALL                             R4 2 0
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Error"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["format"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R2 K8 ["new"]
       22 LOADK                            R5 K9 ["ReadonlyKey"]
       23 LOADK                            R6 K10 ["Attempted to write to readonly key {key:?} of frozen object {objectName:?}"]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R5 R2 K8 ["new"]
       27 LOADK                            R6 K11 ["MissingKey"]
       28 LOADK                            R7 K12 ["Attempted to read missing key {key:?} of frozen object {objectName:?}"]
       29 CALL                             R5 2 1
       30 DUPCLOSURE                       R6 K13 [PROTO_5]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 RETURN                           R6 1
