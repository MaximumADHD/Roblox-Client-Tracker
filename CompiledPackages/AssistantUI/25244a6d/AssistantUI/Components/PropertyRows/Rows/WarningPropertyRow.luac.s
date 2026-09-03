PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Warning"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AskInput"]
        3 LOADK                            R4 K3 ["UnsupportedInput"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Warning"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 DUPCLOSURE                       R3 K3 [PROTO_0]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["locale"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 4
       22 GETUPVAL                         R5 5
       23 DUPTABLE                         R6 K8 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
       24 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       26 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       28 DUPTABLE                         R7 K11 [{"WarningIcon", "WarningText"}]
       29 GETUPVAL                         R8 4
       30 GETUPVAL                         R9 6
       31 DUPTABLE                         R10 K15 [{"name", "style", "size", "LayoutOrder"}]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K16 ["Enums"]
       35 GETTABLEKS                       R11 R11 K17 ["IconName"]
       37 GETTABLEKS                       R11 R11 K18 ["TriangleExclamation"]
       39 SETTABLEKS                       R11 R10 K12 ["name"]
       41 GETTABLEKS                       R11 R1 K19 ["Color"]
       43 GETTABLEKS                       R11 R11 K20 ["Content"]
       45 GETTABLEKS                       R11 R11 K21 ["Emphasis"]
       47 SETTABLEKS                       R11 R10 K13 ["style"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K16 ["Enums"]
       52 GETTABLEKS                       R11 R11 K22 ["IconSize"]
       54 GETTABLEKS                       R11 R11 K23 ["XSmall"]
       56 SETTABLEKS                       R11 R10 K14 ["size"]
       58 MOVE                             R11 R3
       59 CALL                             R11 0 1
       60 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K9 ["WarningIcon"]
       65 GETUPVAL                         R8 4
       66 GETUPVAL                         R9 7
       67 DUPTABLE                         R10 K26 [{["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
       68 GETTABLEKS                       R11 R2 K27 ["Warning"]
       70 SETTABLEKS                       R11 R10 K25 ["Text"]
       72 MOVE                             R11 R3
       73 CALL                             R11 0 1
       74 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K10 ["WarningText"]
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["PropertyRowTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Resources"]
       39 GETTABLEKS                       R7 R7 K12 ["Localization"]
       41 GETTABLEKS                       R7 R7 K13 ["Translator"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R2 K14 ["Icon"]
       46 GETTABLEKS                       R8 R2 K15 ["Text"]
       48 GETTABLEKS                       R9 R2 K16 ["View"]
       50 GETTABLEKS                       R10 R3 K17 ["createElement"]
       52 GETTABLEKS                       R11 R4 K18 ["createNextOrder"]
       54 DUPCLOSURE                       R12 K19 [PROTO_1]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 RETURN                           R12 1
