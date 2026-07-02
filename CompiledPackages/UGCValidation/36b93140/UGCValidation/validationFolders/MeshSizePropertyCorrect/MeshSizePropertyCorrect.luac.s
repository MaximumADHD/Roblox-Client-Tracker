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
        0 DUPTABLE                         R3 K5 [{[1], ["fieldName"] = "MeshId", ["contentId"], ["context"]}]
        1 NAMECALL                         R4 R0 K6 ["GetFullName"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["fullName"]
        6 GETTABLEKS                       R4 R0 K2 ["MeshId"]
        8 SETTABLEKS                       R4 R3 K3 ["contentId"]
       10 GETTABLEKS                       R4 R0 K7 ["Name"]
       12 SETTABLEKS                       R4 R3 K4 ["context"]
       14 GETUPVAL                         R4 0
       15 MOVE                             R5 R0
       16 LOADK                            R6 K2 ["MeshId"]
       17 MOVE                             R7 R1
       18 CALL                             R4 3 2
       19 JUMPIF                           R4 ; [+15]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K8 ["Keys"]
       23 GETTABLEKS                       R8 R8 K9 ["MeshSize_LoadFailed"]
       25 DUPTABLE                         R9 K11 [{"meshName"}]
       26 GETTABLEKS                       R10 R0 K7 ["Name"]
       28 SETTABLEKS                       R10 R9 K10 ["meshName"]
       30 MOVE                             R10 R0
       31 NAMECALL                         R6 R2 K12 ["fail"]
       33 CALL                             R6 4 0
       34 RETURN                           R0 0
       35 SETTABLEKS                       R5 R3 K13 ["editableMesh"]
       37 GETUPVAL                         R6 2
       38 MOVE                             R7 R3
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R8 R0 K14 ["MeshSize"]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R10 R8 K15 ["X"]
       45 GETTABLEKS                       R11 R6 K15 ["X"]
       47 LOADK                            R12 K16 [1E-05]
       48 CALL                             R9 3 1
       49 MOVE                             R7 R9
       50 JUMPIFNOT                        R7 ; [+17]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R10 R8 K17 ["Y"]
       54 GETTABLEKS                       R11 R6 K17 ["Y"]
       56 LOADK                            R12 K16 [1E-05]
       57 CALL                             R9 3 1
       58 MOVE                             R7 R9
       59 JUMPIFNOT                        R7 ; [+8]
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R10 R8 K18 ["Z"]
       63 GETTABLEKS                       R11 R6 K18 ["Z"]
       65 LOADK                            R12 K16 [1E-05]
       66 CALL                             R9 3 1
       67 MOVE                             R7 R9
       68 JUMPIF                           R7 ; [+14]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K8 ["Keys"]
       72 GETTABLEKS                       R9 R9 K19 ["MeshSize_Mismatch"]
       74 DUPTABLE                         R10 K11 [{"meshName"}]
       75 GETTABLEKS                       R11 R0 K7 ["Name"]
       77 SETTABLEKS                       R11 R10 K10 ["meshName"]
       79 MOVE                             R11 R0
       80 NAMECALL                         R7 R2 K12 ["fail"]
       82 CALL                             R7 4 0
       83 RETURN                           R0 0

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
       31 JUMPIFNOT                        R7 ; [+34]
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
       51 JUMPIFNOT                        R13 ; [+12]
       52 GETTABLEKS                       R14 R13 K14 ["editable"]
       54 JUMPIFNOT                        R14 ; [+9]
       55 DUPTABLE                         R14 K16 [{"MeshId"}]
       56 DUPTABLE                         R15 K20 [{["instance"], ["created"] = False}]
       57 GETTABLEKS                       R16 R13 K14 ["editable"]
       59 SETTABLEKS                       R16 R15 K17 ["instance"]
       61 SETTABLEKS                       R15 R14 K15 ["MeshId"]
       63 SETTABLE                         R14 R6 R12
       64 FORGLOOP                         R8 2 ; [-19]
       66 DUPTABLE                         R7 K24 [{"assetTypeEnum", "isServer", "editableMeshes"}]
       67 SETTABLEKS                       R3 R7 K21 ["assetTypeEnum"]
       69 SETTABLEKS                       R5 R7 K22 ["isServer"]
       71 SETTABLEKS                       R6 R7 K23 ["editableMeshes"]
       73 GETIMPORT                        R8 K28 [Enum.AssetType.DynamicHead]
       75 JUMPIFNOTEQ                      R8 R3 ; [+7]
       77 GETUPVAL                         R8 1
       78 MOVE                             R9 R2
       79 MOVE                             R10 R7
       80 MOVE                             R11 R0
       81 CALL                             R8 3 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R9 R9 K29 ["ASSET_TYPE_INFO"]
       86 GETTABLE                         R8 R9 R3
       87 JUMPIF                           R8 ; [+1]
       88 RETURN                           R0 0
       89 GETIMPORT                        R9 K31 [pairs]
       91 GETTABLEKS                       R10 R8 K32 ["subParts"]
       93 CALL                             R9 1 3
       94 FORGPREP_NEXT                    R9
       95 MOVE                             R16 R12
       96 NAMECALL                         R14 R2 K33 ["FindFirstChild"]
       98 CALL                             R14 2 1
       99 JUMPIFNOT                        R14 ; [+5]
      100 GETUPVAL                         R15 1
      101 MOVE                             R16 R14
      102 MOVE                             R17 R7
      103 MOVE                             R18 R0
      104 CALL                             R15 3 0
      105 FORGLOOP                         R9 1 ; [-11]
      107 RETURN                           R0 0

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
