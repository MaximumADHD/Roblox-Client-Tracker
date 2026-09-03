PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["getResetText"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["nextResetEligibleTime"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Title", "Percent"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["CreditMetering"]
        3 LOADK                            R4 K4 ["FreeUsageTitle"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["CreditMetering"]
       11 LOADK                            R4 K6 ["UsageBarPercentLabel"]
       12 DUPTABLE                         R5 K8 [{"percent"}]
       13 GETIMPORT                        R6 K11 [string.format]
       15 LOADK                            R7 K12 ["%d"]
       16 GETUPVAL                         R8 1
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K7 ["percent"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 4 1
       23 SETTABLEKS                       R1 R0 K1 ["Percent"]
       25 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["quotaSummary"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["getPercentUsed"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADN                            R2 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U1
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R1
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R6 0 2
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K4 ["locale"]
       39 MOVE                             R8 R2
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 1
       43 JUMPIF                           R1 ; [+2]
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETUPVAL                         R5 4
       47 CALL                             R5 0 1
       48 GETUPVAL                         R6 5
       49 GETUPVAL                         R7 6
       50 DUPTABLE                         R8 K8 [{["tag"] = "col gap-small size-full-0 auto-y padding-bottom-small", ["LayoutOrder"]}]
       51 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       53 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       55 DUPTABLE                         R9 K12 [{"Header", "Bar", "Subtitle"}]
       56 GETUPVAL                         R10 5
       57 GETUPVAL                         R11 6
       58 DUPTABLE                         R12 K14 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
       59 MOVE                             R13 R5
       60 CALL                             R13 0 1
       61 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       63 DUPTABLE                         R13 K18 [{"Title", "Spacer", "Percent"}]
       64 GETUPVAL                         R14 5
       65 GETUPVAL                         R15 7
       66 DUPTABLE                         R16 K22 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       67 GETTABLEKS                       R17 R4 K15 ["Title"]
       69 SETTABLEKS                       R17 R16 K19 ["Text"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K15 ["Title"]
       74 GETUPVAL                         R14 5
       75 GETUPVAL                         R15 6
       76 DUPTABLE                         R16 K25 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
       77 CALL                             R14 2 1
       78 SETTABLEKS                       R14 R13 K16 ["Spacer"]
       80 GETUPVAL                         R14 5
       81 GETUPVAL                         R15 7
       82 DUPTABLE                         R16 K28 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-default", ["LayoutOrder"] = 3}]
       83 GETTABLEKS                       R17 R4 K17 ["Percent"]
       85 SETTABLEKS                       R17 R16 K19 ["Text"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K17 ["Percent"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K9 ["Header"]
       93 GETUPVAL                         R10 5
       94 GETUPVAL                         R11 8
       95 DUPTABLE                         R12 K32 [{"shape", "value", "LayoutOrder", "testId"}]
       96 GETUPVAL                         R13 9
       97 GETTABLEKS                       R13 R13 K10 ["Bar"]
       99 SETTABLEKS                       R13 R12 K29 ["shape"]
      101 SETTABLEKS                       R2 R12 K30 ["value"]
      103 MOVE                             R13 R5
      104 CALL                             R13 0 1
      105 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      107 GETUPVAL                         R13 10
      108 GETTABLEKS                       R13 R13 K33 ["DailyUsage"]
      110 GETTABLEKS                       R13 R13 K34 ["UsageBar"]
      112 SETTABLEKS                       R13 R12 K31 ["testId"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K10 ["Bar"]
      117 JUMPIFNOT                        R3 ; [+11]
      118 GETUPVAL                         R10 5
      119 GETUPVAL                         R11 7
      120 DUPTABLE                         R12 K36 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      121 SETTABLEKS                       R3 R12 K19 ["Text"]
      123 MOVE                             R13 R5
      124 CALL                             R13 0 1
      125 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      127 CALL                             R10 2 1
      128 JUMPIF                           R10 ; [+1]
      129 LOADNIL                          R10
      130 SETTABLEKS                       R10 R9 K11 ["Subtitle"]
      132 CALL                             R6 3 -1
      133 RETURN                           R6 -1

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
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Resources"]
       53 GETTABLEKS                       R8 R8 K17 ["Localization"]
       55 GETTABLEKS                       R8 R8 K18 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K10 ["Parent"]
       64 GETTABLEKS                       R9 R9 K19 ["UsageFormat"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R3 K20 ["Progress"]
       69 GETTABLEKS                       R10 R3 K21 ["Text"]
       71 GETTABLEKS                       R11 R3 K22 ["View"]
       73 GETTABLEKS                       R12 R3 K23 ["Enums"]
       75 GETTABLEKS                       R12 R12 K24 ["ProgressShape"]
       77 GETTABLEKS                       R13 R5 K25 ["createNextOrder"]
       79 GETTABLEKS                       R14 R4 K26 ["createElement"]
       81 DUPCLOSURE                       R15 K27 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R6
       93 GETTABLEKS                       R16 R4 K28 ["memo"]
       95 MOVE                             R17 R15
       96 CALL                             R16 1 -1
       97 RETURN                           R16 -1
