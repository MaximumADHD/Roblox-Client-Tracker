PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+18]
        2 LOADK                            R3 K0 ["PVInstance"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+13]
        7 LOADB                            R1 0
        8 GETIMPORT                        R2 K3 [workspace]
       10 JUMPIFEQ                         R0 R2 ; [+9]
       12 GETIMPORT                        R3 K3 [workspace]
       14 GETTABLEKS                       R2 R3 K4 ["Terrain"]
       16 JUMPIFNOTEQ                      R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["selectObjectForEditing"]
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["selectObjectForEditing is required"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R3 K5 ["selectInvalidSelection"]
       14 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       16 LOADK                            R3 K6 ["selectInvalidSelection is required"]
       17 GETIMPORT                        R1 K4 [assert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_update"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["_connection"]
       10 NAMECALL                         R1 R0 K3 ["_update"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+45]
        7 GETTABLEN                        R2 R1 1
        8 GETTABLEKS                       R4 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["targetObject"]
       12 JUMPIFEQ                         R3 R2 ; [+59]
       14 MOVE                             R3 R2
       15 JUMPIFNOT                        R3 ; [+18]
       16 LOADK                            R5 K4 ["PVInstance"]
       17 NAMECALL                         R3 R2 K5 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+13]
       21 LOADB                            R3 0
       22 GETIMPORT                        R4 K7 [workspace]
       24 JUMPIFEQ                         R2 R4 ; [+9]
       26 GETIMPORT                        R5 K7 [workspace]
       28 GETTABLEKS                       R4 R5 K8 ["Terrain"]
       30 JUMPIFNOTEQ                      R2 R4 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETTABLEKS                       R4 R0 K2 ["props"]
       37 GETTABLEKS                       R3 R4 K9 ["selectObjectForEditing"]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R4 R0 K2 ["props"]
       44 GETTABLEKS                       R3 R4 K10 ["selectInvalidSelection"]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R4 R5 K11 ["InvalidTarget"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0
       51 LENGTH                           R2 R1
       52 LOADN                            R3 1
       53 JUMPIFNOTLT                      R3 R2 ; [+10]
       55 GETTABLEKS                       R3 R0 K2 ["props"]
       57 GETTABLEKS                       R2 R3 K10 ["selectInvalidSelection"]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R3 R4 K12 ["MultipleSelection"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R3 R0 K2 ["props"]
       66 GETTABLEKS                       R2 R3 K10 ["selectInvalidSelection"]
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R3 R4 K13 ["NoSelection"]
       71 CALL                             R2 1 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["Selection"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R6 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Utility"]
       28 GETTABLEKS                       R4 R5 K13 ["StatusMessage"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_0]
       32 GETTABLEKS                       R5 R2 K15 ["PureComponent"]
       34 LOADK                            R7 K16 ["SelectionUpdater"]
       35 NAMECALL                         R5 R5 K17 ["extend"]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K18 [PROTO_1]
       39 SETTABLEKS                       R6 R5 K19 ["init"]
       41 DUPCLOSURE                       R6 K20 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K21 ["didMount"]
       45 DUPCLOSURE                       R6 K22 [PROTO_4]
       46 SETTABLEKS                       R6 R5 K23 ["willUnmount"]
       48 DUPCLOSURE                       R6 K24 [PROTO_5]
       49 SETTABLEKS                       R6 R5 K25 ["render"]
       51 DUPCLOSURE                       R6 K26 [PROTO_6]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K27 ["_update"]
       56 RETURN                           R5 1
