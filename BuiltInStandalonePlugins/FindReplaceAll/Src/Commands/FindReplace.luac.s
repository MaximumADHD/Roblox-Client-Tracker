PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["UpdateQueryAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 RETURN                           R3 2
       10 GETIMPORT                        R4 K4 [string.find]
       12 MOVE                             R5 R2
       13 LOADK                            R6 K5 ["BadRegex"]
       14 CALL                             R4 2 1
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 LOADNIL                          R4
       20 DUPTABLE                         R5 K7 [{"isRegexError"}]
       21 SETTABLEKS                       R3 R5 K6 ["isRegexError"]
       23 RETURN                           R4 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 NAMECALL                         R0 R0 K0 ["OpenScriptToMatchAsync"]
        7 CALL                             R0 5 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["wrap"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CALL                             R4 1 -1
       10 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["FindNextAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["FindPreviousAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["SetSelectionAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["wrap"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["ReplaceAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["wrap"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["GetResultsAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 JUMPIFEQKNIL                     R3 ; [+5]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0
       15 MOVE                             R4 R1
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["new"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 CALL                             R4 1 -1
       13 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ResultsAvailable"]
        3 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["SetColorsAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["RichTagColors"]
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R1 R2 K0 ["find"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["RichTagColors"]
        9 GETTABLE                         R3 R4 R0
       10 GETTABLEKS                       R2 R3 K2 ["replaced"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["RichTagColors"]
       15 GETTABLE                         R4 R5 R0
       16 GETTABLEKS                       R3 R4 K3 ["replacement"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K4 ["wrap"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["MockableProxyPluginComponents"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["FindReplace"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Commands"]
       24 GETTABLEKS                       R3 R3 K11 ["ErrorHandler"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["Promise"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K13 ["Resources"]
       42 GETTABLEKS                       R5 R5 K14 ["StyleConstants"]
       44 CALL                             R4 1 1
       45 NEWTABLE                         R5 16 0
       47 DUPCLOSURE                       R6 K15 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R6 R5 K16 ["updateQuery"]
       51 DUPCLOSURE                       R6 K17 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R6 R5 K18 ["openScriptToMatch"]
       56 DUPCLOSURE                       R6 K19 [PROTO_4]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R6 R5 K20 ["findNext"]
       60 DUPCLOSURE                       R6 K21 [PROTO_5]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R6 R5 K22 ["findPrevious"]
       64 DUPCLOSURE                       R6 K23 [PROTO_7]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R6 R5 K24 ["setSelection"]
       69 DUPCLOSURE                       R6 K25 [PROTO_9]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R6 R5 K26 ["replace"]
       74 DUPCLOSURE                       R6 K27 [PROTO_12]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R6 R5 K28 ["getResults"]
       79 DUPCLOSURE                       R6 K29 [PROTO_13]
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R6 R5 K30 ["ResultsAvailable"]
       83 DUPCLOSURE                       R6 K31 [PROTO_15]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R6 R5 K32 ["setColors"]
       89 RETURN                           R5 1
