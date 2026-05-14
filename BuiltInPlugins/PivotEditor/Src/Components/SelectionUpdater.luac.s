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
       12 GETIMPORT                        R2 K3 [workspace]
       14 GETTABLEKS                       R2 R2 K4 ["Terrain"]
       16 JUMPIFNOTEQ                      R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["selectObjectForEditing"]
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["selectObjectForEditing is required"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K5 ["selectInvalidSelection"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
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
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+62]
        7 GETTABLEN                        R2 R1 1
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["targetObject"]
       12 JUMPIFEQ                         R3 R2 ; [+76]
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+14]
       17 LOADK                            R5 K4 ["ProceduralModel"]
       18 NAMECALL                         R3 R2 K5 ["IsA"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+9]
       22 GETTABLEKS                       R3 R0 K2 ["props"]
       24 GETTABLEKS                       R3 R3 K6 ["selectInvalidSelection"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K4 ["ProceduralModel"]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 MOVE                             R3 R2
       32 JUMPIFNOT                        R3 ; [+18]
       33 LOADK                            R5 K7 ["PVInstance"]
       34 NAMECALL                         R3 R2 K5 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+13]
       38 LOADB                            R3 0
       39 GETIMPORT                        R4 K9 [workspace]
       41 JUMPIFEQ                         R2 R4 ; [+9]
       43 GETIMPORT                        R4 K9 [workspace]
       45 GETTABLEKS                       R4 R4 K10 ["Terrain"]
       47 JUMPIFNOTEQ                      R2 R4 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 JUMPIFNOT                        R3 ; [+7]
       52 GETTABLEKS                       R3 R0 K2 ["props"]
       54 GETTABLEKS                       R3 R3 K11 ["selectObjectForEditing"]
       56 MOVE                             R4 R2
       57 CALL                             R3 1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R3 R0 K2 ["props"]
       61 GETTABLEKS                       R3 R3 K6 ["selectInvalidSelection"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K12 ["InvalidTarget"]
       66 CALL                             R3 1 0
       67 RETURN                           R0 0
       68 LENGTH                           R2 R1
       69 LOADN                            R3 1
       70 JUMPIFNOTLT                      R3 R2 ; [+10]
       72 GETTABLEKS                       R2 R0 K2 ["props"]
       74 GETTABLEKS                       R2 R2 K6 ["selectInvalidSelection"]
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K13 ["MultipleSelection"]
       79 CALL                             R2 1 0
       80 RETURN                           R0 0
       81 GETTABLEKS                       R2 R0 K2 ["props"]
       83 GETTABLEKS                       R2 R2 K6 ["selectInvalidSelection"]
       85 GETUPVAL                         R3 2
       86 GETTABLEKS                       R3 R3 K14 ["NoSelection"]
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["Selection"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Utility"]
       28 GETTABLEKS                       R4 R4 K13 ["StatusMessage"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R0 K9 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["DraggerFramework"]
       37 GETTABLEKS                       R5 R5 K15 ["Flags"]
       39 GETTABLEKS                       R5 R5 K16 ["getFFlagDraggerEditProcModels"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K17 [PROTO_0]
       43 GETTABLEKS                       R6 R2 K18 ["PureComponent"]
       45 LOADK                            R8 K19 ["SelectionUpdater"]
       46 NAMECALL                         R6 R6 K20 ["extend"]
       48 CALL                             R6 2 1
       49 DUPCLOSURE                       R7 K21 [PROTO_1]
       50 SETTABLEKS                       R7 R6 K22 ["init"]
       52 DUPCLOSURE                       R7 K23 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R6 K24 ["didMount"]
       56 DUPCLOSURE                       R7 K25 [PROTO_4]
       57 SETTABLEKS                       R7 R6 K26 ["willUnmount"]
       59 DUPCLOSURE                       R7 K27 [PROTO_5]
       60 SETTABLEKS                       R7 R6 K28 ["render"]
       62 DUPCLOSURE                       R7 K29 [PROTO_6]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R7 R6 K30 ["_update"]
       68 RETURN                           R6 1
