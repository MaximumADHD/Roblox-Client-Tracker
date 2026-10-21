PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R1 K0 [""]
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [string.format]
        8 LOADK                            R2 K4 ["%d"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 LOADN                            R2 1
       12 LOADN                            R3 0
       13 JUMPIFNOTLT                      R3 R2 ; [+10]
       15 GETIMPORT                        R3 K6 [string.gsub]
       17 MOVE                             R4 R1
       18 LOADK                            R5 K7 ["^(-?%d+)(%d%d%d)"]
       19 LOADK                            R6 K8 ["%1,%2"]
       20 CALL                             R3 3 2
       21 MOVE                             R1 R3
       22 MOVE                             R2 R4
       23 JUMPBACK                         ; [-12]
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R1 0
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["freeTrialDailyAllowance"]
        8 GETTABLEKS                       R2 R0 K1 ["freeTrialRemaining"]
       10 JUMPIFNOT                        R1 ; [+13]
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R1 ; [+11]
       14 JUMPIFNOT                        R2 ; [+9]
       15 SUB                              R5 R1 R2
       16 DIV                              R4 R5 R1
       17 LOADN                            R5 0
       18 LOADN                            R6 1
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R3 K4 [math.clamp]
       22 CALL                             R3 3 1
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R0 K5 ["freeTrialPctUsed"]
       26 JUMPIFNOT                        R3 ; [+15]
       27 LOADN                            R5 1
       28 JUMPIFNOTLT                      R5 R3 ; [+3]
       30 DIVK                             R4 R3 K6 [100]
       31 JUMP                             ; [+1]
       32 MOVE                             R4 R3
       33 LOADN                            R7 0
       34 LOADN                            R8 1
       35 FASTCALL3                        MATH_CLAMP R4 R7 R8
       37 MOVE                             R6 R4
       38 GETIMPORT                        R5 K4 [math.clamp]
       40 CALL                             R5 3 1
       41 RETURN                           R5 1
       42 LOADN                            R4 0
       43 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["getUsedFraction"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 MULK                             R3 R4 K1 [100]
       12 ADDK                             R2 R3 K0 [0.5]
       13 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       14 GETIMPORT                        R1 K5 [math.floor]
       16 CALL                             R1 1 1
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K1 [pcall]
        8 GETIMPORT                        R2 K4 [DateTime.fromIsoDate]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETTABLEKS                       R4 R2 K5 ["UnixTimestamp"]
       18 GETIMPORT                        R5 K7 [DateTime.now]
       20 CALL                             R5 0 1
       21 GETTABLEKS                       R5 R5 K5 ["UnixTimestamp"]
       23 SUB                              R3 R4 R5
       24 LOADN                            R4 0
       25 JUMPIFNOTLE                      R3 R4 ; [+3]
       27 LOADNIL                          R4
       28 RETURN                           R4 1
       29 DIVK                             R5 R3 K8 [3600]
       30 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       31 GETIMPORT                        R4 K11 [math.floor]
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantCreditMeteringResetPeriod"]
       37 JUMPIFNOT                        R5 ; [+64]
       38 LOADN                            R5 24
       39 JUMPIFNOTLE                      R5 R4 ; [+62]
       41 DIVK                             R6 R3 K13 [86400]
       42 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       43 GETIMPORT                        R5 K11 [math.floor]
       45 CALL                             R5 1 1
       46 LOADN                            R6 7
       47 JUMPIFNOTLT                      R5 R6 ; [+25]
       49 JUMPIFNOTEQKN                    R5 K14 [1] ; [+8]
       51 GETUPVAL                         R6 2
       52 LOADK                            R8 K15 ["CreditMetering"]
       53 LOADK                            R9 K16 ["ResetsInOneDay"]
       54 NAMECALL                         R6 R6 K17 ["getText"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1
       58 GETUPVAL                         R6 2
       59 LOADK                            R8 K15 ["CreditMetering"]
       60 LOADK                            R9 K18 ["ResetsInDays"]
       61 DUPTABLE                         R10 K20 [{"days"}]
       62 GETIMPORT                        R11 K23 [string.format]
       64 LOADK                            R12 K24 ["%d"]
       65 MOVE                             R13 R5
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K19 ["days"]
       69 NAMECALL                         R6 R6 K17 ["getText"]
       71 CALL                             R6 4 -1
       72 RETURN                           R6 -1
       73 DIVK                             R7 R5 K25 [7]
       74 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       75 GETIMPORT                        R6 K11 [math.floor]
       77 CALL                             R6 1 1
       78 JUMPIFNOTEQKN                    R6 K14 [1] ; [+8]
       80 GETUPVAL                         R7 2
       81 LOADK                            R9 K15 ["CreditMetering"]
       82 LOADK                            R10 K26 ["ResetsInOneWeek"]
       83 NAMECALL                         R7 R7 K17 ["getText"]
       85 CALL                             R7 3 -1
       86 RETURN                           R7 -1
       87 GETUPVAL                         R7 2
       88 LOADK                            R9 K15 ["CreditMetering"]
       89 LOADK                            R10 K27 ["ResetsInWeeks"]
       90 DUPTABLE                         R11 K29 [{"weeks"}]
       91 GETIMPORT                        R12 K23 [string.format]
       93 LOADK                            R13 K24 ["%d"]
       94 MOVE                             R14 R6
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K28 ["weeks"]
       98 NAMECALL                         R7 R7 K17 ["getText"]
      100 CALL                             R7 4 -1
      101 RETURN                           R7 -1
      102 LOADN                            R5 1
      103 JUMPIFNOTLE                      R4 R5 ; [+8]
      105 GETUPVAL                         R5 2
      106 LOADK                            R7 K15 ["CreditMetering"]
      107 LOADK                            R8 K30 ["ResetsInOneHour"]
      108 NAMECALL                         R5 R5 K17 ["getText"]
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1
      112 GETUPVAL                         R5 2
      113 LOADK                            R7 K15 ["CreditMetering"]
      114 LOADK                            R8 K31 ["ResetsInHours"]
      115 DUPTABLE                         R9 K33 [{"hours"}]
      116 GETIMPORT                        R10 K23 [string.format]
      118 LOADK                            R11 K24 ["%d"]
      119 MOVE                             R12 R4
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R9 K32 ["hours"]
      123 NAMECALL                         R5 R5 K17 ["getText"]
      125 CALL                             R5 4 -1
      126 RETURN                           R5 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["FlagUtils"]
       34 GETTABLEKS                       R5 R5 K14 ["getIsCreditMeteringEnabled"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 4 0
       39 DUPCLOSURE                       R6 K15 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R6 R5 K16 ["formatAmount"]
       43 DUPCLOSURE                       R6 K17 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R6 R5 K18 ["getUsedFraction"]
       47 DUPCLOSURE                       R6 K19 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R6 R5 K20 ["getPercentUsed"]
       52 DUPCLOSURE                       R6 K21 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R6 R5 K22 ["getResetText"]
       58 RETURN                           R5 1
