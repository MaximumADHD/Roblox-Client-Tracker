PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R4 K1 ["Handle"]
        3 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R4 R1 K3 ["renderMeshesData"]
        8 GETTABLEKS                       R3 R4 K1 ["Handle"]
       10 JUMPIFEQKNIL                     R2 ; [+3]
       12 JUMPIFNOTEQKNIL                  R3 ; [+5]
       14 GETIMPORT                        R4 K5 [error]
       16 LOADK                            R5 K6 ["Schema should have ensured data exists for handle"]
       17 CALL                             R4 1 0
       18 NEWTABLE                         R4 0 0
       20 GETTABLEKS                       R5 R3 K7 ["editable"]
       22 NAMECALL                         R5 R5 K8 ["GetBones"]
       24 CALL                             R5 1 3
       25 FORGPREP                         R5
       26 MOVE                             R11 R4
       27 GETTABLEKS                       R12 R3 K7 ["editable"]
       29 MOVE                             R14 R9
       30 NAMECALL                         R12 R12 K9 ["GetBoneName"]
       32 CALL                             R12 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R10 K12 [table.insert]
       36 CALL                             R10 -1 0
       37 FORGLOOP                         R5 2 ; [-12]
       39 NEWTABLE                         R5 0 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R8 R3 K7 ["editable"]
       44 NAMECALL                         R6 R6 K13 ["GetSkinnedJointNamesFromEditableMesh"]
       46 CALL                             R6 2 -1
       47 SETLIST                          R5 R6 -1 [1]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R8 R3 K7 ["editable"]
       52 NAMECALL                         R6 R6 K14 ["GetEditableMeshSkinningTransferJointsInfo"]
       54 CALL                             R6 2 1
       55 LOADK                            R9 K15 ["WrapLayer"]
       56 NAMECALL                         R7 R2 K16 ["FindFirstChildOfClass"]
       58 CALL                             R7 2 1
       59 FASTCALL2K                       ASSERT R7 K17 ; [+5]
       61 MOVE                             R9 R7
       62 LOADK                            R10 K17 ["WrapLayer not found on handle"]
       63 GETIMPORT                        R8 K19 [assert]
       65 CALL                             R8 2 0
       66 GETTABLEKS                       R9 R7 K20 ["AutoSkin"]
       68 GETIMPORT                        R10 K24 [Enum.WrapLayerAutoSkin.EnabledOverride]
       70 JUMPIFEQ                         R9 R10 ; [+2]
       72 LOADB                            R8 0 +1
       73 LOADB                            R8 1
       74 GETUPVAL                         R9 1
       75 CALL                             R9 0 1
       76 JUMPIFNOT                        R9 ; [+4]
       77 MOVE                             R11 R2
       78 NAMECALL                         R9 R0 K25 ["setReportingInstance"]
       80 CALL                             R9 2 0
       81 MOVE                             R9 R4
       82 LOADNIL                          R10
       83 LOADNIL                          R11
       84 FORGPREP                         R9
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R15 R15 K26 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
       88 GETTABLE                         R14 R15 R13
       89 JUMPIFNOT                        R14 ; [+13]
       90 JUMPIF                           R8 ; [+28]
       91 GETUPVAL                         R16 3
       92 GETTABLEKS                       R16 R16 K27 ["Keys"]
       94 GETTABLEKS                       R16 R16 K28 ["AccessorySkinning_TransferJointWithoutAutoSkin"]
       96 DUPTABLE                         R17 K30 [{"jointName"}]
       97 SETTABLEKS                       R13 R17 K29 ["jointName"]
       99 NAMECALL                         R14 R0 K31 ["fail"]
      101 CALL                             R14 3 0
      102 JUMP                             ; [+16]
      103 GETUPVAL                         R15 2
      104 GETTABLEKS                       R15 R15 K32 ["R15_STANDARD_JOINT_NAMES"]
      106 GETTABLE                         R14 R15 R13
      107 JUMPIF                           R14 ; [+11]
      108 GETUPVAL                         R16 3
      109 GETTABLEKS                       R16 R16 K27 ["Keys"]
      111 GETTABLEKS                       R16 R16 K33 ["AccessorySkinning_ExtraJoint"]
      113 DUPTABLE                         R17 K30 [{"jointName"}]
      114 SETTABLEKS                       R13 R17 K29 ["jointName"]
      116 NAMECALL                         R14 R0 K31 ["fail"]
      118 CALL                             R14 3 0
      119 FORGLOOP                         R9 2 ; [-35]
      121 MOVE                             R9 R6
      122 LOADNIL                          R10
      123 LOADNIL                          R11
      124 FORGPREP                         R9
      125 JUMPIF                           R13 ; [+9]
      126 GETUPVAL                         R16 3
      127 GETTABLEKS                       R16 R16 K27 ["Keys"]
      129 GETTABLEKS                       R16 R16 K34 ["AccessorySkinning_WeightNotFull"]
      131 NAMECALL                         R14 R0 K31 ["fail"]
      133 CALL                             R14 2 0
      134 JUMP                             ; [+2]
      135 FORGLOOP                         R9 2 ; [-11]
      137 GETUPVAL                         R10 2
      138 GETTABLEKS                       R10 R10 K35 ["SkinningTransferRequiredTypes"]
      140 GETTABLEKS                       R11 R1 K36 ["uploadEnum"]
      142 GETTABLEKS                       R11 R11 K37 ["assetType"]
      144 GETTABLE                         R9 R10 R11
      145 JUMPIFNOT                        R9 ; [+98]
      146 JUMPIF                           R8 ; [+17]
      147 GETUPVAL                         R11 3
      148 GETTABLEKS                       R11 R11 K27 ["Keys"]
      150 GETTABLEKS                       R11 R11 K38 ["AccessorySkinning_RequiredSkinningTransfer"]
      152 DUPTABLE                         R12 K39 [{"assetType"}]
      153 GETTABLEKS                       R13 R1 K36 ["uploadEnum"]
      155 GETTABLEKS                       R13 R13 K37 ["assetType"]
      157 GETTABLEKS                       R13 R13 K40 ["Name"]
      159 SETTABLEKS                       R13 R12 K37 ["assetType"]
      161 NAMECALL                         R9 R0 K31 ["fail"]
      163 CALL                             R9 3 0
      164 GETUPVAL                         R9 2
      165 GETTABLEKS                       R9 R9 K26 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      167 LOADNIL                          R10
      168 LOADNIL                          R11
      169 FORGPREP                         R9
      170 GETIMPORT                        R14 K42 [table.find]
      172 MOVE                             R15 R5
      173 MOVE                             R16 R12
      174 CALL                             R14 2 1
      175 JUMPIFNOTEQKNIL                  R14 ; [+20]
      177 GETUPVAL                         R16 3
      178 GETTABLEKS                       R16 R16 K27 ["Keys"]
      180 GETTABLEKS                       R16 R16 K43 ["AccessorySkinning_MissingTransferJoint"]
      182 DUPTABLE                         R17 K45 [{"assetType", "requiredJointName"}]
      183 GETTABLEKS                       R18 R1 K36 ["uploadEnum"]
      185 GETTABLEKS                       R18 R18 K37 ["assetType"]
      187 GETTABLEKS                       R18 R18 K40 ["Name"]
      189 SETTABLEKS                       R18 R17 K37 ["assetType"]
      191 SETTABLEKS                       R12 R17 K44 ["requiredJointName"]
      193 NAMECALL                         R14 R0 K31 ["fail"]
      195 CALL                             R14 3 0
      196 FORGLOOP                         R9 2 ; [-27]
      198 MOVE                             R9 R5
      199 LOADNIL                          R10
      200 LOADNIL                          R11
      201 FORGPREP                         R9
      202 GETUPVAL                         R15 2
      203 GETTABLEKS                       R15 R15 K32 ["R15_STANDARD_JOINT_NAMES"]
      205 GETTABLE                         R14 R15 R13
      206 JUMPIFNOT                        R14 ; [+35]
      207 NEWTABLE                         R14 0 0
      209 GETUPVAL                         R15 2
      210 GETTABLEKS                       R15 R15 K26 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      212 LOADNIL                          R16
      213 LOADNIL                          R17
      214 FORGPREP                         R15
      215 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
      217 MOVE                             R21 R14
      218 MOVE                             R22 R18
      219 GETIMPORT                        R20 K12 [table.insert]
      221 CALL                             R20 2 0
      222 FORGLOOP                         R15 2 ; [-8]
      224 GETUPVAL                         R17 3
      225 GETTABLEKS                       R17 R17 K27 ["Keys"]
      227 GETTABLEKS                       R17 R17 K46 ["AccessorySkinning_NotLeaderOrFollower"]
      229 DUPTABLE                         R18 K48 [{"jointName", "validJointNameList"}]
      230 SETTABLEKS                       R13 R18 K29 ["jointName"]
      232 GETIMPORT                        R19 K50 [table.concat]
      234 MOVE                             R20 R14
      235 LOADK                            R21 K51 [", "]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K47 ["validJointNameList"]
      239 NAMECALL                         R15 R0 K31 ["fail"]
      241 CALL                             R15 3 0
      242 FORGLOOP                         R9 2 ; [-41]
      244 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 GETIMPORT                        R8 K8 [require]
       52 GETTABLEKS                       R9 R1 K15 ["flags"]
       54 GETTABLEKS                       R9 R9 K17 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K18 ["fflag"]
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R4 K19 ["UploadCategory"]
       63 GETTABLEKS                       R9 R9 K20 ["LAYERED_CLOTHING"]
       65 SETLIST                          R8 R9 1 [1]
       67 SETTABLEKS                       R8 R7 K21 ["categories"]
       69 NEWTABLE                         R8 0 1
       71 GETTABLEKS                       R9 R4 K22 ["SharedDataMember"]
       73 GETTABLEKS                       R9 R9 K23 ["renderMeshesData"]
       75 SETLIST                          R8 R9 1 [1]
       77 SETTABLEKS                       R8 R7 K24 ["requiredData"]
       79 DUPCLOSURE                       R8 K25 [PROTO_0]
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R8 R7 K26 ["run"]
       86 RETURN                           R7 1
