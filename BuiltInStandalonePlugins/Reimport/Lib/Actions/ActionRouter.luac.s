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
       33 JUMPIFNOT                        R5 ; [+14]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K9 ["stop"]
       37 MOVE                             R6 R0
       38 CALL                             R5 1 0
       39 GETUPVAL                         R5 3
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+19]
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K10 ["logClick"]
       45 DUPTABLE                         R6 K14 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "stop"}]
       46 CALL                             R5 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K15 ["start"]
       51 MOVE                             R6 R0
       52 CALL                             R5 1 0
       53 GETUPVAL                         R5 3
       54 CALL                             R5 0 1
       55 JUMPIFNOT                        R5 ; [+5]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K10 ["logClick"]
       59 DUPTABLE                         R6 K16 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "start"}]
       60 CALL                             R5 1 0
       61 RETURN                           R0 0

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
       50 GETTABLEKS                       R7 R0 K13 ["Flags"]
       52 GETTABLEKS                       R7 R7 K14 ["GetFFlagReimportClickTelemetry"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Lib"]
       59 GETTABLEKS                       R8 R8 K15 ["DialogRegistry"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Lib"]
       66 GETTABLEKS                       R9 R9 K15 ["DialogRegistry"]
       68 GETTABLEKS                       R9 R9 K16 ["ShowErrorDialog"]
       70 CALL                             R8 1 0
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R9 R0 K6 ["Lib"]
       75 GETTABLEKS                       R9 R9 K15 ["DialogRegistry"]
       77 GETTABLEKS                       R9 R9 K17 ["ShowConfigureDialog"]
       79 CALL                             R8 1 0
       80 NEWTABLE                         R8 8 0
       82 DUPCLOSURE                       R9 K18 [PROTO_0]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R9 R8 K19 ["reimport"]
       89 DUPCLOSURE                       R9 K20 [PROTO_1]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R9 R8 K21 ["reimportRelative"]
       95 DUPCLOSURE                       R9 K22 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 SETTABLEKS                       R9 R8 K23 ["configure"]
      100 DUPCLOSURE                       R9 K24 [PROTO_3]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R9 R8 K25 ["clearConfig"]
      105 DUPCLOSURE                       R9 K26 [PROTO_4]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R9 R8 K27 ["watchInstanceFile"]
      113 RETURN                           R8 1
