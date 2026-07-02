PROTO_0:
        0 GETTABLEKS                       R6 R0 K0 ["Name"]
        2 GETTABLE                         R5 R2 R6
        3 GETTABLEKS                       R5 R5 K1 ["boundsData"]
        5 GETTABLEKS                       R7 R1 K0 ["Name"]
        7 GETTABLE                         R6 R2 R7
        8 GETTABLEKS                       R6 R6 K1 ["boundsData"]
       10 LOADB                            R7 1
       11 GETTABLEKS                       R8 R6 K2 ["maxOverall"]
       13 JUMPIFNOT                        R8 ; [+34]
       14 GETTABLEKS                       R8 R5 K2 ["maxOverall"]
       16 JUMPIFNOT                        R8 ; [+31]
       17 GETTABLEKS                       R8 R6 K2 ["maxOverall"]
       19 GETTABLEKS                       R8 R8 K3 ["Y"]
       21 GETTABLEKS                       R9 R5 K2 ["maxOverall"]
       23 GETTABLEKS                       R9 R9 K3 ["Y"]
       25 JUMPIFNOTLT                      R9 R8 ; [+22]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K4 ["Keys"]
       30 GETTABLEKS                       R10 R10 K5 ["Extents_PartAboveParent"]
       32 DUPTABLE                         R11 K9 [{"lowerPart", "upperPart", "attachmentName"}]
       33 GETTABLEKS                       R12 R1 K0 ["Name"]
       35 SETTABLEKS                       R12 R11 K6 ["lowerPart"]
       37 GETTABLEKS                       R12 R0 K0 ["Name"]
       39 SETTABLEKS                       R12 R11 K7 ["upperPart"]
       41 SETTABLEKS                       R3 R11 K8 ["attachmentName"]
       43 MOVE                             R12 R1
       44 NAMECALL                         R8 R4 K10 ["fail"]
       46 CALL                             R8 4 0
       47 LOADB                            R7 0
       48 GETTABLEKS                       R8 R5 K11 ["minOverall"]
       50 JUMPIFNOT                        R8 ; [+34]
       51 GETTABLEKS                       R8 R6 K11 ["minOverall"]
       53 JUMPIFNOT                        R8 ; [+31]
       54 GETTABLEKS                       R8 R5 K11 ["minOverall"]
       56 GETTABLEKS                       R8 R8 K3 ["Y"]
       58 GETTABLEKS                       R9 R6 K11 ["minOverall"]
       60 GETTABLEKS                       R9 R9 K3 ["Y"]
       62 JUMPIFNOTLT                      R8 R9 ; [+22]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K4 ["Keys"]
       67 GETTABLEKS                       R10 R10 K12 ["Extents_ParentBelowPart"]
       69 DUPTABLE                         R11 K13 [{"upperPart", "lowerPart", "attachmentName"}]
       70 GETTABLEKS                       R12 R0 K0 ["Name"]
       72 SETTABLEKS                       R12 R11 K7 ["upperPart"]
       74 GETTABLEKS                       R12 R1 K0 ["Name"]
       76 SETTABLEKS                       R12 R11 K6 ["lowerPart"]
       78 SETTABLEKS                       R3 R11 K8 ["attachmentName"]
       80 MOVE                             R12 R0
       81 NAMECALL                         R8 R4 K10 ["fail"]
       83 CALL                             R8 4 0
       84 LOADB                            R7 0
       85 RETURN                           R7 1

