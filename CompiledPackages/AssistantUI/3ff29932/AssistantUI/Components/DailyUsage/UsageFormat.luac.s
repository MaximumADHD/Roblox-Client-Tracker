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
       34 LOADN                            R5 1
       35 JUMPIFNOTLE                      R4 R5 ; [+8]
       37 GETUPVAL                         R5 1
       38 LOADK                            R7 K12 ["CreditMetering"]
       39 LOADK                            R8 K13 ["ResetsInOneHour"]
       40 NAMECALL                         R5 R5 K14 ["getText"]
       42 CALL                             R5 3 -1
       43 RETURN                           R5 -1
       44 GETUPVAL                         R5 1
       45 LOADK                            R7 K12 ["CreditMetering"]
       46 LOADK                            R8 K15 ["ResetsInHours"]
       47 DUPTABLE                         R9 K17 [{"hours"}]
       48 GETIMPORT                        R10 K20 [string.format]
       50 LOADK                            R11 K21 ["%d"]
       51 MOVE                             R12 R4
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K16 ["hours"]
       55 NAMECALL                         R5 R5 K14 ["getText"]
       57 CALL                             R5 4 -1
       58 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["Localization"]
       22 GETTABLEKS                       R3 R3 K11 ["Translator"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["FlagUtils"]
       29 GETTABLEKS                       R4 R4 K13 ["getIsCreditMeteringEnabled"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K15 ["formatAmount"]
       38 DUPCLOSURE                       R5 K16 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K17 ["getUsedFraction"]
       42 DUPCLOSURE                       R5 K18 [PROTO_2]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R5 R4 K19 ["getPercentUsed"]
       47 DUPCLOSURE                       R5 K20 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R5 R4 K21 ["getResetText"]
       52 RETURN                           R4 1
