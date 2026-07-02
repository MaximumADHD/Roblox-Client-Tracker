PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnPromote"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnPromote"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnClose"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPromote"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onClose"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onClose"]
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onPromote"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K8 [{"PromptText", "Size", "Buttons", "OnButtonClicked", "OnClose"}]
        9 LOADK                            R7 K9 ["Dialog"]
       10 LOADK                            R8 K10 ["PromotePrompt1"]
       11 NAMECALL                         R5 R1 K11 ["getText"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K3 ["PromptText"]
       16 GETIMPORT                        R5 K14 [UDim2.new]
       18 LOADN                            R6 0
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K15 ["PROMPT_SIZE"]
       22 GETTABLEKS                       R7 R7 K16 ["Width"]
       24 GETTABLEKS                       R7 R7 K17 ["Offset"]
       26 LOADN                            R8 0
       27 LOADN                            R9 180
       28 CALL                             R5 4 1
       29 SETTABLEKS                       R5 R4 K4 ["Size"]
       31 NEWTABLE                         R5 0 2
       33 DUPTABLE                         R6 K23 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       34 LOADK                            R9 K9 ["Dialog"]
       35 LOADK                            R10 K24 ["Cancel"]
       36 NAMECALL                         R7 R1 K11 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K20 ["Text"]
       41 DUPTABLE                         R7 K27 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       42 LOADK                            R10 K9 ["Dialog"]
       43 LOADK                            R11 K28 ["Confirm"]
       44 NAMECALL                         R8 R1 K11 ["getText"]
       46 CALL                             R8 3 1
       47 SETTABLEKS                       R8 R7 K20 ["Text"]
       49 SETLIST                          R5 R6 2 [1]
       51 SETTABLEKS                       R5 R4 K5 ["Buttons"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R5 R4 K6 ["OnButtonClicked"]
       57 GETTABLEKS                       R5 R0 K29 ["onClose"]
       59 SETTABLEKS                       R5 R4 K7 ["OnClose"]
       61 CALL                             R2 2 -1
       62 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
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
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["EditEventsDialog"]
       42 GETTABLEKS                       R7 R7 K16 ["FocusedPrompt"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       47 LOADK                            R9 K18 ["PromoteToCurvesPrompt"]
       48 NAMECALL                         R7 R7 K19 ["extend"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K20 [PROTO_2]
       52 SETTABLEKS                       R8 R7 K21 ["init"]
       54 DUPCLOSURE                       R8 K22 [PROTO_4]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R8 R7 K23 ["render"]
       60 MOVE                             R8 R4
       61 DUPTABLE                         R9 K25 [{"Localization"}]
       62 GETTABLEKS                       R10 R3 K24 ["Localization"]
       64 SETTABLEKS                       R10 R9 K24 ["Localization"]
       66 CALL                             R8 1 1
       67 MOVE                             R9 R7
       68 CALL                             R8 1 1
       69 MOVE                             R7 R8
       70 RETURN                           R7 1
