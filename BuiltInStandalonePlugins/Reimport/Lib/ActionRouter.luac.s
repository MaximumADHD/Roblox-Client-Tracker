PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport selection error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["reimportInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport selection error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 LOADK                            R4 K5 ["MeshPart"]
       15 NAMECALL                         R2 R0 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+10]
       19 GETIMPORT                        R2 K2 [error]
       21 LOADK                            R4 K7 ["Reimport relative to this requires a MeshPart to be selected, got %*"]
       22 GETTABLEKS                       R6 R0 K8 ["ClassName"]
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 CALL                             R2 1 0
       29 MOVE                             R2 R0
       30 LOADK                            R5 K9 ["Model"]
       31 NAMECALL                         R3 R2 K6 ["IsA"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K10 ["ATTRIBUTE_KEY"]
       38 NAMECALL                         R3 R2 K11 ["GetAttribute"]
       40 CALL                             R3 2 1
       41 JUMPIFNOTEQKNIL                  R3 ; [+10]
       43 GETTABLEKS                       R2 R2 K12 ["Parent"]
       45 JUMPIFNOTEQKNIL                  R2 ; [+5]
       47 GETIMPORT                        R3 K2 [error]
       49 LOADK                            R4 K13 ["No valid reimport root found in target instance ancestry"]
       50 CALL                             R3 1 0
       51 JUMPBACK                         ; [-22]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R3 R4 K14 ["reimportModel"]
       55 MOVE                             R4 R2
       56 DUPTABLE                         R5 K16 [{"anchor"}]
       57 SETTABLEKS                       R0 R5 K15 ["anchor"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport configure error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K5 ["configure"]
       20 GETTABLEKS                       R2 R3 K6 ["show"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K7 ["fromInstance"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R3 K7 ["Reimport"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Lib"]
       18 GETTABLEKS                       R4 R5 K7 ["Reimport"]
       20 GETTABLEKS                       R3 R4 K8 ["ReimportConfigs"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Lib"]
       27 GETTABLEKS                       R5 R6 K7 ["Reimport"]
       29 GETTABLEKS                       R4 R5 K9 ["SelectionHelper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Lib"]
       36 GETTABLEKS                       R6 R7 K10 ["DialogRegistry"]
       38 GETTABLEKS                       R5 R6 K11 ["ShowConfigureDialog"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Lib"]
       45 GETTABLEKS                       R6 R7 K10 ["DialogRegistry"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Lib"]
       52 GETTABLEKS                       R8 R9 K10 ["DialogRegistry"]
       54 GETTABLEKS                       R7 R8 K12 ["ShowErrorDialog"]
       56 CALL                             R6 1 0
       57 GETIMPORT                        R6 K5 [require]
       59 GETTABLEKS                       R9 R0 K6 ["Lib"]
       61 GETTABLEKS                       R8 R9 K10 ["DialogRegistry"]
       63 GETTABLEKS                       R7 R8 K11 ["ShowConfigureDialog"]
       65 CALL                             R6 1 0
       66 GETIMPORT                        R6 K5 [require]
       68 GETTABLEKS                       R8 R0 K13 ["Flags"]
       70 GETTABLEKS                       R7 R8 K14 ["GetFFlagReimportErrorConfigButton"]
       72 CALL                             R6 1 1
       73 NEWTABLE                         R7 4 0
       75 DUPCLOSURE                       R8 K15 [PROTO_0]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R8 R7 K16 ["reimport"]
       80 DUPCLOSURE                       R8 K17 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R8 R7 K18 ["reimportRelative"]
       86 DUPCLOSURE                       R8 K19 [PROTO_2]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R8 R7 K20 ["configure"]
       93 RETURN                           R7 1
