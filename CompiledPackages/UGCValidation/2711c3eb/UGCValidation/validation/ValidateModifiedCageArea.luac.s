PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 GETTABLEKS                       R3 R2 K0 ["isServer"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETIMPORT                        R3 K2 [error]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["reportFailure"]
       14 MOVE                             R4 R1
       15 LOADNIL                          R5
       16 MOVE                             R6 R2
       17 CALL                             R3 3 0
       18 LOADB                            R3 0
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R0
       22 SETLIST                          R4 R5 1 [1]
       24 RETURN                           R3 2

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 0
        7 GETTABLE                         R8 R9 R5
        8 FASTCALL2K                       ASSERT R8 K0 ; [+4]
       10 LOADK                            R9 K0 ["Body area not found in UV reference values"]
       11 GETIMPORT                        R7 K2 [assert]
       13 CALL                             R7 2 1
       14 MOVE                             R8 R7
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 FORGPREP                         R8
       18 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       20 MOVE                             R14 R1
       21 MOVE                             R15 R12
       22 GETIMPORT                        R13 K5 [table.insert]
       24 CALL                             R13 2 0
       25 FORGLOOP                         R8 2 ; [-8]
       27 FORGLOOP                         R2 1 ; [-22]
       29 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["uVsDisallowedForAssetType"]
        2 JUMPIF                           R1 ; [+19]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R8 R0 K1 ["allowedParts"]
       11 GETTABLE                         R7 R8 R5
       12 JUMPIF                           R7 ; [+2]
       13 LOADB                            R7 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 1 ; [-7]
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R0 K0 ["uVsDisallowedForAssetType"]
       22 GETTABLEKS                       R1 R0 K0 ["uVsDisallowedForAssetType"]
       24 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["allowedParts"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
        9 GETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
       11 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["mainParts"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
        9 GETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R5 R5 K0 ["editableMesh"]
        9 GETUPVAL                         R6 5
       10 NAMECALL                         R0 R0 K1 ["CalculateEditableMeshNumModifiedCageUVsInSet"]
       12 CALL                             R0 6 -1
       13 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R8 R4 K0 ["assetTypeEnum"]
        3 GETTABLE                         R6 R7 R8
        4 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        6 LOADK                            R7 K1 ["bodyArea should be defined"]
        7 GETIMPORT                        R5 K3 [assert]
        9 CALL                             R5 2 1
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 LENGTH                           R7 R6
       14 JUMPIFNOTEQKN                    R7 K4 [0] ; [+3]
       16 LOADB                            R7 1
       17 RETURN                           R7 1
       18 GETUPVAL                         R7 2
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R6
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 MOVE                             R9 R4
       27 CALL                             R7 2 4
       28 JUMPIF                           R7 ; [+10]
       29 GETUPVAL                         R11 4
       30 LOADK                            R12 K5 ["Failed to execute excluded modified cage UV check. Make sure both cage meshes exists and try again."]
       31 GETUPVAL                         R13 5
       32 GETTABLEKS                       R13 R13 K6 ["ErrorType"]
       34 GETTABLEKS                       R13 R13 K7 ["validateExcludedModifiedCageUVs_FailedToExecute"]
       36 MOVE                             R14 R4
       37 CALL                             R11 3 -1
       38 RETURN                           R11 -1
       39 LENGTH                           R13 R6
       40 JUMPIFEQ                         R8 R13 ; [+2]
       42 LOADB                            R12 0 +1
       43 LOADB                            R12 1
       44 FASTCALL2K                       ASSERT R12 K8 ; [+4]
       46 LOADK                            R13 K8 ["all the UVs in allExcludedUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"]
       47 GETIMPORT                        R11 K3 [assert]
       49 CALL                             R11 2 0
       50 JUMPIFNOTEQKN                    R9 K4 [0] ; [+3]
       52 LOADB                            R11 1
       53 RETURN                           R11 1
       54 DIV                              R12 R10 R9
       55 MULK                             R11 R12 K9 [100]
       56 GETUPVAL                         R13 6
       57 JUMPIFLT                         R13 R11 ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 JUMPIFNOT                        R12 ; [+38]
       62 GETUPVAL                         R13 5
       63 GETTABLEKS                       R13 R13 K10 ["reportFailure"]
       65 GETUPVAL                         R14 5
       66 GETTABLEKS                       R14 R14 K6 ["ErrorType"]
       68 GETTABLEKS                       R14 R14 K11 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
       70 LOADNIL                          R15
       71 MOVE                             R16 R4
       72 CALL                             R13 3 0
       73 LOADB                            R13 0
       74 NEWTABLE                         R14 0 1
       76 GETIMPORT                        R15 K14 [string.format]
       78 LOADK                            R16 K15 ["%d%% of modified cage UVs in WrapLayer CageMesh (outer mesh) are outside the expected region of the body. For a %s no more than %d%% of the modified UVs can be outside the %s area. Move your asset to the correct area of the body."]
       79 FASTCALL1                        MATH_FLOOR R11 ; [+3]
       80 MOVE                             R18 R11
       81 GETIMPORT                        R17 K18 [math.floor]
       83 CALL                             R17 1 1
       84 GETTABLEKS                       R18 R4 K0 ["assetTypeEnum"]
       86 GETTABLEKS                       R18 R18 K19 ["Name"]
       88 GETUPVAL                         R19 6
       89 GETUPVAL                         R20 7
       90 GETTABLEKS                       R20 R20 K20 ["keysToString"]
       92 GETTABLEKS                       R21 R5 K21 ["allowedParts"]
       94 LOADK                            R22 K22 ["/"]
       95 CALL                             R20 2 -1
       96 CALL                             R15 -1 -1
       97 SETLIST                          R14 R15 -1 [1]
       99 RETURN                           R13 2
      100 LOADB                            R13 1
      101 RETURN                           R13 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R5 R5 K0 ["editableMesh"]
        9 GETUPVAL                         R6 5
       10 NAMECALL                         R0 R0 K1 ["CalculateEditableMeshNumModifiedCageUVsInSet"]
       12 CALL                             R0 6 -1
       13 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R8 R4 K0 ["assetTypeEnum"]
        3 GETTABLE                         R6 R7 R8
        4 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        6 LOADK                            R7 K1 ["bodyArea should be defined"]
        7 GETIMPORT                        R5 K3 [assert]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R7 R5 K4 ["mainUVsForAssetType"]
       12 JUMPIF                           R7 ; [+6]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R8 R5 K5 ["mainParts"]
       16 CALL                             R7 1 1
       17 SETTABLEKS                       R7 R5 K4 ["mainUVsForAssetType"]
       19 GETTABLEKS                       R6 R5 K4 ["mainUVsForAssetType"]
       21 LENGTH                           R7 R6
       22 JUMPIFNOTEQKN                    R7 K6 [0] ; [+3]
       24 LOADB                            R7 1
       25 RETURN                           R7 1
       26 GETUPVAL                         R7 2
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 MOVE                             R9 R4
       35 CALL                             R7 2 4
       36 JUMPIF                           R7 ; [+10]
       37 GETUPVAL                         R11 4
       38 LOADK                            R12 K7 ["Failed to execute main modified cage UV check. Make sure both cage meshes exists and try again."]
       39 GETUPVAL                         R13 5
       40 GETTABLEKS                       R13 R13 K8 ["ErrorType"]
       42 GETTABLEKS                       R13 R13 K9 ["validateMainModifiedCageUVs_FailedToExecute"]
       44 MOVE                             R14 R4
       45 CALL                             R11 3 -1
       46 RETURN                           R11 -1
       47 LENGTH                           R13 R6
       48 JUMPIFEQ                         R8 R13 ; [+2]
       50 LOADB                            R12 0 +1
       51 LOADB                            R12 1
       52 FASTCALL2K                       ASSERT R12 K10 ; [+4]
       54 LOADK                            R13 K10 ["all the UVs in allUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"]
       55 GETIMPORT                        R11 K3 [assert]
       57 CALL                             R11 2 0
       58 DIV                              R12 R10 R8
       59 MULK                             R11 R12 K11 [100]
       60 GETUPVAL                         R13 6
       61 JUMPIFLE                         R13 R11 ; [+2]
       63 LOADB                            R12 0 +1
       64 LOADB                            R12 1
       65 JUMPIF                           R12 ; [+38]
       66 GETUPVAL                         R13 5
       67 GETTABLEKS                       R13 R13 K12 ["reportFailure"]
       69 GETUPVAL                         R14 5
       70 GETTABLEKS                       R14 R14 K8 ["ErrorType"]
       72 GETTABLEKS                       R14 R14 K13 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
       74 LOADNIL                          R15
       75 MOVE                             R16 R4
       76 CALL                             R13 3 0
       77 LOADB                            R13 0
       78 NEWTABLE                         R14 0 1
       80 GETIMPORT                        R15 K16 [string.format]
       82 LOADK                            R16 K17 ["The WrapLayer CageMesh (outer mesh) for a %s must modify %d%% of the cage UVs in the %s area. Currently only %d%% are modified. Move your asset to the correct area of the body."]
       83 GETTABLEKS                       R17 R4 K0 ["assetTypeEnum"]
       85 GETTABLEKS                       R17 R17 K18 ["Name"]
       87 GETUPVAL                         R18 6
       88 GETUPVAL                         R19 7
       89 GETTABLEKS                       R19 R19 K19 ["keysToString"]
       91 GETTABLEKS                       R20 R5 K5 ["mainParts"]
       93 LOADK                            R21 K20 ["/"]
       94 CALL                             R19 2 1
       95 FASTCALL1                        MATH_FLOOR R11 ; [+3]
       96 MOVE                             R21 R11
       97 GETIMPORT                        R20 K23 [math.floor]
       99 CALL                             R20 1 1
      100 CALL                             R15 5 -1
      101 SETLIST                          R14 R15 -1 [1]
      103 RETURN                           R13 2
      104 LOADB                            R13 1
      105 RETURN                           R13 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R5 R5 K0 ["editableMesh"]
        9 GETUPVAL                         R6 5
       10 NAMECALL                         R0 R0 K1 ["CalculateEditableMeshModifiedCageBoundingBox"]
       12 CALL                             R0 6 -1
       13 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R9 R5 K0 ["assetTypeEnum"]
        3 GETTABLE                         R7 R8 R9
        4 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        6 LOADK                            R8 K1 ["bodyArea should be defined"]
        7 GETIMPORT                        R6 K3 [assert]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R8 R6 K4 ["uVsForAssetType"]
       12 JUMPIF                           R8 ; [+6]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R9 R6 K5 ["allowedParts"]
       16 CALL                             R8 1 1
       17 SETTABLEKS                       R8 R6 K4 ["uVsForAssetType"]
       19 GETTABLEKS                       R7 R6 K4 ["uVsForAssetType"]
       21 LENGTH                           R8 R7
       22 JUMPIFNOTEQKN                    R8 K6 [0] ; [+3]
       24 LOADB                            R8 1
       25 RETURN                           R8 1
       26 GETUPVAL                         R8 2
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 MOVE                             R10 R5
       35 CALL                             R8 2 3
       36 LOADNIL                          R11
       37 JUMPIFNOT                        R8 ; [+18]
       38 LOADNIL                          R12
       39 LOADNIL                          R13
       40 GETUPVAL                         R14 4
       41 MOVE                             R15 R0
       42 MOVE                             R16 R5
       43 CALL                             R14 2 3
       44 MOVE                             R8 R14
       45 MOVE                             R12 R15
       46 MOVE                             R13 R16
       47 JUMPIFNOT                        R8 ; [+8]
       48 JUMPIFNOT                        R13 ; [+6]
       49 LENGTH                           R14 R13
       50 LOADN                            R15 0
       51 JUMPIFNOTLT                      R15 R14 ; [+3]
       53 MOVE                             R11 R13
       54 JUMP                             ; [+1]
       55 LOADB                            R8 0
       56 JUMPIF                           R8 ; [+10]
       57 GETUPVAL                         R12 5
       58 LOADK                            R13 K7 ["Failed to execute testing render mesh inside bounding box of outer cage modified area. Make sure both cage meshes and render mesh exist and try again."]
       59 GETUPVAL                         R14 6
       60 GETTABLEKS                       R14 R14 K8 ["ErrorType"]
       62 GETTABLEKS                       R14 R14 K9 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
       64 MOVE                             R15 R5
       65 CALL                             R12 3 -1
       66 RETURN                           R12 -1
       67 GETUPVAL                         R12 7
       68 MUL                              R10 R10 R12
       69 LOADN                            R12 0
       70 MOVE                             R13 R11
       71 LOADNIL                          R14
       72 LOADNIL                          R15
       73 FORGPREP                         R13
       74 GETUPVAL                         R18 8
       75 GETTABLEKS                       R18 R18 K10 ["pointInAxisAlignedBounds"]
       77 MOVE                             R19 R17
       78 MOVE                             R20 R9
       79 MOVE                             R21 R10
       80 CALL                             R18 3 1
       81 JUMPIFNOT                        R18 ; [+1]
       82 ADDK                             R12 R12 K11 [1]
       83 FORGLOOP                         R13 2 ; [-10]
       85 LENGTH                           R15 R11
       86 DIV                              R14 R12 R15
       87 MULK                             R13 R14 K12 [100]
       88 GETUPVAL                         R15 9
       89 JUMPIFLE                         R15 R13 ; [+2]
       91 LOADB                            R14 0 +1
       92 LOADB                            R14 1
       93 JUMPIF                           R14 ; [+36]
       94 GETUPVAL                         R15 6
       95 GETTABLEKS                       R15 R15 K13 ["reportFailure"]
       97 GETUPVAL                         R16 6
       98 GETTABLEKS                       R16 R16 K8 ["ErrorType"]
      100 GETTABLEKS                       R16 R16 K14 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      102 LOADNIL                          R17
      103 MOVE                             R18 R5
      104 CALL                             R15 3 0
      105 GETUPVAL                         R15 10
      106 GETTABLEKS                       R15 R15 K15 ["keysToString"]
      108 GETTABLEKS                       R16 R6 K5 ["allowedParts"]
      110 LOADK                            R17 K16 ["/"]
      111 CALL                             R15 2 1
      112 LOADB                            R16 0
      113 NEWTABLE                         R17 0 1
      115 GETIMPORT                        R18 K19 [string.format]
      117 LOADK                            R19 K20 ["Only %d%% of the render mesh verts are situated in the modified %s area of the WrapLayer CageMesh (outer mesh). %d%% is required. Move the render mesh to be within the modified %s area of the WrapLayer CageMesh (outer mesh)."]
      118 FASTCALL1                        MATH_FLOOR R13 ; [+3]
      119 MOVE                             R21 R13
      120 GETIMPORT                        R20 K23 [math.floor]
      122 CALL                             R20 1 1
      123 MOVE                             R21 R15
      124 GETUPVAL                         R22 9
      125 MOVE                             R23 R15
      126 CALL                             R18 5 -1
      127 SETLIST                          R17 R18 -1 [1]
      129 RETURN                           R16 2
      130 LOADB                            R15 1
      131 RETURN                           R15 1

PROTO_11:
        0 GETTABLEKS                       R7 R5 K0 ["assetTypeEnum"]
        2 JUMPIFNOT                        R7 ; [+5]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R8 R5 K0 ["assetTypeEnum"]
        6 GETTABLE                         R6 R7 R8
        7 JUMP                             ; [+1]
        8 LOADNIL                          R6
        9 JUMPIF                           R6 ; [+2]
       10 LOADB                            R7 1
       11 RETURN                           R7 1
       12 GETTABLEKS                       R8 R6 K1 ["allowedParts"]
       14 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       16 LOADK                            R9 K2 ["bodyArea.allowedParts should be defined"]
       17 GETIMPORT                        R7 K4 [assert]
       19 CALL                             R7 2 0
       20 GETTABLEKS                       R8 R6 K5 ["mainParts"]
       22 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       24 LOADK                            R9 K6 ["bodyArea.mainParts should be defined"]
       25 GETIMPORT                        R7 K4 [assert]
       27 CALL                             R7 2 0
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K7 ["new"]
       31 CALL                             R7 0 1
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K8 ["validateExcludedModifiedUVs"]
       35 MOVE                             R11 R0
       36 MOVE                             R12 R1
       37 MOVE                             R13 R2
       38 MOVE                             R14 R3
       39 MOVE                             R15 R5
       40 CALL                             R10 5 -1
       41 NAMECALL                         R8 R7 K9 ["updateReasons"]
       43 CALL                             R8 -1 0
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K10 ["validateMainModifiedUVs"]
       47 MOVE                             R11 R0
       48 MOVE                             R12 R1
       49 MOVE                             R13 R2
       50 MOVE                             R14 R3
       51 MOVE                             R15 R5
       52 CALL                             R10 5 -1
       53 NAMECALL                         R8 R7 K9 ["updateReasons"]
       55 CALL                             R8 -1 0
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R10 R10 K11 ["validateRenderMeshInsideModifiedOuterCageArea"]
       59 MOVE                             R11 R4
       60 MOVE                             R12 R0
       61 MOVE                             R13 R1
       62 MOVE                             R14 R2
       63 MOVE                             R15 R3
       64 MOVE                             R16 R5
       65 CALL                             R10 6 -1
       66 NAMECALL                         R8 R7 K9 ["updateReasons"]
       68 CALL                             R8 -1 0
       69 NAMECALL                         R8 R7 K12 ["getFinalResults"]
       71 CALL                             R8 1 -1
       72 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["WrapTargetCageUVReferenceValues"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["util"]
       27 GETTABLEKS                       R5 R5 K12 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K8 [require]
       32 GETTABLEKS                       R6 R1 K11 ["util"]
       34 GETTABLEKS                       R6 R6 K13 ["pcallDeferred"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K8 [require]
       39 GETTABLEKS                       R7 R1 K11 ["util"]
       41 GETTABLEKS                       R7 R7 K14 ["FailureReasonsAccumulator"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K8 [require]
       46 GETTABLEKS                       R8 R1 K11 ["util"]
       48 GETTABLEKS                       R8 R8 K15 ["getMeshVerts"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R9 R1 K11 ["util"]
       55 GETTABLEKS                       R9 R9 K16 ["CollisionTestUtil"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R10 R1 K11 ["util"]
       62 GETTABLEKS                       R10 R10 K17 ["StringUtil"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K1 [game]
       67 LOADK                            R12 K18 ["UGCValidateExcludedUVModifyRequirements"]
       68 LOADN                            R13 14
       69 NAMECALL                         R10 R10 K19 ["DefineFastInt"]
       71 CALL                             R10 3 1
       72 GETIMPORT                        R11 K1 [game]
       74 LOADK                            R13 K20 ["UGCValidatePartUVModifyRequirements"]
       75 LOADN                            R14 45
       76 NAMECALL                         R11 R11 K19 ["DefineFastInt"]
       78 CALL                             R11 3 1
       79 GETIMPORT                        R12 K1 [game]
       81 LOADK                            R14 K21 ["UGCValidateRenderMeshInsideModifiedArea"]
       82 LOADN                            R15 70
       83 NAMECALL                         R12 R12 K19 ["DefineFastInt"]
       85 CALL                             R12 3 1
       86 GETIMPORT                        R13 K1 [game]
       88 LOADK                            R15 K22 ["UGCValidateModifiedAreaPaddingModifier"]
       89 LOADK                            R16 K23 ["1.1"]
       90 NAMECALL                         R13 R13 K24 ["DefineFastString"]
       92 CALL                             R13 3 1
       93 FASTCALL1                        TONUMBER R13 ; [+3]
       94 MOVE                             R15 R13
       95 GETIMPORT                        R14 K26 [tonumber]
       97 CALL                             R14 1 1
       98 NEWTABLE                         R15 4 0
      100 NEWTABLE                         R16 2 0
      102 GETIMPORT                        R17 K30 [Enum.AssetType.LeftShoeAccessory]
      104 DUPTABLE                         R18 K33 [{"allowedParts", "mainParts"}]
      105 DUPTABLE                         R19 K37 [{"LeftFoot", "LeftLowerLeg", "LeftUpperLeg"}]
      106 LOADB                            R20 1
      107 SETTABLEKS                       R20 R19 K34 ["LeftFoot"]
      109 LOADB                            R20 1
      110 SETTABLEKS                       R20 R19 K35 ["LeftLowerLeg"]
      112 LOADB                            R20 1
      113 SETTABLEKS                       R20 R19 K36 ["LeftUpperLeg"]
      115 SETTABLEKS                       R19 R18 K31 ["allowedParts"]
      117 DUPTABLE                         R19 K38 [{"LeftFoot"}]
      118 LOADB                            R20 1
      119 SETTABLEKS                       R20 R19 K34 ["LeftFoot"]
      121 SETTABLEKS                       R19 R18 K32 ["mainParts"]
      123 SETTABLE                         R18 R16 R17
      124 GETIMPORT                        R17 K40 [Enum.AssetType.RightShoeAccessory]
      126 DUPTABLE                         R18 K33 [{"allowedParts", "mainParts"}]
      127 DUPTABLE                         R19 K44 [{"RightFoot", "RightLowerLeg", "RightUpperLeg"}]
      128 LOADB                            R20 1
      129 SETTABLEKS                       R20 R19 K41 ["RightFoot"]
      131 LOADB                            R20 1
      132 SETTABLEKS                       R20 R19 K42 ["RightLowerLeg"]
      134 LOADB                            R20 1
      135 SETTABLEKS                       R20 R19 K43 ["RightUpperLeg"]
      137 SETTABLEKS                       R19 R18 K31 ["allowedParts"]
      139 DUPTABLE                         R19 K45 [{"RightFoot"}]
      140 LOADB                            R20 1
      141 SETTABLEKS                       R20 R19 K41 ["RightFoot"]
      143 SETTABLEKS                       R19 R18 K32 ["mainParts"]
      145 SETTABLE                         R18 R16 R17
      146 DUPCLOSURE                       R17 K46 [PROTO_0]
      147 CAPTURE                          VAL R2
      148 DUPCLOSURE                       R18 K47 [PROTO_1]
      149 CAPTURE                          VAL R3
      150 DUPCLOSURE                       R19 K48 [PROTO_2]
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R18
      153 DUPCLOSURE                       R20 K49 [PROTO_3]
      154 CAPTURE                          VAL R18
      155 DUPCLOSURE                       R21 K50 [PROTO_4]
      156 CAPTURE                          VAL R18
      157 DUPCLOSURE                       R22 K51 [PROTO_6]
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R9
      166 SETTABLEKS                       R22 R15 K52 ["validateExcludedModifiedUVs"]
      168 DUPCLOSURE                       R22 K53 [PROTO_8]
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R9
      177 SETTABLEKS                       R22 R15 K54 ["validateMainModifiedUVs"]
      179 DUPCLOSURE                       R22 K55 [PROTO_10]
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R22 R15 K56 ["validateRenderMeshInsideModifiedOuterCageArea"]
      193 DUPCLOSURE                       R22 K57 [PROTO_11]
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R15
      197 SETTABLEKS                       R22 R15 K58 ["validate"]
      199 RETURN                           R15 1
