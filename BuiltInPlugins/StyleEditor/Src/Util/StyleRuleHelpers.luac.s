PROTO_0:
        0 LOADK                            R5 K0 ["StyleBase"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R3 K2 ["GetStyleRules"]
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K5 [table.find]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R0
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 LENGTH                           R6 R4
       20 JUMPIFEQ                         R5 R6 ; [+5]
       22 JUMPIFNOTEQKB                    R1 FALSE ; [+5]
       24 JUMPIFNOTEQKN                    R5 K6 [1] ; [+3]
       26 LOADB                            R6 0
       27 RETURN                           R6 1
       28 JUMPIFNOT                        R2 ; [+2]
       29 LOADB                            R6 1
       30 RETURN                           R6 1
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADN                            R8 1
       33 JUMP                             ; [+1]
       34 LOADN                            R8 255
       35 ADD                              R7 R5 R8
       36 GETTABLE                         R6 R4 R7
       37 GETTABLEKS                       R7 R0 K7 ["Priority"]
       39 GETTABLEKS                       R8 R6 K7 ["Priority"]
       41 JUMPIFNOTEQ                      R7 R8 ; [+11]
       43 GETTABLEKS                       R7 R0 K7 ["Priority"]
       45 JUMPIFNOT                        R1 ; [+2]
       46 LOADN                            R8 1
       47 JUMP                             ; [+1]
       48 LOADN                            R8 255
       49 ADD                              R7 R7 R8
       50 SETTABLEKS                       R7 R0 K7 ["Priority"]
       52 JUMP                             ; [+8]
       53 GETTABLEKS                       R7 R6 K7 ["Priority"]
       55 GETTABLEKS                       R8 R0 K7 ["Priority"]
       57 SETTABLEKS                       R7 R0 K7 ["Priority"]
       59 SETTABLEKS                       R8 R6 K7 ["Priority"]
       61 LOADB                            R7 1
       62 RETURN                           R7 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 NAMECALL                         R2 R0 K1 ["GetStyleRules"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.sort]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R2 1

PROTO_3:
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
       18 NEWTABLE                         R2 4 0
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K9 ["changeStyleRulePriority"]
       23 DUPCLOSURE                       R3 K10 [PROTO_2]
       24 SETTABLEKS                       R3 R2 K11 ["getOrderedStyleRules"]
       26 DUPCLOSURE                       R3 K12 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K13 ["calculatePriority"]
       30 RETURN                           R2 1
