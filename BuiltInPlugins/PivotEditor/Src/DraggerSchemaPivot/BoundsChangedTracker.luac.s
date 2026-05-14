PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_handler", "_installed"}]
        1 SETTABLEKS                       R1 R3 K0 ["_handler"]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["_installed"]
        6 GETUPVAL                         R4 0
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K4 [setmetatable]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_connect"]
        2 CALL                             R1 1 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["_installed"]
        6 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["_disconnect"]
        2 CALL                             R1 1 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["_installed"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_installed"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 NAMECALL                         R2 R0 K1 ["_disconnect"]
        5 CALL                             R2 1 0
        6 NAMECALL                         R2 R1 K2 ["getPrimaryObject"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R0 K3 ["_instance"]
       11 NAMECALL                         R2 R0 K4 ["_connect"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_instance"]
        4 GETTABLEKS                       R2 R2 K1 ["PrimaryPart"]
        6 NAMECALL                         R0 R0 K2 ["_setPart"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_instance"]
        2 JUMPIF                           R1 ; [+5]
        3 LOADNIL                          R3
        4 NAMECALL                         R1 R0 K1 ["_setPart"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K0 ["_instance"]
       10 LOADK                            R3 K2 ["Model"]
       11 NAMECALL                         R1 R1 K3 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+34]
       15 GETTABLEKS                       R1 R0 K0 ["_instance"]
       17 LOADK                            R3 K4 ["PrimaryPart"]
       18 NAMECALL                         R1 R1 K5 ["GetPropertyChangedSignal"]
       20 CALL                             R1 2 1
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R1 R1 K6 ["Connect"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K7 ["_primaryConnection"]
       28 GETTABLEKS                       R1 R0 K0 ["_instance"]
       30 LOADK                            R3 K8 ["WorldPivot"]
       31 NAMECALL                         R1 R1 K5 ["GetPropertyChangedSignal"]
       33 CALL                             R1 2 1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R1 R1 K6 ["Connect"]
       38 CALL                             R1 2 1
       39 SETTABLEKS                       R1 R0 K9 ["_pivotChangedConnection"]
       41 GETTABLEKS                       R3 R0 K0 ["_instance"]
       43 GETTABLEKS                       R3 R3 K4 ["PrimaryPart"]
       45 NAMECALL                         R1 R0 K1 ["_setPart"]
       47 CALL                             R1 2 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R1 R0 K0 ["_instance"]
       51 LOADK                            R3 K10 ["BasePart"]
       52 NAMECALL                         R1 R1 K3 ["IsA"]
       54 CALL                             R1 2 1
       55 JUMPIFNOT                        R1 ; [+6]
       56 GETTABLEKS                       R3 R0 K0 ["_instance"]
       58 NAMECALL                         R1 R0 K1 ["_setPart"]
       60 CALL                             R1 2 0
       61 RETURN                           R0 0
       62 LOADNIL                          R3
       63 NAMECALL                         R1 R0 K1 ["_setPart"]
       65 CALL                             R1 2 0
       66 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_primaryConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_primaryConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_primaryConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_pivotChangedConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_pivotChangedConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_pivotChangedConnection"]
       22 LOADNIL                          R3
       23 NAMECALL                         R1 R0 K3 ["_setPart"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_movedConnection"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["_movedConnection"]
        5 NAMECALL                         R2 R2 K1 ["Disconnect"]
        7 CALL                             R2 1 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K0 ["_movedConnection"]
       11 GETTABLEKS                       R2 R0 K2 ["_partPivotChangedConnection"]
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETTABLEKS                       R2 R0 K2 ["_partPivotChangedConnection"]
       16 NAMECALL                         R2 R2 K1 ["Disconnect"]
       18 CALL                             R2 1 0
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R0 K2 ["_partPivotChangedConnection"]
       22 JUMPIFNOT                        R1 ; [+27]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          VAL R0
       25 LOADK                            R5 K3 ["PivotOffset"]
       26 NAMECALL                         R3 R1 K4 ["GetPropertyChangedSignal"]
       28 CALL                             R3 2 1
       29 MOVE                             R5 R2
       30 NAMECALL                         R3 R3 K5 ["Connect"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R0 K2 ["_partPivotChangedConnection"]
       35 MOVE                             R3 R1
       36 JUMPIF                           R3 ; [+3]
       37 NAMECALL                         R3 R1 K6 ["GetRootPart"]
       39 CALL                             R3 1 1
       40 LOADK                            R6 K7 ["CFrame"]
       41 NAMECALL                         R4 R3 K4 ["GetPropertyChangedSignal"]
       43 CALL                             R4 2 1
       44 MOVE                             R6 R2
       45 NAMECALL                         R4 R4 K5 ["Connect"]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R0 K0 ["_movedConnection"]
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["install"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["uninstall"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["setSelection"]
       18 DUPCLOSURE                       R1 K9 [PROTO_6]
       19 SETTABLEKS                       R1 R0 K10 ["_connect"]
       21 DUPCLOSURE                       R1 K11 [PROTO_7]
       22 SETTABLEKS                       R1 R0 K12 ["_disconnect"]
       24 DUPCLOSURE                       R1 K13 [PROTO_9]
       25 SETTABLEKS                       R1 R0 K14 ["_setPart"]
       27 RETURN                           R0 1
