PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onCancel"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Export"] ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["onConfirm"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["onCancel"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"Title", "Buttons", "Resizable", "MinContentSize", "OnButtonPressed", "OnClose"}]
        5 GETTABLEKS                       R4 R0 K8 ["props"]
        7 GETTABLEKS                       R4 R4 K9 ["Localization"]
        9 LOADK                            R6 K10 ["DialogTitle"]
       10 LOADK                            R7 K11 ["ExportNonAccessory"]
       11 NAMECALL                         R4 R4 K12 ["getText"]
       13 CALL                             R4 3 1
       14 SETTABLEKS                       R4 R3 K1 ["Title"]
       16 NEWTABLE                         R4 0 2
       18 DUPTABLE                         R5 K16 [{"Key", "Text", "Style"}]
       19 LOADK                            R6 K17 ["Export"]
       20 SETTABLEKS                       R6 R5 K13 ["Key"]
       22 GETTABLEKS                       R6 R0 K8 ["props"]
       24 GETTABLEKS                       R6 R6 K9 ["Localization"]
       26 LOADK                            R8 K18 ["Dialog"]
       27 LOADK                            R9 K17 ["Export"]
       28 NAMECALL                         R6 R6 K12 ["getText"]
       30 CALL                             R6 3 1
       31 SETTABLEKS                       R6 R5 K14 ["Text"]
       33 LOADK                            R6 K19 ["RoundPrimary"]
       34 SETTABLEKS                       R6 R5 K15 ["Style"]
       36 DUPTABLE                         R6 K16 [{"Key", "Text", "Style"}]
       37 LOADK                            R7 K20 ["Cancel"]
       38 SETTABLEKS                       R7 R6 K13 ["Key"]
       40 GETTABLEKS                       R7 R0 K8 ["props"]
       42 GETTABLEKS                       R7 R7 K9 ["Localization"]
       44 LOADK                            R9 K18 ["Dialog"]
       45 LOADK                            R10 K20 ["Cancel"]
       46 NAMECALL                         R7 R7 K12 ["getText"]
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K14 ["Text"]
       51 LOADK                            R7 K21 ["Round"]
       52 SETTABLEKS                       R7 R6 K15 ["Style"]
       54 SETLIST                          R4 R5 2 [1]
       56 SETTABLEKS                       R4 R3 K2 ["Buttons"]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R3 K3 ["Resizable"]
       61 GETIMPORT                        R4 K24 [Vector2.new]
       63 LOADN                            R5 0
       64 LOADN                            R6 0
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K4 ["MinContentSize"]
       68 NEWCLOSURE                       R4 P0
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R4 R3 K5 ["OnButtonPressed"]
       72 GETTABLEKS                       R4 R0 K8 ["props"]
       74 GETTABLEKS                       R4 R4 K25 ["onCancel"]
       76 SETTABLEKS                       R4 R3 K6 ["OnClose"]
       78 CALL                             R1 2 -1
       79 RETURN                           R1 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["StyledDialog"]
       27 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       29 GETTABLEKS                       R6 R5 K11 ["withContext"]
       31 GETTABLEKS                       R7 R5 K12 ["Plugin"]
       33 GETTABLEKS                       R8 R5 K13 ["Localization"]
       35 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       37 LOADK                            R11 K15 ["PromptExportNonAccessory"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K17 [PROTO_1]
       42 SETTABLEKS                       R10 R9 K18 ["init"]
       44 DUPCLOSURE                       R10 K19 [PROTO_3]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R10 R9 K20 ["render"]
       49 MOVE                             R10 R6
       50 DUPTABLE                         R11 K21 [{"Plugin", "Localization"}]
       51 SETTABLEKS                       R7 R11 K12 ["Plugin"]
       53 SETTABLEKS                       R8 R11 K13 ["Localization"]
       55 CALL                             R10 1 1
       56 MOVE                             R11 R9
       57 CALL                             R10 1 1
       58 MOVE                             R9 R10
       59 RETURN                           R9 1
