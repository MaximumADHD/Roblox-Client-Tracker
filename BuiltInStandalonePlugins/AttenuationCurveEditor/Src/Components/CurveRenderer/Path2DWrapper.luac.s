PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["pathContainerRef"]
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 LOADN                            R2 1
       10 NAMECALL                         R3 R1 K2 ["GetChildren"]
       12 CALL                             R3 1 3
       13 FORGPREP                         R3
       14 NEWTABLE                         R8 0 0
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K3 ["props"]
       19 GETTABLEKS                       R10 R10 K4 ["ControlPoints"]
       21 LENGTH                           R9 R10
       22 MOVE                             R12 R2
       23 ADD                              R13 R2 R0
       24 SUBK                             R10 R13 K5 [1]
       25 LOADN                            R11 1
       26 FORNPREP                         R10
       27 JUMPIFLT                         R9 R12 ; [+14]
       29 GETUPVAL                         R16 1
       30 GETTABLEKS                       R16 R16 K3 ["props"]
       32 GETTABLEKS                       R16 R16 K4 ["ControlPoints"]
       34 GETTABLE                         R15 R16 R12
       35 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
       37 MOVE                             R14 R8
       38 GETIMPORT                        R13 K8 [table.insert]
       40 CALL                             R13 2 0
       41 FORNLOOP                         R10
       42 MOVE                             R12 R8
       43 NAMECALL                         R10 R7 K9 ["SetControlPoints"]
       45 CALL                             R10 2 0
       46 SUBK                             R10 R0 K5 [1]
       47 ADD                              R2 R2 R10
       48 FORGLOOP                         R3 2 ; [-35]
       50 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["pathContainerRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K2 ["setControlPoints"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 [""]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K2 ["Tag"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETTABLEKS                       R3 R0 K1 ["props"]
        9 GETTABLEKS                       R2 R3 K2 ["Tag"]
       11 NEWTABLE                         R3 0 0
       13 LOADN                            R6 2
       14 GETTABLEKS                       R7 R0 K1 ["props"]
       16 GETTABLEKS                       R7 R7 K3 ["ControlPoints"]
       18 LENGTH                           R4 R7
       19 SUBK                             R5 R1 K4 [1]
       20 FORNPREP                         R4
       21 MOVE                             R8 R3
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K5 ["createElement"]
       25 LOADK                            R10 K6 ["Path2D"]
       26 NEWTABLE                         R11 1 0
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K2 ["Tag"]
       31 SETTABLE                         R2 R11 R12
       32 CALL                             R9 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R7 K9 [table.insert]
       36 CALL                             R7 -1 0
       37 FORNLOOP                         R4
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K5 ["createElement"]
       41 GETUPVAL                         R5 2
       42 DUPTABLE                         R6 K12 [{"ref", "Size"}]
       43 GETTABLEKS                       R7 R0 K13 ["pathContainerRef"]
       45 SETTABLEKS                       R7 R6 K10 ["ref"]
       47 GETIMPORT                        R7 K16 [UDim2.fromScale]
       49 LOADN                            R8 1
       50 LOADN                            R9 1
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K11 ["Size"]
       54 MOVE                             R7 R3
       55 CALL                             R4 3 -1
       56 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["Pane"]
       25 LOADN                            R4 0
       26 GETIMPORT                        R5 K13 [Instance.new]
       28 LOADK                            R6 K14 ["Path2D"]
       29 CALL                             R5 1 1
       30 NAMECALL                         R6 R5 K15 ["GetMaxControlPoints"]
       32 CALL                             R6 1 1
       33 MOVE                             R4 R6
       34 NAMECALL                         R6 R5 K16 ["Destroy"]
       36 CALL                             R6 1 0
       37 GETTABLEKS                       R6 R1 K17 ["Component"]
       39 LOADK                            R8 K18 ["Path2DWrapper"]
       40 NAMECALL                         R6 R6 K19 ["extend"]
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          REF R4
       46 SETTABLEKS                       R7 R6 K20 ["init"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          REF R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K21 ["render"]
       54 DUPCLOSURE                       R7 K22 [PROTO_3]
       55 SETTABLEKS                       R7 R6 K23 ["didMount"]
       57 DUPCLOSURE                       R7 K24 [PROTO_4]
       58 SETTABLEKS                       R7 R6 K25 ["didUpdate"]
       60 CLOSEUPVALS                      R4
       61 RETURN                           R6 1
