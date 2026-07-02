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
        0 NAMECALL                         R3 R0 K0 ["getRules"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R3 R3 K1 ["MeshRules"]
        5 GETTABLEKS                       R3 R3 K2 ["BodyPartMaxTriangles"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getRules"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["MakeupRules"]
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
       35 DUPTABLE                         R16 K8 [{["isIncludeBound"] = False, ["MinBound"], ["MaxBound"]}]
       36 GETTABLEKS                       R17 R13 K6 ["MinBound"]
       38 SETTABLEKS                       R17 R16 K6 ["MinBound"]
       40 GETTABLEKS                       R17 R13 K7 ["MaxBound"]
       42 SETTABLEKS                       R17 R16 K7 ["MaxBound"]
       44 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
       46 GETIMPORT                        R14 K11 [table.insert]
       48 CALL                             R14 2 0
       49 FORGLOOP                         R9 2 ; [-16]
       51 FORGLOOP                         R4 2 ; [-27]
       53 GETTABLEKS                       R4 R1 K3 ["IncludeUVBounds"]
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 GETTABLE                         R9 R3 R7
       59 JUMPIF                           R9 ; [+3]
       60 NEWTABLE                         R9 0 0
       62 SETTABLE                         R9 R3 R7
       63 GETTABLE                         R10 R3 R7
       64 DUPTABLE                         R11 K13 [{["isIncludeBound"] = True, ["MinBound"], ["MaxBound"]}]
       65 GETTABLEKS                       R12 R8 K6 ["MinBound"]
       67 SETTABLEKS                       R12 R11 K6 ["MinBound"]
       69 GETTABLEKS                       R12 R8 K7 ["MaxBound"]
       71 SETTABLEKS                       R12 R11 K7 ["MaxBound"]
       73 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       75 GETIMPORT                        R9 K11 [table.insert]
       77 CALL                             R9 2 0
       78 FORGLOOP                         R4 2 ; [-21]
       80 SETTABLEKS                       R3 R2 K14 ["AssetUVBounds"]
       82 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R5 R0 K0 ["getRules"]
        2 CALL                             R5 1 1
        3 MOVE                             R2 R5
        4 GETTABLEKS                       R2 R2 K1 ["AccessoryRules"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R7 K5 [{"rigidAllowed", "attachmentNames", "bounds"}]
       10 GETTABLEKS                       R8 R6 K6 ["RigidAllowed"]
       12 SETTABLEKS                       R8 R7 K2 ["rigidAllowed"]
       14 NEWTABLE                         R8 0 0
       16 SETTABLEKS                       R8 R7 K3 ["attachmentNames"]
       18 NEWTABLE                         R8 0 0
       20 SETTABLEKS                       R8 R7 K4 ["bounds"]
       22 GETTABLEKS                       R8 R6 K7 ["Attachments"]
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 FORGPREP                         R8
       27 GETTABLEKS                       R14 R7 K3 ["attachmentNames"]
       29 GETTABLEKS                       R15 R12 K8 ["Name"]
       31 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       33 GETIMPORT                        R13 K11 [table.insert]
       35 CALL                             R13 2 0
       36 GETTABLEKS                       R13 R7 K4 ["bounds"]
       38 GETTABLEKS                       R14 R12 K8 ["Name"]
       40 DUPTABLE                         R15 K14 [{"size", "offset"}]
       41 GETTABLEKS                       R16 R12 K15 ["Size"]
       43 SETTABLEKS                       R16 R15 K12 ["size"]
       45 GETTABLEKS                       R16 R12 K16 ["Offset"]
       47 SETTABLEKS                       R16 R15 K13 ["offset"]
       49 SETTABLE                         R15 R13 R14
       50 FORGLOOP                         R8 2 ; [-24]
       52 SETTABLE                         R7 R1 R5
       53 FORGLOOP                         R2 2 ; [-45]
       55 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R5 R0 K0 ["getRules"]
        2 CALL                             R5 1 1
        3 MOVE                             R2 R5
        4 GETTABLEKS                       R2 R2 K1 ["BodyPartRules"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R7 K6 [{["isBodyPart"] = True, ["bounds"], ["subParts"]}]
       10 NEWTABLE                         R8 0 0
       12 SETTABLEKS                       R8 R7 K4 ["bounds"]
       14 NEWTABLE                         R8 0 0
       16 SETTABLEKS                       R8 R7 K5 ["subParts"]
       18 GETTABLEKS                       R8 R6 K7 ["Bounds"]
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETTABLEKS                       R13 R7 K4 ["bounds"]
       25 DUPTABLE                         R14 K10 [{"minSize", "maxSize"}]
       26 GETTABLEKS                       R15 R12 K11 ["MinSize"]
       28 SETTABLEKS                       R15 R14 K8 ["minSize"]
       30 GETTABLEKS                       R15 R12 K12 ["MaxSize"]
       32 SETTABLEKS                       R15 R14 K9 ["maxSize"]
       34 SETTABLE                         R14 R13 R11
       35 FORGLOOP                         R8 2 ; [-13]
       37 GETTABLEKS                       R8 R6 K13 ["SubParts"]
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 FORGPREP                         R8
       42 DUPTABLE                         R13 K16 [{"rigAttachmentToParent", "otherAttachments"}]
       43 NEWTABLE                         R14 0 0
       45 SETTABLEKS                       R14 R13 K14 ["rigAttachmentToParent"]
       47 NEWTABLE                         R14 0 0
       49 SETTABLEKS                       R14 R13 K15 ["otherAttachments"]
       51 GETUPVAL                         R15 0
       52 GETTABLEKS                       R15 R15 K17 ["rigAttachmentToParentMap"]
       54 GETTABLE                         R14 R15 R11
       55 MOVE                             R15 R12
       56 LOADNIL                          R16
       57 LOADNIL                          R17
       58 FORGPREP                         R15
       59 JUMPIFNOTEQ                      R14 R18 ; [+18]
       61 DUPTABLE                         R20 K19 [{"name", "bounds"}]
       62 SETTABLEKS                       R18 R20 K18 ["name"]
       64 DUPTABLE                         R21 K22 [{"min", "max"}]
       65 GETTABLEKS                       R22 R19 K23 ["LowerBound"]
       67 SETTABLEKS                       R22 R21 K20 ["min"]
       69 GETTABLEKS                       R22 R19 K24 ["UpperBound"]
       71 SETTABLEKS                       R22 R21 K21 ["max"]
       73 SETTABLEKS                       R21 R20 K4 ["bounds"]
       75 SETTABLEKS                       R20 R13 K14 ["rigAttachmentToParent"]
       77 JUMP                             ; [+15]
       78 GETTABLEKS                       R20 R13 K15 ["otherAttachments"]
       80 DUPTABLE                         R21 K25 [{"bounds"}]
       81 DUPTABLE                         R22 K22 [{"min", "max"}]
       82 GETTABLEKS                       R23 R19 K23 ["LowerBound"]
       84 SETTABLEKS                       R23 R22 K20 ["min"]
       86 GETTABLEKS                       R23 R19 K24 ["UpperBound"]
       88 SETTABLEKS                       R23 R22 K21 ["max"]
       90 SETTABLEKS                       R22 R21 K4 ["bounds"]
       92 SETTABLE                         R21 R20 R18
       93 FORGLOOP                         R15 2 ; [-35]
       95 GETTABLEKS                       R15 R7 K5 ["subParts"]
       97 SETTABLE                         R13 R15 R11
       98 FORGLOOP                         R8 2 ; [-57]
      100 SETTABLE                         R7 R1 R5
      101 FORGLOOP                         R2 2 ; [-93]
      103 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R5 R0 K0 ["getRules"]
        4 CALL                             R5 1 1
        5 MOVE                             R2 R5
        6 GETTABLEKS                       R2 R2 K1 ["FullBodyRules"]
        8 GETTABLEKS                       R2 R2 K2 ["Bounds"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 DUPTABLE                         R7 K5 [{"minSize", "maxSize"}]
       14 GETTABLEKS                       R8 R6 K6 ["MinSize"]
       16 SETTABLEKS                       R8 R7 K3 ["minSize"]
       18 GETTABLEKS                       R8 R6 K7 ["MaxSize"]
       20 SETTABLEKS                       R8 R7 K4 ["maxSize"]
       22 SETTABLE                         R7 R1 R5
       23 FORGLOOP                         R2 2 ; [-11]
       25 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["getRules"]
        3 CALL                             R4 1 1
        4 GETTABLEKS                       R4 R4 K1 ["AccessoryRules"]
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
        9 DUPTABLE                         R2 K34 [{["Head"] = "NeckRigAttachment", ["UpperTorso"] = "WaistRigAttachment", ["LowerTorso"] = "RootRigAttachment", ["RightHand"] = "RightWristRigAttachment", ["RightLowerArm"] = "RightElbowRigAttachment", ["RightUpperArm"] = "RightShoulderRigAttachment", ["LeftHand"] = "LeftWristRigAttachment", ["LeftLowerArm"] = "LeftElbowRigAttachment", ["LeftUpperArm"] = "LeftShoulderRigAttachment", ["RightFoot"] = "RightAnkleRigAttachment", ["RightLowerLeg"] = "RightKneeRigAttachment", ["RightUpperLeg"] = "RightHipRigAttachment", ["LeftFoot"] = "LeftAnkleRigAttachment", ["LeftLowerLeg"] = "LeftKneeRigAttachment", ["LeftUpperLeg"] = "LeftHipRigAttachment"}]
       10 SETTABLEKS                       R2 R1 K35 ["rigAttachmentToParentMap"]
       12 DUPCLOSURE                       R2 K36 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K37 ["getRules"]
       16 DUPCLOSURE                       R2 K38 [PROTO_1]
       17 SETTABLEKS                       R2 R1 K39 ["getBodyPartMaxTrianglesRule"]
       19 DUPCLOSURE                       R2 K40 [PROTO_2]
       20 SETTABLEKS                       R2 R1 K41 ["getMakeupRules"]
       22 DUPCLOSURE                       R2 K42 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K43 ["getAccessoryRules"]
       25 DUPCLOSURE                       R2 K44 [PROTO_4]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R2 R1 K45 ["getBodyPartRules"]
       29 DUPCLOSURE                       R2 K46 [PROTO_5]
       30 SETTABLEKS                       R2 R1 K47 ["getFullBodyRulesBounds"]
       32 DUPCLOSURE                       R2 K48 [PROTO_6]
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R2 R1 K49 ["getLCSizeLimit"]
       36 RETURN                           R1 1
