PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 LOADK                            R5 K1 [1E-05]
        6 CALL                             R2 3 1
        7 JUMPIFNOT                        R2 ; [+15]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K2 ["Y"]
       11 GETTABLEKS                       R4 R1 K2 ["Y"]
       13 LOADK                            R5 K1 [1E-05]
       14 CALL                             R2 3 1
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R0 K3 ["Z"]
       19 GETTABLEKS                       R4 R1 K3 ["Z"]
       21 LOADK                            R5 K1 [1E-05]
       22 CALL                             R2 3 1
       23 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K4 [{"fullName", "fieldName", "contentId", "context"}]
        1 NAMECALL                         R4 R0 K5 ["GetFullName"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["fullName"]
        6 LOADK                            R4 K6 ["MeshId"]
        7 SETTABLEKS                       R4 R3 K1 ["fieldName"]
        9 GETTABLEKS                       R4 R0 K6 ["MeshId"]
       11 SETTABLEKS                       R4 R3 K2 ["contentId"]
       13 GETTABLEKS                       R4 R0 K7 ["Name"]
       15 SETTABLEKS                       R4 R3 K3 ["context"]
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R0
       19 LOADK                            R6 K6 ["MeshId"]
       20 MOVE                             R7 R1
       21 CALL                             R4 3 2
       22 JUMPIF                           R4 ; [+15]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K8 ["Keys"]
       26 GETTABLEKS                       R8 R8 K9 ["MeshSize_LoadFailed"]
       28 DUPTABLE                         R9 K11 [{"meshName"}]
       29 GETTABLEKS                       R10 R0 K7 ["Name"]
       31 SETTABLEKS                       R10 R9 K10 ["meshName"]
       33 MOVE                             R10 R0
       34 NAMECALL                         R6 R2 K12 ["fail"]
       36 CALL                             R6 4 0
       37 RETURN                           R0 0
       38 SETTABLEKS                       R5 R3 K13 ["editableMesh"]
       40 GETUPVAL                         R6 2
       41 MOVE                             R7 R3
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R8 R0 K14 ["MeshSize"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R10 R8 K15 ["X"]
       48 GETTABLEKS                       R11 R6 K15 ["X"]
       50 LOADK                            R12 K16 [1E-05]
       51 CALL                             R9 3 1
       52 MOVE                             R7 R9
       53 JUMPIFNOT                        R7 ; [+17]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R10 R8 K17 ["Y"]
       57 GETTABLEKS                       R11 R6 K17 ["Y"]
       59 LOADK                            R12 K16 [1E-05]
       60 CALL                             R9 3 1
       61 MOVE                             R7 R9
       62 JUMPIFNOT                        R7 ; [+8]
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R10 R8 K18 ["Z"]
       66 GETTABLEKS                       R11 R6 K18 ["Z"]
       68 LOADK                            R12 K16 [1E-05]
       69 CALL                             R9 3 1
       70 MOVE                             R7 R9
       71 JUMPIF                           R7 ; [+14]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K8 ["Keys"]
       75 GETTABLEKS                       R9 R9 K19 ["MeshSize_Mismatch"]
       77 DUPTABLE                         R10 K11 [{"meshName"}]
       78 GETTABLEKS                       R11 R0 K7 ["Name"]
       80 SETTABLEKS                       R11 R10 K10 ["meshName"]
       82 MOVE                             R11 R0
       83 NAMECALL                         R7 R2 K12 ["fail"]
       85 CALL                             R7 4 0
       86 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R4 R1 K3 ["consumerConfig"]
        8 GETTABLEKS                       R4 R4 K4 ["consumerEnv"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["ConsumerEnv"]
       13 GETTABLEKS                       R6 R6 K6 ["Backend"]
       15 JUMPIFEQ                         R4 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K5 ["ConsumerEnv"]
       22 GETTABLEKS                       R6 R6 K7 ["IEC"]
       24 JUMPIFNOTEQ                      R4 R6 ; [+2]
       26 RETURN                           R0 0
       27 NEWTABLE                         R6 0 0
       29 GETTABLEKS                       R7 R1 K8 ["renderMeshesData"]
       31 JUMPIFNOT                        R7 ; [+37]
       32 NAMECALL                         R7 R2 K9 ["GetDescendants"]
       34 CALL                             R7 1 1
       35 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       37 MOVE                             R9 R7
       38 MOVE                             R10 R2
       39 GETIMPORT                        R8 K12 [table.insert]
       41 CALL                             R8 2 0
       42 MOVE                             R8 R7
       43 LOADNIL                          R9
       44 LOADNIL                          R10
       45 FORGPREP                         R8
       46 GETTABLEKS                       R14 R1 K8 ["renderMeshesData"]
       48 GETTABLEKS                       R15 R12 K13 ["Name"]
       50 GETTABLE                         R13 R14 R15
       51 JUMPIFNOT                        R13 ; [+15]
       52 GETTABLEKS                       R14 R13 K14 ["editable"]
       54 JUMPIFNOT                        R14 ; [+12]
       55 DUPTABLE                         R14 K16 [{"MeshId"}]
       56 DUPTABLE                         R15 K19 [{"instance", "created"}]
       57 GETTABLEKS                       R16 R13 K14 ["editable"]
       59 SETTABLEKS                       R16 R15 K17 ["instance"]
       61 LOADB                            R16 0
       62 SETTABLEKS                       R16 R15 K18 ["created"]
       64 SETTABLEKS                       R15 R14 K15 ["MeshId"]
       66 SETTABLE                         R14 R6 R12
       67 FORGLOOP                         R8 2 ; [-22]
       69 DUPTABLE                         R7 K23 [{"assetTypeEnum", "isServer", "editableMeshes"}]
       70 SETTABLEKS                       R3 R7 K20 ["assetTypeEnum"]
       72 SETTABLEKS                       R5 R7 K21 ["isServer"]
       74 SETTABLEKS                       R6 R7 K22 ["editableMeshes"]
       76 GETIMPORT                        R8 K27 [Enum.AssetType.DynamicHead]
       78 JUMPIFNOTEQ                      R8 R3 ; [+7]
       80 GETUPVAL                         R8 1
       81 MOVE                             R9 R2
       82 MOVE                             R10 R7
       83 MOVE                             R11 R0
       84 CALL                             R8 3 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R9 2
       87 GETTABLEKS                       R9 R9 K28 ["ASSET_TYPE_INFO"]
       89 GETTABLE                         R8 R9 R3
       90 JUMPIF                           R8 ; [+1]
       91 RETURN                           R0 0
       92 GETIMPORT                        R9 K30 [pairs]
       94 GETTABLEKS                       R10 R8 K31 ["subParts"]
       96 CALL                             R9 1 3
       97 FORGPREP_NEXT                    R9
       98 MOVE                             R16 R12
       99 NAMECALL                         R14 R2 K32 ["FindFirstChild"]
      101 CALL                             R14 2 1
      102 JUMPIFNOT                        R14 ; [+5]
      103 GETUPVAL                         R15 1
      104 MOVE                             R16 R14
      105 MOVE                             R17 R7
      106 MOVE                             R18 R0
      107 CALL                             R15 3 0
      108 FORGLOOP                         R9 1 ; [-11]
      110 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R6 K11 ["floatEquals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["getMeshSize"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K6 ["util"]
       53 GETTABLEKS                       R8 R8 K13 ["getEditableMeshFromContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K14 ["flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateMigrateBodyPartBounds"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 8 0
       65 NEWTABLE                         R10 0 2
       67 GETTABLEKS                       R11 R3 K16 ["UploadCategory"]
       69 GETTABLEKS                       R11 R11 K17 ["TORSO_AND_LIMBS"]
       71 GETTABLEKS                       R12 R3 K16 ["UploadCategory"]
       73 GETTABLEKS                       R12 R12 K18 ["DYNAMIC_HEAD"]
       75 SETLIST                          R10 R11 2 [1]
       77 SETTABLEKS                       R10 R9 K19 ["categories"]
       79 NEWTABLE                         R10 0 3
       81 GETTABLEKS                       R11 R3 K20 ["SharedDataMember"]
       83 GETTABLEKS                       R11 R11 K21 ["rootInstance"]
       85 GETTABLEKS                       R12 R3 K20 ["SharedDataMember"]
       87 GETTABLEKS                       R12 R12 K22 ["uploadEnum"]
       89 GETTABLEKS                       R13 R3 K20 ["SharedDataMember"]
       91 GETTABLEKS                       R13 R13 K23 ["consumerConfig"]
       93 SETLIST                          R10 R11 3 [1]
       95 SETTABLEKS                       R10 R9 K24 ["requiredData"]
       97 NEWTABLE                         R10 0 1
       99 GETTABLEKS                       R11 R3 K20 ["SharedDataMember"]
      101 GETTABLEKS                       R11 R11 K25 ["renderMeshesData"]
      103 SETLIST                          R10 R11 1 [1]
      105 SETTABLEKS                       R10 R9 K26 ["conditionalData"]
      107 SETTABLEKS                       R8 R9 K27 ["fflag"]
      109 NEWTABLE                         R10 0 0
      111 SETTABLEKS                       R10 R9 K28 ["expectedFailures"]
      113 DUPCLOSURE                       R10 K29 [PROTO_0]
      114 CAPTURE                          VAL R5
      115 DUPCLOSURE                       R11 K30 [PROTO_1]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R5
      120 DUPCLOSURE                       R12 K31 [PROTO_2]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R12 R9 K32 ["run"]
      126 RETURN                           R9 1
