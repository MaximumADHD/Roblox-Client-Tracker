PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 -1
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"Default"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["createElement"]
        4 GETUPVAL                         R2 1
        5 NEWTABLE                         R3 4 0
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       10 LOADK                            R4 K0 ["Default"]
       11 SETTABLEKS                       R4 R3 K4 ["Text"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["Tag"]
       16 LOADK                            R5 K6 ["X-Fit"]
       17 SETTABLE                         R5 R3 R4
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K0 ["Default"]
       21 LOADN                            R2 -1
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          REF R2
       24 CLOSEUPVALS                      R2
       25 GETUPVAL                         R2 2
       26 NAMECALL                         R2 R2 K7 ["GetChildren"]
       28 CALL                             R2 1 3
       29 FORGPREP                         R2
       30 GETTABLEKS                       R7 R6 K8 ["Selector"]
       32 LOADK                            R9 K9 ["[A-Za-z0-9]+"]
       33 NAMECALL                         R7 R7 K10 ["match"]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K2 ["createElement"]
       39 GETUPVAL                         R9 1
       40 NEWTABLE                         R10 4 0
       42 MOVE                             R11 R1
       43 CALL                             R11 0 1
       44 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       46 SETTABLEKS                       R7 R10 K4 ["Text"]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K5 ["Tag"]
       51 GETUPVAL                         R12 3
       52 LOADK                            R13 K6 ["X-Fit"]
       53 MOVE                             R14 R7
       54 CALL                             R12 2 1
       55 SETTABLE                         R12 R10 R11
       56 CALL                             R8 2 1
       57 SETTABLE                         R8 R0 R5
       58 FORGLOOP                         R2 2 ; [-29]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K2 ["createElement"]
       63 GETUPVAL                         R3 1
       64 NEWTABLE                         R4 4 0
       66 GETIMPORT                        R5 K13 [Font.fromId]
       68 LOADK                            R6 K14 [8836875837]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K15 ["FontFace"]
       72 MOVE                             R5 R1
       73 CALL                             R5 0 1
       74 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       76 LOADK                            R5 K16 ["This TextLabel uses the FontFace prop"]
       77 SETTABLEKS                       R5 R4 K4 ["Text"]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K5 ["Tag"]
       82 LOADK                            R6 K6 ["X-Fit"]
       83 SETTABLE                         R6 R4 R5
       84 CALL                             R2 2 1
       85 SETTABLEKS                       R2 R0 K17 ["Using Font Face Prop"]
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R2 R2 K2 ["createElement"]
       90 GETUPVAL                         R3 4
       91 NEWTABLE                         R4 1 0
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K5 ["Tag"]
       96 LOADK                            R6 K18 ["X-ColumnM X-FitY"]
       97 SETTABLE                         R6 R4 R5
       98 MOVE                             R5 R0
       99 CALL                             R2 3 -1
      100 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["TextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K11 ["Styling"]
       38 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K4 ["Parent"]
       47 GETTABLEKS                       R6 R6 K13 ["styles"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_1]
       51 DUPTABLE                         R7 K16 [{"story"}]
       52 DUPCLOSURE                       R8 K17 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R7 K15 ["story"]
       60 RETURN                           R7 1
