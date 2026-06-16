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
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R7 R1
        4 GETIMPORT                        R6 K1 [type]
        6 CALL                             R6 1 1
        7 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 LOADK                            R7 K3 ["Attempted to call Dash.freeze with argument #2 of type %*, but it should be table "]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R10 R1
       14 GETIMPORT                        R9 K1 [type]
       16 CALL                             R9 1 1
       17 NAMECALL                         R7 R7 K4 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K6 [assert]
       25 CALL                             R4 2 0
       26 DUPTABLE                         R6 K12 [{"__index", "__newindex", "__len", "__tostring", "__call"}]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R7 R6 K7 ["__index"]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R7 R6 K8 ["__newindex"]
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R7 R6 K9 ["__len"]
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R7 R6 K10 ["__tostring"]
       48 NEWCLOSURE                       R7 P4
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K11 ["__call"]
       52 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K14 [setmetatable]
       57 CALL                             R4 2 0
       58 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Error"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["format"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R1 K7 ["new"]
       17 LOADK                            R4 K8 ["ReadonlyKey"]
       18 LOADK                            R5 K9 ["Attempted to write to readonly key {key:?} of frozen object {objectName:?}"]
       19 CALL                             R3 2 1
       20 GETTABLEKS                       R4 R1 K7 ["new"]
       22 LOADK                            R5 K10 ["MissingKey"]
       23 LOADK                            R6 K11 ["Attempted to read missing key {key:?} of frozen object {objectName:?}"]
       24 CALL                             R4 2 1
       25 DUPCLOSURE                       R5 K12 [PROTO_5]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
