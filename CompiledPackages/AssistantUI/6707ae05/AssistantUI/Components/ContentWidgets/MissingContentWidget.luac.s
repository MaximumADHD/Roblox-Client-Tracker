PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Title"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Missing"]
        3 LOADK                            R4 K0 ["Title"]
        4 DUPTABLE                         R5 K4 [{"name"}]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K5 ["type"]
        8 SETTABLEKS                       R6 R5 K3 ["name"]
       10 NAMECALL                         R1 R1 K6 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K0 ["Title"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["locale"]
       17 GETTABLEKS                       R6 R0 K4 ["type"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R5 5
       26 DUPTABLE                         R6 K8 [{["tag"] = "row align-y-center gap-small size-full-600 padding-y-xxsmall radius-medium", ["LayoutOrder"]}]
       27 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       29 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       31 DUPTABLE                         R7 K11 [{"Icon", "Text"}]
       32 GETUPVAL                         R8 4
       33 GETUPVAL                         R9 6
       34 DUPTABLE                         R10 K15 [{"name", "size", "style", "LayoutOrder"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K16 ["Enums"]
       38 GETTABLEKS                       R11 R11 K17 ["IconName"]
       40 GETTABLEKS                       R11 R11 K18 ["TriangleExclamation"]
       42 SETTABLEKS                       R11 R10 K12 ["name"]
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K16 ["Enums"]
       47 GETTABLEKS                       R11 R11 K19 ["IconSize"]
       49 GETTABLEKS                       R11 R11 K20 ["Medium"]
       51 SETTABLEKS                       R11 R10 K13 ["size"]
       53 GETTABLEKS                       R11 R1 K21 ["Color"]
       55 GETTABLEKS                       R11 R11 K22 ["System"]
       57 GETTABLEKS                       R11 R11 K23 ["Warning"]
       59 SETTABLEKS                       R11 R10 K14 ["style"]
       61 MOVE                             R11 R3
       62 CALL                             R11 0 1
       63 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K9 ["Icon"]
       68 GETUPVAL                         R8 4
       69 GETUPVAL                         R9 7
       70 DUPTABLE                         R10 K25 [{["tag"] = "fill size-0-full text-label-small text-align-x-left text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
       71 GETTABLEKS                       R11 R2 K26 ["Title"]
       73 SETTABLEKS                       R11 R10 K10 ["Text"]
       75 MOVE                             R11 R3
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K10 ["Text"]
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Resources"]
       32 GETTABLEKS                       R5 R5 K11 ["Localization"]
       34 GETTABLEKS                       R5 R5 K12 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K14 ["Icon"]
       44 GETTABLEKS                       R7 R1 K15 ["Text"]
       46 GETTABLEKS                       R8 R1 K16 ["View"]
       48 GETTABLEKS                       R9 R3 K17 ["createNextOrder"]
       50 GETTABLEKS                       R10 R2 K18 ["createElement"]
       52 DUPCLOSURE                       R11 K19 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 DUPTABLE                         R12 K21 [{"ContentWidget"}]
       62 GETTABLEKS                       R13 R2 K22 ["memo"]
       64 MOVE                             R14 R11
       65 CALL                             R13 1 1
       66 SETTABLEKS                       R13 R12 K20 ["ContentWidget"]
       68 RETURN                           R12 1
