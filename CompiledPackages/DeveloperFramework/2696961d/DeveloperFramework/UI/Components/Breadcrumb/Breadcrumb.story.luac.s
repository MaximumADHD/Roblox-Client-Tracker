PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"Editing", "Text"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["Editing"]
        5 SETTABLEKS                       R0 R3 K1 ["Text"]
        7 NAMECALL                         R1 R1 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Editable"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K3 [{"Editing"}]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["Editing"]
       11 NAMECALL                         R0 R0 K4 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Editing", "Text"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Editing"]
        4 GETTABLEKS                       R3 R0 K3 ["props"]
        6 GETTABLEKS                       R2 R3 K4 ["InitialText"]
        8 SETTABLEKS                       R2 R1 K1 ["Text"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K6 ["onEdited"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K7 ["onPressed"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 8 0
        8 NEWTABLE                         R5 0 2
       10 LOADK                            R6 K2 ["%.%."]
       11 LOADK                            R7 K3 ["%."]
       12 SETLIST                          R5 R6 2 [1]
       14 SETTABLEKS                       R5 R4 K4 ["Delimiters"]
       16 GETTABLEKS                       R6 R0 K5 ["state"]
       18 GETTABLEKS                       R5 R6 K6 ["Editing"]
       20 SETTABLEKS                       R5 R4 K6 ["Editing"]
       22 GETTABLEKS                       R6 R1 K7 ["Images"]
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K8 ["GetSelectorIcon"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K9 ["GetImageProps"]
       32 GETTABLEKS                       R5 R0 K10 ["onPressed"]
       34 SETTABLEKS                       R5 R4 K11 ["OnPressed"]
       36 GETTABLEKS                       R6 R1 K12 ["Editable"]
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R5 R0 K13 ["onEdited"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K14 ["OnEdited"]
       45 GETTABLEKS                       R6 R0 K5 ["state"]
       47 GETTABLEKS                       R5 R6 K15 ["Text"]
       49 SETTABLEKS                       R5 R4 K15 ["Text"]
       51 GETIMPORT                        R5 K18 [UDim2.fromOffset]
       53 LOADN                            R6 44
       54 LOADN                            R7 24
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K19 ["Size"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R5 R6 K20 ["Tag"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R7 R8 K20 ["Tag"]
       64 GETTABLE                         R6 R1 R7
       65 SETTABLE                         R6 R4 R5
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"InitialText"}]
        5 LOADK                            R3 K3 ["Image"]
        6 SETTABLEKS                       R3 R2 K1 ["InitialText"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"InitialText"}]
        5 LOADK                            R3 K3 ["Frame.Contents.0.Image"]
        6 SETTABLEKS                       R3 R2 K1 ["InitialText"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"InitialText", "Images"}]
        5 LOADK                            R3 K4 ["Frame $Dialog .. TextButton $Main . ImageLabel"]
        6 SETTABLEKS                       R3 R2 K1 ["InitialText"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["Images"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"InitialText", "Images", "Editable"}]
        5 LOADK                            R3 K5 ["Frame $Dialog .. TextButton $Main . ImageLabel"]
        6 SETTABLEKS                       R3 R2 K1 ["InitialText"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["Images"]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["Editable"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+22]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["createElement"]
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 4 0
        8 LOADK                            R3 K1 ["Frame $Dialog .. TextButton $Main . ImageLabel"]
        9 SETTABLEKS                       R3 R2 K2 ["InitialText"]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["Images"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["Editable"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["Tag"]
       20 LOADK                            R4 K6 ["PropertyCellError"]
       21 SETTABLE                         R4 R2 R3
       22 CALL                             R0 2 1
       23 RETURN                           R0 1
       24 LOADNIL                          R0
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K9 ["supportsStyleSheets"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K10 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["Breadcrumb"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K12 ["PureComponent"]
       34 LOADK                            R6 K13 ["BreadcrumbStory"]
       35 NAMECALL                         R4 R4 K14 ["extend"]
       37 CALL                             R4 2 1
       38 DUPCLOSURE                       R5 K15 [PROTO_2]
       39 SETTABLEKS                       R5 R4 K16 ["init"]
       41 DUPCLOSURE                       R5 K17 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R4 K18 ["render"]
       46 DUPTABLE                         R5 K20 [{"stories"}]
       47 NEWTABLE                         R6 0 5
       49 DUPTABLE                         R7 K23 [{"name", "story"}]
       50 LOADK                            R8 K24 ["Single Element"]
       51 SETTABLEKS                       R8 R7 K21 ["name"]
       53 DUPCLOSURE                       R8 K25 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R8 R7 K22 ["story"]
       58 DUPTABLE                         R8 K23 [{"name", "story"}]
       59 LOADK                            R9 K26 ["Multiple Elements"]
       60 SETTABLEKS                       R9 R8 K21 ["name"]
       62 DUPCLOSURE                       R9 K27 [PROTO_5]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R8 K22 ["story"]
       67 DUPTABLE                         R9 K23 [{"name", "story"}]
       68 LOADK                            R10 K28 ["Images"]
       69 SETTABLEKS                       R10 R9 K21 ["name"]
       71 DUPCLOSURE                       R10 K29 [PROTO_6]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R10 R9 K22 ["story"]
       76 DUPTABLE                         R10 K23 [{"name", "story"}]
       77 LOADK                            R11 K30 ["Editable"]
       78 SETTABLEKS                       R11 R10 K21 ["name"]
       80 DUPCLOSURE                       R11 K31 [PROTO_7]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R11 R10 K22 ["story"]
       85 DUPTABLE                         R11 K23 [{"name", "story"}]
       86 LOADK                            R12 K32 ["PropertyCellError"]
       87 SETTABLEKS                       R12 R11 K21 ["name"]
       89 DUPCLOSURE                       R12 K33 [PROTO_8]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R12 R11 K22 ["story"]
       95 SETLIST                          R6 R7 5 [1]
       97 SETTABLEKS                       R6 R5 K19 ["stories"]
       99 RETURN                           R5 1
