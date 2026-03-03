PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["renameAnimationParameterAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["id"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setAnimationNodeParameterAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["graphPayloadMap"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["graphPayloadMap"]
       12 GETTABLEKS                       R2 R5 K1 ["lookup"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R7 R6 K2 ["className"]
       19 JUMPIFNOTEQKS                    R7 K3 ["Parameter"] ; [+52]
       21 GETTABLEKS                       R7 R6 K4 ["name"]
       23 JUMPIFNOT                        R7 ; [+48]
       24 GETTABLE                         R8 R1 R7
       25 JUMPIF                           R8 ; [+46]
       26 GETTABLEKS                       R9 R6 K5 ["nodeType"]
       28 FASTCALL1                        TYPE R9 ; [+2]
       29 GETIMPORT                        R8 K7 [type]
       31 CALL                             R8 1 1
       32 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+39]
       34 LOADB                            R8 1
       35 SETTABLE                         R8 R1 R7
       36 GETTABLEKS                       R8 R6 K9 ["id"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K10 ["createElement"]
       41 GETUPVAL                         R10 2
       42 DUPTABLE                         R11 K17 [{"label", "Type", "value", "LayoutOrder", "onLabelRename", "onValueChanged"}]
       43 SETTABLEKS                       R7 R11 K11 ["label"]
       45 GETTABLEKS                       R12 R6 K5 ["nodeType"]
       47 SETTABLEKS                       R12 R11 K12 ["Type"]
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R13 R14 K18 ["animationParameters"]
       52 GETTABLE                         R12 R13 R7
       53 SETTABLEKS                       R12 R11 K13 ["value"]
       55 GETUPVAL                         R12 4
       56 CALL                             R12 0 1
       57 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       59 NEWCLOSURE                       R12 P0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R12 R11 K15 ["onLabelRename"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R12 R11 K16 ["onValueChanged"]
       70 CALL                             R9 2 1
       71 SETTABLE                         R9 R0 R8
       72 FORGLOOP                         R2 2 ; [-56]
       74 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 4
       29 GETTABLEKS                       R7 R3 K4 ["graphPayloadMap"]
       31 GETTABLEKS                       R8 R1 K5 ["animationParameters"]
       33 GETTABLEKS                       R9 R1 K6 ["setAnimationNodeParameterAsync"]
       35 GETTABLEKS                       R10 R1 K7 ["renameAnimationParameterAsync"]
       37 SETLIST                          R6 R7 4 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K8 ["createElement"]
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R6 R7 K9 ["View"]
       46 DUPTABLE                         R7 K11 [{"tag"}]
       47 LOADK                            R8 K12 ["position-top-left size-0-full bg-surface-100 auto-x col stroke-muted"]
       48 SETTABLEKS                       R8 R7 K10 ["tag"]
       50 MOVE                             R8 R4
       51 CALL                             R5 3 -1
       52 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["NodeView"]
       39 GETTABLEKS                       R6 R7 K14 ["ParameterPaneItem"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K17 [PROTO_5]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 RETURN                           R8 1
