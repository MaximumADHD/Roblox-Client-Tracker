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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["useMemo"]
       14 DUPCLOSURE                       R3 K2 [PROTO_0]
       15 CAPTURE                          UPVAL U4
       16 NEWTABLE                         R4 0 1
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K3 ["locale"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 5
       25 GETUPVAL                         R4 6
       26 DUPTABLE                         R5 K7 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       27 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       29 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       31 DUPTABLE                         R6 K10 [{"Labels", "BuyButton"}]
       32 GETUPVAL                         R7 5
       33 GETUPVAL                         R8 6
       34 DUPTABLE                         R9 K12 [{["tag"] = "col grow gap-xxsmall auto-y", ["LayoutOrder"]}]
       35 MOVE                             R10 R1
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       39 DUPTABLE                         R10 K15 [{"Title", "Description"}]
       40 GETUPVAL                         R11 5
       41 GETUPVAL                         R12 7
       42 DUPTABLE                         R13 K19 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       43 GETTABLEKS                       R14 R2 K13 ["Title"]
       45 SETTABLEKS                       R14 R13 K16 ["Text"]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K13 ["Title"]
       50 GETUPVAL                         R11 5
       51 GETUPVAL                         R12 7
       52 DUPTABLE                         R13 K22 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 2}]
       53 GETTABLEKS                       R14 R2 K14 ["Description"]
       55 SETTABLEKS                       R14 R13 K16 ["Text"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K14 ["Description"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K8 ["Labels"]
       63 GETUPVAL                         R7 5
       64 GETUPVAL                         R8 8
       65 DUPTABLE                         R9 K28 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
       66 GETTABLEKS                       R10 R2 K29 ["BuyRobux"]
       68 SETTABLEKS                       R10 R9 K23 ["text"]
       70 GETUPVAL                         R10 9
       71 GETTABLEKS                       R10 R10 K30 ["Emphasis"]
       73 SETTABLEKS                       R10 R9 K24 ["variant"]
       75 GETUPVAL                         R10 10
       76 GETTABLEKS                       R10 R10 K31 ["Small"]
       78 SETTABLEKS                       R10 R9 K25 ["size"]
       80 GETTABLEKS                       R10 R0 K32 ["openBuyRobux"]
       82 SETTABLEKS                       R10 R9 K26 ["onActivated"]
       84 GETUPVAL                         R10 11
       85 GETTABLEKS                       R10 R10 K33 ["DailyUsage"]
       87 GETTABLEKS                       R10 R10 K34 ["BuyRobuxButton"]
       89 SETTABLEKS                       R10 R9 K27 ["testId"]
       91 MOVE                             R10 R1
       92 CALL                             R10 0 1
       93 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K9 ["BuyButton"]
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1

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
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["FlagUtils"]
       53 GETTABLEKS                       R8 R8 K17 ["getIsCreditMeteringEnabled"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R2 K18 ["Button"]
       58 GETTABLEKS                       R9 R2 K19 ["Text"]
       60 GETTABLEKS                       R10 R2 K20 ["View"]
       62 GETTABLEKS                       R11 R2 K21 ["Enums"]
       64 GETTABLEKS                       R11 R11 K22 ["ButtonSize"]
       66 GETTABLEKS                       R12 R2 K21 ["Enums"]
       68 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       70 GETTABLEKS                       R13 R4 K24 ["createNextOrder"]
       72 GETTABLEKS                       R14 R3 K25 ["createElement"]
       74 DUPCLOSURE                       R15 K26 [PROTO_1]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R5
       87 GETTABLEKS                       R16 R3 K27 ["memo"]
       89 MOVE                             R17 R15
       90 CALL                             R16 1 -1
       91 RETURN                           R16 -1
