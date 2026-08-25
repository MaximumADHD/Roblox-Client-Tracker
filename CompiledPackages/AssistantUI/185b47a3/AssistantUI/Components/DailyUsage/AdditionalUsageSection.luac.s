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
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["isCardActive"]
        8 GETTABLEKS                       R2 R0 K2 ["isEnabled"]
       10 GETTABLEKS                       R3 R0 K3 ["limitSettings"]
       12 GETTABLEKS                       R4 R0 K4 ["setDailyLimit"]
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       19 DUPCLOSURE                       R7 K6 [PROTO_0]
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R8 0 1
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K7 ["locale"]
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R7 R6 K8 ["AdditionalUsage"]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R7 R6 K9 ["GetMoreUsage"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R10 0 3
       44 MOVE                             R11 R4
       45 MOVE                             R12 R2
       46 MOVE                             R13 R3
       47 SETLIST                          R10 R11 3 [1]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R9 4
       51 GETUPVAL                         R10 5
       52 DUPTABLE                         R11 K14 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       53 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       55 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       57 DUPTABLE                         R12 K17 [{"Labels", "UsageToggle"}]
       58 GETUPVAL                         R13 4
       59 GETUPVAL                         R14 5
       60 DUPTABLE                         R15 K19 [{["tag"] = "col grow gap-xxsmall auto-y padding-right-small", ["LayoutOrder"]}]
       61 MOVE                             R16 R5
       62 CALL                             R16 0 1
       63 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       65 DUPTABLE                         R16 K23 [{"Title", "Balance", "Description"}]
       66 GETUPVAL                         R17 4
       67 GETUPVAL                         R18 6
       68 DUPTABLE                         R19 K26 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       69 SETTABLEKS                       R7 R19 K24 ["Text"]
       71 NEWTABLE                         R20 4 0
       73 LOADB                            R21 1
       74 SETTABLEKS                       R21 R20 K27 ["auto-xy text-title-medium text-align-x-left"]
       76 SETTABLEKS                       R1 R20 K28 ["content-emphasis"]
       78 NOT                              R21 R1
       79 SETTABLEKS                       R21 R20 K29 ["content-muted"]
       81 SETTABLEKS                       R20 R19 K11 ["tag"]
       83 CALL                             R17 2 1
       84 SETTABLEKS                       R17 R16 K20 ["Title"]
       86 GETUPVAL                         R17 4
       87 GETUPVAL                         R18 5
       88 DUPTABLE                         R19 K32 [{["tag"] = "auto-xy padding-bottom-xsmall", ["LayoutOrder"] = 2}]
       89 DUPTABLE                         R20 K34 [{"Chip"}]
       90 GETUPVAL                         R21 4
       91 GETUPVAL                         R22 7
       92 DUPTABLE                         R23 K39 [{["robuxBalance"], ["isDisabled"], ["variant"] = "Plain", ["LayoutOrder"] = 1}]
       93 GETTABLEKS                       R24 R0 K35 ["robuxBalance"]
       95 SETTABLEKS                       R24 R23 K35 ["robuxBalance"]
       97 NOT                              R24 R1
       98 SETTABLEKS                       R24 R23 K36 ["isDisabled"]
      100 CALL                             R21 2 1
      101 SETTABLEKS                       R21 R20 K33 ["Chip"]
      103 CALL                             R17 3 1
      104 SETTABLEKS                       R17 R16 K21 ["Balance"]
      106 GETUPVAL                         R17 4
      107 GETUPVAL                         R18 6
      108 DUPTABLE                         R19 K42 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      109 GETTABLEKS                       R20 R6 K22 ["Description"]
      111 SETTABLEKS                       R20 R19 K24 ["Text"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K22 ["Description"]
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K15 ["Labels"]
      119 GETUPVAL                         R13 4
      120 GETUPVAL                         R14 8
      121 DUPTABLE                         R15 K48 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      122 SETTABLEKS                       R2 R15 K45 ["isChecked"]
      124 NOT                              R16 R1
      125 SETTABLEKS                       R16 R15 K36 ["isDisabled"]
      127 SETTABLEKS                       R8 R15 K46 ["onActivated"]
      129 GETUPVAL                         R16 9
      130 GETTABLEKS                       R16 R16 K49 ["Small"]
      132 SETTABLEKS                       R16 R15 K47 ["size"]
      134 MOVE                             R16 R5
      135 CALL                             R16 0 1
      136 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K16 ["UsageToggle"]
      141 CALL                             R9 3 -1
      142 RETURN                           R9 -1

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
