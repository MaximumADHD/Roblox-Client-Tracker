PROTO_0:
        0 DUPTABLE                         R0 K3 [{"GetMoreUsage", "AdditionalUsage", "Description"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["CreditMetering"]
        3 LOADK                            R4 K5 ["GetMoreUsageTitle"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["GetMoreUsage"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["CreditMetering"]
       11 LOADK                            R4 K7 ["AdditionalUsageTitle"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["AdditionalUsage"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["CreditMetering"]
       19 LOADK                            R4 K8 ["GetMoreUsageDescription"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Description"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"additionalUsageEnabled", "dailyLimitSet", "dailyLimit"}]
        2 GETUPVAL                         R3 1
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["additionalUsageEnabled"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["dailyLimitSet"]
        9 SETTABLEKS                       R2 R1 K1 ["dailyLimitSet"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["dailyLimit"]
       14 SETTABLEKS                       R2 R1 K2 ["dailyLimit"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["isCardActive"]
       12 GETTABLEKS                       R2 R0 K3 ["isEnabled"]
       14 GETTABLEKS                       R3 R0 K4 ["limitSettings"]
       16 GETTABLEKS                       R4 R0 K5 ["setDailyLimit"]
       18 GETUPVAL                         R5 1
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       23 DUPCLOSURE                       R7 K7 [PROTO_0]
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R8 0 1
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K8 ["locale"]
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETTABLEKS                       R7 R6 K9 ["AdditionalUsage"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R7 R6 K10 ["GetMoreUsage"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R10 0 3
       48 MOVE                             R11 R4
       49 MOVE                             R12 R2
       50 MOVE                             R13 R3
       51 SETLIST                          R10 R11 3 [1]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 4
       55 GETUPVAL                         R10 5
       56 DUPTABLE                         R11 K15 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       57 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       59 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       61 DUPTABLE                         R12 K18 [{"Labels", "UsageToggle"}]
       62 GETUPVAL                         R13 4
       63 GETUPVAL                         R14 5
       64 DUPTABLE                         R15 K20 [{["tag"] = "col grow gap-xxsmall auto-y padding-right-small", ["LayoutOrder"]}]
       65 MOVE                             R16 R5
       66 CALL                             R16 0 1
       67 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       69 DUPTABLE                         R16 K24 [{"Title", "Balance", "Description"}]
       70 GETUPVAL                         R17 4
       71 GETUPVAL                         R18 6
       72 DUPTABLE                         R19 K27 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       73 SETTABLEKS                       R7 R19 K25 ["Text"]
       75 NEWTABLE                         R20 4 0
       77 LOADB                            R21 1
       78 SETTABLEKS                       R21 R20 K28 ["auto-xy text-title-medium text-align-x-left"]
       80 SETTABLEKS                       R1 R20 K29 ["content-emphasis"]
       82 NOT                              R21 R1
       83 SETTABLEKS                       R21 R20 K30 ["content-muted"]
       85 SETTABLEKS                       R20 R19 K12 ["tag"]
       87 CALL                             R17 2 1
       88 SETTABLEKS                       R17 R16 K21 ["Title"]
       90 GETUPVAL                         R17 4
       91 GETUPVAL                         R18 5
       92 DUPTABLE                         R19 K33 [{["tag"] = "auto-xy padding-bottom-xsmall", ["LayoutOrder"] = 2}]
       93 DUPTABLE                         R20 K35 [{"Chip"}]
       94 GETUPVAL                         R21 4
       95 GETUPVAL                         R22 7
       96 DUPTABLE                         R23 K40 [{["robuxBalance"], ["isDisabled"], ["variant"] = "Plain", ["LayoutOrder"] = 1}]
       97 GETTABLEKS                       R24 R0 K36 ["robuxBalance"]
       99 SETTABLEKS                       R24 R23 K36 ["robuxBalance"]
      101 NOT                              R24 R1
      102 SETTABLEKS                       R24 R23 K37 ["isDisabled"]
      104 CALL                             R21 2 1
      105 SETTABLEKS                       R21 R20 K34 ["Chip"]
      107 CALL                             R17 3 1
      108 SETTABLEKS                       R17 R16 K22 ["Balance"]
      110 GETUPVAL                         R17 4
      111 GETUPVAL                         R18 6
      112 DUPTABLE                         R19 K43 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      113 GETTABLEKS                       R20 R6 K23 ["Description"]
      115 SETTABLEKS                       R20 R19 K25 ["Text"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K23 ["Description"]
      120 CALL                             R13 3 1
      121 SETTABLEKS                       R13 R12 K16 ["Labels"]
      123 GETUPVAL                         R13 4
      124 GETUPVAL                         R14 8
      125 DUPTABLE                         R15 K49 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      126 SETTABLEKS                       R2 R15 K46 ["isChecked"]
      128 NOT                              R16 R1
      129 SETTABLEKS                       R16 R15 K37 ["isDisabled"]
      131 SETTABLEKS                       R8 R15 K47 ["onActivated"]
      133 GETUPVAL                         R16 9
      134 GETTABLEKS                       R16 R16 K50 ["Small"]
      136 SETTABLEKS                       R16 R15 K48 ["size"]
      138 MOVE                             R16 R5
      139 CALL                             R16 0 1
      140 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K17 ["UsageToggle"]
      145 CALL                             R9 3 -1
      146 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K10 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["RobuxBalanceChip"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Resources"]
       55 GETTABLEKS                       R8 R8 K16 ["Localization"]
       57 GETTABLEKS                       R8 R8 K17 ["Translator"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R3 K18 ["Text"]
       62 GETTABLEKS                       R9 R3 K19 ["Toggle"]
       64 GETTABLEKS                       R10 R3 K20 ["View"]
       66 GETTABLEKS                       R11 R3 K21 ["Enums"]
       68 GETTABLEKS                       R11 R11 K22 ["InputSize"]
       70 GETTABLEKS                       R12 R5 K23 ["createNextOrder"]
       72 GETTABLEKS                       R13 R4 K24 ["createElement"]
       74 DUPCLOSURE                       R14 K25 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 GETTABLEKS                       R15 R4 K26 ["memo"]
       87 MOVE                             R16 R14
       88 CALL                             R15 1 -1
       89 RETURN                           R15 -1
