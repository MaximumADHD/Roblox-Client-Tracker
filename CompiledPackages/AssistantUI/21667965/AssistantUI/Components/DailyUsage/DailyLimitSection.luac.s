PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CreditMetering"]
        2 LOADK                            R3 K1 ["DailyLimitNoneLabel"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["robuxSpentToday"]
       11 LOADN                            R3 0
       12 JUMPIFNOTLE                      R2 R3 ; [+3]
       14 MOVE                             R1 R0
       15 JUMP                             ; [+16]
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K0 ["CreditMetering"]
       18 LOADK                            R4 K4 ["RobuxSpentToday"]
       19 DUPTABLE                         R5 K6 [{"spent"}]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K7 ["formatAmount"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K3 ["robuxSpentToday"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K5 ["spent"]
       29 NAMECALL                         R1 R1 K2 ["getText"]
       31 CALL                             R1 4 1
       32 GETUPVAL                         R3 4
       33 JUMPIFNOT                        R3 ; [+2]
       34 LOADNIL                          R2
       35 JUMP                             ; [+27]
       36 GETUPVAL                         R3 5
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETUPVAL                         R2 0
       39 LOADK                            R4 K0 ["CreditMetering"]
       40 LOADK                            R5 K8 ["OutOfRobuxTitle"]
       41 NAMECALL                         R2 R2 K2 ["getText"]
       43 CALL                             R2 3 1
       44 JUMP                             ; [+18]
       45 GETUPVAL                         R3 6
       46 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantCreditMeteringResetPeriod"]
       48 JUMPIF                           R3 ; [+13]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K10 ["blockReason"]
       52 JUMPIFNOTEQKS                    R3 K11 ["DailyLimitReached"] ; [+9]
       54 GETUPVAL                         R2 3
       55 GETTABLEKS                       R2 R2 K12 ["getResetText"]
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R3 R3 K13 ["nextResetEligibleTime"]
       60 CALL                             R2 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 DUPTABLE                         R3 K17 [{"Title", "Used", "Suffix"}]
       64 GETUPVAL                         R4 0
       65 LOADK                            R6 K0 ["CreditMetering"]
       66 LOADK                            R7 K18 ["DailyLimitTitle"]
       67 NAMECALL                         R4 R4 K2 ["getText"]
       69 CALL                             R4 3 1
       70 SETTABLEKS                       R4 R3 K14 ["Title"]
       72 SETTABLEKS                       R1 R3 K15 ["Used"]
       74 SETTABLEKS                       R2 R3 K16 ["Suffix"]
       76 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{[1] = True, ["dailyLimitSet"], ["dailyLimit"]}]
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K2 ["dailyLimitSet"]
        8 SETTABLEKS                       R0 R2 K3 ["dailyLimit"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K1 ["isDisabled"]
       11 GETTABLEKS                       R2 R0 K2 ["limitSettings"]
       13 GETTABLEKS                       R3 R0 K3 ["setDailyLimit"]
       15 GETUPVAL                         R4 2
       16 CALL                             R4 0 1
       17 GETTABLEKS                       R6 R2 K4 ["dailyLimitSet"]
       19 JUMPIFEQKB                       R6 TRUE ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R6 R2 K5 ["dailyLimit"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K6 ["FFlagAssistantCreditMeteringResetPeriod"]
       31 JUMPIFNOT                        R8 ; [+7]
       32 GETTABLEKS                       R8 R0 K7 ["isOutOfRobux"]
       34 JUMPIFEQKB                       R8 TRUE ; [+2]
       36 LOADB                            R7 0 +1
       37 LOADB                            R7 1
       38 JUMP                             ; [+9]
       39 GETTABLEKS                       R8 R0 K8 ["robuxBalance"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K9 ["FIntMinimumAssistantRobuxBalance"]
       44 JUMPIFLT                         R8 R9 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U1
       59 NEWTABLE                         R10 0 7
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K11 ["locale"]
       64 MOVE                             R12 R5
       65 GETTABLEKS                       R13 R0 K12 ["robuxSpentToday"]
       67 MOVE                             R14 R7
       68 GETTABLEKS                       R15 R0 K13 ["blockReason"]
       70 GETTABLEKS                       R16 R0 K14 ["nextResetEligibleTime"]
       72 MOVE                             R17 R1
       73 SETLIST                          R10 R11 7 [1]
       75 CALL                             R8 2 1
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K15 ["useCallback"]
       79 NEWCLOSURE                       R10 P1
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R11 0 1
       83 MOVE                             R12 R3
       84 SETLIST                          R11 R12 1 [1]
       86 CALL                             R9 2 1
       87 GETUPVAL                         R10 6
       88 GETUPVAL                         R11 7
       89 DUPTABLE                         R12 K19 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       90 GETTABLEKS                       R13 R0 K18 ["LayoutOrder"]
       92 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       94 DUPTABLE                         R13 K22 [{"Labels", "LimitInput"}]
       95 GETUPVAL                         R14 6
       96 GETUPVAL                         R15 7
       97 DUPTABLE                         R16 K24 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
       98 MOVE                             R17 R4
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      102 DUPTABLE                         R17 K27 [{"Title", "Subtitle"}]
      103 GETUPVAL                         R18 6
      104 GETUPVAL                         R19 8
      105 DUPTABLE                         R20 K30 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
      106 GETTABLEKS                       R21 R8 K25 ["Title"]
      108 SETTABLEKS                       R21 R20 K28 ["Text"]
      110 NEWTABLE                         R21 4 0
      112 LOADB                            R22 1
      113 SETTABLEKS                       R22 R21 K31 ["auto-xy text-title-small text-align-x-left"]
      115 NOT                              R22 R1
      116 SETTABLEKS                       R22 R21 K32 ["content-emphasis"]
      118 SETTABLEKS                       R1 R21 K33 ["content-muted"]
      120 SETTABLEKS                       R21 R20 K16 ["tag"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K25 ["Title"]
      125 GETUPVAL                         R18 6
      126 GETUPVAL                         R19 7
      127 DUPTABLE                         R20 K36 [{["tag"] = "row align-y-center gap-xxsmall auto-xy", ["LayoutOrder"] = 2}]
      128 DUPTABLE                         R21 K40 [{"Used", "Bullet", "Suffix"}]
      129 GETUPVAL                         R22 6
      130 GETUPVAL                         R23 8
      131 DUPTABLE                         R24 K42 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 1}]
      132 GETTABLEKS                       R25 R8 K37 ["Used"]
      134 SETTABLEKS                       R25 R24 K28 ["Text"]
      136 CALL                             R22 2 1
      137 SETTABLEKS                       R22 R21 K37 ["Used"]
      139 GETTABLEKS                       R23 R8 K39 ["Suffix"]
      141 JUMPIFNOT                        R23 ; [+5]
      142 GETUPVAL                         R22 6
      143 GETUPVAL                         R23 8
      144 DUPTABLE                         R24 K44 [{["Text"] = "•", ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 2}]
      145 CALL                             R22 2 1
      146 JUMPIF                           R22 ; [+1]
      147 LOADNIL                          R22
      148 SETTABLEKS                       R22 R21 K38 ["Bullet"]
      150 GETTABLEKS                       R23 R8 K39 ["Suffix"]
      152 JUMPIFNOT                        R23 ; [+9]
      153 GETUPVAL                         R22 6
      154 GETUPVAL                         R23 8
      155 DUPTABLE                         R24 K46 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      156 GETTABLEKS                       R25 R8 K39 ["Suffix"]
      158 SETTABLEKS                       R25 R24 K28 ["Text"]
      160 CALL                             R22 2 1
      161 JUMPIF                           R22 ; [+1]
      162 LOADNIL                          R22
      163 SETTABLEKS                       R22 R21 K39 ["Suffix"]
      165 CALL                             R18 3 1
      166 SETTABLEKS                       R18 R17 K26 ["Subtitle"]
      168 CALL                             R14 3 1
      169 SETTABLEKS                       R14 R13 K20 ["Labels"]
      171 GETUPVAL                         R14 6
      172 GETUPVAL                         R15 9
      173 DUPTABLE                         R16 K49 [{"limit", "isDisabled", "onLimitChanged", "LayoutOrder"}]
      174 SETTABLEKS                       R6 R16 K47 ["limit"]
      176 SETTABLEKS                       R1 R16 K1 ["isDisabled"]
      178 SETTABLEKS                       R9 R16 K48 ["onLimitChanged"]
      180 MOVE                             R17 R4
      181 CALL                             R17 0 1
      182 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R13 K21 ["LimitInput"]
      187 CALL                             R10 3 -1
      188 RETURN                           R10 -1

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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["DailyLimitInput"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Resources"]
       55 GETTABLEKS                       R8 R8 K16 ["Localization"]
       57 GETTABLEKS                       R8 R8 K17 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K9 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["UsageFormat"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["FlagUtils"]
       73 GETTABLEKS                       R10 R10 K20 ["getIsCreditMeteringEnabled"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R4 K21 ["Text"]
       78 GETTABLEKS                       R11 R4 K22 ["View"]
       80 GETTABLEKS                       R12 R6 K23 ["createNextOrder"]
       82 GETTABLEKS                       R13 R5 K24 ["createElement"]
       84 DUPCLOSURE                       R14 K25 [PROTO_2]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R2
       95 GETTABLEKS                       R15 R5 K26 ["memo"]
       97 MOVE                             R16 R14
       98 CALL                             R15 1 -1
       99 RETURN                           R15 -1
