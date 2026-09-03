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
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["isDisabled"]
       12 GETTABLEKS                       R2 R0 K3 ["limitSettings"]
       14 GETTABLEKS                       R3 R0 K4 ["setDailyLimit"]
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R6 R2 K5 ["dailyLimitSet"]
       20 JUMPIFEQKB                       R6 TRUE ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R6 R2 K6 ["dailyLimit"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R6
       29 GETTABLEKS                       R8 R0 K7 ["robuxBalance"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K8 ["FIntMinimumAssistantRobuxBalance"]
       34 JUMPIFLT                         R8 R9 ; [+2]
       36 LOADB                            R7 0 +1
       37 LOADB                            R7 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R10 0 7
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R11 R11 K10 ["locale"]
       53 MOVE                             R12 R5
       54 GETTABLEKS                       R13 R0 K11 ["robuxSpentToday"]
       56 MOVE                             R14 R7
       57 GETTABLEKS                       R15 R0 K12 ["blockReason"]
       59 GETTABLEKS                       R16 R0 K13 ["nextResetEligibleTime"]
       61 MOVE                             R17 R1
       62 SETLIST                          R10 R11 7 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       68 NEWCLOSURE                       R10 P1
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R11 0 1
       72 MOVE                             R12 R3
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 5
       77 GETUPVAL                         R11 6
       78 DUPTABLE                         R12 K18 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
       79 GETTABLEKS                       R13 R0 K17 ["LayoutOrder"]
       81 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       83 DUPTABLE                         R13 K21 [{"Labels", "LimitInput"}]
       84 GETUPVAL                         R14 5
       85 GETUPVAL                         R15 6
       86 DUPTABLE                         R16 K23 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
       87 MOVE                             R17 R4
       88 CALL                             R17 0 1
       89 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       91 DUPTABLE                         R17 K26 [{"Title", "Subtitle"}]
       92 GETUPVAL                         R18 5
       93 GETUPVAL                         R19 7
       94 DUPTABLE                         R20 K29 [{["Text"], ["tag"], ["LayoutOrder"] = 1}]
       95 GETTABLEKS                       R21 R8 K24 ["Title"]
       97 SETTABLEKS                       R21 R20 K27 ["Text"]
       99 NEWTABLE                         R21 4 0
      101 LOADB                            R22 1
      102 SETTABLEKS                       R22 R21 K30 ["auto-xy text-title-small text-align-x-left"]
      104 NOT                              R22 R1
      105 SETTABLEKS                       R22 R21 K31 ["content-emphasis"]
      107 SETTABLEKS                       R1 R21 K32 ["content-muted"]
      109 SETTABLEKS                       R21 R20 K15 ["tag"]
      111 CALL                             R18 2 1
      112 SETTABLEKS                       R18 R17 K24 ["Title"]
      114 GETUPVAL                         R18 5
      115 GETUPVAL                         R19 6
      116 DUPTABLE                         R20 K35 [{["tag"] = "row align-y-center gap-xxsmall auto-xy", ["LayoutOrder"] = 2}]
      117 DUPTABLE                         R21 K39 [{"Used", "Bullet", "Suffix"}]
      118 GETUPVAL                         R22 5
      119 GETUPVAL                         R23 7
      120 DUPTABLE                         R24 K41 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 1}]
      121 GETTABLEKS                       R25 R8 K36 ["Used"]
      123 SETTABLEKS                       R25 R24 K27 ["Text"]
      125 CALL                             R22 2 1
      126 SETTABLEKS                       R22 R21 K36 ["Used"]
      128 GETTABLEKS                       R23 R8 K38 ["Suffix"]
      130 JUMPIFNOT                        R23 ; [+5]
      131 GETUPVAL                         R22 5
      132 GETUPVAL                         R23 7
      133 DUPTABLE                         R24 K43 [{["Text"] = "•", ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 2}]
      134 CALL                             R22 2 1
      135 JUMPIF                           R22 ; [+1]
      136 LOADNIL                          R22
      137 SETTABLEKS                       R22 R21 K37 ["Bullet"]
      139 GETTABLEKS                       R23 R8 K38 ["Suffix"]
      141 JUMPIFNOT                        R23 ; [+9]
      142 GETUPVAL                         R22 5
      143 GETUPVAL                         R23 7
      144 DUPTABLE                         R24 K45 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["LayoutOrder"] = 3}]
      145 GETTABLEKS                       R25 R8 K38 ["Suffix"]
      147 SETTABLEKS                       R25 R24 K27 ["Text"]
      149 CALL                             R22 2 1
      150 JUMPIF                           R22 ; [+1]
      151 LOADNIL                          R22
      152 SETTABLEKS                       R22 R21 K38 ["Suffix"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K25 ["Subtitle"]
      157 CALL                             R14 3 1
      158 SETTABLEKS                       R14 R13 K19 ["Labels"]
      160 GETUPVAL                         R14 5
      161 GETUPVAL                         R15 8
      162 DUPTABLE                         R16 K48 [{"limit", "isDisabled", "onLimitChanged", "LayoutOrder"}]
      163 SETTABLEKS                       R6 R16 K46 ["limit"]
      165 SETTABLEKS                       R1 R16 K2 ["isDisabled"]
      167 SETTABLEKS                       R9 R16 K47 ["onLimitChanged"]
      169 MOVE                             R17 R4
      170 CALL                             R17 0 1
      171 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K20 ["LimitInput"]
      176 CALL                             R10 3 -1
      177 RETURN                           R10 -1

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
