PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["Name"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETIMPORT                        R8 K3 [Enum.AssetType.DynamicHead]
        6 GETTABLEKS                       R9 R7 K4 ["assetTypeEnum"]
        8 JUMPIFNOTEQ                      R8 R9 ; [+24]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R9 R7 K5 ["allSelectedInstances"]
       13 MOVE                             R10 R2
       14 CALL                             R8 2 1
       15 JUMPIF                           R8 ; [+2]
       16 LOADB                            R9 0
       17 RETURN                           R9 1
       18 GETUPVAL                         R9 1
       19 GETUPVAL                         R10 2
       20 MOVE                             R11 R2
       21 CALL                             R10 1 1
       22 GETTABLEKS                       R12 R7 K5 ["allSelectedInstances"]
       24 GETTABLEN                        R11 R12 1
       25 MOVE                             R12 R2
       26 CALL                             R9 3 1
       27 GETTABLEKS                       R10 R9 K6 ["success"]
       29 JUMPIF                           R10 ; [+42]
       30 LOADB                            R10 0
       31 RETURN                           R10 1
       32 JUMP                             ; [+39]
       33 MOVE                             R8 R1
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 FORGPREP                         R8
       37 GETTABLEKS                       R14 R7 K5 ["allSelectedInstances"]
       39 MOVE                             R15 R14
       40 LOADNIL                          R16
       41 LOADNIL                          R17
       42 FORGPREP                         R15
       43 GETTABLEKS                       R20 R19 K7 ["Name"]
       45 JUMPIFNOTEQ                      R20 R12 ; [+3]
       47 MOVE                             R13 R19
       48 JUMP                             ; [+3]
       49 FORGLOOP                         R15 2 ; [-7]
       51 LOADNIL                          R13
       52 JUMPIF                           R13 ; [+2]
       53 LOADB                            R14 0
       54 RETURN                           R14 1
       55 GETUPVAL                         R14 1
       56 GETUPVAL                         R15 3
       57 GETTABLEKS                       R16 R7 K4 ["assetTypeEnum"]
       59 MOVE                             R17 R12
       60 MOVE                             R18 R2
       61 CALL                             R15 3 1
       62 MOVE                             R16 R13
       63 MOVE                             R17 R2
       64 CALL                             R14 3 1
       65 GETTABLEKS                       R15 R14 K6 ["success"]
       67 JUMPIF                           R15 ; [+2]
       68 LOADB                            R15 0
       69 RETURN                           R15 1
       70 FORGLOOP                         R8 2 ; [-34]
       72 FORGLOOP                         R3 2 ; [-69]
       74 LOADB                            R3 1
       75 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getBodyPartAssets"]
        5 CALL                             R3 0 1
        6 LENGTH                           R2 R3
        7 LOADN                            R3 0
        8 MOVE                             R4 R0
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K1 ["isBodyPart"]
       15 GETTABLEKS                       R10 R8 K2 ["assetTypeEnum"]
       17 CALL                             R9 1 1
       18 JUMPIF                           R9 ; [+2]
       19 LOADB                            R9 0
       20 RETURN                           R9 1
       21 GETTABLEKS                       R10 R8 K2 ["assetTypeEnum"]
       23 GETTABLE                         R9 R1 R10
       24 JUMPIFNOT                        R9 ; [+2]
       25 LOADB                            R9 0
       26 RETURN                           R9 1
       27 GETTABLEKS                       R9 R8 K2 ["assetTypeEnum"]
       29 LOADB                            R10 1
       30 SETTABLE                         R10 R1 R9
       31 ADDK                             R3 R3 K3 [1]
       32 FORGLOOP                         R4 2 ; [-21]
       34 JUMPIFEQ                         R3 R2 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K3 [Enum.AssetType.DynamicHead]
        8 GETTABLEKS                       R9 R7 K4 ["assetTypeEnum"]
       10 JUMPIFNOTEQ                      R8 R9 ; [+11]
       12 GETTABLEKS                       R10 R7 K5 ["allSelectedInstances"]
       14 GETTABLEN                        R9 R10 1
       15 GETTABLEKS                       R8 R9 K6 ["Name"]
       17 GETTABLEKS                       R10 R7 K5 ["allSelectedInstances"]
       19 GETTABLEN                        R9 R10 1
       20 SETTABLE                         R9 R2 R8
       21 JUMP                             ; [+24]
       22 GETTABLEKS                       R9 R7 K5 ["allSelectedInstances"]
       24 MOVE                             R10 R9
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETTABLEKS                       R15 R14 K6 ["Name"]
       30 JUMPIFNOTEQ                      R15 R0 ; [+3]
       32 MOVE                             R8 R14
       33 JUMP                             ; [+3]
       34 FORGLOOP                         R10 2 ; [-7]
       36 LOADNIL                          R8
       37 NAMECALL                         R9 R8 K7 ["GetChildren"]
       39 CALL                             R9 1 3
       40 FORGPREP                         R9
       41 GETTABLEKS                       R14 R13 K6 ["Name"]
       43 SETTABLE                         R13 R2 R14
       44 FORGLOOP                         R9 2 ; [-4]
       46 FORGLOOP                         R3 2 ; [-41]
       48 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"MeshPart"}]
        1 NEWTABLE                         R3 0 1
        3 LOADK                            R4 K2 ["MeshId"]
        4 SETLIST                          R3 R4 1 [1]
        6 SETTABLEKS                       R3 R2 K0 ["MeshPart"]
        8 DUPTABLE                         R3 K1 [{"MeshPart"}]
        9 DUPTABLE                         R4 K3 [{"MeshId"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K2 ["MeshId"]
       13 SETTABLEKS                       R4 R3 K0 ["MeshPart"]
       15 MOVE                             R4 R0
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K4 ["allSelectedInstances"]
       21 LOADNIL                          R10
       22 LOADNIL                          R11
       23 FORGPREP                         R9
       24 NEWTABLE                         R14 0 0
       26 NEWTABLE                         R15 0 0
       28 GETUPVAL                         R17 0
       29 GETTABLEKS                       R16 R17 K5 ["parseWithErrorCheck"]
       31 MOVE                             R17 R15
       32 MOVE                             R18 R14
       33 MOVE                             R19 R13
       34 MOVE                             R20 R2
       35 MOVE                             R21 R3
       36 MOVE                             R22 R1
       37 CALL                             R16 6 1
       38 JUMPIF                           R16 ; [+18]
       39 GETUPVAL                         R18 1
       40 GETTABLEKS                       R17 R18 K6 ["reportFailure"]
       42 GETUPVAL                         R20 1
       43 GETTABLEKS                       R19 R20 K7 ["ErrorType"]
       45 GETTABLEKS                       R18 R19 K8 ["validateFullBody_MeshIdsMissing"]
       47 LOADNIL                          R19
       48 MOVE                             R20 R1
       49 CALL                             R17 3 0
       50 LOADB                            R17 0
       51 NEWTABLE                         R18 0 1
       53 LOADK                            R19 K9 ["Unable to run full body validation due to previous errors detected while processing individual body parts"]
       54 SETLIST                          R18 R19 1 [1]
       56 RETURN                           R17 2
       57 FORGLOOP                         R9 2 ; [-34]
       59 FORGLOOP                         R4 2 ; [-41]
       61 LOADB                            R4 1
       62 RETURN                           R4 1

PROTO_5:
        0 JUMPIFNOT                        R2 ; [+3]
        1 GETTABLEKS                       R3 R2 K0 ["isServer"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 JUMPIF                           R4 ; [+23]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
       15 GETTABLEKS                       R5 R6 K3 ["validateFullBody_IncorrectAssetTypeSet"]
       17 LOADNIL                          R6
       18 MOVE                             R7 R2
       19 CALL                             R4 3 0
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETIMPORT                        R4 K5 [error]
       23 LOADK                            R5 K6 ["Full body check did not receive the correct set of body part Asset Types (i.e. Head, Torso, LeftArm, RightArm, LeftLeg, RightLeg). Make sure the body model is valid and try again."]
       24 CALL                             R4 1 0
       25 LOADB                            R4 0
       26 NEWTABLE                         R5 0 1
       28 LOADK                            R6 K6 ["Full body check did not receive the correct set of body part Asset Types (i.e. Head, Torso, LeftArm, RightArm, LeftLeg, RightLeg). Make sure the body model is valid and try again."]
       29 SETLIST                          R5 R6 1 [1]
       31 RETURN                           R4 2
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R0
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 CALL                             R4 3 1
       37 JUMPIF                           R4 ; [+18]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
       44 GETTABLEKS                       R5 R6 K7 ["validateFullBody_InstancesMissing"]
       46 LOADNIL                          R6
       47 MOVE                             R7 R2
       48 CALL                             R4 3 0
       49 LOADB                            R4 0
       50 NEWTABLE                         R5 0 1
       52 LOADK                            R6 K8 ["Unable to run full body validation due to previous errors detected while processing individual body parts."]
       53 SETLIST                          R5 R6 1 [1]
       55 RETURN                           R4 2
       56 GETUPVAL                         R4 3
       57 MOVE                             R5 R0
       58 MOVE                             R6 R2
       59 CALL                             R4 2 2
       60 JUMPIF                           R4 ; [+3]
       61 LOADB                            R6 0
       62 MOVE                             R7 R5
       63 RETURN                           R6 2
       64 LOADB                            R6 1
       65 RETURN                           R6 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["fullBodyData"]
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K1 ["allSelectedInstances"]
        9 MOVE                             R9 R0
       10 CALL                             R7 2 2
       11 JUMPIF                           R7 ; [+7]
       12 LOADB                            R9 0
       13 NEWTABLE                         R10 0 1
       15 MOVE                             R11 R8
       16 SETLIST                          R10 R11 1 [1]
       18 RETURN                           R9 2
       19 FORGLOOP                         R2 2 ; [-14]
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["fullBodyData"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["fullBodyData required in validationContext for validateFullBody"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K0 ["fullBodyData"]
       14 GETTABLEKS                       R2 R0 K4 ["requireAllFolders"]
       16 NEWTABLE                         R3 0 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K5 ["FOLDER_NAMES"]
       21 GETTABLEKS                       R4 R5 K6 ["R15ArtistIntent"]
       23 SETLIST                          R3 R4 1 [1]
       25 JUMPIFNOT                        R2 ; [+11]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K5 ["FOLDER_NAMES"]
       29 GETTABLEKS                       R6 R7 K7 ["R15Fixed"]
       31 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K10 [table.insert]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R1
       39 MOVE                             R6 R3
       40 MOVE                             R7 R0
       41 CALL                             R4 3 2
       42 JUMPIF                           R4 ; [+3]
       43 LOADB                            R6 0
       44 MOVE                             R7 R5
       45 RETURN                           R6 2
       46 GETUPVAL                         R6 2
       47 MOVE                             R7 R0
       48 CALL                             R6 1 2
       49 MOVE                             R4 R6
       50 MOVE                             R5 R7
       51 JUMPIF                           R4 ; [+3]
       52 LOADB                            R6 0
       53 MOVE                             R7 R5
       54 RETURN                           R6 2
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K11 ["new"]
       58 CALL                             R6 0 1
       59 MOVE                             R7 R3
       60 LOADNIL                          R8
       61 LOADNIL                          R9
       62 FORGPREP                         R7
       63 GETUPVAL                         R12 4
       64 MOVE                             R13 R11
       65 MOVE                             R14 R1
       66 CALL                             R12 2 1
       67 FASTCALL1                        ASSERT R12 ; [+3]
       68 MOVE                             R14 R12
       69 GETIMPORT                        R13 K3 [assert]
       71 CALL                             R13 1 0
       72 GETUPVAL                         R14 5
       73 GETTABLEKS                       R13 R14 K12 ["validateAll"]
       75 MOVE                             R14 R12
       76 MOVE                             R15 R0
       77 CALL                             R13 2 1
       78 JUMPIF                           R13 ; [+18]
       79 GETUPVAL                         R14 6
       80 GETTABLEKS                       R13 R14 K13 ["reportFailure"]
       82 GETUPVAL                         R16 6
       83 GETTABLEKS                       R15 R16 K14 ["ErrorType"]
       85 GETTABLEKS                       R14 R15 K15 ["validateFullBody_ZeroMeshSize"]
       87 LOADNIL                          R15
       88 MOVE                             R16 R0
       89 CALL                             R13 3 0
       90 LOADB                            R13 0
       91 NEWTABLE                         R14 0 1
       93 LOADK                            R15 K16 ["Unable to run full body validation due to previous errors detected while processing individual body parts."]
       94 SETLIST                          R14 R15 1 [1]
       96 RETURN                           R13 2
       97 GETUPVAL                         R16 7
       98 GETTABLEKS                       R15 R16 K17 ["validateFullBody"]
      100 MOVE                             R16 R12
      101 MOVE                             R17 R0
      102 CALL                             R15 2 -1
      103 NAMECALL                         R13 R6 K18 ["updateReasons"]
      105 CALL                             R13 -1 0
      106 GETUPVAL                         R15 8
      107 MOVE                             R16 R12
      108 LOADNIL                          R17
      109 MOVE                             R18 R0
      110 CALL                             R15 3 -1
      111 NAMECALL                         R13 R6 K18 ["updateReasons"]
      113 CALL                             R13 -1 0
      114 GETUPVAL                         R13 9
      115 CALL                             R13 0 1
      116 JUMPIFNOT                        R13 ; [+9]
      117 GETUPVAL                         R16 10
      118 GETTABLEKS                       R15 R16 K17 ["validateFullBody"]
      120 MOVE                             R16 R12
      121 MOVE                             R17 R0
      122 CALL                             R15 2 -1
      123 NAMECALL                         R13 R6 K18 ["updateReasons"]
      125 CALL                             R13 -1 0
      126 FORGLOOP                         R7 2 ; [-64]
      128 NAMECALL                         R7 R6 K19 ["getFinalResults"]
      130 CALL                             R7 1 -1
      131 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["ConstantsInterface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R6 R0 K8 ["flags"]
       26 GETTABLEKS                       R5 R6 K9 ["getFFlagUGCValidateLegFullBodySeparation"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K10 ["util"]
       33 GETTABLEKS                       R6 R7 K11 ["Types"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R8 R0 K10 ["util"]
       40 GETTABLEKS                       R7 R8 K12 ["FailureReasonsAccumulator"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K10 ["util"]
       47 GETTABLEKS                       R8 R9 K13 ["validateWithSchema"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R10 R0 K14 ["validation"]
       54 GETTABLEKS                       R9 R10 K15 ["validateAssetBounds"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R11 R0 K14 ["validation"]
       61 GETTABLEKS                       R10 R11 K16 ["validateSingleInstance"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R12 R0 K10 ["util"]
       68 GETTABLEKS                       R11 R12 K17 ["ValidateBodyBlockingTests"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R13 R0 K14 ["validation"]
       75 GETTABLEKS                       R12 R13 K18 ["ValidateAssetBodyPartCages"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R14 R0 K14 ["validation"]
       82 GETTABLEKS                       R13 R14 K19 ["ValidateLegsSeparation"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R15 R0 K10 ["util"]
       89 GETTABLEKS                       R14 R15 K20 ["createDynamicHeadMeshPartSchema"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R16 R0 K10 ["util"]
       96 GETTABLEKS                       R15 R16 K21 ["createLimbsAndTorsoSchema"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R17 R0 K10 ["util"]
      103 GETTABLEKS                       R16 R17 K22 ["resetPhysicsData"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R18 R0 K10 ["util"]
      110 GETTABLEKS                       R17 R18 K23 ["ParseContentIds"]
      112 CALL                             R16 1 1
      113 DUPCLOSURE                       R17 K24 [PROTO_0]
      114 DUPCLOSURE                       R18 K25 [PROTO_1]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 DUPCLOSURE                       R19 K26 [PROTO_2]
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R20 K27 [PROTO_3]
      122 DUPCLOSURE                       R21 K28 [PROTO_4]
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R1
      125 DUPCLOSURE                       R22 K29 [PROTO_5]
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R21
      130 DUPCLOSURE                       R23 K30 [PROTO_6]
      131 CAPTURE                          VAL R15
      132 DUPCLOSURE                       R24 K31 [PROTO_7]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R23
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R12
      144 RETURN                           R24 1
