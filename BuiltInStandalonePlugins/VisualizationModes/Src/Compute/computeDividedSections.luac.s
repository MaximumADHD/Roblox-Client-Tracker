PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["createElement"]
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        6 GETUPVAL                         R5 3
        7 NAMECALL                         R5 R5 K3 ["getNextOrder"]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       12 CALL                             R2 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R0 K6 [table.insert]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["key"]
        3 GETTABLEKS                       R3 R0 K1 ["renderContent"]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R4 R4 K2 ["getNextOrder"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R0 K3 ["visible"]
       11 CALL                             R3 2 1
       12 SETTABLE                         R3 R1 R2
       13 GETTABLEKS                       R1 R0 K3 ["visible"]
       15 JUMPIFEQKB                       R1 FALSE ; [+18]
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K4 ["createElement"]
       21 GETUPVAL                         R4 4
       22 DUPTABLE                         R5 K6 [{"LayoutOrder"}]
       23 GETUPVAL                         R6 1
       24 NAMECALL                         R6 R6 K2 ["getNextOrder"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       29 CALL                             R3 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R1 K9 [table.insert]
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [table.remove]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K5 ["createElement"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K6 ["Fragment"]
       14 NEWTABLE                         R3 0 0
       16 DUPTABLE                         R4 K9 [{"Sections", "Dividers"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["createElement"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K6 ["Fragment"]
       23 NEWTABLE                         R7 0 0
       25 GETUPVAL                         R8 2
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K7 ["Sections"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K5 ["createElement"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K6 ["Fragment"]
       35 NEWTABLE                         R7 0 0
       37 MOVE                             R8 R0
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K8 ["Dividers"]
       41 CALL                             R1 3 -1
       42 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 NEWTABLE                         R2 0 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R2
       23 GETIMPORT                        R6 K3 [table.freeze]
       25 DUPTABLE                         R7 K6 [{"addSection", "getSections"}]
       26 SETTABLEKS                       R4 R7 K4 ["addSection"]
       28 SETTABLEKS                       R5 R7 K5 ["getSections"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K9 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["Sections"]
       36 GETTABLEKS                       R5 R6 K13 ["VisualizationModeSectionDivider"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K14 ["Util"]
       41 GETTABLEKS                       R5 R6 K15 ["LayoutOrderIterator"]
       43 DUPCLOSURE                       R6 K16 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 RETURN                           R6 1
