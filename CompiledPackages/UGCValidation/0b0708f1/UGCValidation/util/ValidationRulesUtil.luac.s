PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["rules"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K1 ["GetValidationRules"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["rules"]
        9 GETTABLEKS                       R1 R0 K0 ["rules"]
       11 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R5 R0 K0 ["getRules"]
        2 CALL                             R5 1 1
        3 GETTABLEKS                       R4 R5 K1 ["MeshRules"]
        5 GETTABLEKS                       R3 R4 K2 ["BodyPartMaxTriangles"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getRules"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["MakeupRules"]
        5 NEWTABLE                         R2 1 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 JUMPIFEQKS                       R6 K2 ["ExcludeUVBounds"] ; [+4]
       13 JUMPIFEQKS                       R6 K3 ["IncludeUVBounds"] ; [+2]
       15 SETTABLE                         R7 R2 R6
       16 FORGLOOP                         R3 2 ; [-6]
       18 NEWTABLE                         R3 0 0
       20 GETTABLEKS                       R4 R1 K2 ["ExcludeUVBounds"]
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLE                         R9 R3 R7
       26 JUMPIF                           R9 ; [+3]
       27 NEWTABLE                         R9 0 0
       29 SETTABLE                         R9 R3 R7
       30 MOVE                             R9 R8
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETTABLE                         R15 R3 R7
       35 DUPTABLE                         R16 K7 [{"isIncludeBound", "MinBound", "MaxBound"}]
       36 LOADB                            R17 0
       37 SETTABLEKS                       R17 R16 K4 ["isIncludeBound"]
       39 GETTABLEKS                       R17 R13 K5 ["MinBound"]
       41 SETTABLEKS                       R17 R16 K5 ["MinBound"]
       43 GETTABLEKS                       R17 R13 K6 ["MaxBound"]
       45 SETTABLEKS                       R17 R16 K6 ["MaxBound"]
       47 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
       49 GETIMPORT                        R14 K10 [table.insert]
       51 CALL                             R14 2 0
       52 FORGLOOP                         R9 2 ; [-19]
       54 FORGLOOP                         R4 2 ; [-30]
       56 GETTABLEKS                       R4 R1 K3 ["IncludeUVBounds"]
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 FORGPREP                         R4
       61 GETTABLE                         R9 R3 R7
       62 JUMPIF                           R9 ; [+3]
       63 NEWTABLE                         R9 0 0
       65 SETTABLE                         R9 R3 R7
       66 GETTABLE                         R10 R3 R7
       67 DUPTABLE                         R11 K7 [{"isIncludeBound", "MinBound", "MaxBound"}]
       68 LOADB                            R12 1
       69 SETTABLEKS                       R12 R11 K4 ["isIncludeBound"]
       71 GETTABLEKS                       R12 R8 K5 ["MinBound"]
       73 SETTABLEKS                       R12 R11 K5 ["MinBound"]
       75 GETTABLEKS                       R12 R8 K6 ["MaxBound"]
       77 SETTABLEKS                       R12 R11 K6 ["MaxBound"]
       79 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       81 GETIMPORT                        R9 K10 [table.insert]
       83 CALL                             R9 2 0
       84 FORGLOOP                         R4 2 ; [-24]
       86 SETTABLEKS                       R3 R2 K11 ["AssetUVBounds"]
       88 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R5 R0 K0 ["getRules"]
        2 CALL                             R5 1 1
        3 GETTABLEKS                       R2 R5 K1 ["AccessoryRules"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 DUPTABLE                         R7 K5 [{"rigidAllowed", "attachmentNames", "bounds"}]
        9 GETTABLEKS                       R8 R6 K6 ["RigidAllowed"]
       11 SETTABLEKS                       R8 R7 K2 ["rigidAllowed"]
       13 NEWTABLE                         R8 0 0
       15 SETTABLEKS                       R8 R7 K3 ["attachmentNames"]
       17 NEWTABLE                         R8 0 0
       19 SETTABLEKS                       R8 R7 K4 ["bounds"]
       21 GETTABLEKS                       R8 R6 K7 ["Attachments"]
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 FORGPREP                         R8
       26 GETTABLEKS                       R14 R7 K3 ["attachmentNames"]
       28 GETTABLEKS                       R15 R12 K8 ["Name"]
       30 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       32 GETIMPORT                        R13 K11 [table.insert]
       34 CALL                             R13 2 0
       35 GETTABLEKS                       R13 R7 K4 ["bounds"]
       37 GETTABLEKS                       R14 R12 K8 ["Name"]
       39 DUPTABLE                         R15 K14 [{"size", "offset"}]
       40 GETTABLEKS                       R16 R12 K15 ["Size"]
       42 SETTABLEKS                       R16 R15 K12 ["size"]
       44 GETTABLEKS                       R16 R12 K16 ["Offset"]
       46 SETTABLEKS                       R16 R15 K13 ["offset"]
       48 SETTABLE                         R15 R13 R14
       49 FORGLOOP                         R8 2 ; [-24]
       51 SETTABLE                         R7 R1 R5
       52 FORGLOOP                         R2 2 ; [-45]
       54 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R5 R0 K0 ["getRules"]
        2 CALL                             R5 1 1
        3 GETTABLEKS                       R2 R5 K1 ["BodyPartRules"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 DUPTABLE                         R7 K5 [{"isBodyPart", "bounds", "subParts"}]
        9 LOADB                            R8 1
       10 SETTABLEKS                       R8 R7 K2 ["isBodyPart"]
       12 NEWTABLE                         R8 0 0
       14 SETTABLEKS                       R8 R7 K3 ["bounds"]
       16 NEWTABLE                         R8 0 0
       18 SETTABLEKS                       R8 R7 K4 ["subParts"]
       20 GETTABLEKS                       R8 R6 K6 ["Bounds"]
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 GETTABLEKS                       R13 R7 K3 ["bounds"]
       27 DUPTABLE                         R14 K9 [{"minSize", "maxSize"}]
       28 GETTABLEKS                       R15 R12 K10 ["MinSize"]
       30 SETTABLEKS                       R15 R14 K7 ["minSize"]
       32 GETTABLEKS                       R15 R12 K11 ["MaxSize"]
       34 SETTABLEKS                       R15 R14 K8 ["maxSize"]
       36 SETTABLE                         R14 R13 R11
       37 FORGLOOP                         R8 2 ; [-13]
       39 GETTABLEKS                       R8 R6 K12 ["SubParts"]
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 DUPTABLE                         R13 K15 [{"rigAttachmentToParent", "otherAttachments"}]
       45 NEWTABLE                         R14 0 0
       47 SETTABLEKS                       R14 R13 K13 ["rigAttachmentToParent"]
       49 NEWTABLE                         R14 0 0
       51 SETTABLEKS                       R14 R13 K14 ["otherAttachments"]
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R15 R16 K16 ["rigAttachmentToParentMap"]
       56 GETTABLE                         R14 R15 R11
       57 MOVE                             R15 R12
       58 LOADNIL                          R16
       59 LOADNIL                          R17
       60 FORGPREP                         R15
       61 JUMPIFNOTEQ                      R14 R18 ; [+18]
       63 DUPTABLE                         R20 K18 [{"name", "bounds"}]
       64 SETTABLEKS                       R18 R20 K17 ["name"]
       66 DUPTABLE                         R21 K21 [{"min", "max"}]
       67 GETTABLEKS                       R22 R19 K22 ["LowerBound"]
       69 SETTABLEKS                       R22 R21 K19 ["min"]
       71 GETTABLEKS                       R22 R19 K23 ["UpperBound"]
       73 SETTABLEKS                       R22 R21 K20 ["max"]
       75 SETTABLEKS                       R21 R20 K3 ["bounds"]
       77 SETTABLEKS                       R20 R13 K13 ["rigAttachmentToParent"]
       79 JUMP                             ; [+15]
       80 GETTABLEKS                       R20 R13 K14 ["otherAttachments"]
       82 DUPTABLE                         R21 K24 [{"bounds"}]
       83 DUPTABLE                         R22 K21 [{"min", "max"}]
       84 GETTABLEKS                       R23 R19 K22 ["LowerBound"]
       86 SETTABLEKS                       R23 R22 K19 ["min"]
       88 GETTABLEKS                       R23 R19 K23 ["UpperBound"]
       90 SETTABLEKS                       R23 R22 K20 ["max"]
       92 SETTABLEKS                       R22 R21 K3 ["bounds"]
       94 SETTABLE                         R21 R20 R18
       95 FORGLOOP                         R15 2 ; [-35]
       97 GETTABLEKS                       R15 R7 K4 ["subParts"]
       99 SETTABLE                         R13 R15 R11
      100 FORGLOOP                         R8 2 ; [-57]
      102 SETTABLE                         R7 R1 R5
      103 FORGLOOP                         R2 2 ; [-96]
      105 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R6 R0 K0 ["getRules"]
        4 CALL                             R6 1 1
        5 GETTABLEKS                       R5 R6 K1 ["FullBodyRules"]
        7 GETTABLEKS                       R2 R5 K2 ["Bounds"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 DUPTABLE                         R7 K5 [{"minSize", "maxSize"}]
       13 GETTABLEKS                       R8 R6 K6 ["MinSize"]
       15 SETTABLEKS                       R8 R7 K3 ["minSize"]
       17 GETTABLEKS                       R8 R6 K7 ["MaxSize"]
       19 SETTABLEKS                       R8 R7 K4 ["maxSize"]
       21 SETTABLE                         R7 R1 R5
       22 FORGLOOP                         R2 2 ; [-11]
       24 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R5 R5 K0 ["getRules"]
        3 CALL                             R5 1 1
        4 GETTABLEKS                       R4 R5 K1 ["AccessoryRules"]
        6 GETTABLE                         R3 R4 R1
        7 GETTABLEKS                       R4 R3 K2 ["Attachments"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R11 R8 K3 ["Name"]
       14 NAMECALL                         R9 R2 K4 ["FindFirstChild"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+4]
       18 LOADB                            R9 1
       19 GETTABLEKS                       R10 R8 K5 ["Size"]
       21 RETURN                           R9 2
       22 FORGLOOP                         R4 2 ; [-11]
       24 LOADB                            R4 0
       25 LOADNIL                          R5
       26 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AvatarCreationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 DUPTABLE                         R2 K19 [{"Head", "UpperTorso", "LowerTorso", "RightHand", "RightLowerArm", "RightUpperArm", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg"}]
       10 LOADK                            R3 K20 ["NeckRigAttachment"]
       11 SETTABLEKS                       R3 R2 K4 ["Head"]
       13 LOADK                            R3 K21 ["WaistRigAttachment"]
       14 SETTABLEKS                       R3 R2 K5 ["UpperTorso"]
       16 LOADK                            R3 K22 ["RootRigAttachment"]
       17 SETTABLEKS                       R3 R2 K6 ["LowerTorso"]
       19 LOADK                            R3 K23 ["RightWristRigAttachment"]
       20 SETTABLEKS                       R3 R2 K7 ["RightHand"]
       22 LOADK                            R3 K24 ["RightElbowRigAttachment"]
       23 SETTABLEKS                       R3 R2 K8 ["RightLowerArm"]
       25 LOADK                            R3 K25 ["RightShoulderRigAttachment"]
       26 SETTABLEKS                       R3 R2 K9 ["RightUpperArm"]
       28 LOADK                            R3 K26 ["LeftWristRigAttachment"]
       29 SETTABLEKS                       R3 R2 K10 ["LeftHand"]
       31 LOADK                            R3 K27 ["LeftElbowRigAttachment"]
       32 SETTABLEKS                       R3 R2 K11 ["LeftLowerArm"]
       34 LOADK                            R3 K28 ["LeftShoulderRigAttachment"]
       35 SETTABLEKS                       R3 R2 K12 ["LeftUpperArm"]
       37 LOADK                            R3 K29 ["RightAnkleRigAttachment"]
       38 SETTABLEKS                       R3 R2 K13 ["RightFoot"]
       40 LOADK                            R3 K30 ["RightKneeRigAttachment"]
       41 SETTABLEKS                       R3 R2 K14 ["RightLowerLeg"]
       43 LOADK                            R3 K31 ["RightHipRigAttachment"]
       44 SETTABLEKS                       R3 R2 K15 ["RightUpperLeg"]
       46 LOADK                            R3 K32 ["LeftAnkleRigAttachment"]
       47 SETTABLEKS                       R3 R2 K16 ["LeftFoot"]
       49 LOADK                            R3 K33 ["LeftKneeRigAttachment"]
       50 SETTABLEKS                       R3 R2 K17 ["LeftLowerLeg"]
       52 LOADK                            R3 K34 ["LeftHipRigAttachment"]
       53 SETTABLEKS                       R3 R2 K18 ["LeftUpperLeg"]
       55 SETTABLEKS                       R2 R1 K35 ["rigAttachmentToParentMap"]
       57 DUPCLOSURE                       R2 K36 [PROTO_0]
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R1 K37 ["getRules"]
       61 DUPCLOSURE                       R2 K38 [PROTO_1]
       62 SETTABLEKS                       R2 R1 K39 ["getBodyPartMaxTrianglesRule"]
       64 DUPCLOSURE                       R2 K40 [PROTO_2]
       65 SETTABLEKS                       R2 R1 K41 ["getMakeupRules"]
       67 DUPCLOSURE                       R2 K42 [PROTO_3]
       68 SETTABLEKS                       R2 R1 K43 ["getAccessoryRules"]
       70 DUPCLOSURE                       R2 K44 [PROTO_4]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R2 R1 K45 ["getBodyPartRules"]
       74 DUPCLOSURE                       R2 K46 [PROTO_5]
       75 SETTABLEKS                       R2 R1 K47 ["getFullBodyRulesBounds"]
       77 DUPCLOSURE                       R2 K48 [PROTO_6]
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R2 R1 K49 ["getLCSizeLimit"]
       81 RETURN                           R1 1
