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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["quotaSummary"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["getPercentUsed"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMP                             ; [+1]
       14 LOADN                            R2 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R1
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R6 0 2
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K3 ["locale"]
       38 MOVE                             R8 R2
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 1
       42 JUMPIF                           R1 ; [+2]
       43 LOADNIL                          R5
       44 RETURN                           R5 1
       45 GETUPVAL                         R5 4
       46 CALL                             R5 0 1
       47 GETUPVAL                         R6 5
       48 GETUPVAL                         R7 6
       49 DUPTABLE                         R8 K7 [{["tag"] = "col gap-small size-full-0 auto-y padding-bottom-small", ["LayoutOrder"]}]
       50 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       52 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       54 DUPTABLE                         R9 K11 [{"Header", "Bar", "Subtitle"}]
       55 GETUPVAL                         R10 5
       56 GETUPVAL                         R11 6
       57 DUPTABLE                         R12 K13 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
       58 MOVE                             R13 R5
       59 CALL                             R13 0 1
       60 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       62 DUPTABLE                         R13 K17 [{"Title", "Spacer", "Percent"}]
       63 GETUPVAL                         R14 5
       64 GETUPVAL                         R15 7
       65 DUPTABLE                         R16 K21 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       66 GETTABLEKS                       R17 R4 K14 ["Title"]
       68 SETTABLEKS                       R17 R16 K18 ["Text"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K14 ["Title"]
       73 GETUPVAL                         R14 5
       74 GETUPVAL                         R15 6
       75 DUPTABLE                         R16 K24 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K15 ["Spacer"]
       79 GETUPVAL                         R14 5
       80 GETUPVAL                         R15 7
       81 DUPTABLE                         R16 K27 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-default", ["LayoutOrder"] = 3}]
       82 GETTABLEKS                       R17 R4 K16 ["Percent"]
       84 SETTABLEKS                       R17 R16 K18 ["Text"]
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K16 ["Percent"]
       89 CALL                             R10 3 1
       90 SETTABLEKS                       R10 R9 K8 ["Header"]
       92 GETUPVAL                         R10 5
       93 GETUPVAL                         R11 8
       94 DUPTABLE                         R12 K31 [{"shape", "value", "LayoutOrder", "testId"}]
       95 GETUPVAL                         R13 9
       96 GETTABLEKS                       R13 R13 K9 ["Bar"]
       98 SETTABLEKS                       R13 R12 K28 ["shape"]
      100 SETTABLEKS                       R2 R12 K29 ["value"]
      102 MOVE                             R13 R5
      103 CALL                             R13 0 1
      104 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      106 GETUPVAL                         R13 10
      107 GETTABLEKS                       R13 R13 K32 ["DailyUsage"]
      109 GETTABLEKS                       R13 R13 K33 ["UsageBar"]
      111 SETTABLEKS                       R13 R12 K30 ["testId"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K9 ["Bar"]
      116 JUMPIFNOT                        R3 ; [+11]
      117 GETUPVAL                         R10 5
      118 GETUPVAL                         R11 7
      119 DUPTABLE                         R12 K35 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      120 SETTABLEKS                       R3 R12 K18 ["Text"]
      122 MOVE                             R13 R5
      123 CALL                             R13 0 1
      124 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      126 CALL                             R10 2 1
      127 JUMPIF                           R10 ; [+1]
      128 LOADNIL                          R10
      129 SETTABLEKS                       R10 R9 K10 ["Subtitle"]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 GETTABLEKS                       R7 R7 K16 ["Localization"]
       50 GETTABLEKS                       R7 R7 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K9 ["Parent"]
       59 GETTABLEKS                       R8 R8 K18 ["UsageFormat"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K19 ["FlagUtils"]
       66 GETTABLEKS                       R9 R9 K20 ["getIsCreditMeteringEnabled"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R2 K21 ["Progress"]
       71 GETTABLEKS                       R10 R2 K22 ["Text"]
       73 GETTABLEKS                       R11 R2 K23 ["View"]
       75 GETTABLEKS                       R12 R2 K24 ["Enums"]
       77 GETTABLEKS                       R12 R12 K25 ["ProgressShape"]
       79 GETTABLEKS                       R13 R4 K26 ["createNextOrder"]
       81 GETTABLEKS                       R14 R3 K27 ["createElement"]
       83 DUPCLOSURE                       R15 K28 [PROTO_2]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R5
       95 GETTABLEKS                       R16 R3 K29 ["memo"]
       97 MOVE                             R17 R15
       98 CALL                             R16 1 -1
       99 RETURN                           R16 -1
