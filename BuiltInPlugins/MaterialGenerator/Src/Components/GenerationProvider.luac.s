PROTO_0:
        0 LOADK                            R5 K0 ["MaterialVariant"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetDescendants"]
        6 CALL                             R1 1 1
        7 DUPCLOSURE                       R2 K2 [PROTO_0]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CustomMessage"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+9]
        5 MOVE                             R3 R2
        6 JUMPIF                           R3 ; [+5]
        7 LOADK                            R5 K1 ["Errors"]
        8 LOADK                            R6 K2 ["UnknownGenerationError"]
        9 NAMECALL                         R3 R0 K3 ["getText"]
       11 CALL                             R3 3 1
       12 RETURN                           R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["NoSession"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+7]
       18 LOADK                            R5 K1 ["Errors"]
       19 LOADK                            R6 K4 ["NoSession"]
       20 NAMECALL                         R3 R0 K3 ["getText"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K5 ["ServerError500"]
       27 JUMPIFNOTEQ                      R1 R3 ; [+7]
       29 LOADK                            R5 K1 ["Errors"]
       30 LOADK                            R6 K5 ["ServerError500"]
       31 NAMECALL                         R3 R0 K3 ["getText"]
       33 CALL                             R3 3 -1
       34 RETURN                           R3 -1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K6 ["ServerError504"]
       38 JUMPIFNOTEQ                      R1 R3 ; [+7]
       40 LOADK                            R5 K1 ["Errors"]
       41 LOADK                            R6 K6 ["ServerError504"]
       42 NAMECALL                         R3 R0 K3 ["getText"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K7 ["TextFullyFiltered"]
       49 JUMPIFNOTEQ                      R1 R3 ; [+7]
       51 LOADK                            R5 K1 ["Errors"]
       52 LOADK                            R6 K7 ["TextFullyFiltered"]
       53 NAMECALL                         R3 R0 K3 ["getText"]
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K8 ["NoSelectedMaterial"]
       60 JUMPIFNOTEQ                      R1 R3 ; [+7]
       62 LOADK                            R5 K1 ["Errors"]
       63 LOADK                            R6 K8 ["NoSelectedMaterial"]
       64 NAMECALL                         R3 R0 K3 ["getText"]
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K9 ["FailedToGenerateMaps"]
       71 JUMPIFNOTEQ                      R1 R3 ; [+7]
       73 LOADK                            R5 K1 ["Errors"]
       74 LOADK                            R6 K9 ["FailedToGenerateMaps"]
       75 NAMECALL                         R3 R0 K3 ["getText"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R3 R4 K10 ["TooManyRequests"]
       82 JUMPIFNOTEQ                      R1 R3 ; [+7]
       84 LOADK                            R5 K1 ["Errors"]
       85 LOADK                            R6 K10 ["TooManyRequests"]
       86 NAMECALL                         R3 R0 K3 ["getText"]
       88 CALL                             R3 3 -1
       89 RETURN                           R3 -1
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R3 R4 K11 ["AccountingFailedDecrement"]
       93 JUMPIFNOTEQ                      R1 R3 ; [+7]
       95 LOADK                            R5 K1 ["Errors"]
       96 LOADK                            R6 K11 ["AccountingFailedDecrement"]
       97 NAMECALL                         R3 R0 K3 ["getText"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R3 R4 K12 ["FailedToSetImage"]
      104 JUMPIFNOTEQ                      R1 R3 ; [+7]
      106 LOADK                            R5 K1 ["Errors"]
      107 LOADK                            R6 K12 ["FailedToSetImage"]
      108 NAMECALL                         R3 R0 K3 ["getText"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1
      112 GETUPVAL                         R4 0
      113 GETTABLEKS                       R3 R4 K13 ["Unknown"]
      115 JUMPIFNOTEQ                      R1 R3 ; [+7]
      117 LOADK                            R5 K1 ["Errors"]
      118 LOADK                            R6 K2 ["UnknownGenerationError"]
      119 NAMECALL                         R3 R0 K3 ["getText"]
      121 CALL                             R3 3 -1
      122 RETURN                           R3 -1
      123 GETIMPORT                        R3 K15 [error]
      125 LOADK                            R4 K16 ["Unknown errorType"]
      126 CALL                             R3 1 0
      127 LOADK                            R5 K1 ["Errors"]
      128 LOADK                            R6 K2 ["UnknownGenerationError"]
      129 NAMECALL                         R3 R0 K3 ["getText"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K0 ["GenerateMaterialVariantsAsync"]
        7 CALL                             R1 3 1
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETTABLEKS                       R2 R1 K1 ["materialVariants"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETTABLEKS                       R3 R1 K1 ["materialVariants"]
       14 LENGTH                           R2 R3
       15 JUMPIFNOTEQKN                    R2 K2 [0] ; [+5]
       17 GETIMPORT                        R2 K4 [error]
       19 LOADK                            R3 K5 ["Returned no MaterialVariants"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R1 K1 ["materialVariants"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K6 ["collectArray"]
       26 GETUPVAL                         R4 4
       27 NAMECALL                         R4 R4 K7 ["GetDescendants"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K8 [PROTO_0]
       31 CALL                             R3 2 1
       32 MOVE                             R4 R2
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETUPVAL                         R9 5
       37 GETUPVAL                         R10 2
       38 MOVE                             R11 R3
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K9 ["Name"]
       42 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       44 MOVE                             R11 R3
       45 MOVE                             R12 R9
       46 GETIMPORT                        R10 K12 [table.insert]
       48 CALL                             R10 2 0
       49 FORGLOOP                         R4 2 ; [-14]
       51 GETUPVAL                         R4 6
       52 LOADK                            R6 K13 ["generateMaterials"]
       53 GETTABLEKS                       R7 R1 K14 ["generationId"]
       55 GETUPVAL                         R8 7
       56 LENGTH                           R9 R2
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R11 R1 K15 ["filteredText"]
       60 NAMECALL                         R4 R4 K16 ["report"]
       62 CALL                             R4 7 0
       63 GETUPVAL                         R5 8
       64 GETTABLEKS                       R4 R5 K17 ["current"]
       66 MOVE                             R5 R2
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R7 R1 K15 ["filteredText"]
       70 GETTABLEKS                       R8 R1 K14 ["generationId"]
       72 CALL                             R4 4 0
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 1
        8 GETUPVAL                         R4 3
        9 LOADK                            R6 K0 ["generateMaterialsError"]
       10 GETUPVAL                         R7 4
       11 MOVE                             R8 R1
       12 MOVE                             R9 R3
       13 NAMECALL                         R4 R4 K1 ["report"]
       15 CALL                             R4 5 0
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R4 R5 K2 ["push"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R1 K2 [error]
        6 LOADK                            R2 K3 ["Generation already in progress"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["enable"]
       15 CALL                             R1 0 0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K5 ["try"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U10
       29 CALL                             R1 1 1
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U11
       32 CAPTURE                          UPVAL U12
       33 CAPTURE                          UPVAL U13
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U14
       37 NAMECALL                         R1 R1 K6 ["catch"]
       39 CALL                             R1 2 1
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          UPVAL U0
       42 NAMECALL                         R1 R1 K7 ["finally"]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 0 1
        4 GETUPVAL                         R4 2
        5 SETLIST                          R3 R4 1 [1]
        7 NAMECALL                         R0 R0 K0 ["UploadMaterialsAsync"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+10]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 LOADK                            R4 K2 ["None"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 5
       13 GETTABLEKS                       R2 R3 K3 ["push"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOT                        R1 ; [+3]
       19 LENGTH                           R2 R1
       20 JUMPIFNOTEQKN                    R2 K4 [0] ; [+11]
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 4
       24 LOADK                            R4 K2 ["None"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R2 R3 K3 ["push"]
       29 LOADK                            R3 K5 ["Returned no materials"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 LENGTH                           R2 R1
       33 LOADN                            R3 1
       34 JUMPIFNOTLT                      R3 R2 ; [+11]
       36 GETUPVAL                         R2 3
       37 GETUPVAL                         R3 4
       38 LOADK                            R4 K2 ["None"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R2 R3 K3 ["push"]
       43 LOADK                            R3 K6 ["Returned more than one MaterialVariant"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 GETTABLEN                        R2 R1 1
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R4 R2 K7 ["ColorMap"]
       50 SETTABLEKS                       R4 R3 K7 ["ColorMap"]
       52 GETTABLEKS                       R3 R2 K8 ["NormalMap"]
       54 JUMPIFNOT                        R3 ; [+5]
       55 GETUPVAL                         R3 4
       56 GETTABLEKS                       R4 R2 K8 ["NormalMap"]
       58 SETTABLEKS                       R4 R3 K8 ["NormalMap"]
       60 GETTABLEKS                       R3 R2 K9 ["MetalnessMap"]
       62 JUMPIFNOT                        R3 ; [+5]
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R4 R2 K9 ["MetalnessMap"]
       66 SETTABLEKS                       R4 R3 K9 ["MetalnessMap"]
       68 GETTABLEKS                       R3 R2 K10 ["RoughnessMap"]
       70 JUMPIFNOT                        R3 ; [+5]
       71 GETUPVAL                         R3 4
       72 GETTABLEKS                       R4 R2 K10 ["RoughnessMap"]
       74 SETTABLEKS                       R4 R3 K10 ["RoughnessMap"]
       76 GETUPVAL                         R3 3
       77 GETUPVAL                         R4 4
       78 LOADK                            R5 K11 ["Uploaded"]
       79 CALL                             R3 2 0
       80 GETUPVAL                         R3 6
       81 LOADK                            R5 K12 ["saveButtonClicked"]
       82 GETUPVAL                         R6 4
       83 GETUPVAL                         R7 1
       84 NAMECALL                         R3 R3 K13 ["report"]
       86 CALL                             R3 4 0
       87 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["Uploading"]
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 GETIMPORT                        R3 K3 [task.spawn]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["addMaterials"]
        7 GETTABLEKS                       R3 R1 K2 ["setMaterialStatus"]
        9 GETTABLEKS                       R4 R1 K3 ["getMaterialIdentifiers"]
       11 GETUPVAL                         R5 2
       12 LOADB                            R6 0
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K4 ["useState"]
       17 LOADK                            R7 K5 [""]
       18 CALL                             R6 1 2
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K4 ["useState"]
       22 LOADK                            R9 K5 [""]
       23 CALL                             R8 1 2
       24 GETUPVAL                         R10 3
       25 NEWTABLE                         R11 0 0
       27 CALL                             R10 1 1
       28 GETUPVAL                         R11 4
       29 NAMECALL                         R11 R11 K6 ["use"]
       31 CALL                             R11 1 1
       32 GETUPVAL                         R12 5
       33 NAMECALL                         R12 R12 K6 ["use"]
       35 CALL                             R12 1 1
       36 GETUPVAL                         R14 6
       37 GETTABLEKS                       R13 R14 K6 ["use"]
       39 CALL                             R13 0 1
       40 LOADK                            R16 K7 ["MaterialGenerationService"]
       41 NAMECALL                         R14 R13 K8 ["getService"]
       43 CALL                             R14 2 1
       44 GETUPVAL                         R17 7
       45 GETTABLEKS                       R16 R17 K9 ["Plugin"]
       47 GETTABLEKS                       R15 R16 K6 ["use"]
       49 CALL                             R15 0 1
       50 NAMECALL                         R15 R15 K10 ["get"]
       52 CALL                             R15 1 1
       53 LOADK                            R18 K11 ["MaterialGenerator"]
       54 NAMECALL                         R16 R15 K12 ["GetPluginComponent"]
       56 CALL                             R16 2 1
       57 GETUPVAL                         R17 8
       58 MOVE                             R18 R2
       59 CALL                             R17 1 1
       60 GETUPVAL                         R19 0
       61 GETTABLEKS                       R18 R19 K13 ["useCallback"]
       63 NEWCLOSURE                       R19 P0
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          VAL R14
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          UPVAL U12
       72 CAPTURE                          UPVAL U13
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R17
       75 CAPTURE                          UPVAL U14
       76 CAPTURE                          UPVAL U15
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 NEWTABLE                         R20 0 4
       81 GETTABLEKS                       R21 R5 K14 ["enabled"]
       83 MOVE                             R22 R8
       84 MOVE                             R23 R2
       85 MOVE                             R24 R10
       86 SETLIST                          R20 R21 4 [1]
       88 CALL                             R18 2 1
       89 GETUPVAL                         R20 0
       90 GETTABLEKS                       R19 R20 K13 ["useCallback"]
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R12
       98 NEWTABLE                         R21 0 2
      100 MOVE                             R22 R3
      101 MOVE                             R23 R4
      102 SETLIST                          R21 R22 2 [1]
      104 CALL                             R19 2 1
      105 DUPTABLE                         R20 K23 [{"isGenerating", "lastGeneratedPromptText", "promptText", "setPromptText", "errorMessage", "popError", "generateMaterialVariants", "uploadMaterialVariant"}]
      106 GETTABLEKS                       R21 R5 K14 ["enabled"]
      108 SETTABLEKS                       R21 R20 K15 ["isGenerating"]
      110 SETTABLEKS                       R6 R20 K16 ["lastGeneratedPromptText"]
      112 SETTABLEKS                       R8 R20 K17 ["promptText"]
      114 SETTABLEKS                       R9 R20 K18 ["setPromptText"]
      116 GETTABLEKS                       R21 R10 K24 ["getTop"]
      118 CALL                             R21 0 1
      119 SETTABLEKS                       R21 R20 K19 ["errorMessage"]
      121 GETTABLEKS                       R21 R10 K25 ["pop"]
      123 SETTABLEKS                       R21 R20 K20 ["popError"]
      125 SETTABLEKS                       R18 R20 K21 ["generateMaterialVariants"]
      127 SETTABLEKS                       R19 R20 K22 ["uploadMaterialVariant"]
      129 GETUPVAL                         R22 0
      130 GETTABLEKS                       R21 R22 K26 ["createElement"]
      132 GETUPVAL                         R23 16
      133 GETTABLEKS                       R22 R23 K27 ["Provider"]
      135 DUPTABLE                         R23 K29 [{"value"}]
      136 SETTABLEKS                       R20 R23 K28 ["value"]
      138 GETTABLEKS                       R24 R0 K30 ["children"]
      140 CALL                             R21 3 -1
      141 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaterialService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["MaterialGenerator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["MaterialFramework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Promise"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K10 ["Packages"]
       52 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R3 K17 ["ContextServices"]
       57 GETTABLEKS                       R9 R8 K18 ["Analytics"]
       59 GETTABLEKS                       R10 R8 K19 ["Localization"]
       61 GETTABLEKS                       R11 R7 K20 ["useStackState"]
       63 GETTABLEKS                       R12 R7 K21 ["useToggleState"]
       65 GETTABLEKS                       R14 R4 K22 ["Context"]
       67 GETTABLEKS                       R13 R14 K23 ["StudioServices"]
       69 GETIMPORT                        R14 K9 [require]
       71 GETTABLEKS                       R17 R1 K24 ["Src"]
       73 GETTABLEKS                       R16 R17 K25 ["Enum"]
       75 GETTABLEKS                       R15 R16 K26 ["GenerationErrorType"]
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R16 R1 K24 ["Src"]
       80 GETTABLEKS                       R15 R16 K27 ["Util"]
       82 GETIMPORT                        R16 K9 [require]
       84 GETTABLEKS                       R17 R15 K28 ["GeneratedMaterialsContext"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K9 [require]
       89 GETTABLEKS                       R18 R15 K29 ["GenerationContext"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K9 [require]
       94 GETTABLEKS                       R19 R15 K30 ["getNewMaterialName"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K9 [require]
       99 GETTABLEKS                       R20 R15 K31 ["getSampleCount"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K9 [require]
      104 GETTABLEKS                       R21 R15 K32 ["parseGenerationError"]
      106 CALL                             R20 1 1
      107 GETIMPORT                        R21 K9 [require]
      109 GETTABLEKS                       R22 R15 K33 ["useRefToState"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K9 [require]
      114 GETTABLEKS                       R24 R1 K24 ["Src"]
      116 GETTABLEKS                       R23 R24 K34 ["Types"]
      118 CALL                             R22 1 1
      119 DUPCLOSURE                       R23 K35 [PROTO_1]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R0
      122 DUPCLOSURE                       R24 K36 [PROTO_2]
      123 CAPTURE                          VAL R14
      124 DUPCLOSURE                       R25 K37 [PROTO_10]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R17
      142 RETURN                           R25 1
