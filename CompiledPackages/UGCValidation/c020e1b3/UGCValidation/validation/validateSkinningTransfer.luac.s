PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["MeshId"]
        3 GETUPVAL                         R3 2
        4 CALL                             R0 3 2
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to retrieve MeshContent"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["GetEditableMeshSkinningTransferJointsInfo"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 GETUPVAL                         R3 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 2
       10 JUMPIF                           R3 ; [+24]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["reportFailure"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K2 ["ErrorType"]
       17 GETTABLEKS                       R6 R6 K3 ["validateSkinningTransfer_FailedToExecute"]
       19 LOADNIL                          R7
       20 MOVE                             R8 R1
       21 CALL                             R5 3 0
       22 LOADB                            R5 0
       23 NEWTABLE                         R6 0 1
       25 GETIMPORT                        R7 K6 [string.format]
       27 LOADK                            R8 K7 ["Failed to execute skinning transfer check for '%s'. Make sure the mesh exists and try again."]
       28 NAMECALL                         R9 R0 K8 ["GetFullName"]
       30 CALL                             R9 1 -1
       31 CALL                             R7 -1 -1
       32 SETLIST                          R6 R7 -1 [1]
       34 RETURN                           R5 2
       35 GETIMPORT                        R6 K10 [next]
       37 MOVE                             R7 R4
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKNIL                  R6 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 JUMPIFNOT                        R5 ; [+93]
       44 NEWTABLE                         R6 0 0
       46 MOVE                             R7 R4
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       52 MOVE                             R13 R6
       53 MOVE                             R14 R10
       54 GETIMPORT                        R12 K13 [table.insert]
       56 CALL                             R12 2 0
       57 FORGLOOP                         R7 1 ; [-8]
       59 GETIMPORT                        R7 K15 [table.concat]
       61 MOVE                             R8 R6
       62 LOADK                            R9 K16 [", "]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K17 ["isBodyPart"]
       67 MOVE                             R9 R2
       68 CALL                             R8 1 1
       69 JUMPIFNOT                        R8 ; [+25]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K1 ["reportFailure"]
       73 GETUPVAL                         R9 3
       74 GETTABLEKS                       R9 R9 K2 ["ErrorType"]
       76 GETTABLEKS                       R9 R9 K18 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
       78 LOADNIL                          R10
       79 MOVE                             R11 R1
       80 CALL                             R8 3 0
       81 LOADB                            R8 0
       82 NEWTABLE                         R9 0 1
       84 GETIMPORT                        R10 K6 [string.format]
       86 LOADK                            R11 K19 ["Invalid joints [%s] found in body mesh '%s'. Please remove the joints and try again."]
       87 MOVE                             R12 R7
       88 NAMECALL                         R13 R0 K8 ["GetFullName"]
       90 CALL                             R13 1 -1
       91 CALL                             R10 -1 -1
       92 SETLIST                          R9 R10 -1 [1]
       94 RETURN                           R8 2
       95 LOADK                            R10 K20 ["WrapLayer"]
       96 NAMECALL                         R8 R0 K21 ["FindFirstChildOfClass"]
       98 CALL                             R8 2 1
       99 FASTCALL2K                       ASSERT R8 K22 ; [+5]
      101 MOVE                             R10 R8
      102 LOADK                            R11 K22 ["MeshPart isn't a body part, so it must be an accessory with a WrapLayer"]
      103 GETIMPORT                        R9 K24 [assert]
      105 CALL                             R9 2 0
      106 GETTABLEKS                       R9 R8 K25 ["AutoSkin"]
      108 GETIMPORT                        R10 K29 [Enum.WrapLayerAutoSkin.EnabledOverride]
      110 JUMPIFEQ                         R9 R10 ; [+26]
      112 GETUPVAL                         R9 3
      113 GETTABLEKS                       R9 R9 K1 ["reportFailure"]
      115 GETUPVAL                         R10 3
      116 GETTABLEKS                       R10 R10 K2 ["ErrorType"]
      118 GETTABLEKS                       R10 R10 K30 ["validateSkinningTransfer_SkinningTransferOverride"]
      120 LOADNIL                          R11
      121 MOVE                             R12 R1
      122 CALL                             R9 3 0
      123 LOADB                            R9 0
      124 NEWTABLE                         R10 0 1
      126 GETIMPORT                        R11 K6 [string.format]
      128 LOADK                            R12 K31 ["Skinning Transfer joints [%s] found in '%s'. WrapLayer.AutoSkin must be set to EnabledOverride when joints are present."]
      129 MOVE                             R13 R7
      130 NAMECALL                         R14 R0 K8 ["GetFullName"]
      132 CALL                             R14 1 -1
      133 CALL                             R11 -1 -1
      134 SETLIST                          R10 R11 -1 [1]
      136 RETURN                           R9 2
      137 GETUPVAL                         R6 5
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+34]
      140 GETUPVAL                         R6 6
      141 JUMPIFNOT                        R6 ; [+32]
      142 JUMPIF                           R5 ; [+31]
      143 GETUPVAL                         R7 7
      144 GETTABLEKS                       R7 R7 K32 ["SkinningTransferRequiredTypes"]
      146 GETTABLE                         R6 R7 R2
      147 JUMPIFNOT                        R6 ; [+26]
      148 GETUPVAL                         R6 3
      149 GETTABLEKS                       R6 R6 K1 ["reportFailure"]
      151 GETUPVAL                         R7 3
      152 GETTABLEKS                       R7 R7 K2 ["ErrorType"]
      154 GETTABLEKS                       R7 R7 K33 ["validateSkinningTransfer_RequiredAssetTypes"]
      156 LOADNIL                          R8
      157 MOVE                             R9 R1
      158 CALL                             R6 3 0
      159 LOADB                            R6 0
      160 NEWTABLE                         R7 0 1
      162 GETIMPORT                        R8 K6 [string.format]
      164 LOADK                            R9 K34 ["No Skinning Transfer joints found in '%s'. Accessories of type %s are required to use Skinning Transfer with RBX_Leader and RBX_Follower joints."]
      165 NAMECALL                         R10 R0 K8 ["GetFullName"]
      167 CALL                             R10 1 1
      168 GETTABLEKS                       R11 R2 K35 ["Name"]
      170 CALL                             R8 3 -1
      171 SETLIST                          R7 R8 -1 [1]
      173 RETURN                           R6 2
      174 MOVE                             R6 R4
      175 LOADNIL                          R7
      176 LOADNIL                          R8
      177 FORGPREP                         R6
      178 JUMPIF                           R10 ; [+25]
      179 GETUPVAL                         R11 3
      180 GETTABLEKS                       R11 R11 K1 ["reportFailure"]
      182 GETUPVAL                         R12 3
      183 GETTABLEKS                       R12 R12 K2 ["ErrorType"]
      185 GETTABLEKS                       R12 R12 K36 ["validateSkinningTransfer_Weights"]
      187 LOADNIL                          R13
      188 MOVE                             R14 R1
      189 CALL                             R11 3 0
      190 LOADB                            R11 0
      191 NEWTABLE                         R12 0 1
      193 GETIMPORT                        R13 K6 [string.format]
      195 LOADK                            R14 K37 ["Vert(s) in mesh '%s' are only partially weighted to joint %s. Vert(s) must be fully weighted to this joint."]
      196 NAMECALL                         R15 R0 K8 ["GetFullName"]
      198 CALL                             R15 1 1
      199 MOVE                             R16 R9
      200 CALL                             R13 3 -1
      201 SETLIST                          R12 R13 -1 [1]
      203 RETURN                           R11 2
      204 FORGLOOP                         R6 2 ; [-27]
      206 LOADB                            R6 1
      207 RETURN                           R6 1

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
       20 GETTABLEKS                       R4 R1 K10 ["ConstantsInterface"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R1 K12 ["util"]
       32 GETTABLEKS                       R6 R6 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K8 [require]
       37 GETTABLEKS                       R7 R1 K12 ["util"]
       39 GETTABLEKS                       R7 R7 K14 ["pcallDeferred"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R8 R1 K12 ["util"]
       46 GETTABLEKS                       R8 R8 K15 ["getEditableMeshFromContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K8 [require]
       51 GETTABLEKS                       R9 R1 K16 ["flags"]
       53 GETTABLEKS                       R9 R9 K17 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K1 [game]
       58 LOADK                            R11 K18 ["EyebrowEyelashRequiresSpecialJoints"]
       59 LOADB                            R12 0
       60 NAMECALL                         R9 R9 K19 ["DefineFastFlag"]
       62 CALL                             R9 3 1
       63 DUPCLOSURE                       R10 K20 [PROTO_1]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R4
       72 RETURN                           R10 1
