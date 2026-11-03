PROTO_0:
        0 DUPTABLE                         R0 K4 [{"GetMoreUsage", "AdditionalUsage", "Description", "RobuxAvailable"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["CreditMetering"]
        3 LOADK                            R4 K6 ["GetMoreUsageTitle"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["GetMoreUsage"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["CreditMetering"]
       11 LOADK                            R4 K8 ["AdditionalUsageTitle"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["AdditionalUsage"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["CreditMetering"]
       19 LOADK                            R4 K9 ["GetMoreUsageDescription"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Description"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K10 ["FFlagAssistantCreditMeteringResetPeriod"]
       28 JUMPIFNOT                        R2 ; [+17]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K5 ["CreditMetering"]
       31 LOADK                            R4 K3 ["RobuxAvailable"]
       32 DUPTABLE                         R5 K12 [{"balance"}]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K13 ["formatAmount"]
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K14 ["robuxBalance"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K11 ["balance"]
       42 NAMECALL                         R1 R1 K7 ["getText"]
       44 CALL                             R1 4 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K3 ["RobuxAvailable"]
       49 RETURN                           R0 1

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
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R8 0 2
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K6 ["locale"]
       32 GETTABLEKS                       R10 R0 K7 ["robuxBalance"]
       34 SETLIST                          R8 R9 2 [1]
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R2 ; [+3]
       38 GETTABLEKS                       R7 R6 K8 ["AdditionalUsage"]
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R7 R6 K9 ["GetMoreUsage"]
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R10 0 3
       52 MOVE                             R11 R4
       53 MOVE                             R12 R2
       54 MOVE                             R13 R3
       55 SETLIST                          R10 R11 3 [1]
       57 CALL                             R8 2 1
       58 GETUPVAL                         R9 6
       59 GETUPVAL                         R10 7
       60 DUPTABLE                         R11 K14 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       61 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       63 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       65 DUPTABLE                         R12 K17 [{"Labels", "UsageToggle"}]
       66 GETUPVAL                         R13 6
       67 GETUPVAL                         R14 7
       68 DUPTABLE                         R15 K19 [{["tag"] = "col grow gap-xxsmall auto-y padding-right-small", ["LayoutOrder"]}]
       69 MOVE                             R16 R5
       70 CALL                             R16 0 1
       71 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       73 DUPTABLE                         R16 K23 [{"Title", "Balance", "Description"}]
       74 GETUPVAL                         R17 6
       75 GETUPVAL                         R18 8
       76 DUPTABLE                         R19 K26 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       77 SETTABLEKS                       R7 R19 K24 ["Text"]
       79 NEWTABLE                         R20 4 0
       81 LOADB                            R21 1
       82 SETTABLEKS                       R21 R20 K27 ["auto-xy text-title-medium text-align-x-left"]
       84 SETTABLEKS                       R1 R20 K28 ["content-emphasis"]
       86 NOT                              R21 R1
       87 SETTABLEKS                       R21 R20 K29 ["content-muted"]
       89 SETTABLEKS                       R20 R19 K11 ["tag"]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K20 ["Title"]
       94 GETUPVAL                         R17 6
       95 GETUPVAL                         R18 7
       96 DUPTABLE                         R19 K32 [{["tag"] = "auto-xy padding-bottom-xsmall", ["LayoutOrder"] = 2}]
       97 DUPTABLE                         R20 K34 [{"Chip"}]
       98 GETUPVAL                         R21 6
       99 GETUPVAL                         R22 9
      100 DUPTABLE                         R23 K39 [{["robuxBalance"], ["amountLabel"], ["isDisabled"], ["variant"] = "Plain", ["LayoutOrder"] = 1}]
      101 GETTABLEKS                       R24 R0 K7 ["robuxBalance"]
      103 SETTABLEKS                       R24 R23 K7 ["robuxBalance"]
      105 GETUPVAL                         R25 1
      106 GETTABLEKS                       R25 R25 K40 ["FFlagAssistantCreditMeteringResetPeriod"]
      108 JUMPIFNOT                        R25 ; [+3]
      109 GETTABLEKS                       R24 R6 K41 ["RobuxAvailable"]
      111 JUMPIF                           R24 ; [+1]
      112 LOADNIL                          R24
      113 SETTABLEKS                       R24 R23 K35 ["amountLabel"]
      115 NOT                              R24 R1
      116 SETTABLEKS                       R24 R23 K36 ["isDisabled"]
      118 CALL                             R21 2 1
      119 SETTABLEKS                       R21 R20 K33 ["Chip"]
      121 CALL                             R17 3 1
      122 SETTABLEKS                       R17 R16 K21 ["Balance"]
      124 GETUPVAL                         R17 6
      125 GETUPVAL                         R18 8
      126 DUPTABLE                         R19 K44 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      127 GETTABLEKS                       R20 R6 K22 ["Description"]
      129 SETTABLEKS                       R20 R19 K24 ["Text"]
      131 CALL                             R17 2 1
      132 SETTABLEKS                       R17 R16 K22 ["Description"]
      134 CALL                             R13 3 1
      135 SETTABLEKS                       R13 R12 K15 ["Labels"]
      137 GETUPVAL                         R13 6
      138 GETUPVAL                         R14 10
      139 DUPTABLE                         R15 K50 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      140 SETTABLEKS                       R2 R15 K47 ["isChecked"]
      142 NOT                              R16 R1
      143 SETTABLEKS                       R16 R15 K36 ["isDisabled"]
      145 SETTABLEKS                       R8 R15 K48 ["onActivated"]
      147 GETUPVAL                         R16 11
      148 GETTABLEKS                       R16 R16 K51 ["Small"]
      150 SETTABLEKS                       R16 R15 K49 ["size"]
      152 MOVE                             R16 R5
      153 CALL                             R16 0 1
      154 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K16 ["UsageToggle"]
      159 CALL                             R9 3 -1
      160 RETURN                           R9 -1

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
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K10 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["UsageFormat"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["FlagUtils"]
       73 GETTABLEKS                       R10 R10 K20 ["getIsCreditMeteringEnabled"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R3 K21 ["Text"]
       78 GETTABLEKS                       R11 R3 K22 ["Toggle"]
       80 GETTABLEKS                       R12 R3 K23 ["View"]
       82 GETTABLEKS                       R13 R3 K24 ["Enums"]
       84 GETTABLEKS                       R13 R13 K25 ["InputSize"]
       86 GETTABLEKS                       R14 R5 K26 ["createNextOrder"]
       88 GETTABLEKS                       R15 R4 K27 ["createElement"]
       90 DUPCLOSURE                       R16 K28 [PROTO_2]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R13
      103 GETTABLEKS                       R17 R4 K29 ["memo"]
      105 MOVE                             R18 R16
      106 CALL                             R17 1 -1
      107 RETURN                           R17 -1
