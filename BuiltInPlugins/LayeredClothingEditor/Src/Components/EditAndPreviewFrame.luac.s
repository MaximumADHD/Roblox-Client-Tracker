PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["InBounds"]
        4 GETTABLEKS                       R3 R1 K2 ["PromptText"]
        6 GETTABLEKS                       R4 R1 K3 ["GoToNext"]
        8 GETTABLEKS                       R5 R1 K4 ["GoToPrevious"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K14 [{["Title"], ["PromptText"], ["NextButtonText"], ["BackButtonText"], ["NextButtonEnabled"], ["BackButtonEnabled"] = True, ["HasBackButton"] = True, ["GoToNext"], ["GoToPrevious"]}]
       17 LOADK                            R12 K15 ["Editor"]
       18 LOADK                            R13 K16 ["EditAndPreview"]
       19 NAMECALL                         R10 R6 K17 ["getText"]
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R9 K7 ["Title"]
       24 SETTABLEKS                       R3 R9 K2 ["PromptText"]
       26 LOADK                            R12 K18 ["Flow"]
       27 LOADK                            R13 K19 ["Next"]
       28 NAMECALL                         R10 R6 K17 ["getText"]
       30 CALL                             R10 3 1
       31 SETTABLEKS                       R10 R9 K8 ["NextButtonText"]
       33 LOADK                            R12 K18 ["Flow"]
       34 LOADK                            R13 K20 ["Back"]
       35 NAMECALL                         R10 R6 K17 ["getText"]
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K9 ["BackButtonText"]
       40 SETTABLEKS                       R2 R9 K10 ["NextButtonEnabled"]
       42 SETTABLEKS                       R4 R9 K3 ["GoToNext"]
       44 SETTABLEKS                       R5 R9 K4 ["GoToPrevious"]
       46 CALL                             R7 2 -1
       47 RETURN                           R7 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 DUPTABLE                         R3 K2 [{"InBounds"}]
        3 GETTABLEKS                       R4 R2 K3 ["inBounds"]
        5 SETTABLEKS                       R4 R3 K1 ["InBounds"]
        7 RETURN                           R3 1

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
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R0 K5 ["Packages"]
       38 GETTABLEKS                       R7 R7 K11 ["AvatarToolsShared"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K12 ["Components"]
       43 GETTABLEKS                       R8 R7 K13 ["FlowScreenLayout"]
       45 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       47 LOADK                            R11 K15 ["EditAndPreviewFrame"]
       48 NAMECALL                         R9 R9 K16 ["extend"]
       50 CALL                             R9 2 1
       51 GETTABLEKS                       R10 R3 K17 ["Util"]
       53 GETTABLEKS                       R11 R10 K18 ["Typecheck"]
       55 GETTABLEKS                       R12 R11 K19 ["wrap"]
       57 MOVE                             R13 R9
       58 GETIMPORT                        R14 K1 [script]
       60 CALL                             R12 2 0
       61 DUPCLOSURE                       R12 K20 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R12 R9 K21 ["render"]
       66 MOVE                             R12 R5
       67 DUPTABLE                         R13 K23 [{"Localization"}]
       68 GETTABLEKS                       R14 R4 K22 ["Localization"]
       70 SETTABLEKS                       R14 R13 K22 ["Localization"]
       72 CALL                             R12 1 1
       73 MOVE                             R13 R9
       74 CALL                             R12 1 1
       75 MOVE                             R9 R12
       76 DUPCLOSURE                       R12 K24 [PROTO_1]
       77 GETTABLEKS                       R13 R2 K25 ["connect"]
       79 MOVE                             R14 R12
       80 CALL                             R13 1 1
       81 MOVE                             R14 R9
       82 CALL                             R13 1 -1
       83 RETURN                           R13 -1
