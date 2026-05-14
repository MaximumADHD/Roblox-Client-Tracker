PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 GETIMPORT                        R3 K5 [game]
        5 GETTABLEKS                       R3 R3 K6 ["Workspace"]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K7 ["Names"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETIMPORT                        R8 K2 [Instance.new]
       17 LOADK                            R9 K8 ["Part"]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R7 R8 K9 ["Name"]
       21 SETTABLEKS                       R1 R8 K10 ["Parent"]
       23 SETTABLE                         R8 R2 R6
       24 FORGLOOP                         R3 2 ; [-10]
       26 GETTABLEKS                       R3 R0 K11 ["Parents"]
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 JUMPIFEQKN                       R7 K12 [0] ; [+26]
       33 GETIMPORT                        R8 K2 [Instance.new]
       35 LOADK                            R9 K13 ["Motor6D"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K16 [string.format]
       39 LOADK                            R10 K17 ["%s_to_%s"]
       40 GETTABLE                         R11 R2 R6
       41 GETTABLEKS                       R11 R11 K9 ["Name"]
       43 GETTABLE                         R12 R2 R7
       44 GETTABLEKS                       R12 R12 K9 ["Name"]
       46 CALL                             R9 3 1
       47 SETTABLEKS                       R9 R8 K9 ["Name"]
       49 GETTABLE                         R9 R2 R6
       50 SETTABLEKS                       R9 R8 K10 ["Parent"]
       52 GETTABLE                         R9 R2 R7
       53 SETTABLEKS                       R9 R8 K18 ["Part0"]
       55 GETTABLE                         R9 R2 R6
       56 SETTABLEKS                       R9 R8 K19 ["Part1"]
       58 FORGLOOP                         R3 2 ; [-28]
       60 GETIMPORT                        R3 K2 [Instance.new]
       62 LOADK                            R4 K20 ["Humanoid"]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R1 R3 K10 ["Parent"]
       66 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Names", "Parents"}]
        1 NEWTABLE                         R1 0 8
        3 LOADK                            R2 K3 ["Hips"]
        4 LOADK                            R3 K4 ["Torso"]
        5 LOADK                            R4 K5 ["LeftArm"]
        6 LOADK                            R5 K6 ["RightArm"]
        7 LOADK                            R6 K7 ["LeftHand"]
        8 LOADK                            R7 K8 ["RightHand"]
        9 LOADK                            R8 K9 ["Neck"]
       10 LOADK                            R9 K10 ["Head"]
       11 SETLIST                          R1 R2 8 [1]
       13 SETTABLEKS                       R1 R0 K0 ["Names"]
       15 NEWTABLE                         R1 0 8
       17 LOADN                            R2 0
       18 LOADN                            R3 1
       19 LOADN                            R4 2
       20 LOADN                            R5 2
       21 LOADN                            R6 3
       22 LOADN                            R7 4
       23 LOADN                            R8 2
       24 LOADN                            R9 7
       25 SETLIST                          R1 R2 8 [1]
       27 SETTABLEKS                       R1 R0 K1 ["Parents"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K11 ["makeRigFromSkeleton"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 -1
       34 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       10 MOVE                             R10 R2
       11 MOVE                             R11 R7
       12 GETIMPORT                        R9 K2 [table.insert]
       14 CALL                             R9 2 0
       15 DUPTABLE                         R9 K5 [{"Value", "InterpolationMode"}]
       16 SETTABLEKS                       R8 R9 K3 ["Value"]
       18 GETIMPORT                        R10 K9 [Enum.KeyInterpolationMode.Cubic]
       20 SETTABLEKS                       R10 R9 K4 ["InterpolationMode"]
       22 SETTABLE                         R9 R3 R7
       23 FORGLOOP                         R4 2 ; [-16]
       25 GETIMPORT                        R4 K11 [table.sort]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 0
       29 DUPTABLE                         R4 K17 [{"IsCurveTrack", "Type", "Keyframes", "Data", "Instance"}]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K12 ["IsCurveTrack"]
       33 SETTABLEKS                       R0 R4 K13 ["Type"]
       35 SETTABLEKS                       R2 R4 K14 ["Keyframes"]
       37 SETTABLEKS                       R3 R4 K15 ["Data"]
       39 LOADK                            R5 K18 ["Root"]
       40 SETTABLEKS                       R5 R4 K16 ["Instance"]
       42 RETURN                           R4 1

PROTO_3:
        0 DUPTABLE                         R0 K4 [{"IsCurveTrack", "Type", "Components", "Instance"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["IsCurveTrack"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K5 ["TRACK_TYPES"]
        7 GETTABLEKS                       R1 R1 K6 ["CFrame"]
        9 SETTABLEKS                       R1 R0 K1 ["Type"]
       11 DUPTABLE                         R1 K9 [{"Position", "Rotation"}]
       12 DUPTABLE                         R2 K10 [{"IsCurveTrack", "Type", "Components"}]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K0 ["IsCurveTrack"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["TRACK_TYPES"]
       19 GETTABLEKS                       R3 R3 K7 ["Position"]
       21 SETTABLEKS                       R3 R2 K1 ["Type"]
       23 DUPTABLE                         R3 K14 [{"X", "Y", "Z"}]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K15 ["makeCurveTrack"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["TRACK_TYPES"]
       30 GETTABLEKS                       R5 R5 K16 ["Number"]
       32 NEWTABLE                         R6 0 0
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K11 ["X"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K15 ["makeCurveTrack"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K5 ["TRACK_TYPES"]
       43 GETTABLEKS                       R5 R5 K16 ["Number"]
       45 NEWTABLE                         R6 0 0
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K12 ["Y"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K15 ["makeCurveTrack"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K5 ["TRACK_TYPES"]
       56 GETTABLEKS                       R5 R5 K16 ["Number"]
       58 NEWTABLE                         R6 0 0
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K13 ["Z"]
       63 SETTABLEKS                       R3 R2 K2 ["Components"]
       65 SETTABLEKS                       R2 R1 K7 ["Position"]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K15 ["makeCurveTrack"]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K5 ["TRACK_TYPES"]
       73 GETTABLEKS                       R3 R3 K17 ["Quaternion"]
       75 NEWTABLE                         R4 2 0
       77 GETIMPORT                        R5 K19 [CFrame.fromEulerAngles]
       79 LOADN                            R6 0
       80 LOADN                            R7 0
       81 LOADK                            R8 K20 [2.96705972839036]
       82 GETIMPORT                        R9 K24 [Enum.RotationOrder.XYZ]
       84 CALL                             R5 4 1
       85 SETTABLEN                        R5 R4 100
       86 GETIMPORT                        R5 K19 [CFrame.fromEulerAngles]
       88 LOADN                            R6 0
       89 LOADN                            R7 0
       90 LOADK                            R8 K25 [-2.96705972839036]
       91 GETIMPORT                        R9 K24 [Enum.RotationOrder.XYZ]
       93 CALL                             R5 4 1
       94 SETTABLEN                        R5 R4 200
       95 CALL                             R2 2 1
       96 SETTABLEKS                       R2 R1 K8 ["Rotation"]
       98 SETTABLEKS                       R1 R0 K2 ["Components"]
      100 LOADK                            R1 K26 ["Root"]
      101 SETTABLEKS                       R1 R0 K3 ["Instance"]
      103 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animationData"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["Metadata"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["IsChannelAnimation"]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R1 K3 ["Instances"]
       15 GETTABLEKS                       R7 R7 K4 ["Root"]
       17 GETTABLEKS                       R7 R7 K5 ["Tracks"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K6 ["makeCFrameTrack"]
       22 CALL                             R8 0 1
       23 SETTABLE                         R8 R7 R6
       24 FORGLOOP                         R2 2 ; [-12]
       26 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R3 0 1
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["thunkMiddleware"]
        5 SETLIST                          R3 R4 1 [1]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["Store"]
       10 GETTABLEKS                       R4 R4 K2 ["new"]
       12 GETUPVAL                         R5 1
       13 LOADNIL                          R6
       14 MOVE                             R7 R3
       15 CALL                             R4 3 1
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R1
       18 CALL                             R7 1 -1
       19 NAMECALL                         R5 R4 K3 ["dispatch"]
       21 CALL                             R5 -1 0
       22 GETUPVAL                         R7 3
       23 MOVE                             R8 R0
       24 MOVE                             R9 R2
       25 CALL                             R7 2 -1
       26 NAMECALL                         R5 R4 K3 ["dispatch"]
       28 CALL                             R5 -1 0
       29 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Templates"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R0 K4 ["Src"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K7 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Packages"]
       32 GETTABLEKS                       R6 R6 K12 ["Rodux"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K7 [require]
       37 GETTABLEKS                       R7 R0 K4 ["Src"]
       39 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       41 GETTABLEKS                       R7 R7 K14 ["MainReducer"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R0 K4 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Actions"]
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R7 K16 ["SetRootInstance"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R0 K4 ["Src"]
       55 GETTABLEKS                       R9 R9 K17 ["Thunks"]
       57 GETIMPORT                        R10 K7 [require]
       59 GETTABLEKS                       R11 R9 K18 ["LoadAnimationData"]
       61 CALL                             R10 1 1
       62 NEWTABLE                         R11 8 0
       64 DUPCLOSURE                       R12 K19 [PROTO_0]
       65 SETTABLEKS                       R12 R11 K20 ["makeRigFromSkeleton"]
       67 DUPCLOSURE                       R12 K21 [PROTO_1]
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R12 R11 K22 ["makeMockSkeleton"]
       71 DUPCLOSURE                       R12 K23 [PROTO_2]
       72 SETTABLEKS                       R12 R11 K24 ["makeCurveTrack"]
       74 DUPCLOSURE                       R12 K25 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R11
       77 SETTABLEKS                       R12 R11 K26 ["makeCFrameTrack"]
       79 DUPCLOSURE                       R12 K27 [PROTO_4]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R11
       82 SETTABLEKS                       R12 R11 K28 ["makeCurveAnimation"]
       84 DUPCLOSURE                       R12 K29 [PROTO_5]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R12 R11 K30 ["createTestStore"]
       91 RETURN                           R11 1
