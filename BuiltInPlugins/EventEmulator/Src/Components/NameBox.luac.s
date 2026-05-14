PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ChangeCurrentEventName"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["OnChange"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentEventName"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K7 [{"Label", "Text", "LayoutOrder", "OnChange"}]
        9 LOADK                            R5 K8 ["Name"]
       10 SETTABLEKS                       R5 R4 K3 ["Label"]
       12 SETTABLEKS                       R1 R4 K4 ["Text"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K9 ["NameBox"]
       17 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       19 GETTABLEKS                       R5 R0 K6 ["OnChange"]
       21 SETTABLEKS                       R5 R4 K6 ["OnChange"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"CurrentEventName"}]
        1 GETTABLEKS                       R3 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["CurrentEventName"]
        5 SETTABLEKS                       R3 R2 K0 ["CurrentEventName"]
        7 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"ChangeCurrentEventName"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ChangeCurrentEventName"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R6 K12 ["Components"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R6 K13 ["TextInput"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R8 K14 ["Actions"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R8 K15 ["ChangeCurrentEventName"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K4 [require]
       54 GETTABLEKS                       R11 R0 K11 ["Src"]
       56 GETTABLEKS                       R11 R11 K16 ["Util"]
       58 GETTABLEKS                       R11 R11 K17 ["Constants"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K18 ["INPUT_PANE_LAYOUT"]
       63 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       65 LOADK                            R14 K20 ["NameBox"]
       66 NAMECALL                         R12 R12 K21 ["extend"]
       68 CALL                             R12 2 1
       69 DUPCLOSURE                       R13 K22 [PROTO_1]
       70 SETTABLEKS                       R13 R12 K23 ["init"]
       72 DUPCLOSURE                       R13 K24 [PROTO_2]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R13 R12 K25 ["render"]
       78 MOVE                             R13 R5
       79 DUPTABLE                         R14 K27 [{"Stylizer"}]
       80 GETTABLEKS                       R15 R4 K26 ["Stylizer"]
       82 SETTABLEKS                       R15 R14 K26 ["Stylizer"]
       84 CALL                             R13 1 1
       85 MOVE                             R14 R12
       86 CALL                             R13 1 1
       87 MOVE                             R12 R13
       88 GETTABLEKS                       R13 R2 K28 ["connect"]
       90 DUPCLOSURE                       R14 K29 [PROTO_3]
       91 DUPCLOSURE                       R15 K30 [PROTO_5]
       92 CAPTURE                          VAL R9
       93 CALL                             R13 2 1
       94 MOVE                             R14 R12
       95 CALL                             R13 1 -1
       96 RETURN                           R13 -1
