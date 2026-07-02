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
       14 DUPTABLE                         R8 K14 [{["Style"] = "AcceptCancel", ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       15 LOADK                            R11 K15 ["ScriptConversion"]
       16 LOADK                            R12 K16 ["CommittingScripts"]
       17 NAMECALL                         R9 R2 K17 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLEKS                       R9 R8 K10 ["Title"]
       22 GETTABLEKS                       R9 R3 K11 ["MinContentSize"]
       24 SETTABLEKS                       R9 R8 K11 ["MinContentSize"]
       26 NEWTABLE                         R9 0 2
       28 DUPTABLE                         R10 K21 [{["Key"] = "Confirm", ["Text"]}]
       29 LOADK                            R13 K15 ["ScriptConversion"]
       30 LOADK                            R14 K19 ["Confirm"]
       31 NAMECALL                         R11 R2 K17 ["getText"]
       33 CALL                             R11 3 1
       34 SETTABLEKS                       R11 R10 K20 ["Text"]
       36 DUPTABLE                         R11 K23 [{["Key"] = "Cancel", ["Text"]}]
       37 LOADK                            R14 K15 ["ScriptConversion"]
       38 LOADK                            R15 K22 ["Cancel"]
       39 NAMECALL                         R12 R2 K17 ["getText"]
       41 CALL                             R12 3 1
       42 SETTABLEKS                       R12 R11 K20 ["Text"]
       44 SETLIST                          R9 R10 2 [1]
       46 SETTABLEKS                       R9 R8 K12 ["Buttons"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R9 R8 K13 ["OnButtonPressed"]
       53 SETTABLEKS                       R5 R8 K4 ["OnClose"]
       55 DUPTABLE                         R9 K25 [{"Contents"}]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K5 ["createElement"]
       59 GETUPVAL                         R11 2
       60 DUPTABLE                         R12 K27 [{["Text"], ["TextWrapped"] = True}]
       61 LOADK                            R15 K15 ["ScriptConversion"]
       62 LOADK                            R16 K28 ["CommitWarning"]
       63 NAMECALL                         R13 R2 K17 ["getText"]
       65 CALL                             R13 3 1
       66 SETTABLEKS                       R13 R12 K20 ["Text"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K24 ["Contents"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1

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
       31 LOADK                            R9 K14 ["ConfirmCommitDialog"]
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
