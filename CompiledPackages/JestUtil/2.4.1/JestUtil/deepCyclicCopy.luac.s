PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+7]
        2 DUPTABLE                         R3 K2 [{"blacklist", "keepPrototype"}]
        3 GETUPVAL                         R4 0
        4 SETTABLEKS                       R4 R3 K0 ["blacklist"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K1 ["keepPrototype"]
        9 MOVE                             R4 R2
       10 JUMPIF                           R4 ; [+4]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["new"]
       14 CALL                             R4 0 1
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K5 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["table"] ; [+2]
       22 RETURN                           R0 1
       23 MOVE                             R7 R0
       24 NAMECALL                         R5 R4 K7 ["has"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+5]
       28 MOVE                             R7 R0
       29 NAMECALL                         R5 R4 K8 ["get"]
       31 CALL                             R5 2 -1
       32 RETURN                           R5 -1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K9 ["isArray"]
       36 MOVE                             R6 R0
       37 CALL                             R5 1 1
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R0
       41 MOVE                             R7 R3
       42 MOVE                             R8 R4
       43 CALL                             R5 3 1
       44 RETURN                           R5 1
       45 GETUPVAL                         R5 4
       46 MOVE                             R6 R0
       47 MOVE                             R7 R3
       48 MOVE                             R8 R4
       49 CALL                             R5 3 -1
       50 RETURN                           R5 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"value"}]
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R1
        3 SETTABLEKS                       R3 R2 K0 ["value"]
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["blacklist"]
        3 JUMPIFEQKNIL                     R1 ; [+13]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["blacklist"]
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["has"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R1 R0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLE                         R1 R2 R0
       19 GETTABLEKS                       R3 R1 K2 ["value"]
       21 FASTCALL1                        TYPEOF R3 ; [+2]
       22 GETIMPORT                        R2 K4 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K5 ["nil"] ; [+17]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R3 R1 K2 ["value"]
       30 DUPTABLE                         R4 K7 [{"blacklist", "keepPrototype"}]
       31 GETUPVAL                         R5 3
       32 SETTABLEKS                       R5 R4 K0 ["blacklist"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K6 ["keepPrototype"]
       37 SETTABLEKS                       R5 R4 K6 ["keepPrototype"]
       39 GETUPVAL                         R5 4
       40 CALL                             R2 3 1
       41 SETTABLEKS                       R2 R1 K2 ["value"]
       43 LOADB                            R2 1
       44 SETTABLEKS                       R2 R1 K8 ["configurable"]
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R2 R2 K0 ["value"]
        4 SETTABLE                         R2 R0 R1
        5 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R1 K0 ["keepPrototype"]
        4 JUMPIFNOT                        R4 ; [+4]
        5 GETIMPORT                        R4 K2 [warn]
        7 LOADK                            R5 K3 ["Prototype copying is not supported"]
        8 CALL                             R4 1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["reduce"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["keys"]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 0
       21 CALL                             R4 3 1
       22 MOVE                             R7 R0
       23 MOVE                             R8 R3
       24 NAMECALL                         R5 R2 K6 ["set"]
       26 CALL                             R5 3 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["forEach"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K5 ["keys"]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K8 ["assign"]
       45 MOVE                             R6 R3
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K4 ["reduce"]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K5 ["keys"]
       52 MOVE                             R9 R4
       53 CALL                             R8 1 1
       54 NEWCLOSURE                       R9 P2
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R10 0 0
       58 CALL                             R7 3 -1
       59 CALL                             R5 -1 -1
       60 RETURN                           R5 -1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R1 K0 ["keepPrototype"]
        4 JUMPIFNOT                        R4 ; [+4]
        5 GETIMPORT                        R4 K2 [warn]
        7 LOADK                            R5 K3 ["Prototype copying is not supported"]
        8 CALL                             R4 1 0
        9 LENGTH                           R4 R0
       10 MOVE                             R7 R0
       11 MOVE                             R8 R3
       12 NAMECALL                         R5 R2 K4 ["set"]
       14 CALL                             R5 3 0
       15 LOADN                            R7 1
       16 MOVE                             R5 R4
       17 LOADN                            R6 1
       18 FORNPREP                         R5
       19 GETUPVAL                         R8 0
       20 GETTABLE                         R9 R0 R7
       21 DUPTABLE                         R10 K6 [{"blacklist", "keepPrototype"}]
       22 GETUPVAL                         R11 1
       23 SETTABLEKS                       R11 R10 K5 ["blacklist"]
       25 GETTABLEKS                       R11 R1 K0 ["keepPrototype"]
       27 SETTABLEKS                       R11 R10 K0 ["keepPrototype"]
       29 MOVE                             R11 R2
       30 CALL                             R8 3 1
       31 SETTABLE                         R8 R3 R7
       32 FORNLOOP                         R5
       33 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Object"]
       16 GETTABLEKS                       R5 R2 K8 ["Set"]
       18 GETTABLEKS                       R6 R2 K9 ["WeakMap"]
       20 NEWTABLE                         R7 1 0
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 GETTABLEKS                       R11 R5 K10 ["new"]
       27 CALL                             R11 0 1
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R11
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R3
       32 CAPTURE                          REF R10
       33 CAPTURE                          REF R9
       34 SETTABLEKS                       R8 R7 K11 ["default"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          REF R8
       40 CAPTURE                          VAL R11
       41 NEWCLOSURE                       R10 P2
       42 CAPTURE                          REF R8
       43 CAPTURE                          VAL R11
       44 CLOSEUPVALS                      R8
       45 RETURN                           R7 1
