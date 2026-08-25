PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Title", "Description", "BuyRobux"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["CreditMetering"]
        3 LOADK                            R4 K5 ["OutOfRobuxTitle"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K7 ["ErrorMessage"]
       11 LOADK                            R4 K8 ["InsufficientRobuxBalance"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Description"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["CreditMetering"]
       19 LOADK                            R4 K2 ["BuyRobux"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["BuyRobux"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["useMemo"]
       11 DUPCLOSURE                       R3 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K3 ["locale"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 DUPTABLE                         R5 K7 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       24 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       28 DUPTABLE                         R6 K10 [{"Labels", "BuyButton"}]
       29 GETUPVAL                         R7 4
       30 GETUPVAL                         R8 5
       31 DUPTABLE                         R9 K12 [{["tag"] = "col grow gap-xxsmall auto-y", ["LayoutOrder"]}]
       32 MOVE                             R10 R1
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       36 DUPTABLE                         R10 K15 [{"Title", "Description"}]
       37 GETUPVAL                         R11 4
       38 GETUPVAL                         R12 6
       39 DUPTABLE                         R13 K19 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       40 GETTABLEKS                       R14 R2 K13 ["Title"]
       42 SETTABLEKS                       R14 R13 K16 ["Text"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K13 ["Title"]
       47 GETUPVAL                         R11 4
       48 GETUPVAL                         R12 6
       49 DUPTABLE                         R13 K22 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 2}]
       50 GETTABLEKS                       R14 R2 K14 ["Description"]
       52 SETTABLEKS                       R14 R13 K16 ["Text"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K14 ["Description"]
       57 CALL                             R7 3 1
       58 SETTABLEKS                       R7 R6 K8 ["Labels"]
       60 GETUPVAL                         R7 4
       61 GETUPVAL                         R8 7
       62 DUPTABLE                         R9 K28 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
       63 GETTABLEKS                       R10 R2 K29 ["BuyRobux"]
       65 SETTABLEKS                       R10 R9 K23 ["text"]
       67 GETUPVAL                         R10 8
       68 GETTABLEKS                       R10 R10 K30 ["Emphasis"]
       70 SETTABLEKS                       R10 R9 K24 ["variant"]
       72 GETUPVAL                         R10 9
       73 GETTABLEKS                       R10 R10 K31 ["Small"]
       75 SETTABLEKS                       R10 R9 K25 ["size"]
       77 GETTABLEKS                       R10 R0 K32 ["openBuyRobux"]
       79 SETTABLEKS                       R10 R9 K26 ["onActivated"]
       81 GETUPVAL                         R10 10
       82 GETTABLEKS                       R10 R10 K33 ["DailyUsage"]
       84 GETTABLEKS                       R10 R10 K34 ["BuyRobuxButton"]
       86 SETTABLEKS                       R10 R9 K27 ["testId"]
       88 MOVE                             R10 R1
       89 CALL                             R10 0 1
       90 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K9 ["BuyButton"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Resources"]
       44 GETTABLEKS                       R7 R7 K14 ["Localization"]
       46 GETTABLEKS                       R7 R7 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K16 ["Button"]
       51 GETTABLEKS                       R8 R2 K17 ["Text"]
       53 GETTABLEKS                       R9 R2 K18 ["View"]
       55 GETTABLEKS                       R10 R2 K19 ["Enums"]
       57 GETTABLEKS                       R10 R10 K20 ["ButtonSize"]
       59 GETTABLEKS                       R11 R2 K19 ["Enums"]
       61 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       63 GETTABLEKS                       R12 R4 K22 ["createNextOrder"]
       65 GETTABLEKS                       R13 R3 K23 ["createElement"]
       67 DUPCLOSURE                       R14 K24 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R5
       79 GETTABLEKS                       R15 R3 K25 ["memo"]
       81 MOVE                             R16 R14
       82 CALL                             R15 1 -1
       83 RETURN                           R15 -1
