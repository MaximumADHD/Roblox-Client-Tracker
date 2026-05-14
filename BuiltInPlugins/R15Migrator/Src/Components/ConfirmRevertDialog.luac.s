PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Confirm"] ; [+5]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["OnConfirm"]
        8 GETTABLEKS                       R5 R1 K4 ["OnClose"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K12 [{"Style", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       15 LOADK                            R9 K13 ["AcceptCancel"]
       16 SETTABLEKS                       R9 R8 K6 ["Style"]
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K7 ["Modal"]
       21 LOADK                            R11 K14 ["ScriptConversion"]
       22 LOADK                            R12 K15 ["RevertingScripts"]
       23 NAMECALL                         R9 R2 K16 ["getText"]
       25 CALL                             R9 3 1
       26 SETTABLEKS                       R9 R8 K8 ["Title"]
       28 GETTABLEKS                       R9 R3 K9 ["MinContentSize"]
       30 SETTABLEKS                       R9 R8 K9 ["MinContentSize"]
       32 NEWTABLE                         R9 0 2
       34 DUPTABLE                         R10 K19 [{"Key", "Text"}]
       35 LOADK                            R11 K20 ["Confirm"]
       36 SETTABLEKS                       R11 R10 K17 ["Key"]
       38 LOADK                            R13 K14 ["ScriptConversion"]
       39 LOADK                            R14 K20 ["Confirm"]
       40 NAMECALL                         R11 R2 K16 ["getText"]
       42 CALL                             R11 3 1
       43 SETTABLEKS                       R11 R10 K18 ["Text"]
       45 DUPTABLE                         R11 K19 [{"Key", "Text"}]
       46 LOADK                            R12 K21 ["Cancel"]
       47 SETTABLEKS                       R12 R11 K17 ["Key"]
       49 LOADK                            R14 K14 ["ScriptConversion"]
       50 LOADK                            R15 K21 ["Cancel"]
       51 NAMECALL                         R12 R2 K16 ["getText"]
       53 CALL                             R12 3 1
       54 SETTABLEKS                       R12 R11 K18 ["Text"]
       56 SETLIST                          R9 R10 2 [1]
       58 SETTABLEKS                       R9 R8 K10 ["Buttons"]
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R9 R8 K11 ["OnButtonPressed"]
       65 SETTABLEKS                       R5 R8 K4 ["OnClose"]
       67 DUPTABLE                         R9 K23 [{"Contents"}]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K5 ["createElement"]
       71 GETUPVAL                         R11 2
       72 DUPTABLE                         R12 K25 [{"Text", "TextWrapped"}]
       73 LOADK                            R15 K14 ["ScriptConversion"]
       74 LOADK                            R16 K26 ["RevertWarning"]
       75 NAMECALL                         R13 R2 K16 ["getText"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K18 ["Text"]
       80 LOADB                            R13 1
       81 SETTABLEKS                       R13 R12 K24 ["TextWrapped"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K22 ["Contents"]
       86 CALL                             R6 3 -1
       87 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R2 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["TextLabel"]
       27 GETTABLEKS                       R6 R4 K12 ["StyledDialog"]
       29 GETTABLEKS                       R7 R1 K13 ["PureComponent"]
       31 LOADK                            R9 K14 ["ConfirmRevertDialog"]
       32 NAMECALL                         R7 R7 K15 ["extend"]
       34 CALL                             R7 2 1
       35 DUPCLOSURE                       R8 K16 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R8 R7 K17 ["render"]
       41 GETTABLEKS                       R8 R3 K18 ["withContext"]
       43 DUPTABLE                         R9 K21 [{"Localization", "Stylizer"}]
       44 GETTABLEKS                       R10 R3 K19 ["Localization"]
       46 SETTABLEKS                       R10 R9 K19 ["Localization"]
       48 GETTABLEKS                       R10 R3 K20 ["Stylizer"]
       50 SETTABLEKS                       R10 R9 K20 ["Stylizer"]
       52 CALL                             R8 1 1
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 MOVE                             R7 R8
       56 RETURN                           R7 1
