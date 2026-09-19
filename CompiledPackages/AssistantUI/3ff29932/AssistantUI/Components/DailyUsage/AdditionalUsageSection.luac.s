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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K1 ["isCardActive"]
       11 GETTABLEKS                       R2 R0 K2 ["isEnabled"]
       13 GETTABLEKS                       R3 R0 K3 ["limitSettings"]
       15 GETTABLEKS                       R4 R0 K4 ["setDailyLimit"]
       17 GETUPVAL                         R5 2
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       22 DUPCLOSURE                       R7 K6 [PROTO_0]
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R8 0 1
       26 GETUPVAL                         R9 4
       27 GETTABLEKS                       R9 R9 K7 ["locale"]
       29 SETLIST                          R8 R9 1 [1]
       31 CALL                             R6 2 1
       32 JUMPIFNOT                        R2 ; [+3]
       33 GETTABLEKS                       R7 R6 K8 ["AdditionalUsage"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R7 R6 K9 ["GetMoreUsage"]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R10 0 3
       47 MOVE                             R11 R4
       48 MOVE                             R12 R2
       49 MOVE                             R13 R3
       50 SETLIST                          R10 R11 3 [1]
       52 CALL                             R8 2 1
       53 GETUPVAL                         R9 5
       54 GETUPVAL                         R10 6
       55 DUPTABLE                         R11 K14 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       56 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       58 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       60 DUPTABLE                         R12 K17 [{"Labels", "UsageToggle"}]
       61 GETUPVAL                         R13 5
       62 GETUPVAL                         R14 6
       63 DUPTABLE                         R15 K19 [{["tag"] = "col grow gap-xxsmall auto-y padding-right-small", ["LayoutOrder"]}]
       64 MOVE                             R16 R5
       65 CALL                             R16 0 1
       66 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       68 DUPTABLE                         R16 K23 [{"Title", "Balance", "Description"}]
       69 GETUPVAL                         R17 5
       70 GETUPVAL                         R18 7
       71 DUPTABLE                         R19 K26 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       72 SETTABLEKS                       R7 R19 K24 ["Text"]
       74 NEWTABLE                         R20 4 0
       76 LOADB                            R21 1
       77 SETTABLEKS                       R21 R20 K27 ["auto-xy text-title-medium text-align-x-left"]
       79 SETTABLEKS                       R1 R20 K28 ["content-emphasis"]
       81 NOT                              R21 R1
       82 SETTABLEKS                       R21 R20 K29 ["content-muted"]
       84 SETTABLEKS                       R20 R19 K11 ["tag"]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K20 ["Title"]
       89 GETUPVAL                         R17 5
       90 GETUPVAL                         R18 6
       91 DUPTABLE                         R19 K32 [{["tag"] = "auto-xy padding-bottom-xsmall", ["LayoutOrder"] = 2}]
       92 DUPTABLE                         R20 K34 [{"Chip"}]
       93 GETUPVAL                         R21 5
       94 GETUPVAL                         R22 8
       95 DUPTABLE                         R23 K39 [{["robuxBalance"], ["isDisabled"], ["variant"] = "Plain", ["LayoutOrder"] = 1}]
       96 GETTABLEKS                       R24 R0 K35 ["robuxBalance"]
       98 SETTABLEKS                       R24 R23 K35 ["robuxBalance"]
      100 NOT                              R24 R1
      101 SETTABLEKS                       R24 R23 K36 ["isDisabled"]
      103 CALL                             R21 2 1
      104 SETTABLEKS                       R21 R20 K33 ["Chip"]
      106 CALL                             R17 3 1
      107 SETTABLEKS                       R17 R16 K21 ["Balance"]
      109 GETUPVAL                         R17 5
      110 GETUPVAL                         R18 7
      111 DUPTABLE                         R19 K42 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      112 GETTABLEKS                       R20 R6 K22 ["Description"]
      114 SETTABLEKS                       R20 R19 K24 ["Text"]
      116 CALL                             R17 2 1
      117 SETTABLEKS                       R17 R16 K22 ["Description"]
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K15 ["Labels"]
      122 GETUPVAL                         R13 5
      123 GETUPVAL                         R14 9
      124 DUPTABLE                         R15 K48 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      125 SETTABLEKS                       R2 R15 K45 ["isChecked"]
      127 NOT                              R16 R1
      128 SETTABLEKS                       R16 R15 K36 ["isDisabled"]
      130 SETTABLEKS                       R8 R15 K46 ["onActivated"]
      132 GETUPVAL                         R16 10
      133 GETTABLEKS                       R16 R16 K49 ["Small"]
      135 SETTABLEKS                       R16 R15 K47 ["size"]
      137 MOVE                             R16 R5
      138 CALL                             R16 0 1
      139 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K16 ["UsageToggle"]
      144 CALL                             R9 3 -1
      145 RETURN                           R9 -1

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
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["FlagUtils"]
       64 GETTABLEKS                       R9 R9 K19 ["getIsCreditMeteringEnabled"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R3 K20 ["Text"]
       69 GETTABLEKS                       R10 R3 K21 ["Toggle"]
       71 GETTABLEKS                       R11 R3 K22 ["View"]
       73 GETTABLEKS                       R12 R3 K23 ["Enums"]
       75 GETTABLEKS                       R12 R12 K24 ["InputSize"]
       77 GETTABLEKS                       R13 R5 K25 ["createNextOrder"]
       79 GETTABLEKS                       R14 R4 K26 ["createElement"]
       81 DUPCLOSURE                       R15 K27 [PROTO_2]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 GETTABLEKS                       R16 R4 K28 ["memo"]
       95 MOVE                             R17 R15
       96 CALL                             R16 1 -1
       97 RETURN                           R16 -1
