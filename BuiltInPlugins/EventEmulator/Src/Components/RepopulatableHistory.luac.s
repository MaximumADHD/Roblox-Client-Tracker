PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["HistoryItems"]
        5 GETTABLEKS                       R2 R0 K2 ["Stylizer"]
        7 GETTABLEKS                       R4 R2 K3 ["Layout"]
        9 GETTABLEKS                       R3 R4 K4 ["Vertical"]
       11 DUPTABLE                         R4 K5 [{"Layout"}]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K6 ["createElement"]
       15 LOADK                            R6 K7 ["UIListLayout"]
       16 GETTABLEKS                       R7 R3 K4 ["Vertical"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K3 ["Layout"]
       21 GETIMPORT                        R5 K9 [pairs]
       23 MOVE                             R6 R1
       24 CALL                             R5 1 3
       25 FORGPREP_NEXT                    R5
       26 MOVE                             R11 R4
       27 LOADN                            R12 1
       28 GETUPVAL                         R14 1
       29 GETTABLEKS                       R13 R14 K6 ["createElement"]
       31 GETUPVAL                         R14 2
       32 DUPTABLE                         R15 K13 [{"View", "Name", "Data"}]
       33 GETTABLEKS                       R16 R9 K10 ["View"]
       35 SETTABLEKS                       R16 R15 K10 ["View"]
       37 GETTABLEKS                       R16 R9 K11 ["Name"]
       39 SETTABLEKS                       R16 R15 K11 ["Name"]
       41 GETTABLEKS                       R16 R9 K12 ["Data"]
       43 SETTABLEKS                       R16 R15 K12 ["Data"]
       45 CALL                             R13 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R10 K16 [table.insert]
       49 CALL                             R10 -1 0
       50 FORGLOOP                         R5 2 ; [-25]
       52 RETURN                           R4 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["createChildren"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Text"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K6 [{"Style", "Layout"}]
       11 LOADK                            R7 K7 ["RoundBox"]
       12 SETTABLEKS                       R7 R6 K4 ["Style"]
       14 GETIMPORT                        R7 K11 [Enum.FillDirection.Vertical]
       16 SETTABLEKS                       R7 R6 K5 ["Layout"]
       18 DUPTABLE                         R7 K14 [{"Header", "ScrollingContainer"}]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K3 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K17 [{"AutomaticSize", "TextXAlignment", "Style", "Text"}]
       24 GETIMPORT                        R11 K19 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       28 GETIMPORT                        R11 K21 [Enum.TextXAlignment.Center]
       30 SETTABLEKS                       R11 R10 K16 ["TextXAlignment"]
       32 LOADK                            R11 K22 ["Bold"]
       33 SETTABLEKS                       R11 R10 K4 ["Style"]
       35 LOADK                            R11 K23 ["History"]
       36 SETTABLEKS                       R11 R10 K2 ["Text"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K12 ["Header"]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K3 ["createElement"]
       44 GETUPVAL                         R9 3
       45 DUPTABLE                         R10 K25 [{"Size"}]
       46 GETIMPORT                        R11 K28 [UDim2.new]
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 LOADN                            R14 1
       51 GETTABLEKS                       R17 R3 K29 ["BrightText"]
       53 GETTABLEKS                       R16 R17 K24 ["Size"]
       55 MINUS                            R15 R16
       56 CALL                             R11 4 1
       57 SETTABLEKS                       R11 R10 K24 ["Size"]
       59 GETTABLEKS                       R11 R0 K30 ["createChildren"]
       61 CALL                             R11 0 -1
       62 CALL                             R8 -1 1
       63 SETTABLEKS                       R8 R7 K13 ["ScrollingContainer"]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"HistoryItems"}]
        1 GETTABLEKS                       R4 R0 K2 ["History"]
        3 GETTABLEKS                       R3 R4 K0 ["HistoryItems"]
        5 SETTABLEKS                       R3 R2 K0 ["HistoryItems"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Components"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R6 K13 ["RepopulatableHistoryItem"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R3 K14 ["UI"]
       45 GETTABLEKS                       R9 R8 K15 ["Pane"]
       47 GETTABLEKS                       R10 R8 K16 ["TextLabel"]
       49 GETTABLEKS                       R11 R8 K17 ["ScrollingFrame"]
       51 GETTABLEKS                       R12 R1 K18 ["PureComponent"]
       53 LOADK                            R14 K19 ["RepopulatableHistory"]
       54 NAMECALL                         R12 R12 K20 ["extend"]
       56 CALL                             R12 2 1
       57 DUPCLOSURE                       R13 K21 [PROTO_1]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R13 R12 K22 ["init"]
       62 DUPCLOSURE                       R13 K23 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R11
       67 SETTABLEKS                       R13 R12 K24 ["render"]
       69 MOVE                             R13 R5
       70 DUPTABLE                         R14 K26 [{"Stylizer"}]
       71 GETTABLEKS                       R15 R4 K25 ["Stylizer"]
       73 SETTABLEKS                       R15 R14 K25 ["Stylizer"]
       75 CALL                             R13 1 1
       76 MOVE                             R14 R12
       77 CALL                             R13 1 1
       78 MOVE                             R12 R13
       79 GETTABLEKS                       R13 R2 K27 ["connect"]
       81 DUPCLOSURE                       R14 K28 [PROTO_3]
       82 CALL                             R13 1 1
       83 MOVE                             R14 R12
       84 CALL                             R13 1 -1
       85 RETURN                           R13 -1
