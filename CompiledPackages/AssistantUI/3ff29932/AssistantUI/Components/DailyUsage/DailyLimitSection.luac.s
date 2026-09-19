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
       35 JUMP                             ; [+23]
       36 GETUPVAL                         R3 5
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETUPVAL                         R2 0
       39 LOADK                            R4 K0 ["CreditMetering"]
       40 LOADK                            R5 K8 ["OutOfRobuxTitle"]
       41 NAMECALL                         R2 R2 K2 ["getText"]
       43 CALL                             R2 3 1
       44 JUMP                             ; [+14]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K9 ["blockReason"]
       48 JUMPIFNOTEQKS                    R3 K10 ["DailyLimitReached"] ; [+9]
       50 GETUPVAL                         R2 3
       51 GETTABLEKS                       R2 R2 K11 ["getResetText"]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K12 ["nextResetEligibleTime"]
       56 CALL                             R2 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R2
       59 DUPTABLE                         R3 K16 [{"Title", "Used", "Suffix"}]
       60 GETUPVAL                         R4 0
       61 LOADK                            R6 K0 ["CreditMetering"]
       62 LOADK                            R7 K17 ["DailyLimitTitle"]
       63 NAMECALL                         R4 R4 K2 ["getText"]
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K13 ["Title"]
       68 SETTABLEKS                       R1 R3 K14 ["Used"]
       70 SETTABLEKS                       R2 R3 K15 ["Suffix"]
       72 RETURN                           R3 1

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
       28 GETTABLEKS                       R8 R0 K6 ["robuxBalance"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K7 ["FIntMinimumAssistantRobuxBalance"]
       33 JUMPIFLT                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 NEWTABLE                         R10 0 7
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R11 R11 K9 ["locale"]
       52 MOVE                             R12 R5
       53 GETTABLEKS                       R13 R0 K10 ["robuxSpentToday"]
       55 MOVE                             R14 R7
       56 GETTABLEKS                       R15 R0 K11 ["blockReason"]
       58 GETTABLEKS                       R16 R0 K12 ["nextResetEligibleTime"]
       60 MOVE                             R17 R1
       61 SETLIST                          R10 R11 7 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K13 ["useCallback"]
       67 NEWCLOSURE                       R10 P1
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R11 0 1
       71 MOVE                             R12 R3
       72 SETLIST                          R11 R12 1 [1]
       74 CALL                             R9 2 1
       75 GETUPVAL                         R10 6
       76 GETUPVAL                         R11 7
       77 DUPTABLE                         R12 K17 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       78 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
       80 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
       82 DUPTABLE                         R13 K20 [{"Labels", "LimitInput"}]
       83 GETUPVAL                         R14 6
       84 GETUPVAL                         R15 7
       85 DUPTABLE                         R16 K22 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
       86 MOVE                             R17 R4
       87 CALL                             R17 0 1
       88 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
       90 DUPTABLE                         R17 K25 [{"Title", "Subtitle"}]
       91 GETUPVAL                         R18 6
       92 GETUPVAL                         R19 8
       93 DUPTABLE                         R20 K28 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       94 GETTABLEKS                       R21 R8 K23 ["Title"]
       96 SETTABLEKS                       R21 R20 K26 ["Text"]
       98 NEWTABLE                         R21 4 0
      100 LOADB                            R22 1
      101 SETTABLEKS                       R22 R21 K29 ["auto-xy text-title-small text-align-x-left"]
      103 NOT                              R22 R1
      104 SETTABLEKS                       R22 R21 K30 ["content-emphasis"]
      106 SETTABLEKS                       R1 R21 K31 ["content-muted"]
      108 SETTABLEKS                       R21 R20 K14 ["tag"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K23 ["Title"]
      113 GETUPVAL                         R18 6
      114 GETUPVAL                         R19 7
      115 DUPTABLE                         R20 K34 [{["tag"] = "row align-y-center gap-xxsmall auto-xy", ["LayoutOrder"] = 2}]
      116 DUPTABLE                         R21 K38 [{"Used", "Bullet", "Suffix"}]
      117 GETUPVAL                         R22 6
      118 GETUPVAL                         R23 8
      119 DUPTABLE                         R24 K40 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 1}]
      120 GETTABLEKS                       R25 R8 K35 ["Used"]
      122 SETTABLEKS                       R25 R24 K26 ["Text"]
      124 CALL                             R22 2 1
      125 SETTABLEKS                       R22 R21 K35 ["Used"]
      127 GETTABLEKS                       R23 R8 K37 ["Suffix"]
      129 JUMPIFNOT                        R23 ; [+5]
      130 GETUPVAL                         R22 6
      131 GETUPVAL                         R23 8
      132 DUPTABLE                         R24 K42 [{["Text"] = "•", ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 2}]
      133 CALL                             R22 2 1
      134 JUMPIF                           R22 ; [+1]
      135 LOADNIL                          R22
      136 SETTABLEKS                       R22 R21 K36 ["Bullet"]
      138 GETTABLEKS                       R23 R8 K37 ["Suffix"]
      140 JUMPIFNOT                        R23 ; [+9]
      141 GETUPVAL                         R22 6
      142 GETUPVAL                         R23 8
      143 DUPTABLE                         R24 K44 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      144 GETTABLEKS                       R25 R8 K37 ["Suffix"]
      146 SETTABLEKS                       R25 R24 K26 ["Text"]
      148 CALL                             R22 2 1
      149 JUMPIF                           R22 ; [+1]
      150 LOADNIL                          R22
      151 SETTABLEKS                       R22 R21 K37 ["Suffix"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K24 ["Subtitle"]
      156 CALL                             R14 3 1
      157 SETTABLEKS                       R14 R13 K18 ["Labels"]
      159 GETUPVAL                         R14 6
      160 GETUPVAL                         R15 9
      161 DUPTABLE                         R16 K47 [{"limit", "isDisabled", "onLimitChanged", "LayoutOrder"}]
      162 SETTABLEKS                       R6 R16 K45 ["limit"]
      164 SETTABLEKS                       R1 R16 K1 ["isDisabled"]
      166 SETTABLEKS                       R9 R16 K46 ["onLimitChanged"]
      168 MOVE                             R17 R4
      169 CALL                             R17 0 1
      170 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      172 CALL                             R14 2 1
      173 SETTABLEKS                       R14 R13 K19 ["LimitInput"]
      175 CALL                             R10 3 -1
      176 RETURN                           R10 -1

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
