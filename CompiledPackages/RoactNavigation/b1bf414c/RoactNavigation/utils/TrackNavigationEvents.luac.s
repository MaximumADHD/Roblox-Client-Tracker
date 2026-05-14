PROTO_0:
        0 DUPTABLE                         R0 K1 [{"navigationEvents"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Total Events: "]
        3 GETTABLEKS                       R4 R0 K3 ["navigationEvents"]
        5 LENGTH                           R3 R4
        6 CALL                             R1 2 0
        7 GETIMPORT                        R1 K5 [ipairs]
        9 GETTABLEKS                       R2 R0 K3 ["navigationEvents"]
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETIMPORT                        R6 K1 [print]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 [inext] ; [-5]
       19 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R3 0
        1 GETTABLEKS                       R5 R0 K0 ["navigationEvents"]
        3 LENGTH                           R4 R5
        4 JUMPIFNOTLT                      R4 R1 ; [+9]
        6 JUMPIFNOTLE                      R3 R2 ; [+7]
        8 GETIMPORT                        R4 K2 [wait]
       10 LOADK                            R5 K3 [0.33]
       11 CALL                             R4 1 0
       12 ADDK                             R3 R3 K3 [0.33]
       13 JUMPBACK                         ; [-13]
       14 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["navigationEvents"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["new"]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R0 K4 [table.insert]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["Events"]
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R8
       13 CAPTURE                          VAL R0
       14 SETTABLE                         R9 R3 R8
       15 FORGLOOP                         R4 2 ; [-7]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["createElement"]
       20 GETUPVAL                         R5 3
       21 MOVE                             R6 R3
       22 MOVE                             R7 R2
       23 CALL                             R4 3 -1
       24 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["should be a list"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R3 R0 K4 ["navigationEvents"]
       14 LENGTH                           R2 R3
       15 LENGTH                           R4 R1
       16 JUMPIFEQ                         R2 R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 LOADN                            R4 1
       21 JUMPIFNOTLE                      R4 R2 ; [+12]
       23 JUMPIFNOT                        R3 ; [+10]
       24 GETTABLEKS                       R6 R0 K4 ["navigationEvents"]
       26 GETTABLE                         R5 R6 R4
       27 GETTABLE                         R7 R1 R4
       28 NAMECALL                         R5 R5 K5 ["equalTo"]
       30 CALL                             R5 2 1
       31 MOVE                             R3 R5
       32 ADDK                             R4 R4 K6 [1]
       33 JUMPBACK                         ; [-13]
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K6 ["views"]
       33 GETTABLEKS                       R3 R3 K7 ["NavigationEventsAdapter"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K8 ["validate"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K9 ["PageNavigationEvent"]
       53 CALL                             R4 1 1
       54 NEWTABLE                         R5 8 0
       56 SETTABLEKS                       R5 R5 K10 ["__index"]
       58 DUPCLOSURE                       R6 K11 [PROTO_0]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R6 R5 K12 ["new"]
       62 DUPCLOSURE                       R6 K13 [PROTO_1]
       63 SETTABLEKS                       R6 R5 K14 ["getNavigationEvents"]
       65 DUPCLOSURE                       R6 K15 [PROTO_2]
       66 SETTABLEKS                       R6 R5 K16 ["printNavigationEvents"]
       68 DUPCLOSURE                       R6 K17 [PROTO_3]
       69 SETTABLEKS                       R6 R5 K18 ["waitForNumberEventsMaxWaitTime"]
       71 DUPCLOSURE                       R6 K19 [PROTO_4]
       72 SETTABLEKS                       R6 R5 K20 ["resetNavigationEvents"]
       74 DUPCLOSURE                       R6 K21 [PROTO_6]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R6 R5 K22 ["createNavigationAdapter"]
       81 DUPCLOSURE                       R6 K23 [PROTO_7]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R6 R5 K24 ["equalTo"]
       85 RETURN                           R5 1
