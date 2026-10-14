PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Reimport selection error: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["getConfigFromInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 2
       19 JUMPIF                           R3 ; [+5]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["configure"]
       23 CALL                             R4 0 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K7 ["reimportInstanceDebounced"]
       28 MOVE                             R5 R0
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Reimport selection error: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADK                            R4 K5 ["MeshPart"]
       15 NAMECALL                         R2 R0 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+9]
       19 GETIMPORT                        R2 K2 [error]
       21 LOADK                            R3 K7 ["Reimport relative to this requires a MeshPart to be selected, got %*"]
       22 GETTABLEKS                       R5 R0 K8 ["ClassName"]
       24 NAMECALL                         R3 R3 K4 ["format"]
       26 CALL                             R3 2 1
       27 CALL                             R2 1 0
       28 MOVE                             R2 R0
       29 LOADK                            R5 K9 ["Model"]
       30 NAMECALL                         R3 R2 K6 ["IsA"]
       32 CALL                             R3 2 1
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K10 ["ATTRIBUTE_KEY"]
       37 NAMECALL                         R3 R2 K11 ["GetAttribute"]
       39 CALL                             R3 2 1
       40 JUMPIFNOTEQKNIL                  R3 ; [+11]
       42 GETTABLEKS                       R3 R2 K12 ["Parent"]
       44 JUMPIFNOTEQKNIL                  R3 ; [+5]
       46 GETIMPORT                        R4 K2 [error]
       48 LOADK                            R5 K13 ["No valid reimport root found in target instance ancestry"]
       49 CALL                             R4 1 0
       50 MOVE                             R2 R3
       51 JUMPBACK                         ; [-23]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K14 ["reimportInstanceDebounced"]
       55 MOVE                             R4 R2
       56 DUPTABLE                         R5 K16 [{"anchor"}]
       57 SETTABLEKS                       R0 R5 K15 ["anchor"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Reimport configure error: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["configure"]
       17 GETTABLEKS                       R2 R2 K6 ["show"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Reimport clear config selection error: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["clearConfigFromInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIF                           R1 ; [+1]
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["File watch selection error: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["getConfigFromInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 2
       19 MOVE                             R4 R3
       20 JUMPIFNOT                        R4 ; [+2]
       21 GETTABLEKS                       R4 R3 K6 ["filepath"]
       23 JUMPIF                           R4 ; [+4]
       24 GETIMPORT                        R5 K2 [error]
       26 LOADK                            R6 K7 ["No reimport config with filepath found for selected instance"]
       27 CALL                             R5 1 0
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K8 ["isWatching"]
       31 MOVE                             R6 R0
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R5 ; [+11]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K9 ["stop"]
       37 MOVE                             R6 R0
       38 CALL                             R5 1 0
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K10 ["logClick"]
       42 DUPTABLE                         R6 K14 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "stop"}]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K15 ["start"]
       48 MOVE                             R6 R0
       49 CALL                             R5 1 0
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K10 ["logClick"]
       53 DUPTABLE                         R6 K16 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "start"}]
       54 CALL                             R5 1 0
       55 RETURN                           R0 0

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
       43 GETTABLEKS                       R6 R6 K11 ["Util"]
       45 GETTABLEKS                       R6 R6 K12 ["Telemetry"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Lib"]
       52 GETTABLEKS                       R7 R7 K13 ["DialogRegistry"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Lib"]
       59 GETTABLEKS                       R8 R8 K13 ["DialogRegistry"]
       61 GETTABLEKS                       R8 R8 K14 ["ShowErrorDialog"]
       63 CALL                             R7 1 0
       64 GETIMPORT                        R7 K5 [require]
       66 GETTABLEKS                       R8 R0 K6 ["Lib"]
       68 GETTABLEKS                       R8 R8 K13 ["DialogRegistry"]
       70 GETTABLEKS                       R8 R8 K15 ["ShowConfigureDialog"]
       72 CALL                             R7 1 0
       73 NEWTABLE                         R7 8 0
       75 DUPCLOSURE                       R8 K16 [PROTO_0]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R8 R7 K17 ["reimport"]
       82 DUPCLOSURE                       R8 K18 [PROTO_1]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R8 R7 K19 ["reimportRelative"]
       88 DUPCLOSURE                       R8 K20 [PROTO_2]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R8 R7 K21 ["configure"]
       93 DUPCLOSURE                       R8 K22 [PROTO_3]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R8 R7 K23 ["clearConfig"]
       98 DUPCLOSURE                       R8 K24 [PROTO_4]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R8 R7 K25 ["watchInstanceFile"]
      105 RETURN                           R7 1
