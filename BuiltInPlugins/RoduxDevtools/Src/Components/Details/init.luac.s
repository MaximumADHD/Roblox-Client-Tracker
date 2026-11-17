PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Events"]
        4 GETTABLEKS                       R4 R1 K2 ["SelectedIndex"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETTABLEKS                       R4 R2 K3 ["eventType"]
       12 JUMPIFNOTEQKS                    R4 K4 ["Flush"] ; [+3]
       14 GETUPVAL                         R3 0
       15 JUMP                             ; [+7]
       16 GETTABLEKS                       R4 R2 K3 ["eventType"]
       18 JUMPIFNOTEQKS                    R4 K5 ["Reduce"] ; [+3]
       20 GETUPVAL                         R3 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 JUMPIF                           R3 ; [+2]
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K6 ["createElement"]
       29 MOVE                             R5 R3
       30 DUPTABLE                         R6 K11 [{"Event", "SelectedIndex", "OnSetState", "OnRedoAction", "OnUndoAction"}]
       31 SETTABLEKS                       R2 R6 K7 ["Event"]
       33 GETTABLEKS                       R7 R1 K2 ["SelectedIndex"]
       35 SETTABLEKS                       R7 R6 K2 ["SelectedIndex"]
       37 GETTABLEKS                       R7 R1 K8 ["OnSetState"]
       39 SETTABLEKS                       R7 R6 K8 ["OnSetState"]
       41 GETTABLEKS                       R7 R1 K9 ["OnRedoAction"]
       43 SETTABLEKS                       R7 R6 K9 ["OnRedoAction"]
       45 GETTABLEKS                       R7 R1 K10 ["OnUndoAction"]
       47 SETTABLEKS                       R7 R6 K10 ["OnUndoAction"]
       49 CALL                             R4 2 -1
       50 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"SelectedIndex", "Events"}]
        1 GETTABLEKS                       R3 R1 K0 ["SelectedIndex"]
        3 JUMPIF                           R3 ; [+2]
        4 GETTABLEKS                       R3 R0 K3 ["selectedIndex"]
        6 SETTABLEKS                       R3 R2 K0 ["SelectedIndex"]
        8 GETTABLEKS                       R3 R1 K1 ["Events"]
       10 JUMPIF                           R3 ; [+2]
       11 GETTABLEKS                       R3 R0 K4 ["events"]
       13 SETTABLEKS                       R3 R2 K1 ["Events"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R11 R11 K17 ["FlushDetails"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K4 [require]
       58 GETIMPORT                        R12 K1 [script]
       60 GETTABLEKS                       R12 R12 K18 ["ReduceDetails"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R2 K19 ["PureComponent"]
       65 LOADK                            R14 K20 ["Details"]
       66 NAMECALL                         R12 R12 K21 ["extend"]
       68 CALL                             R12 2 1
       69 DUPCLOSURE                       R13 K22 [PROTO_0]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R13 R12 K23 ["render"]
       75 MOVE                             R13 R6
       76 DUPTABLE                         R14 K24 [{"Analytics", "Localization", "Stylizer"}]
       77 SETTABLEKS                       R7 R14 K13 ["Analytics"]
       79 SETTABLEKS                       R8 R14 K14 ["Localization"]
       81 SETTABLEKS                       R9 R14 K16 ["Stylizer"]
       83 CALL                             R13 1 1
       84 MOVE                             R14 R12
       85 CALL                             R13 1 1
       86 MOVE                             R12 R13
       87 GETTABLEKS                       R13 R3 K25 ["connect"]
       89 DUPCLOSURE                       R14 K26 [PROTO_1]
       90 CALL                             R13 1 1
       91 MOVE                             R14 R12
       92 CALL                             R13 1 -1
       93 RETURN                           R13 -1
