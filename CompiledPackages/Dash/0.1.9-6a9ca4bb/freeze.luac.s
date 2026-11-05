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
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K2 ["string"]
        7 LOADK                            R6 K3 ["Attempted to call Dash.freeze with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [typeof]
       14 CALL                             R4 1 1
       15 LOADK                            R5 K4 ["table"]
       16 LOADK                            R6 K5 ["Attempted to call Dash.freeze with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R3 3 0
       18 NEWTABLE                         R3 0 0
       20 DUPTABLE                         R6 K11 [{"__index", "__newindex", "__len", "__tostring", "__call"}]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R7 R6 K6 ["__index"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R7 R6 K7 ["__newindex"]
       33 NEWCLOSURE                       R7 P2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R7 R6 K8 ["__len"]
       37 NEWCLOSURE                       R7 P3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R7 R6 K9 ["__tostring"]
       42 NEWCLOSURE                       R7 P4
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K10 ["__call"]
       46 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K13 [setmetatable]
       51 CALL                             R4 2 0
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Error"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["assertEqual"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["format"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R2 K9 ["new"]
       27 LOADK                            R6 K10 ["ReadonlyKey"]
       28 LOADK                            R7 K11 ["Attempted to write to readonly key {key:?} of frozen object {objectName:?}"]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R6 R2 K9 ["new"]
       32 LOADK                            R7 K12 ["MissingKey"]
       33 LOADK                            R8 K13 ["Attempted to read missing key {key:?} of frozen object {objectName:?}"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K14 [PROTO_5]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 RETURN                           R7 1
