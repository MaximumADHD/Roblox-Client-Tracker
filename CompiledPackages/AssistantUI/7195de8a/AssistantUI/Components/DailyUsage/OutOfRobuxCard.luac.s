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
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       15 DUPCLOSURE                       R3 K3 [PROTO_0]
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R4 0 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["locale"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 4
       26 GETUPVAL                         R4 5
       27 DUPTABLE                         R5 K8 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       28 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       32 DUPTABLE                         R6 K11 [{"Labels", "BuyButton"}]
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 5
       35 DUPTABLE                         R9 K13 [{["tag"] = "col grow gap-xxsmall auto-y", ["LayoutOrder"]}]
       36 MOVE                             R10 R1
       37 CALL                             R10 0 1
       38 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       40 DUPTABLE                         R10 K16 [{"Title", "Description"}]
       41 GETUPVAL                         R11 4
       42 GETUPVAL                         R12 6
       43 DUPTABLE                         R13 K20 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       44 GETTABLEKS                       R14 R2 K14 ["Title"]
       46 SETTABLEKS                       R14 R13 K17 ["Text"]
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K14 ["Title"]
       51 GETUPVAL                         R11 4
       52 GETUPVAL                         R12 6
       53 DUPTABLE                         R13 K23 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 2}]
       54 GETTABLEKS                       R14 R2 K15 ["Description"]
       56 SETTABLEKS                       R14 R13 K17 ["Text"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K15 ["Description"]
       61 CALL                             R7 3 1
       62 SETTABLEKS                       R7 R6 K9 ["Labels"]
       64 GETUPVAL                         R7 4
       65 GETUPVAL                         R8 7
       66 DUPTABLE                         R9 K29 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
       67 GETTABLEKS                       R10 R2 K30 ["BuyRobux"]
       69 SETTABLEKS                       R10 R9 K24 ["text"]
       71 GETUPVAL                         R10 8
       72 GETTABLEKS                       R10 R10 K31 ["Emphasis"]
       74 SETTABLEKS                       R10 R9 K25 ["variant"]
       76 GETUPVAL                         R10 9
       77 GETTABLEKS                       R10 R10 K32 ["Small"]
       79 SETTABLEKS                       R10 R9 K26 ["size"]
       81 GETTABLEKS                       R10 R0 K33 ["openBuyRobux"]
       83 SETTABLEKS                       R10 R9 K27 ["onActivated"]
       85 GETUPVAL                         R10 10
       86 GETTABLEKS                       R10 R10 K34 ["DailyUsage"]
       88 GETTABLEKS                       R10 R10 K35 ["BuyRobuxButton"]
       90 SETTABLEKS                       R10 R9 K28 ["testId"]
       92 MOVE                             R10 R1
       93 CALL                             R10 0 1
       94 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K10 ["BuyButton"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

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
