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
       34 JUMPIFNOT                        R5 ; [+14]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K9 ["stop"]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 0
       40 GETUPVAL                         R5 3
       41 CALL                             R5 0 1
       42 JUMPIFNOT                        R5 ; [+19]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K10 ["logClick"]
       46 DUPTABLE                         R6 K14 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "stop"}]
       47 CALL                             R5 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K15 ["start"]
       52 MOVE                             R6 R0
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 3
       55 CALL                             R5 0 1
       56 JUMPIFNOT                        R5 ; [+5]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K10 ["logClick"]
       60 DUPTABLE                         R6 K16 [{["clickTarget"] = "auto-reimport", ["clickValue"] = "start"}]
       61 CALL                             R5 1 0
       62 RETURN                           R0 0

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
