PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K0 ["getAvatarBoneSchema"]
       13 MOVE                             R7 R5
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K1 ["getSchemaFlatHierarchyList"]
       18 MOVE                             R8 R6
       19 NEWTABLE                         R9 0 1
       21 MOVE                             R10 R5
       22 SETLIST                          R9 R10 1 [1]
       24 CALL                             R7 2 1
       25 MOVE                             R8 R7
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETTABLEKS                       R13 R12 K2 ["ClassName"]
       31 JUMPIFNOTEQKS                    R13 K3 ["Bone"] ; [+13]
       33 GETTABLEKS                       R13 R12 K4 ["path"]
       35 LENGTH                           R16 R13
       36 SUBK                             R15 R16 K5 [1]
       37 GETTABLE                         R14 R13 R15
       38 GETTABLE                         R15 R7 R14
       39 JUMPIFNOT                        R15 ; [+5]
       40 GETTABLEKS                       R16 R15 K2 ["ClassName"]
       42 JUMPIFNOTEQKS                    R16 K3 ["Bone"] ; [+2]
       44 SETTABLE                         R14 R0 R11
       45 FORGLOOP                         R8 2 ; [-17]
       47 FORGLOOP                         R1 2 ; [-38]
       49 SETUPVAL                         R0 0
       50 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R1 K0 ["curveAnimations"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 NEWTABLE                         R8 0 0
        9 NAMECALL                         R9 R7 K1 ["GetDescendants"]
       11 CALL                             R9 1 3
       12 FORGPREP                         R9
       13 LOADK                            R16 K2 ["Folder"]
       14 NAMECALL                         R14 R13 K3 ["IsA"]
       16 CALL                             R14 2 1
       17 JUMPIFNOT                        R14 ; [+11]
       18 GETUPVAL                         R14 1
       19 GETTABLEKS                       R14 R14 K4 ["isBoneFolderName"]
       21 GETTABLEKS                       R15 R13 K5 ["Name"]
       23 CALL                             R14 1 1
       24 JUMPIFNOT                        R14 ; [+4]
       25 GETTABLEKS                       R14 R13 K5 ["Name"]
       27 LOADB                            R15 1
       28 SETTABLE                         R15 R8 R14
       29 FORGLOOP                         R9 2 ; [-17]
       31 MOVE                             R9 R8
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 FORGPREP                         R9
       35 GETTABLE                         R14 R2 R12
       36 JUMPIFEQKNIL                     R14 ; [+16]
       38 GETTABLE                         R15 R8 R14
       39 JUMPIF                           R15 ; [+13]
       40 GETUPVAL                         R17 2
       41 GETTABLEKS                       R17 R17 K6 ["Keys"]
       43 GETTABLEKS                       R17 R17 K7 ["CurveAnim_BoneRequiresParent"]
       45 DUPTABLE                         R18 K10 [{"boneName", "parentBoneName"}]
       46 SETTABLEKS                       R12 R18 K8 ["boneName"]
       48 SETTABLEKS                       R14 R18 K9 ["parentBoneName"]
       50 NAMECALL                         R15 R0 K11 ["fail"]
       52 CALL                             R15 3 0
       53 FORGLOOP                         R9 1 ; [-19]
       55 FORGLOOP                         R3 2 ; [-49]
       57 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["R15plusUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["CurveAnimBoneHierarchyUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateEmotesBonesAllowed"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 1
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["EMOTE_ANIMATION"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K16 ["categories"]
       63 NEWTABLE                         R8 0 1
       65 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       67 GETTABLEKS                       R9 R9 K18 ["curveAnimations"]
       69 SETLIST                          R8 R9 1 [1]
       71 SETTABLEKS                       R8 R7 K19 ["requiredData"]
       73 NEWTABLE                         R8 0 1
       75 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       77 GETTABLEKS                       R9 R9 K20 ["curveAnimBoneData"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K21 ["conditionalData"]
       83 SETTABLEKS                       R6 R7 K22 ["fflag"]
       85 NEWTABLE                         R8 0 0
       87 SETTABLEKS                       R8 R7 K23 ["expectedFailures"]
       89 NEWTABLE                         R8 0 1
       91 GETTABLEKS                       R9 R2 K24 ["ValidationModule"]
       93 GETTABLEKS                       R9 R9 K25 ["CurveAnimDataAvailable"]
       95 SETLIST                          R8 R9 1 [1]
       97 SETTABLEKS                       R8 R7 K26 ["prereqTests"]
       99 NEWTABLE                         R8 0 6
      101 LOADK                            R9 K27 ["Head"]
      102 LOADK                            R10 K28 ["UpperTorso"]
      103 LOADK                            R11 K29 ["LeftFoot"]
      104 LOADK                            R12 K30 ["RightFoot"]
      105 LOADK                            R13 K31 ["LeftHand"]
      106 LOADK                            R14 K32 ["RightHand"]
      107 SETLIST                          R8 R9 6 [1]
      109 LOADNIL                          R9
      110 NEWCLOSURE                       R10 P0
      111 CAPTURE                          REF R9
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 DUPCLOSURE                       R11 K33 [PROTO_1]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R11 R7 K34 ["run"]
      120 CLOSEUPVALS                      R9
      121 RETURN                           R7 1