PROTO_1:
        0 MOVE                             R6 R2
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R7 R7 K0 ["checkFlagEnabledForAllowHrd"]
        4 CALL                             R7 0 -1
        5 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
        7 CALL                             R4 -1 1
        8 MOVE                             R7 R2
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K0 ["checkFlagEnabledForAllowHrd"]
       12 CALL                             R8 0 -1
       13 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
       15 CALL                             R5 -1 1
       16 JUMPIFNOT                        R4 ; [+1]
       17 JUMPIF                           R5 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R6 R1 K2 ["Size"]
       21 GETTABLEKS                       R7 R0 K2 ["Size"]
       23 GETUPVAL                         R8 1
       24 MOVE                             R9 R4
       25 CALL                             R8 1 1
       26 GETTABLEKS                       R8 R8 K3 ["Position"]
       28 GETUPVAL                         R9 1
       29 MOVE                             R10 R5
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R9 R9 K3 ["Position"]
       33 DIVK                             R11 R6 K4 [2]
       34 SUB                              R10 R11 R8
       35 GETTABLEKS                       R10 R10 K5 ["Y"]
       37 DIVK                             R12 R6 K4 [2]
       38 ADD                              R11 R12 R8
       39 GETTABLEKS                       R11 R11 K5 ["Y"]
       41 DIVK                             R13 R7 K4 [2]
       42 SUB                              R12 R13 R9
       43 GETTABLEKS                       R12 R12 K5 ["Y"]
       45 DIVK                             R14 R7 K4 [2]
       46 ADD                              R13 R14 R9
       47 GETTABLEKS                       R13 R13 K5 ["Y"]
       49 JUMPIFNOTLT                      R12 R10 ; [+21]
       51 GETUPVAL                         R16 2
       52 GETTABLEKS                       R16 R16 K6 ["Keys"]
       54 GETTABLEKS                       R16 R16 K7 ["Extents_PartAboveParent"]
       56 DUPTABLE                         R17 K11 [{"lowerPart", "upperPart", "attachmentName"}]
       57 GETTABLEKS                       R18 R1 K12 ["Name"]
       59 SETTABLEKS                       R18 R17 K8 ["lowerPart"]
       61 GETTABLEKS                       R18 R0 K12 ["Name"]
       63 SETTABLEKS                       R18 R17 K9 ["upperPart"]
       65 SETTABLEKS                       R2 R17 K10 ["attachmentName"]
       67 MOVE                             R18 R1
       68 NAMECALL                         R14 R3 K13 ["fail"]
       70 CALL                             R14 4 0
       71 JUMPIFNOTLT                      R11 R13 ; [+21]
       73 GETUPVAL                         R16 2
       74 GETTABLEKS                       R16 R16 K6 ["Keys"]
       76 GETTABLEKS                       R16 R16 K14 ["Extents_ParentBelowPart"]
       78 DUPTABLE                         R17 K15 [{"upperPart", "lowerPart", "attachmentName"}]
       79 GETTABLEKS                       R18 R0 K12 ["Name"]
       81 SETTABLEKS                       R18 R17 K9 ["upperPart"]
       83 GETTABLEKS                       R18 R1 K12 ["Name"]
       85 SETTABLEKS                       R18 R17 K8 ["lowerPart"]
       87 SETTABLEKS                       R2 R17 K10 ["attachmentName"]
       89 MOVE                             R18 R0
       90 NAMECALL                         R14 R3 K13 ["fail"]
       92 CALL                             R14 4 0
       93 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R3
        8 JUMPIF                           R4 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["ASSET_TYPE_INFO"]
       13 GETTABLE                         R4 R5 R3
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R1 K4 ["renderMeshesData"]
       18 JUMPIF                           R5 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K5 ["calculateIndividualAssetPartsDataFromData"]
       23 MOVE                             R7 R2
       24 MOVE                             R8 R3
       25 MOVE                             R9 R5
       26 CALL                             R6 3 3
       27 JUMPIF                           R6 ; [+8]
       28 LOADK                            R12 K6 ["Failed to calculate asset bounds data for extents check on "]
       29 GETTABLEKS                       R13 R3 K7 ["Name"]
       31 CONCAT                           R11 R12 R13
       32 NAMECALL                         R9 R0 K8 ["fetchError"]
       34 CALL                             R9 2 0
       35 RETURN                           R0 0
       36 GETIMPORT                        R9 K10 [pairs]
       38 GETTABLEKS                       R10 R4 K11 ["subParts"]
       40 CALL                             R9 1 3
       41 FORGPREP_NEXT                    R9
       42 GETUPVAL                         R16 1
       43 GETTABLEKS                       R15 R16 K12 ["BODYPART_TO_PARENT"]
       45 GETTABLE                         R14 R15 R12
       46 JUMPIFEQKNIL                     R14 ; [+49]
       48 MOVE                             R17 R12
       49 NAMECALL                         R15 R2 K13 ["FindFirstChild"]
       51 CALL                             R15 2 1
       52 MOVE                             R18 R14
       53 NAMECALL                         R16 R2 K13 ["FindFirstChild"]
       55 CALL                             R16 2 1
       56 JUMPIFNOT                        R15 ; [+39]
       57 JUMPIFNOT                        R16 ; [+38]
       58 MOVE                             R17 R16
       59 MOVE                             R18 R15
       60 GETUPVAL                         R20 3
       61 GETTABLE                         R19 R20 R12
       62 JUMPIFNOT                        R19 ; [+2]
       63 MOVE                             R17 R15
       64 MOVE                             R18 R16
       65 GETTABLEKS                       R19 R13 K14 ["rigAttachmentToParent"]
       67 GETTABLEKS                       R19 R19 K15 ["name"]
       69 LOADB                            R20 1
       70 GETTABLEKS                       R22 R17 K7 ["Name"]
       72 GETTABLE                         R21 R8 R22
       73 JUMPIFNOT                        R21 ; [+12]
       74 GETTABLEKS                       R22 R18 K7 ["Name"]
       76 GETTABLE                         R21 R8 R22
       77 JUMPIFNOT                        R21 ; [+8]
       78 GETUPVAL                         R21 4
       79 MOVE                             R22 R17
       80 MOVE                             R23 R18
       81 MOVE                             R24 R8
       82 MOVE                             R25 R19
       83 MOVE                             R26 R0
       84 CALL                             R21 5 1
       85 MOVE                             R20 R21
       86 JUMPIFNOT                        R20 ; [+9]
       87 GETUPVAL                         R22 5
       88 GETTABLE                         R21 R22 R3
       89 JUMPIFNOT                        R21 ; [+6]
       90 GETUPVAL                         R21 6
       91 MOVE                             R22 R17
       92 MOVE                             R23 R18
       93 MOVE                             R24 R19
       94 MOVE                             R25 R0
       95 CALL                             R21 4 0
       96 FORGLOOP                         R9 2 ; [-55]
       98 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K6 ["util"]
       39 GETTABLEKS                       R6 R6 K11 ["BoundsCalculator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["R15plusUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K6 ["util"]
       53 GETTABLEKS                       R8 R8 K13 ["getAttachmentCFrameInPartSpace"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K14 ["flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateMigrateBodyPartBounds"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 8 0
       65 NEWTABLE                         R10 0 1
       67 GETTABLEKS                       R11 R3 K16 ["UploadCategory"]
       69 GETTABLEKS                       R11 R11 K17 ["TORSO_AND_LIMBS"]
       71 SETLIST                          R10 R11 1 [1]
       73 SETTABLEKS                       R10 R9 K18 ["categories"]
       75 NEWTABLE                         R10 0 2
       77 GETTABLEKS                       R11 R3 K19 ["SharedDataMember"]
       79 GETTABLEKS                       R11 R11 K20 ["rootInstance"]
       81 GETTABLEKS                       R12 R3 K19 ["SharedDataMember"]
       83 GETTABLEKS                       R12 R12 K21 ["uploadEnum"]
       85 SETLIST                          R10 R11 2 [1]
       87 SETTABLEKS                       R10 R9 K22 ["requiredData"]
       89 NEWTABLE                         R10 0 1
       91 GETTABLEKS                       R11 R3 K19 ["SharedDataMember"]
       93 GETTABLEKS                       R11 R11 K23 ["renderMeshesData"]
       95 SETLIST                          R10 R11 1 [1]
       97 SETTABLEKS                       R10 R9 K24 ["conditionalData"]
       99 SETTABLEKS                       R8 R9 K25 ["fflag"]
      101 NEWTABLE                         R10 0 0
      103 SETTABLEKS                       R10 R9 K26 ["expectedFailures"]
      105 NEWTABLE                         R10 8 0
      107 GETIMPORT                        R11 K30 [Enum.AssetType.Torso]
      109 LOADB                            R12 1
      110 SETTABLE                         R12 R10 R11
      111 GETIMPORT                        R11 K32 [Enum.AssetType.LeftArm]
      113 LOADB                            R12 1
      114 SETTABLE                         R12 R10 R11
      115 GETIMPORT                        R11 K34 [Enum.AssetType.RightArm]
      117 LOADB                            R12 1
      118 SETTABLE                         R12 R10 R11
      119 GETIMPORT                        R11 K36 [Enum.AssetType.RightLeg]
      121 LOADB                            R12 1
      122 SETTABLE                         R12 R10 R11
      123 GETIMPORT                        R11 K38 [Enum.AssetType.LeftLeg]
      125 LOADB                            R12 1
      126 SETTABLE                         R12 R10 R11
      127 NEWTABLE                         R11 1 0
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R11 K39 ["UpperTorso"]
      132 NEWTABLE                         R12 2 0
      134 GETIMPORT                        R13 K38 [Enum.AssetType.LeftLeg]
      136 LOADB                            R14 1
      137 SETTABLE                         R14 R12 R13
      138 GETIMPORT                        R13 K36 [Enum.AssetType.RightLeg]
      140 LOADB                            R14 1
      141 SETTABLE                         R14 R12 R13
      142 DUPCLOSURE                       R13 K40 [PROTO_0]
      143 CAPTURE                          VAL R4
      144 DUPCLOSURE                       R14 K41 [PROTO_1]
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R4
      148 DUPCLOSURE                       R15 K42 [PROTO_2]
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R14
      156 SETTABLEKS                       R15 R9 K43 ["run"]
      158 RETURN                           R9 1
