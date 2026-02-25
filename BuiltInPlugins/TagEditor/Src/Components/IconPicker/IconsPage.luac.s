PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_enteredButton"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["onHoverFunc"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_enteredButton"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["onHoverFunc"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["_enteredButton"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["tagName"]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R0 R0 K2 ["SetIcon"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K3 ["closeFunc"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Lookup"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["props"]
        8 NEWTABLE                         R6 16 0
       10 GETTABLEKS                       R7 R4 K2 ["ImageRectOffset"]
       12 SETTABLEKS                       R7 R6 K2 ["ImageRectOffset"]
       14 GETTABLEKS                       R7 R4 K3 ["ImageRectSize"]
       16 SETTABLEKS                       R7 R6 K3 ["ImageRectSize"]
       18 GETTABLEKS                       R7 R4 K4 ["Image"]
       20 SETTABLEKS                       R7 R6 K4 ["Image"]
       22 SETTABLEKS                       R2 R6 K5 ["Position"]
       24 SETTABLEKS                       R3 R6 K6 ["Size"]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K7 ["BackgroundTransparency"]
       29 GETIMPORT                        R7 K11 [Enum.ResamplerMode.Pixelated]
       31 SETTABLEKS                       R7 R6 K12 ["ResampleMode"]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K13 ["Event"]
       36 GETTABLEKS                       R7 R8 K14 ["MouseEnter"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 SETTABLE                         R8 R6 R7
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K13 ["Event"]
       46 GETTABLEKS                       R7 R8 K15 ["MouseLeave"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R5
       51 SETTABLE                         R8 R6 R7
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K13 ["Event"]
       55 GETTABLEKS                       R7 R8 K16 ["MouseButton1Click"]
       57 NEWCLOSURE                       R8 P2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R0
       61 SETTABLE                         R8 R6 R7
       62 RETURN                           R6 1

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_enteredButton"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R1 R0 K1 ["GetIconProps"]
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["IconsPage"]
        6 NEWTABLE                         R3 0 0
        8 LOADN                            R4 1
        9 GETIMPORT                        R5 K4 [pairs]
       11 GETUPVAL                         R6 0
       12 CALL                             R5 1 3
       13 FORGPREP_NEXT                    R5
       14 GETIMPORT                        R10 K4 [pairs]
       16 MOVE                             R11 R9
       17 CALL                             R10 1 3
       18 FORGPREP_NEXT                    R10
       19 GETTABLEKS                       R15 R1 K5 ["search"]
       21 JUMPIFNOT                        R15 ; [+6]
       22 GETTABLEKS                       R17 R1 K5 ["search"]
       24 NAMECALL                         R15 R14 K6 ["find"]
       26 CALL                             R15 2 1
       27 JUMPIFNOT                        R15 ; [+2]
       28 SETTABLE                         R14 R3 R4
       29 ADDK                             R4 R4 K7 [1]
       30 FORGLOOP                         R10 2 ; [-12]
       32 FORGLOOP                         R5 2 ; [-19]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K8 ["createElement"]
       37 GETUPVAL                         R6 2
       38 DUPTABLE                         R7 K16 [{"Size", "LayoutOrder", "CellSize", "CellPadding", "Cells", "CellComponent", "GetCellProps"}]
       39 GETTABLEKS                       R8 R1 K9 ["Size"]
       41 SETTABLEKS                       R8 R7 K9 ["Size"]
       43 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       45 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       47 GETTABLEKS                       R8 R2 K17 ["GridCellSize"]
       49 SETTABLEKS                       R8 R7 K11 ["CellSize"]
       51 GETTABLEKS                       R8 R2 K18 ["GridCellPadding"]
       53 SETTABLEKS                       R8 R7 K12 ["CellPadding"]
       55 SETTABLEKS                       R3 R7 K13 ["Cells"]
       57 LOADK                            R8 K19 ["ImageButton"]
       58 SETTABLEKS                       R8 R7 K14 ["CellComponent"]
       60 GETTABLEKS                       R8 R0 K20 ["GetIconProps"]
       62 SETTABLEKS                       R8 R7 K15 ["GetCellProps"]
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R6 R2 K10 ["Style"]
       31 GETTABLEKS                       R5 R6 K11 ["Stylizer"]
       33 GETTABLEKS                       R6 R2 K12 ["UI"]
       35 GETTABLEKS                       R7 R6 K13 ["Grid"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETIMPORT                        R13 K1 [script]
       41 GETTABLEKS                       R12 R13 K2 ["Parent"]
       43 GETTABLEKS                       R11 R12 K2 ["Parent"]
       45 GETTABLEKS                       R10 R11 K2 ["Parent"]
       47 GETTABLEKS                       R9 R10 K14 ["FamFamFam"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K4 [require]
       52 GETTABLEKS                       R11 R0 K15 ["Src"]
       54 GETTABLEKS                       R10 R11 K16 ["IconCategories"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K4 [require]
       59 GETTABLEKS                       R12 R0 K15 ["Src"]
       61 GETTABLEKS                       R11 R12 K17 ["TagManager"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       66 LOADK                            R13 K19 ["IconsPage"]
       67 NAMECALL                         R11 R11 K20 ["extend"]
       69 CALL                             R11 2 1
       70 DUPCLOSURE                       R12 K21 [PROTO_4]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 SETTABLEKS                       R12 R11 K22 ["init"]
       76 DUPCLOSURE                       R12 K23 [PROTO_5]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R12 R11 K24 ["render"]
       82 MOVE                             R12 R4
       83 DUPTABLE                         R13 K25 [{"Stylizer"}]
       84 SETTABLEKS                       R5 R13 K11 ["Stylizer"]
       86 CALL                             R12 1 1
       87 MOVE                             R13 R11
       88 CALL                             R12 1 1
       89 MOVE                             R11 R12
       90 RETURN                           R11 1
