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
       26 DUPTABLE                         R12 K16 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["BackgroundTransparency"] = 1}]
       27 LOADK                            R15 K17 ["General"]
       28 LOADK                            R16 K18 ["MovedToAvatarSettingsPanel"]
       29 NAMECALL                         R13 R3 K19 ["getText"]
       31 CALL                             R13 3 1
       32 SETTABLEKS                       R13 R12 K13 ["Text"]
       34 GETIMPORT                        R13 K22 [UDim2.fromScale]
       36 LOADN                            R14 1
       37 LOADN                            R15 1
       38 CALL                             R13 2 1
       39 SETTABLEKS                       R13 R12 K14 ["Size"]
       41 CALL                             R10 2 1
       42 DUPTABLE                         R11 K24 [{"Padding"}]
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K3 ["createElement"]
       46 LOADK                            R13 K25 ["UIPadding"]
       47 DUPTABLE                         R14 K28 [{"PaddingLeft", "PaddingRight"}]
       48 GETIMPORT                        R15 K31 [UDim.new]
       50 LOADN                            R16 0
       51 GETTABLEKS                       R18 R2 K33 ["settingsPage"]
       53 GETTABLEKS                       R18 R18 K34 ["failLabelPaddingX"]
       55 DIVK                             R17 R18 K32 [2]
       56 CALL                             R15 2 1
       57 SETTABLEKS                       R15 R14 K26 ["PaddingLeft"]
       59 GETIMPORT                        R15 K31 [UDim.new]
       61 LOADN                            R16 0
       62 GETTABLEKS                       R18 R2 K33 ["settingsPage"]
       64 GETTABLEKS                       R18 R18 K34 ["failLabelPaddingX"]
       66 DIVK                             R17 R18 K32 [2]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K27 ["PaddingRight"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K23 ["Padding"]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K4 ["Label"]
       76 CALL                             R4 3 -1
       77 RETURN                           R4 -1

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
