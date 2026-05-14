PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 NEWTABLE                         R6 0 0
       12 DUPTABLE                         R7 K5 [{"Label"}]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K3 ["createElement"]
       16 LOADK                            R9 K6 ["TextLabel"]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K7 ["Dictionary"]
       20 GETTABLEKS                       R10 R10 K8 ["join"]
       22 GETTABLEKS                       R11 R2 K9 ["fontStyle"]
       24 GETTABLEKS                       R11 R11 K10 ["Normal"]
       26 DUPTABLE                         R12 K15 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency"}]
       27 LOADN                            R13 1
       28 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       30 LOADK                            R15 K16 ["General"]
       31 LOADK                            R16 K17 ["MovedToAvatarSettingsPanel"]
       32 NAMECALL                         R13 R3 K18 ["getText"]
       34 CALL                             R13 3 1
       35 SETTABLEKS                       R13 R12 K12 ["Text"]
       37 GETIMPORT                        R13 K21 [UDim2.fromScale]
       39 LOADN                            R14 1
       40 LOADN                            R15 1
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R12 K13 ["Size"]
       44 LOADN                            R13 1
       45 SETTABLEKS                       R13 R12 K14 ["BackgroundTransparency"]
       47 CALL                             R10 2 1
       48 DUPTABLE                         R11 K23 [{"Padding"}]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K3 ["createElement"]
       52 LOADK                            R13 K24 ["UIPadding"]
       53 DUPTABLE                         R14 K27 [{"PaddingLeft", "PaddingRight"}]
       54 GETIMPORT                        R15 K30 [UDim.new]
       56 LOADN                            R16 0
       57 GETTABLEKS                       R18 R2 K32 ["settingsPage"]
       59 GETTABLEKS                       R18 R18 K33 ["failLabelPaddingX"]
       61 DIVK                             R17 R18 K31 [2]
       62 CALL                             R15 2 1
       63 SETTABLEKS                       R15 R14 K25 ["PaddingLeft"]
       65 GETIMPORT                        R15 K30 [UDim.new]
       67 LOADN                            R16 0
       68 GETTABLEKS                       R18 R2 K32 ["settingsPage"]
       70 GETTABLEKS                       R18 R18 K33 ["failLabelPaddingX"]
       72 DIVK                             R17 R18 K31 [2]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K26 ["PaddingRight"]
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K22 ["Padding"]
       79 CALL                             R8 3 1
       80 SETTABLEKS                       R8 R7 K4 ["Label"]
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R6 R3 K11 ["UI"]
       38 GETTABLEKS                       R7 R6 K12 ["Container"]
       40 GETTABLEKS                       R8 R1 K13 ["Component"]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R10 R10 K14 ["Name"]
       46 NAMECALL                         R8 R8 K15 ["extend"]
       48 CALL                             R8 2 1
       49 DUPCLOSURE                       R9 K16 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R9 R8 K17 ["render"]
       55 MOVE                             R9 R5
       56 DUPTABLE                         R10 K20 [{"Stylizer", "Localization"}]
       57 GETTABLEKS                       R11 R4 K18 ["Stylizer"]
       59 SETTABLEKS                       R11 R10 K18 ["Stylizer"]
       61 GETTABLEKS                       R11 R4 K19 ["Localization"]
       63 SETTABLEKS                       R11 R10 K19 ["Localization"]
       65 CALL                             R9 1 1
       66 MOVE                             R10 R8
       67 CALL                             R9 1 1
       68 MOVE                             R8 R9
       69 RETURN                           R8 1
