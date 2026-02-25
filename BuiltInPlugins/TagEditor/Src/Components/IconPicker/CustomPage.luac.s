PROTO_0:
        0 DUPTABLE                         R1 K2 [{"text", "focused"}]
        1 LOADK                            R2 K3 [""]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["focused"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+18]
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
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"text"}]
        2 SETTABLEKS                       R0 R4 K0 ["text"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 JUMPIFEQKNIL                     R0 ; [+19]
        9 GETIMPORT                        R3 K5 [string.match]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K6 ["^rbxassetid://[0-9]+$"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 MOVE                             R2 R0
       16 JUMP                             ; [+11]
       17 GETIMPORT                        R3 K5 [string.match]
       19 MOVE                             R4 R0
       20 LOADK                            R5 K7 ["^[0-9]+$"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 LOADK                            R3 K8 ["rbxassetid://"]
       24 MOVE                             R4 R0
       25 CONCAT                           R2 R3 R4
       26 JUMP                             ; [+1]
       27 LOADB                            R2 0
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K9 ["props"]
       32 GETTABLEKS                       R3 R4 K10 ["onHoverFunc"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["text"]
        5 JUMPIFEQKNIL                     R3 ; [+19]
        7 GETIMPORT                        R4 K4 [string.match]
        9 MOVE                             R5 R3
       10 LOADK                            R6 K5 ["^rbxassetid://[0-9]+$"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R2 R3
       14 JUMP                             ; [+11]
       15 GETIMPORT                        R4 K4 [string.match]
       17 MOVE                             R5 R3
       18 LOADK                            R6 K6 ["^[0-9]+$"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 LOADK                            R4 K7 ["rbxassetid://"]
       22 MOVE                             R5 R3
       23 CONCAT                           R2 R4 R5
       24 JUMP                             ; [+1]
       25 LOADB                            R2 0
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETUPVAL                         R3 0
       28 DUPTABLE                         R5 K8 [{"text"}]
       29 SETTABLEKS                       R2 R5 K1 ["text"]
       31 NAMECALL                         R3 R3 K9 ["setState"]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K10 ["props"]
       37 GETTABLEKS                       R3 R4 K11 ["onHoverFunc"]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["text"]
        5 JUMPIFEQKNIL                     R1 ; [+19]
        7 GETIMPORT                        R2 K4 [string.match]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K5 ["^rbxassetid://[0-9]+$"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 MOVE                             R0 R1
       14 JUMP                             ; [+11]
       15 GETIMPORT                        R2 K4 [string.match]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K6 ["^[0-9]+$"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 LOADK                            R2 K7 ["rbxassetid://"]
       22 MOVE                             R3 R1
       23 CONCAT                           R0 R2 R3
       24 JUMP                             ; [+1]
       25 LOADB                            R0 0
       26 JUMPIFNOT                        R0 ; [+19]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K8 ["Get"]
       30 CALL                             R1 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K9 ["props"]
       34 GETTABLEKS                       R3 R4 K10 ["tagName"]
       36 MOVE                             R4 R0
       37 NAMECALL                         R1 R1 K11 ["SetIcon"]
       39 CALL                             R1 3 0
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K9 ["props"]
       43 GETTABLEKS                       R1 R2 K12 ["closeFunc"]
       45 CALL                             R1 0 0
       46 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{"Size", "LayoutOrder"}]
        9 GETTABLEKS                       R6 R1 K3 ["Size"]
       11 SETTABLEKS                       R6 R5 K3 ["Size"]
       13 GETTABLEKS                       R6 R1 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       17 DUPTABLE                         R6 K8 [{"Input", "Submit"}]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K2 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K14 [{"Size", "Text", "PlaceholderText", "OnTextChanged", "OnValidateText", "OnFocusLost"}]
       23 GETIMPORT                        R10 K17 [UDim2.new]
       25 LOADN                            R11 1
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 LOADN                            R14 40
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K3 ["Size"]
       32 GETTABLEKS                       R11 R0 K18 ["state"]
       34 GETTABLEKS                       R10 R11 K19 ["text"]
       36 SETTABLEKS                       R10 R9 K9 ["Text"]
       38 LOADK                            R12 K20 ["IconPicker"]
       39 LOADK                            R13 K21 ["EnterAnAssetID"]
       40 NAMECALL                         R10 R2 K22 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K10 ["PlaceholderText"]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R10 R9 K11 ["OnTextChanged"]
       49 GETUPVAL                         R10 3
       50 SETTABLEKS                       R10 R9 K12 ["OnValidateText"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R10 R9 K13 ["OnFocusLost"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K6 ["Input"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K2 ["createElement"]
       62 GETUPVAL                         R8 4
       63 DUPTABLE                         R9 K26 [{"Size", "Position", "Text", "Style", "OnClick"}]
       64 GETIMPORT                        R10 K28 [UDim2.fromOffset]
       66 LOADN                            R11 100
       67 LOADN                            R12 24
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K3 ["Size"]
       71 GETIMPORT                        R10 K28 [UDim2.fromOffset]
       73 LOADN                            R11 8
       74 LOADN                            R12 50
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K23 ["Position"]
       78 LOADK                            R12 K29 ["General"]
       79 LOADK                            R13 K30 ["Save"]
       80 NAMECALL                         R10 R2 K22 ["getText"]
       82 CALL                             R10 3 1
       83 SETTABLEKS                       R10 R9 K9 ["Text"]
       85 LOADK                            R10 K31 ["RoundPrimary"]
       86 SETTABLEKS                       R10 R9 K24 ["Style"]
       88 NEWCLOSURE                       R10 P2
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U5
       91 SETTABLEKS                       R10 R9 K25 ["OnClick"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K7 ["Submit"]
       96 CALL                             R3 3 -1
       97 RETURN                           R3 -1

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
       29 GETTABLEKS                       R5 R3 K10 ["Localization"]
       31 GETTABLEKS                       R6 R2 K11 ["UI"]
       33 GETTABLEKS                       R7 R6 K12 ["Button"]
       35 GETTABLEKS                       R8 R6 K13 ["Pane"]
       37 GETTABLEKS                       R9 R6 K14 ["TextInput"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R12 R0 K15 ["Src"]
       43 GETTABLEKS                       R11 R12 K16 ["TagManager"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R11 R1 K17 ["PureComponent"]
       48 LOADK                            R13 K18 ["CustomPage"]
       49 NAMECALL                         R11 R11 K19 ["extend"]
       51 CALL                             R11 2 1
       52 DUPCLOSURE                       R12 K20 [PROTO_0]
       53 SETTABLEKS                       R12 R11 K21 ["init"]
       55 DUPCLOSURE                       R12 K22 [PROTO_1]
       56 DUPCLOSURE                       R13 K23 [PROTO_5]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R10
       63 SETTABLEKS                       R13 R11 K24 ["render"]
       65 MOVE                             R13 R4
       66 DUPTABLE                         R14 K25 [{"Localization"}]
       67 SETTABLEKS                       R5 R14 K10 ["Localization"]
       69 CALL                             R13 1 1
       70 MOVE                             R14 R11
       71 CALL                             R13 1 1
       72 MOVE                             R11 R13
       73 RETURN                           R11 1
