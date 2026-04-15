PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["Priority"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["getQueryStyleRulesForPseudo"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R10 R7 K2 ["Priority"]
       18 FASTCALL2                        MATH_MAX R1 R10 ; [+4]
       20 MOVE                             R9 R1
       21 GETIMPORT                        R8 K6 [math.max]
       23 CALL                             R8 2 1
       24 MOVE                             R1 R8
       25 FORGLOOP                         R3 2 ; [-10]
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 LOADN                            R1 255
        6 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 LOADK                            R9 K3 ["StyleRule"]
       11 NAMECALL                         R7 R6 K4 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+35]
       15 GETUPVAL                         R11 0
       16 FASTCALL1                        ASSERT R11 ; [+2]
       17 GETIMPORT                        R10 K1 [assert]
       19 CALL                             R10 1 0
       20 GETTABLEKS                       R10 R6 K5 ["Priority"]
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R11 R12 K6 ["getQueryStyleRulesForPseudo"]
       25 MOVE                             R12 R6
       26 CALL                             R11 1 1
       27 MOVE                             R12 R11
       28 LOADNIL                          R13
       29 LOADNIL                          R14
       30 FORGPREP                         R12
       31 GETTABLEKS                       R19 R16 K5 ["Priority"]
       33 FASTCALL2                        MATH_MAX R10 R19 ; [+4]
       35 MOVE                             R18 R10
       36 GETIMPORT                        R17 K9 [math.max]
       38 CALL                             R17 2 1
       39 MOVE                             R10 R17
       40 FORGLOOP                         R12 2 ; [-10]
       42 MOVE                             R9 R10
       43 FASTCALL2                        MATH_MAX R1 R9 ; [+4]
       45 MOVE                             R8 R1
       46 GETIMPORT                        R7 K9 [math.max]
       48 CALL                             R7 2 1
       49 MOVE                             R1 R7
       50 FORGLOOP                         R2 2 ; [-41]
       52 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R9 0
       12 FASTCALL1                        ASSERT R9 ; [+2]
       13 GETIMPORT                        R8 K1 [assert]
       15 CALL                             R8 1 0
       16 GETTABLEKS                       R8 R6 K2 ["Priority"]
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R9 R10 K3 ["getQueryStyleRulesForPseudo"]
       21 MOVE                             R10 R6
       22 CALL                             R9 1 1
       23 MOVE                             R10 R9
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 GETTABLEKS                       R17 R14 K2 ["Priority"]
       29 FASTCALL2                        MATH_MAX R8 R17 ; [+4]
       31 MOVE                             R16 R8
       32 GETIMPORT                        R15 K6 [math.max]
       34 CALL                             R15 2 1
       35 MOVE                             R8 R15
       36 FORGLOOP                         R10 2 ; [-10]
       38 MOVE                             R7 R8
       39 SETTABLEKS                       R7 R6 K2 ["Priority"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K7 ["getPseudoRuleForQuery"]
       44 MOVE                             R9 R6
       45 CALL                             R8 1 1
       46 JUMPIF                           R8 ; [+13]
       47 GETIMPORT                        R9 K10 [table.find]
       49 MOVE                             R10 R1
       50 MOVE                             R11 R6
       51 CALL                             R9 2 1
       52 JUMPIF                           R9 ; [+7]
       53 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       55 MOVE                             R10 R1
       56 MOVE                             R11 R6
       57 GETIMPORT                        R9 K12 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R2 2 ; [-50]
       62 GETIMPORT                        R2 K14 [table.sort]
       64 MOVE                             R3 R1
       65 DUPCLOSURE                       R4 K15 [PROTO_2]
       66 CALL                             R2 2 0
       67 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R5 K0 ["StyleBase"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R3 K2 ["GetStyleRules"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 JUMPIFNOT                        R5 ; [+4]
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R4
       14 CALL                             R5 1 1
       15 MOVE                             R4 R5
       16 GETIMPORT                        R5 K5 [table.find]
       18 MOVE                             R6 R4
       19 MOVE                             R7 R0
       20 CALL                             R5 2 1
       21 JUMPIF                           R5 ; [+2]
       22 LOADB                            R6 0
       23 RETURN                           R6 1
       24 JUMPIFNOT                        R1 ; [+3]
       25 LENGTH                           R6 R4
       26 JUMPIFEQ                         R5 R6 ; [+5]
       28 JUMPIFNOTEQKB                    R1 FALSE ; [+5]
       30 JUMPIFNOTEQKN                    R5 K6 [1] ; [+3]
       32 LOADB                            R6 0
       33 RETURN                           R6 1
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R6 1
       36 RETURN                           R6 1
       37 JUMPIFNOT                        R1 ; [+2]
       38 LOADN                            R6 1
       39 JUMP                             ; [+1]
       40 LOADN                            R6 255
       41 ADD                              R8 R5 R6
       42 GETTABLE                         R7 R4 R8
       43 GETTABLEKS                       R8 R0 K7 ["Priority"]
       45 GETTABLEKS                       R9 R7 K7 ["Priority"]
       47 JUMPIFNOTEQ                      R8 R9 ; [+24]
       49 GETTABLEKS                       R8 R0 K7 ["Priority"]
       51 ADD                              R8 R8 R6
       52 SETTABLEKS                       R8 R0 K7 ["Priority"]
       54 GETUPVAL                         R8 0
       55 JUMPIFNOT                        R8 ; [+56]
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R8 R9 K8 ["getQueryStyleRulesForPseudo"]
       59 MOVE                             R9 R0
       60 CALL                             R8 1 1
       61 MOVE                             R9 R8
       62 LOADNIL                          R10
       63 LOADNIL                          R11
       64 FORGPREP                         R9
       65 GETTABLEKS                       R14 R0 K7 ["Priority"]
       67 SETTABLEKS                       R14 R13 K7 ["Priority"]
       69 FORGLOOP                         R9 2 ; [-5]
       71 JUMP                             ; [+40]
       72 GETTABLEKS                       R8 R7 K7 ["Priority"]
       74 GETTABLEKS                       R9 R0 K7 ["Priority"]
       76 SETTABLEKS                       R8 R0 K7 ["Priority"]
       78 SETTABLEKS                       R9 R7 K7 ["Priority"]
       80 GETUPVAL                         R8 0
       81 JUMPIFNOT                        R8 ; [+30]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R8 R9 K8 ["getQueryStyleRulesForPseudo"]
       85 MOVE                             R9 R0
       86 CALL                             R8 1 1
       87 MOVE                             R9 R8
       88 LOADNIL                          R10
       89 LOADNIL                          R11
       90 FORGPREP                         R9
       91 GETTABLEKS                       R14 R0 K7 ["Priority"]
       93 SETTABLEKS                       R14 R13 K7 ["Priority"]
       95 FORGLOOP                         R9 2 ; [-5]
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R9 R10 K8 ["getQueryStyleRulesForPseudo"]
      100 MOVE                             R10 R7
      101 CALL                             R9 1 1
      102 MOVE                             R10 R9
      103 LOADNIL                          R11
      104 LOADNIL                          R12
      105 FORGPREP                         R10
      106 GETTABLEKS                       R15 R7 K7 ["Priority"]
      108 SETTABLEKS                       R15 R14 K7 ["Priority"]
      110 FORGLOOP                         R10 2 ; [-5]
      112 LOADB                            R8 1
      113 RETURN                           R8 1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["GetStyleRules"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["getSelectorCategory"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 LOADN                            R5 1
       11 LOADK                            R8 K2 ["StyleSheet"]
       12 NAMECALL                         R6 R0 K3 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+59]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K4 ["CATEGORIES"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K4 ["CATEGORIES"]
       22 LENGTH                           R8 R9
       23 GETTABLE                         R6 R7 R8
       24 JUMPIFEQ                         R3 R6 ; [+50]
       26 MOVE                             R6 R2
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K1 ["getSelectorCategory"]
       33 GETTABLEKS                       R12 R10 K5 ["Selector"]
       35 CALL                             R11 1 1
       36 GETTABLE                         R12 R4 R11
       37 JUMPIFNOT                        R12 ; [+4]
       38 GETTABLE                         R12 R4 R11
       39 ADDK                             R12 R12 K6 [1]
       40 SETTABLE                         R12 R4 R11
       41 JUMP                             ; [+2]
       42 LOADN                            R12 1
       43 SETTABLE                         R12 R4 R11
       44 FORGLOOP                         R6 2 ; [-15]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R6 R9 K4 ["CATEGORIES"]
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 GETTABLE                         R12 R4 R10
       53 ORK                              R11 R12 K7 [0]
       54 ADD                              R5 R5 R11
       55 JUMPIFEQ                         R10 R3 ; [+3]
       57 FORGLOOP                         R6 2 ; [-6]
       59 MOVE                             R6 R2
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 GETTABLEKS                       R11 R10 K8 ["Priority"]
       65 JUMPIFNOTLE                      R5 R11 ; [+6]
       67 GETTABLEKS                       R11 R10 K8 ["Priority"]
       69 ADDK                             R11 R11 K6 [1]
       70 SETTABLEKS                       R11 R10 K8 ["Priority"]
       72 FORGLOOP                         R6 2 ; [-10]
       74 RETURN                           R5 1
       75 LENGTH                           R6 R2
       76 LOADN                            R7 0
       77 JUMPIFNOTLT                      R7 R6 ; [+7]
       79 LENGTH                           R8 R2
       80 GETTABLE                         R7 R2 R8
       81 GETTABLEKS                       R6 R7 K8 ["Priority"]
       83 ADDK                             R5 R6 K6 [1]
       84 RETURN                           R5 1
       85 LOADN                            R5 1
       86 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
        1 NAMECALL                         R2 R0 K1 ["GetStyleRules"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.sort]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 FASTCALL1                        ASSERT R4 ; [+2]
        2 GETIMPORT                        R3 K1 [assert]
        4 CALL                             R3 1 0
        5 GETTABLEKS                       R3 R0 K2 ["Priority"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["getQueryStyleRulesForPseudo"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 MOVE                             R5 R4
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R12 R9 K2 ["Priority"]
       18 FASTCALL2                        MATH_MAX R3 R12 ; [+4]
       20 MOVE                             R11 R3
       21 GETIMPORT                        R10 K6 [math.max]
       23 CALL                             R10 2 1
       24 MOVE                             R3 R10
       25 FORGLOOP                         R5 2 ; [-10]
       27 MOVE                             R2 R3
       28 GETUPVAL                         R5 0
       29 FASTCALL1                        ASSERT R5 ; [+2]
       30 GETIMPORT                        R4 K1 [assert]
       32 CALL                             R4 1 0
       33 GETTABLEKS                       R4 R1 K2 ["Priority"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K3 ["getQueryStyleRulesForPseudo"]
       38 MOVE                             R6 R1
       39 CALL                             R5 1 1
       40 MOVE                             R6 R5
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 FORGPREP                         R6
       44 GETTABLEKS                       R13 R10 K2 ["Priority"]
       46 FASTCALL2                        MATH_MAX R4 R13 ; [+4]
       48 MOVE                             R12 R4
       49 GETIMPORT                        R11 K6 [math.max]
       51 CALL                             R11 2 1
       52 MOVE                             R4 R11
       53 FORGLOOP                         R6 2 ; [-10]
       55 MOVE                             R3 R4
       56 JUMPIFLT                         R3 R2 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFLT                         R3 R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K2 ["GetChildren"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 NEWTABLE                         R3 0 0
       12 GETIMPORT                        R4 K4 [ipairs]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 LOADK                            R11 K5 ["StyleRule"]
       18 NAMECALL                         R9 R8 K6 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       24 MOVE                             R10 R2
       25 MOVE                             R11 R8
       26 GETIMPORT                        R9 K9 [table.insert]
       28 CALL                             R9 2 0
       29 JUMP                             ; [+12]
       30 LOADK                            R11 K10 ["Folder"]
       31 NAMECALL                         R9 R8 K6 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       37 MOVE                             R10 R3
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K9 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 [inext] ; [-26]
       44 GETIMPORT                        R4 K12 [table.sort]
       46 MOVE                             R5 R2
       47 DUPCLOSURE                       R6 K13 [PROTO_8]
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U1
       50 CALL                             R4 2 0
       51 GETIMPORT                        R4 K12 [table.sort]
       53 MOVE                             R5 R3
       54 DUPCLOSURE                       R6 K14 [PROTO_9]
       55 CAPTURE                          UPVAL U2
       56 CALL                             R4 2 0
       57 GETUPVAL                         R4 3
       58 MOVE                             R5 R2
       59 MOVE                             R6 R3
       60 CALL                             R4 2 -1
       61 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["DesignHelpers"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["StyleQueryHelpers"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 4 0
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R7 R0 K5 ["Src"]
       33 GETTABLEKS                       R6 R7 K9 ["Flags"]
       35 GETTABLEKS                       R5 R6 K10 ["getFFlagStyleQuery"]
       37 CALL                             R4 1 1
       38 CALL                             R4 0 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Packages"]
       43 GETTABLEKS                       R6 R7 K12 ["Dash"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K13 ["append"]
       48 DUPCLOSURE                       R7 K14 [PROTO_0]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R8 K15 [PROTO_1]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R9 K16 [PROTO_3]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 DUPCLOSURE                       R10 K17 [PROTO_4]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R10 R3 K18 ["changeStyleRulePriority"]
       63 DUPCLOSURE                       R10 K19 [PROTO_5]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R10 R3 K20 ["calculatePriority"]
       67 DUPCLOSURE                       R10 K21 [PROTO_7]
       68 SETTABLEKS                       R10 R3 K22 ["getOrderedStyleRules"]
       70 DUPCLOSURE                       R10 K23 [PROTO_10]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R10 R3 K24 ["getOrderedStyleRulesAndFolders"]
       77 RETURN                           R3 1
