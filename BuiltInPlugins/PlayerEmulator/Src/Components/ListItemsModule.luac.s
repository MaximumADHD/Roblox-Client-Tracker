PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ListItemsModuleExpansionCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["expanded"]
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 DUPTABLE                         R2 K3 [{"expanded"}]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["state"]
       15 GETTABLEKS                       R4 R4 K2 ["expanded"]
       17 NOT                              R3 R4
       18 SETTABLEKS                       R3 R2 K2 ["expanded"]
       20 NAMECALL                         R0 R0 K4 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ListItemsCheckBoxCallback"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["LabelText"]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Plugin"]
       10 NAMECALL                         R4 R4 K3 ["get"]
       12 CALL                             R4 1 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"expanded"}]
        1 GETTABLEKS                       R3 R1 K2 ["Expanded"]
        3 SETTABLEKS                       R3 R2 K0 ["expanded"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K4 ["onExpandedStateChanged"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R0 K5 ["checkBoxCallback"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Enabled"]
        6 GETTABLEKS                       R4 R1 K3 ["expanded"]
        8 GETTABLEKS                       R5 R2 K4 ["LabelText"]
       10 GETTABLEKS                       R6 R2 K5 ["Items"]
       12 JUMPIF                           R6 ; [+2]
       13 NEWTABLE                         R6 0 0
       15 GETTABLEKS                       R7 R2 K6 ["ListStatus"]
       17 NEWTABLE                         R8 0 0
       19 GETIMPORT                        R9 K8 [pairs]
       21 MOVE                             R10 R6
       22 CALL                             R9 1 3
       23 FORGPREP_NEXT                    R9
       24 GETUPVAL                         R15 0
       25 GETTABLEKS                       R15 R15 K9 ["List"]
       27 GETTABLEKS                       R15 R15 K10 ["find"]
       29 MOVE                             R16 R7
       30 MOVE                             R17 R13
       31 CALL                             R15 2 1
       32 JUMPIFNOTEQKNIL                  R15 ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 LOADK                            R16 K11 ["Item"]
       37 MOVE                             R17 R13
       38 CONCAT                           R15 R16 R17
       39 GETUPVAL                         R16 1
       40 GETTABLEKS                       R16 R16 K12 ["createElement"]
       42 GETUPVAL                         R17 2
       43 DUPTABLE                         R18 K16 [{"Enabled", "ItemKey", "Selected", "CheckBoxCallback"}]
       44 SETTABLEKS                       R3 R18 K2 ["Enabled"]
       46 SETTABLEKS                       R13 R18 K13 ["ItemKey"]
       48 SETTABLEKS                       R14 R18 K14 ["Selected"]
       50 GETTABLEKS                       R19 R0 K17 ["checkBoxCallback"]
       52 SETTABLEKS                       R19 R18 K15 ["CheckBoxCallback"]
       54 CALL                             R16 2 1
       55 SETTABLE                         R16 R8 R15
       56 FORGLOOP                         R9 2 ; [-33]
       58 GETUPVAL                         R10 3
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+16]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K12 ["createElement"]
       64 GETUPVAL                         R10 4
       65 DUPTABLE                         R11 K21 [{"Expanded", "OnExpandedChanged", "Text"}]
       66 SETTABLEKS                       R4 R11 K18 ["Expanded"]
       68 GETTABLEKS                       R12 R0 K22 ["onExpandedStateChanged"]
       70 SETTABLEKS                       R12 R11 K19 ["OnExpandedChanged"]
       72 SETTABLEKS                       R5 R11 K20 ["Text"]
       74 MOVE                             R12 R8
       75 CALL                             R9 3 1
       76 JUMPIF                           R9 ; [+1]
       77 LOADNIL                          R9
       78 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["ExpandablePane"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Components"]
       44 GETTABLEKS                       R9 R9 K15 ["CheckBoxModule"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Util"]
       53 GETTABLEKS                       R10 R10 K17 ["PlayerEmulatorUtilities"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R9 R9 K18 ["getSocialMediaReferencesAllowed"]
       58 GETTABLEKS                       R10 R2 K19 ["PureComponent"]
       60 LOADK                            R12 K20 ["ListItemsModule"]
       61 NAMECALL                         R10 R10 K21 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K22 [PROTO_2]
       65 SETTABLEKS                       R11 R10 K23 ["init"]
       67 DUPCLOSURE                       R11 K24 [PROTO_3]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R11 R10 K25 ["render"]
       75 MOVE                             R11 R5
       76 DUPTABLE                         R12 K28 [{"Plugin", "Stylizer"}]
       77 GETTABLEKS                       R13 R4 K26 ["Plugin"]
       79 SETTABLEKS                       R13 R12 K26 ["Plugin"]
       81 GETTABLEKS                       R13 R4 K27 ["Stylizer"]
       83 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
       85 CALL                             R11 1 1
       86 MOVE                             R12 R10
       87 CALL                             R11 1 1
       88 MOVE                             R10 R11
       89 RETURN                           R10 1
