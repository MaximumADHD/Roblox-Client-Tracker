PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1] = "", ["focused"] = False}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+27]
        2 GETIMPORT                        R1 K2 [string.match]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K3 ["^rbxassetid://[0-9]+$"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K2 [string.match]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K4 ["^[0-9]+$"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+4]
       15 LOADK                            R2 K5 ["rbxassetid://"]
       16 MOVE                             R3 R0
       17 CONCAT                           R1 R2 R3
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 0
       20 JUMPIFNOT                        R1 ; [+7]
       21 GETIMPORT                        R1 K2 [string.match]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K6 ["^rbxassetid://[0-9]+&version=[0-9]+$"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+1]
       27 RETURN                           R0 1
       28 LOADB                            R1 0
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"text"}]
        2 SETTABLEKS                       R0 R4 K0 ["text"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["onHoverFunc"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["text"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R5 K2 [{"text"}]
       10 SETTABLEKS                       R2 R5 K1 ["text"]
       12 NAMECALL                         R3 R3 K3 ["setState"]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["onHoverFunc"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["text"]
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["Get"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["props"]
       15 GETTABLEKS                       R3 R3 K4 ["tagName"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K5 ["SetIcon"]
       20 CALL                             R1 3 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K3 ["props"]
       24 GETTABLEKS                       R1 R1 K6 ["closeFunc"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{"Size", "LayoutOrder"}]
        9 GETTABLEKS                       R6 R1 K3 ["Size"]
       11 SETTABLEKS                       R6 R5 K3 ["Size"]
       13 GETTABLEKS                       R6 R1 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       17 DUPTABLE                         R6 K8 [{"Input", "Submit"}]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K2 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K14 [{"Size", "Text", "PlaceholderText", "OnTextChanged", "OnValidateText", "OnFocusLost"}]
       23 GETIMPORT                        R10 K17 [UDim2.new]
       25 LOADN                            R11 1
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 LOADN                            R14 40
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K3 ["Size"]
       32 GETTABLEKS                       R10 R0 K18 ["state"]
       34 GETTABLEKS                       R10 R10 K19 ["text"]
       36 SETTABLEKS                       R10 R9 K9 ["Text"]
       38 LOADK                            R12 K20 ["IconPicker"]
       39 LOADK                            R13 K21 ["EnterAnAssetID"]
       40 NAMECALL                         R10 R2 K22 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K10 ["PlaceholderText"]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 SETTABLEKS                       R10 R9 K11 ["OnTextChanged"]
       50 GETUPVAL                         R10 3
       51 SETTABLEKS                       R10 R9 K12 ["OnValidateText"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R10 R9 K13 ["OnFocusLost"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K6 ["Input"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K2 ["createElement"]
       64 GETUPVAL                         R8 4
       65 DUPTABLE                         R9 K27 [{["Size"], ["Position"], ["Text"], ["Style"] = "RoundPrimary", ["OnClick"]}]
       66 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       68 LOADN                            R11 100
       69 LOADN                            R12 24
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K3 ["Size"]
       73 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       75 LOADN                            R11 8
       76 LOADN                            R12 50
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K23 ["Position"]
       80 LOADK                            R12 K30 ["General"]
       81 LOADK                            R13 K31 ["Save"]
       82 NAMECALL                         R10 R2 K22 ["getText"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K9 ["Text"]
       87 NEWCLOSURE                       R10 P2
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U5
       91 SETTABLEKS                       R10 R9 K26 ["OnClick"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K7 ["Submit"]
       96 CALL                             R3 3 -1
       97 RETURN                           R3 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R3 K10 ["Localization"]
       31 GETTABLEKS                       R6 R2 K11 ["UI"]
       33 GETTABLEKS                       R7 R6 K12 ["Button"]
       35 GETTABLEKS                       R8 R6 K13 ["Pane"]
       37 GETTABLEKS                       R9 R6 K14 ["TextInput"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R11 R0 K15 ["Src"]
       43 GETTABLEKS                       R11 R11 K16 ["TagManager"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R11 R1 K17 ["PureComponent"]
       48 LOADK                            R13 K18 ["CustomPage"]
       49 NAMECALL                         R11 R11 K19 ["extend"]
       51 CALL                             R11 2 1
       52 GETIMPORT                        R12 K21 [game]
       54 LOADK                            R14 K22 ["TagEditorVersionedUris"]
       55 NAMECALL                         R12 R12 K23 ["GetFastFlag"]
       57 CALL                             R12 2 1
       58 DUPCLOSURE                       R13 K24 [PROTO_0]
       59 SETTABLEKS                       R13 R11 K25 ["init"]
       61 DUPCLOSURE                       R13 K26 [PROTO_1]
       62 CAPTURE                          VAL R12
       63 DUPCLOSURE                       R14 K27 [PROTO_5]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R14 R11 K28 ["render"]
       72 MOVE                             R14 R4
       73 DUPTABLE                         R15 K29 [{"Localization"}]
       74 SETTABLEKS                       R5 R15 K10 ["Localization"]
       76 CALL                             R14 1 1
       77 MOVE                             R15 R11
       78 CALL                             R14 1 1
       79 MOVE                             R11 R14
       80 SETTABLEKS                       R13 R11 K30 ["validate"]
       82 RETURN                           R11 1
