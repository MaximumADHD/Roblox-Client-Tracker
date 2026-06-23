PROTO_0:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 NAMECALL                         R3 R0 K2 ["GetDescendants"]
        5 CALL                             R3 1 1
        6 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        8 MOVE                             R5 R3
        9 MOVE                             R6 R0
       10 GETIMPORT                        R4 K5 [table.insert]
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["new"]
       16 CALL                             R4 0 1
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 LOADK                            R12 K7 ["MeshPart"]
       22 NAMECALL                         R10 R9 K8 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+101]
       26 LOADK                            R12 K9 ["SurfaceAppearance"]
       27 NAMECALL                         R10 R9 K10 ["FindFirstChildWhichIsA"]
       29 CALL                             R10 2 1
       30 JUMPIFNOT                        R10 ; [+96]
       31 GETTABLEKS                       R11 R10 K11 ["AlphaMode"]
       33 GETIMPORT                        R12 K14 [Enum.AlphaMode.Overlay]
       35 JUMPIFEQ                         R11 R12 ; [+28]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K15 ["reportFailure"]
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K16 ["ErrorType"]
       43 GETTABLEKS                       R13 R13 K17 ["validateSurfaceAppearances_InvalidAlphaMode"]
       45 LOADNIL                          R14
       46 MOVE                             R15 R1
       47 CALL                             R12 3 0
       48 LOADB                            R14 0
       49 NEWTABLE                         R15 0 1
       51 LOADK                            R17 K18 ["SurfaceAppearance (%*) has an invalid AlphaMode. Expected Enum.AlphaMode.Overlay"]
       52 NAMECALL                         R19 R9 K19 ["GetFullName"]
       54 CALL                             R19 1 1
       55 NAMECALL                         R17 R17 K20 ["format"]
       57 CALL                             R17 2 1
       58 MOVE                             R16 R17
       59 SETLIST                          R15 R16 1 [1]
       61 NAMECALL                         R12 R4 K21 ["updateReasons"]
       63 CALL                             R12 3 0
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K22 ["parse"]
       67 MOVE                             R13 R10
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K23 ["TEXTURE_CONTENT_ID_FIELDS"]
       71 MOVE                             R15 R1
       72 CALL                             R12 3 1
       73 MOVE                             R13 R12
       74 LOADNIL                          R14
       75 LOADNIL                          R15
       76 FORGPREP                         R13
       77 GETUPVAL                         R19 4
       78 GETTABLEKS                       R20 R17 K24 ["fieldName"]
       80 GETTABLE                         R18 R19 R20
       81 JUMPIFNOT                        R18 ; [+43]
       82 DUPTABLE                         R18 K27 [{"fullName", "fieldName", "contentId"}]
       83 GETTABLEKS                       R19 R17 K28 ["instance"]
       85 NAMECALL                         R19 R19 K19 ["GetFullName"]
       87 CALL                             R19 1 1
       88 SETTABLEKS                       R19 R18 K25 ["fullName"]
       90 GETTABLEKS                       R19 R17 K24 ["fieldName"]
       92 SETTABLEKS                       R19 R18 K24 ["fieldName"]
       94 GETTABLEKS                       R20 R17 K28 ["instance"]
       96 GETTABLEKS                       R21 R17 K24 ["fieldName"]
       98 GETTABLE                         R19 R20 R21
       99 SETTABLEKS                       R19 R18 K26 ["contentId"]
      101 GETUPVAL                         R19 5
      102 GETTABLEKS                       R20 R17 K28 ["instance"]
      104 GETTABLEKS                       R21 R17 K24 ["fieldName"]
      106 MOVE                             R22 R1
      107 CALL                             R19 3 2
      108 JUMPIF                           R19 ; [+7]
      109 LOADB                            R21 0
      110 NEWTABLE                         R22 0 1
      112 LOADK                            R23 K29 ["Failed to load texture data"]
      113 SETLIST                          R22 R23 1 [1]
      115 RETURN                           R21 2
      116 SETTABLEKS                       R20 R18 K30 ["editableImage"]
      118 GETUPVAL                         R23 6
      119 MOVE                             R24 R18
      120 MOVE                             R25 R1
      121 CALL                             R23 2 -1
      122 NAMECALL                         R21 R4 K21 ["updateReasons"]
      124 CALL                             R21 -1 0
      125 FORGLOOP                         R13 2 ; [-49]
      127 FORGLOOP                         R5 2 ; [-107]
      129 GETUPVAL                         R5 1
      130 GETTABLEKS                       R5 R5 K31 ["recordScriptTime"]
      132 GETIMPORT                        R6 K33 [script]
      134 GETTABLEKS                       R6 R6 K34 ["Name"]
      136 MOVE                             R7 R2
      137 MOVE                             R8 R1
      138 CALL                             R5 3 0
      139 NAMECALL                         R5 R4 K35 ["getFinalResults"]
      141 CALL                             R5 1 -1
      142 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["util"]
       21 GETTABLEKS                       R4 R4 K8 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["validation"]
       28 GETTABLEKS                       R5 R5 K10 ["validateTextureTransparency"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K7 ["util"]
       35 GETTABLEKS                       R6 R6 K11 ["FailureReasonsAccumulator"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K7 ["util"]
       42 GETTABLEKS                       R7 R7 K12 ["getEditableImageFromContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K7 ["util"]
       49 GETTABLEKS                       R8 R8 K13 ["ParseContentIds"]
       51 CALL                             R7 1 1
       52 DUPTABLE                         R8 K16 [{"ColorMap", "NormalMap"}]
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K14 ["ColorMap"]
       56 LOADB                            R9 1
       57 SETTABLEKS                       R9 R8 K15 ["NormalMap"]
       59 DUPCLOSURE                       R9 K17 [PROTO_0]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 RETURN                           R9 1
