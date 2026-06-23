PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["Reimport selection error: %*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["getConfigFromInstance"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 2
       20 JUMPIF                           R3 ; [+5]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["configure"]
       24 CALL                             R4 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K7 ["reimportInstanceDebounced"]
       29 MOVE                             R5 R0
       30 CALL                             R4 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["Reimport selection error: %*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 LOADK                            R4 K5 ["MeshPart"]
       16 NAMECALL                         R2 R0 K6 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+10]
       20 GETIMPORT                        R2 K2 [error]
       22 LOADK                            R4 K7 ["Reimport relative to this requires a MeshPart to be selected, got %*"]
       23 GETTABLEKS                       R6 R0 K8 ["ClassName"]
       25 NAMECALL                         R4 R4 K4 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 CALL                             R2 1 0
       30 MOVE                             R2 R0
       31 LOADK                            R5 K9 ["Model"]
       32 NAMECALL                         R3 R2 K6 ["IsA"]
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R3 ; [+8]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K10 ["ATTRIBUTE_KEY"]
       39 NAMECALL                         R3 R2 K11 ["GetAttribute"]
       41 CALL                             R3 2 1
       42 JUMPIFNOTEQKNIL                  R3 ; [+11]
       44 GETTABLEKS                       R3 R2 K12 ["Parent"]
       46 JUMPIFNOTEQKNIL                  R3 ; [+5]
       48 GETIMPORT                        R4 K2 [error]
       50 LOADK                            R5 K13 ["No valid reimport root found in target instance ancestry"]
       51 CALL                             R4 1 0
       52 MOVE                             R2 R3
       53 JUMPBACK                         ; [-23]
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R3 R3 K14 ["reimportInstanceDebounced"]
       57 MOVE                             R4 R2
       58 DUPTABLE                         R5 K16 [{"anchor"}]
       59 SETTABLEKS                       R0 R5 K15 ["anchor"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["Reimport configure error: %*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["configure"]
       18 GETTABLEKS                       R2 R2 K6 ["show"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["Reimport clear config selection error: %*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["clearConfigFromInstance"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["File watch selection error: %*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["getConfigFromInstance"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 2
       20 MOVE                             R4 R3
       21 JUMPIFNOT                        R4 ; [+2]
       22 GETTABLEKS                       R4 R3 K6 ["filepath"]
       24 JUMPIF                           R4 ; [+4]
       25 GETIMPORT                        R5 K2 [error]
       27 LOADK                            R6 K7 ["No reimport config with filepath found for selected instance"]
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K8 ["isWatching"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 JUMPIFNOT                        R5 ; [+6]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K9 ["stop"]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K10 ["start"]
       44 MOVE                             R6 R0
       45 CALL                             R5 1 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Reimport"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Lib"]
       18 GETTABLEKS                       R3 R3 K7 ["Reimport"]
       20 GETTABLEKS                       R3 R3 K8 ["ReimportConfigs"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Lib"]
       27 GETTABLEKS                       R4 R4 K7 ["Reimport"]
       29 GETTABLEKS                       R4 R4 K9 ["SelectionHelper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Lib"]
       36 GETTABLEKS                       R5 R5 K10 ["FileWatch"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Lib"]
       43 GETTABLEKS                       R6 R6 K11 ["DialogRegistry"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Lib"]
       50 GETTABLEKS                       R7 R7 K11 ["DialogRegistry"]
       52 GETTABLEKS                       R7 R7 K12 ["ShowErrorDialog"]
       54 CALL                             R6 1 0
       55 GETIMPORT                        R6 K5 [require]
       57 GETTABLEKS                       R7 R0 K6 ["Lib"]
       59 GETTABLEKS                       R7 R7 K11 ["DialogRegistry"]
       61 GETTABLEKS                       R7 R7 K13 ["ShowConfigureDialog"]
       63 CALL                             R6 1 0
       64 NEWTABLE                         R6 8 0
       66 DUPCLOSURE                       R7 K14 [PROTO_0]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R7 R6 K15 ["reimport"]
       73 DUPCLOSURE                       R7 K16 [PROTO_1]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R7 R6 K17 ["reimportRelative"]
       79 DUPCLOSURE                       R7 K18 [PROTO_2]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R7 R6 K19 ["configure"]
       84 DUPCLOSURE                       R7 K20 [PROTO_3]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R7 R6 K21 ["clearConfig"]
       89 DUPCLOSURE                       R7 K22 [PROTO_4]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R7 R6 K23 ["watchInstanceFile"]
       95 RETURN                           R6 1
