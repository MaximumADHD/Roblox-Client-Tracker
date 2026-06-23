PROTO_0:
        0 GETTABLEKS                       R6 R3 K0 ["cframe"]
        2 GETUPVAL                         R7 0
        3 MOVE                             R8 R0
        4 CALL                             R7 1 1
        5 MUL                              R5 R6 R7
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["calculateBoundsCenters"]
        9 GETTABLEKS                       R7 R3 K2 ["boundsData"]
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K3 ["calculateBoundsDimensions"]
       15 GETTABLEKS                       R8 R3 K2 ["boundsData"]
       17 CALL                             R7 1 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 JUMPIF                           R7 ; [+18]
       20 GETUPVAL                         R10 2
       21 GETTABLEKS                       R10 R10 K4 ["Keys"]
       23 GETTABLEKS                       R10 R10 K5 ["AttachmentBoundsCalculationFailed"]
       25 DUPTABLE                         R11 K8 [{"AttachmentName", "PartName"}]
       26 GETTABLEKS                       R12 R0 K9 ["Name"]
       28 SETTABLEKS                       R12 R11 K6 ["AttachmentName"]
       30 GETTABLEKS                       R12 R1 K9 ["Name"]
       32 SETTABLEKS                       R12 R11 K7 ["PartName"]
       34 NAMECALL                         R8 R4 K10 ["fail"]
       36 CALL                             R8 3 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R9 R5 K11 ["Position"]
       40 SUB                              R8 R9 R6
       41 DIVK                             R9 R7 K12 [2]
       42 DIV                              R10 R8 R9
       43 GETTABLEKS                       R11 R2 K13 ["min"]
       45 GETTABLEKS                       R12 R2 K14 ["max"]
       47 NEWTABLE                         R13 0 3
       49 LOADK                            R16 K15 ["X"]
       50 LOADK                            R17 K16 ["Y"]
       51 LOADK                            R18 K17 ["Z"]
       52 SETLIST                          R13 R16 3 [1]
       54 LOADNIL                          R14
       55 LOADNIL                          R15
       56 FORGPREP                         R13
       57 GETTABLE                         R18 R10 R17
       58 GETTABLE                         R19 R11 R17
       59 JUMPIFLT                         R18 R19 ; [+5]
       61 GETTABLE                         R18 R10 R17
       62 GETTABLE                         R19 R12 R17
       63 JUMPIFNOTLT                      R19 R18 ; [+99]
       65 GETUPVAL                         R18 3
       66 GETTABLEKS                       R18 R18 K18 ["clampAttachmentToBounds"]
       68 MOVE                             R19 R0
       69 MOVE                             R20 R3
       70 MOVE                             R21 R2
       71 LOADK                            R22 K19 [0.001]
       72 CALL                             R18 4 1
       73 GETUPVAL                         R19 3
       74 GETTABLEKS                       R19 R19 K20 ["calculateAcceptableBoundsLocalSpace"]
       76 MOVE                             R20 R2
       77 MOVE                             R21 R3
       78 MOVE                             R22 R7
       79 MOVE                             R23 R6
       80 CALL                             R19 4 2
       81 GETTABLEKS                       R21 R19 K11 ["Position"]
       83 GETTABLEKS                       R22 R19 K21 ["Rotation"]
       85 NAMECALL                         R22 R22 K22 ["ToOrientation"]
       87 CALL                             R22 1 3
       88 FASTCALL1                        MATH_DEG R22 ; [+3]
       89 MOVE                             R27 R22
       90 GETIMPORT                        R26 K25 [math.deg]
       92 CALL                             R26 1 1
       93 FASTCALL1                        MATH_DEG R23 ; [+3]
       94 MOVE                             R28 R23
       95 GETIMPORT                        R27 K25 [math.deg]
       97 CALL                             R27 1 1
       98 FASTCALL1                        MATH_DEG R24 ; [+3]
       99 MOVE                             R29 R24
      100 GETIMPORT                        R28 K25 [math.deg]
      102 CALL                             R28 1 1
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R25 K28 [Vector3.new]
      106 CALL                             R25 3 1
      107 GETUPVAL                         R28 2
      108 GETTABLEKS                       R28 R28 K4 ["Keys"]
      110 GETTABLEKS                       R28 R28 K29 ["AttachmentOutOfBounds"]
      112 DUPTABLE                         R29 K36 [{"AttachmentName", "PartName", "CurrentPosition", "ClosestValidPosition", "BoundsPosition", "BoundsOrientation", "BoundsSize", "HelpLink"}]
      113 GETTABLEKS                       R30 R0 K9 ["Name"]
      115 SETTABLEKS                       R30 R29 K6 ["AttachmentName"]
      117 GETTABLEKS                       R30 R1 K9 ["Name"]
      119 SETTABLEKS                       R30 R29 K7 ["PartName"]
      121 GETUPVAL                         R30 4
      122 GETTABLEKS                       R31 R0 K37 ["CFrame"]
      124 GETTABLEKS                       R31 R31 K11 ["Position"]
      126 LOADN                            R32 3
      127 CALL                             R30 2 1
      128 SETTABLEKS                       R30 R29 K30 ["CurrentPosition"]
      130 GETUPVAL                         R30 4
      131 GETTABLEKS                       R31 R18 K11 ["Position"]
      133 LOADN                            R32 3
      134 CALL                             R30 2 1
      135 SETTABLEKS                       R30 R29 K31 ["ClosestValidPosition"]
      137 GETUPVAL                         R30 4
      138 MOVE                             R31 R21
      139 LOADN                            R32 3
      140 CALL                             R30 2 1
      141 SETTABLEKS                       R30 R29 K32 ["BoundsPosition"]
      143 GETUPVAL                         R30 4
      144 MOVE                             R31 R25
      145 LOADN                            R32 3
      146 CALL                             R30 2 1
      147 SETTABLEKS                       R30 R29 K33 ["BoundsOrientation"]
      149 GETUPVAL                         R30 4
      150 MOVE                             R31 R20
      151 LOADN                            R32 3
      152 CALL                             R30 2 1
      153 SETTABLEKS                       R30 R29 K34 ["BoundsSize"]
      155 GETUPVAL                         R30 5
      156 CALL                             R30 0 1
      157 SETTABLEKS                       R30 R29 K35 ["HelpLink"]
      159 NAMECALL                         R26 R4 K10 ["fail"]
      161 CALL                             R26 3 0
      162 RETURN                           R0 0
      163 FORGLOOP                         R13 2 ; [-107]
      165 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R6 R1 K0 ["rigAttachmentToParent"]
        2 GETTABLEKS                       R6 R6 K1 ["name"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K2 ["checkFlagEnabledForAllowHrd"]
        7 CALL                             R7 0 -1
        8 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       10 CALL                             R4 -1 1
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R5 1
       14 MOVE                             R6 R4
       15 MOVE                             R7 R0
       16 GETTABLEKS                       R8 R1 K0 ["rigAttachmentToParent"]
       18 GETTABLEKS                       R8 R8 K4 ["bounds"]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R3
       22 CALL                             R5 5 0
       23 GETIMPORT                        R5 K6 [pairs]
       25 GETTABLEKS                       R6 R1 K7 ["otherAttachments"]
       27 CALL                             R5 1 3
       28 FORGPREP_NEXT                    R5
       29 MOVE                             R12 R8
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R13 R13 K2 ["checkFlagEnabledForAllowHrd"]
       33 CALL                             R13 0 -1
       34 NAMECALL                         R10 R0 K3 ["FindFirstChild"]
       36 CALL                             R10 -1 1
       37 JUMPIFNOT                        R10 ; [+8]
       38 GETUPVAL                         R11 1
       39 MOVE                             R12 R10
       40 MOVE                             R13 R0
       41 GETTABLEKS                       R14 R9 K4 ["bounds"]
       43 MOVE                             R15 R2
       44 MOVE                             R16 R3
       45 CALL                             R11 5 0
       46 FORGLOOP                         R5 2 ; [-18]
       48 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["ASSET_TYPE_INFO"]
        9 GETTABLE                         R4 R5 R3
       10 JUMPIF                           R4 ; [+1]
       11 RETURN                           R0 0
       12 NEWTABLE                         R5 0 0
       14 GETTABLEKS                       R6 R1 K4 ["renderMeshesData"]
       16 JUMPIFNOT                        R6 ; [+37]
       17 NAMECALL                         R6 R2 K5 ["GetDescendants"]
       19 CALL                             R6 1 1
       20 FASTCALL2                        TABLE_INSERT R6 R2 ; [+5]
       22 MOVE                             R8 R6
       23 MOVE                             R9 R2
       24 GETIMPORT                        R7 K8 [table.insert]
       26 CALL                             R7 2 0
       27 MOVE                             R7 R6
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 GETTABLEKS                       R13 R1 K4 ["renderMeshesData"]
       33 GETTABLEKS                       R14 R11 K9 ["Name"]
       35 GETTABLE                         R12 R13 R14
       36 JUMPIFNOT                        R12 ; [+15]
       37 GETTABLEKS                       R13 R12 K10 ["editable"]
       39 JUMPIFNOT                        R13 ; [+12]
       40 DUPTABLE                         R13 K12 [{"MeshId"}]
       41 DUPTABLE                         R14 K15 [{"instance", "created"}]
       42 GETTABLEKS                       R15 R12 K10 ["editable"]
       44 SETTABLEKS                       R15 R14 K13 ["instance"]
       46 LOADB                            R15 0
       47 SETTABLEKS                       R15 R14 K14 ["created"]
       49 SETTABLEKS                       R14 R13 K11 ["MeshId"]
       51 SETTABLE                         R13 R5 R11
       52 FORGLOOP                         R7 2 ; [-22]
       54 DUPTABLE                         R6 K19 [{"assetTypeEnum", "isServer", "editableMeshes"}]
       55 SETTABLEKS                       R3 R6 K16 ["assetTypeEnum"]
       57 GETTABLEKS                       R8 R1 K20 ["consumerConfig"]
       59 GETTABLEKS                       R8 R8 K21 ["consumerEnv"]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K22 ["ConsumerEnv"]
       64 GETTABLEKS                       R9 R9 K23 ["Backend"]
       66 JUMPIFEQ                         R8 R9 ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 SETTABLEKS                       R7 R6 K17 ["isServer"]
       72 SETTABLEKS                       R5 R6 K18 ["editableMeshes"]
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K24 ["calculateIndividualAssetPartsData"]
       77 MOVE                             R8 R2
       78 MOVE                             R9 R6
       79 CALL                             R7 2 3
       80 JUMPIF                           R7 ; [+15]
       81 GETUPVAL                         R12 3
       82 GETTABLEKS                       R12 R12 K25 ["Keys"]
       84 GETTABLEKS                       R12 R12 K26 ["AttachmentBoundsAssetCalculationFailed"]
       86 DUPTABLE                         R13 K28 [{"InstancePath"}]
       87 NAMECALL                         R14 R2 K29 ["GetFullName"]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K27 ["InstancePath"]
       92 NAMECALL                         R10 R0 K30 ["fail"]
       94 CALL                             R10 3 0
       95 RETURN                           R0 0
       96 GETIMPORT                        R10 K34 [Enum.AssetType.DynamicHead]
       98 JUMPIFNOTEQ                      R10 R3 ; [+15]
      100 GETTABLEKS                       R11 R2 K9 ["Name"]
      102 GETTABLE                         R10 R9 R11
      103 JUMPIFNOT                        R10 ; [+31]
      104 GETUPVAL                         R11 4
      105 MOVE                             R12 R2
      106 GETTABLEKS                       R13 R4 K35 ["subParts"]
      108 GETTABLEKS                       R13 R13 K36 ["Head"]
      110 MOVE                             R14 R10
      111 MOVE                             R15 R0
      112 CALL                             R11 4 0
      113 RETURN                           R0 0
      114 GETIMPORT                        R10 K38 [pairs]
      116 GETTABLEKS                       R11 R4 K35 ["subParts"]
      118 CALL                             R10 1 3
      119 FORGPREP_NEXT                    R10
      120 MOVE                             R17 R13
      121 NAMECALL                         R15 R2 K39 ["FindFirstChild"]
      123 CALL                             R15 2 1
      124 JUMPIFNOT                        R15 ; [+8]
      125 GETTABLE                         R16 R9 R13
      126 JUMPIFNOT                        R16 ; [+6]
      127 GETUPVAL                         R17 4
      128 MOVE                             R18 R15
      129 MOVE                             R19 R14
      130 MOVE                             R20 R16
      131 MOVE                             R21 R0
      132 CALL                             R17 4 0
      133 FORGLOOP                         R10 2 ; [-14]
      135 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Constants"]
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
       37 GETTABLEKS                       R6 R0 K5 ["util"]
       39 GETTABLEKS                       R6 R6 K11 ["BoundsCalculator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["BoundsDataUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["util"]
       53 GETTABLEKS                       R8 R8 K13 ["MeshSpaceUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["util"]
       60 GETTABLEKS                       R9 R9 K14 ["prettyPrintVector3"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K5 ["util"]
       67 GETTABLEKS                       R10 R10 K15 ["R15plusUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K5 ["util"]
       74 GETTABLEKS                       R11 R11 K16 ["getAttachmentCFrameInPartSpace"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K17 ["flags"]
       81 GETTABLEKS                       R12 R12 K18 ["getFFlagUGCValidateMigrateSchemaProperties"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K17 ["flags"]
       88 GETTABLEKS                       R13 R13 K19 ["getFStringUGCValidationAttachmentErrorLink"]
       90 CALL                             R12 1 1
       91 NEWTABLE                         R13 8 0
       93 NEWTABLE                         R14 0 2
       95 GETTABLEKS                       R15 R3 K20 ["UploadCategory"]
       97 GETTABLEKS                       R15 R15 K21 ["TORSO_AND_LIMBS"]
       99 GETTABLEKS                       R16 R3 K20 ["UploadCategory"]
      101 GETTABLEKS                       R16 R16 K22 ["DYNAMIC_HEAD"]
      103 SETLIST                          R14 R15 2 [1]
      105 SETTABLEKS                       R14 R13 K23 ["categories"]
      107 NEWTABLE                         R14 0 3
      109 GETTABLEKS                       R15 R3 K24 ["SharedDataMember"]
      111 GETTABLEKS                       R15 R15 K25 ["rootInstance"]
      113 GETTABLEKS                       R16 R3 K24 ["SharedDataMember"]
      115 GETTABLEKS                       R16 R16 K26 ["uploadEnum"]
      117 GETTABLEKS                       R17 R3 K24 ["SharedDataMember"]
      119 GETTABLEKS                       R17 R17 K27 ["consumerConfig"]
      121 SETLIST                          R14 R15 3 [1]
      123 SETTABLEKS                       R14 R13 K28 ["requiredData"]
      125 NEWTABLE                         R14 0 1
      127 GETTABLEKS                       R15 R3 K24 ["SharedDataMember"]
      129 GETTABLEKS                       R15 R15 K29 ["renderMeshesData"]
      131 SETLIST                          R14 R15 1 [1]
      133 SETTABLEKS                       R14 R13 K30 ["conditionalData"]
      135 SETTABLEKS                       R11 R13 K31 ["fflag"]
      137 NEWTABLE                         R14 0 0
      139 SETTABLEKS                       R14 R13 K32 ["expectedFailures"]
      141 DUPCLOSURE                       R14 K33 [PROTO_0]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R12
      148 DUPCLOSURE                       R15 K34 [PROTO_1]
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R14
      151 DUPCLOSURE                       R16 K35 [PROTO_2]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R15
      157 SETTABLEKS                       R16 R13 K36 ["run"]
      159 RETURN                           R13 1
