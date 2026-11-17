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
        6 GETIMPORT                        R2 K2 [DateTime.fromIsoDate]
        8 MOVE                             R3 R0
        9 FASTPCALL                        pcall 2 ; [+2]
       10 GETIMPORT                        R1 K4 [pcall]
       12 CALL                             R1 2 2
       13 JUMPIFNOT                        R1 ; [+1]
       14 JUMPIF                           R2 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R2 K5 ["UnixTimestamp"]
       19 GETIMPORT                        R5 K7 [DateTime.now]
       21 CALL                             R5 0 1
       22 GETTABLEKS                       R5 R5 K5 ["UnixTimestamp"]
       24 SUB                              R3 R4 R5
       25 LOADN                            R4 0
       26 JUMPIFNOTLE                      R3 R4 ; [+3]
       28 LOADNIL                          R4
       29 RETURN                           R4 1
       30 DIVK                             R5 R3 K8 [3600]
       31 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       32 GETIMPORT                        R4 K11 [math.floor]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantCreditMeteringResetPeriod"]
       38 JUMPIFNOT                        R5 ; [+64]
       39 LOADN                            R5 24
       40 JUMPIFNOTLE                      R5 R4 ; [+62]
       42 DIVK                             R6 R3 K13 [86400]
       43 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       44 GETIMPORT                        R5 K11 [math.floor]
       46 CALL                             R5 1 1
       47 LOADN                            R6 7
       48 JUMPIFNOTLT                      R5 R6 ; [+25]
       50 JUMPIFNOTEQKN                    R5 K14 [1] ; [+8]
       52 GETUPVAL                         R6 2
       53 LOADK                            R8 K15 ["CreditMetering"]
       54 LOADK                            R9 K16 ["ResetsInOneDay"]
       55 NAMECALL                         R6 R6 K17 ["getText"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1
       59 GETUPVAL                         R6 2
       60 LOADK                            R8 K15 ["CreditMetering"]
       61 LOADK                            R9 K18 ["ResetsInDays"]
       62 DUPTABLE                         R10 K20 [{"days"}]
       63 GETIMPORT                        R11 K23 [string.format]
       65 LOADK                            R12 K24 ["%d"]
       66 MOVE                             R13 R5
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K19 ["days"]
       70 NAMECALL                         R6 R6 K17 ["getText"]
       72 CALL                             R6 4 -1
       73 RETURN                           R6 -1
       74 DIVK                             R7 R5 K25 [7]
       75 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       76 GETIMPORT                        R6 K11 [math.floor]
       78 CALL                             R6 1 1
       79 JUMPIFNOTEQKN                    R6 K14 [1] ; [+8]
       81 GETUPVAL                         R7 2
       82 LOADK                            R9 K15 ["CreditMetering"]
       83 LOADK                            R10 K26 ["ResetsInOneWeek"]
       84 NAMECALL                         R7 R7 K17 ["getText"]
       86 CALL                             R7 3 -1
       87 RETURN                           R7 -1
       88 GETUPVAL                         R7 2
       89 LOADK                            R9 K15 ["CreditMetering"]
       90 LOADK                            R10 K27 ["ResetsInWeeks"]
       91 DUPTABLE                         R11 K29 [{"weeks"}]
       92 GETIMPORT                        R12 K23 [string.format]
       94 LOADK                            R13 K24 ["%d"]
       95 MOVE                             R14 R6
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K28 ["weeks"]
       99 NAMECALL                         R7 R7 K17 ["getText"]
      101 CALL                             R7 4 -1
      102 RETURN                           R7 -1
      103 LOADN                            R5 1
      104 JUMPIFNOTLE                      R4 R5 ; [+8]
      106 GETUPVAL                         R5 2
      107 LOADK                            R7 K15 ["CreditMetering"]
      108 LOADK                            R8 K30 ["ResetsInOneHour"]
      109 NAMECALL                         R5 R5 K17 ["getText"]
      111 CALL                             R5 3 -1
      112 RETURN                           R5 -1
      113 GETUPVAL                         R5 2
      114 LOADK                            R7 K15 ["CreditMetering"]
      115 LOADK                            R8 K31 ["ResetsInHours"]
      116 DUPTABLE                         R9 K33 [{"hours"}]
      117 GETIMPORT                        R10 K23 [string.format]
      119 LOADK                            R11 K24 ["%d"]
      120 MOVE                             R12 R4
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K32 ["hours"]
      124 NAMECALL                         R5 R5 K17 ["getText"]
      126 CALL                             R5 4 -1
      127 RETURN                           R5 -1

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
