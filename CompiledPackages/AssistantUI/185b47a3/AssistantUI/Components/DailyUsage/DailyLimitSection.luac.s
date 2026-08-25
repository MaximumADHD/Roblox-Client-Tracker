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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["isDisabled"]
        8 GETTABLEKS                       R2 R0 K2 ["limitSettings"]
       10 GETTABLEKS                       R3 R0 K3 ["setDailyLimit"]
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R6 R2 K4 ["dailyLimitSet"]
       16 JUMPIFEQKB                       R6 TRUE ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 JUMPIFNOT                        R5 ; [+3]
       21 GETTABLEKS                       R6 R2 K5 ["dailyLimit"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 GETTABLEKS                       R8 R0 K6 ["robuxBalance"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K7 ["FIntMinimumAssistantRobuxBalance"]
       30 JUMPIFLT                         R8 R9 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R7
       44 NEWTABLE                         R10 0 7
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K9 ["locale"]
       49 MOVE                             R12 R5
       50 GETTABLEKS                       R13 R0 K10 ["robuxSpentToday"]
       52 MOVE                             R14 R7
       53 GETTABLEKS                       R15 R0 K11 ["blockReason"]
       55 GETTABLEKS                       R16 R0 K12 ["nextResetEligibleTime"]
       57 MOVE                             R17 R1
       58 SETLIST                          R10 R11 7 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R9 R9 K13 ["useCallback"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R11 0 1
       68 MOVE                             R12 R3
       69 SETLIST                          R11 R12 1 [1]
       71 CALL                             R9 2 1
       72 GETUPVAL                         R10 5
       73 GETUPVAL                         R11 6
       74 DUPTABLE                         R12 K17 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       75 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
       77 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
       79 DUPTABLE                         R13 K20 [{"Labels", "LimitInput"}]
       80 GETUPVAL                         R14 5
       81 GETUPVAL                         R15 6
       82 DUPTABLE                         R16 K22 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
       83 MOVE                             R17 R4
       84 CALL                             R17 0 1
       85 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
       87 DUPTABLE                         R17 K25 [{"Title", "Subtitle"}]
       88 GETUPVAL                         R18 5
       89 GETUPVAL                         R19 7
       90 DUPTABLE                         R20 K28 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       91 GETTABLEKS                       R21 R8 K23 ["Title"]
       93 SETTABLEKS                       R21 R20 K26 ["Text"]
       95 NEWTABLE                         R21 4 0
       97 LOADB                            R22 1
       98 SETTABLEKS                       R22 R21 K29 ["auto-xy text-title-small text-align-x-left"]
      100 NOT                              R22 R1
      101 SETTABLEKS                       R22 R21 K30 ["content-emphasis"]
      103 SETTABLEKS                       R1 R21 K31 ["content-muted"]
      105 SETTABLEKS                       R21 R20 K14 ["tag"]
      107 CALL                             R18 2 1
      108 SETTABLEKS                       R18 R17 K23 ["Title"]
      110 GETUPVAL                         R18 5
      111 GETUPVAL                         R19 6
      112 DUPTABLE                         R20 K34 [{["tag"] = "row align-y-center gap-xxsmall auto-xy", ["LayoutOrder"] = 2}]
      113 DUPTABLE                         R21 K38 [{"Used", "Bullet", "Suffix"}]
      114 GETUPVAL                         R22 5
      115 GETUPVAL                         R23 7
      116 DUPTABLE                         R24 K40 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 1}]
      117 GETTABLEKS                       R25 R8 K35 ["Used"]
      119 SETTABLEKS                       R25 R24 K26 ["Text"]
      121 CALL                             R22 2 1
      122 SETTABLEKS                       R22 R21 K35 ["Used"]
      124 GETTABLEKS                       R23 R8 K37 ["Suffix"]
      126 JUMPIFNOT                        R23 ; [+5]
      127 GETUPVAL                         R22 5
      128 GETUPVAL                         R23 7
      129 DUPTABLE                         R24 K42 [{["Text"] = "•", ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 2}]
      130 CALL                             R22 2 1
      131 JUMPIF                           R22 ; [+1]
      132 LOADNIL                          R22
      133 SETTABLEKS                       R22 R21 K36 ["Bullet"]
      135 GETTABLEKS                       R23 R8 K37 ["Suffix"]
      137 JUMPIFNOT                        R23 ; [+9]
      138 GETUPVAL                         R22 5
      139 GETUPVAL                         R23 7
      140 DUPTABLE                         R24 K44 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      141 GETTABLEKS                       R25 R8 K37 ["Suffix"]
      143 SETTABLEKS                       R25 R24 K26 ["Text"]
      145 CALL                             R22 2 1
      146 JUMPIF                           R22 ; [+1]
      147 LOADNIL                          R22
      148 SETTABLEKS                       R22 R21 K37 ["Suffix"]
      150 CALL                             R18 3 1
      151 SETTABLEKS                       R18 R17 K24 ["Subtitle"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K18 ["Labels"]
      156 GETUPVAL                         R14 5
      157 GETUPVAL                         R15 8
      158 DUPTABLE                         R16 K47 [{"limit", "isDisabled", "onLimitChanged", "LayoutOrder"}]
      159 SETTABLEKS                       R6 R16 K45 ["limit"]
      161 SETTABLEKS                       R1 R16 K1 ["isDisabled"]
      163 SETTABLEKS                       R9 R16 K46 ["onLimitChanged"]
      165 MOVE                             R17 R4
      166 CALL                             R17 0 1
      167 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R13 K19 ["LimitInput"]
      172 CALL                             R10 3 -1
      173 RETURN                           R10 -1

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
       69 GETTABLEKS                       R9 R4 K19 ["Text"]
       71 GETTABLEKS                       R10 R4 K20 ["View"]
       73 GETTABLEKS                       R11 R6 K21 ["createNextOrder"]
       75 GETTABLEKS                       R12 R5 K22 ["createElement"]
       77 DUPCLOSURE                       R13 K23 [PROTO_2]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 GETTABLEKS                       R14 R5 K24 ["memo"]
       89 MOVE                             R15 R13
       90 CALL                             R14 1 -1
       91 RETURN                           R14 -1
