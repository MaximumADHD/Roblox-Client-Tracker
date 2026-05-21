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
       74 MOVE                             R9 R4
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 FORGPREP                         R9
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R15 R15 K25 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
       81 GETTABLE                         R14 R15 R13
       82 JUMPIFNOT                        R14 ; [+13]
       83 JUMPIF                           R8 ; [+28]
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R16 R16 K26 ["Keys"]
       87 GETTABLEKS                       R16 R16 K27 ["AccessorySkinning_TransferJointWithoutAutoSkin"]
       89 DUPTABLE                         R17 K29 [{"jointName"}]
       90 SETTABLEKS                       R13 R17 K28 ["jointName"]
       92 NAMECALL                         R14 R0 K30 ["fail"]
       94 CALL                             R14 3 0
       95 JUMP                             ; [+16]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K31 ["R15_STANDARD_JOINT_NAMES"]
       99 GETTABLE                         R14 R15 R13
      100 JUMPIF                           R14 ; [+11]
      101 GETUPVAL                         R16 2
      102 GETTABLEKS                       R16 R16 K26 ["Keys"]
      104 GETTABLEKS                       R16 R16 K32 ["AccessorySkinning_ExtraJoint"]
      106 DUPTABLE                         R17 K29 [{"jointName"}]
      107 SETTABLEKS                       R13 R17 K28 ["jointName"]
      109 NAMECALL                         R14 R0 K30 ["fail"]
      111 CALL                             R14 3 0
      112 FORGLOOP                         R9 2 ; [-35]
      114 MOVE                             R9 R6
      115 LOADNIL                          R10
      116 LOADNIL                          R11
      117 FORGPREP                         R9
      118 JUMPIF                           R13 ; [+9]
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K26 ["Keys"]
      122 GETTABLEKS                       R16 R16 K33 ["AccessorySkinning_WeightNotFull"]
      124 NAMECALL                         R14 R0 K30 ["fail"]
      126 CALL                             R14 2 0
      127 JUMP                             ; [+2]
      128 FORGLOOP                         R9 2 ; [-11]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K34 ["SkinningTransferRequiredTypes"]
      133 GETTABLEKS                       R11 R1 K35 ["uploadEnum"]
      135 GETTABLEKS                       R11 R11 K36 ["assetType"]
      137 GETTABLE                         R9 R10 R11
      138 JUMPIFNOT                        R9 ; [+98]
      139 JUMPIF                           R8 ; [+17]
      140 GETUPVAL                         R11 2
      141 GETTABLEKS                       R11 R11 K26 ["Keys"]
      143 GETTABLEKS                       R11 R11 K37 ["AccessorySkinning_RequiredSkinningTransfer"]
      145 DUPTABLE                         R12 K38 [{"assetType"}]
      146 GETTABLEKS                       R13 R1 K35 ["uploadEnum"]
      148 GETTABLEKS                       R13 R13 K36 ["assetType"]
      150 GETTABLEKS                       R13 R13 K39 ["Name"]
      152 SETTABLEKS                       R13 R12 K36 ["assetType"]
      154 NAMECALL                         R9 R0 K30 ["fail"]
      156 CALL                             R9 3 0
      157 GETUPVAL                         R9 1
      158 GETTABLEKS                       R9 R9 K25 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      160 LOADNIL                          R10
      161 LOADNIL                          R11
      162 FORGPREP                         R9
      163 GETIMPORT                        R14 K41 [table.find]
      165 MOVE                             R15 R5
      166 MOVE                             R16 R12
      167 CALL                             R14 2 1
      168 JUMPIFNOTEQKNIL                  R14 ; [+20]
      170 GETUPVAL                         R16 2
      171 GETTABLEKS                       R16 R16 K26 ["Keys"]
      173 GETTABLEKS                       R16 R16 K42 ["AccessorySkinning_MissingTransferJoint"]
      175 DUPTABLE                         R17 K44 [{"assetType", "requiredJointName"}]
      176 GETTABLEKS                       R18 R1 K35 ["uploadEnum"]
      178 GETTABLEKS                       R18 R18 K36 ["assetType"]
      180 GETTABLEKS                       R18 R18 K39 ["Name"]
      182 SETTABLEKS                       R18 R17 K36 ["assetType"]
      184 SETTABLEKS                       R12 R17 K43 ["requiredJointName"]
      186 NAMECALL                         R14 R0 K30 ["fail"]
      188 CALL                             R14 3 0
      189 FORGLOOP                         R9 2 ; [-27]
      191 MOVE                             R9 R5
      192 LOADNIL                          R10
      193 LOADNIL                          R11
      194 FORGPREP                         R9
      195 GETUPVAL                         R15 1
      196 GETTABLEKS                       R15 R15 K31 ["R15_STANDARD_JOINT_NAMES"]
      198 GETTABLE                         R14 R15 R13
      199 JUMPIFNOT                        R14 ; [+35]
      200 NEWTABLE                         R14 0 0
      202 GETUPVAL                         R15 1
      203 GETTABLEKS                       R15 R15 K25 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      205 LOADNIL                          R16
      206 LOADNIL                          R17
      207 FORGPREP                         R15
      208 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
      210 MOVE                             R21 R14
      211 MOVE                             R22 R18
      212 GETIMPORT                        R20 K12 [table.insert]
      214 CALL                             R20 2 0
      215 FORGLOOP                         R15 2 ; [-8]
      217 GETUPVAL                         R17 2
      218 GETTABLEKS                       R17 R17 K26 ["Keys"]
      220 GETTABLEKS                       R17 R17 K45 ["AccessorySkinning_NotLeaderOrFollower"]
      222 DUPTABLE                         R18 K47 [{"jointName", "validJointNameList"}]
      223 SETTABLEKS                       R13 R18 K28 ["jointName"]
      225 GETIMPORT                        R19 K49 [table.concat]
      227 MOVE                             R20 R14
      228 LOADK                            R21 K50 [", "]
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K46 ["validJointNameList"]
      232 NAMECALL                         R15 R0 K30 ["fail"]
      234 CALL                             R15 3 0
      235 FORGLOOP                         R9 2 ; [-41]
      237 RETURN                           R0 0

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
       41 NEWTABLE                         R6 4 0
       43 GETIMPORT                        R7 K8 [require]
       45 GETTABLEKS                       R8 R1 K15 ["flags"]
       47 GETTABLEKS                       R8 R8 K16 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K17 ["fflag"]
       52 NEWTABLE                         R7 0 1
       54 GETTABLEKS                       R8 R4 K18 ["UploadCategory"]
       56 GETTABLEKS                       R8 R8 K19 ["LAYERED_CLOTHING"]
       58 SETLIST                          R7 R8 1 [1]
       60 SETTABLEKS                       R7 R6 K20 ["categories"]
       62 NEWTABLE                         R7 0 1
       64 GETTABLEKS                       R8 R4 K21 ["SharedDataMember"]
       66 GETTABLEKS                       R8 R8 K22 ["renderMeshesData"]
       68 SETLIST                          R7 R8 1 [1]
       70 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       72 DUPCLOSURE                       R7 K24 [PROTO_0]
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R7 R6 K25 ["run"]
       78 RETURN                           R6 1
