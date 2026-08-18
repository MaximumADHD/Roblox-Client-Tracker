PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K3 ["FloatCurve"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R1 K5 ["Name"]
       10 ORK                              R3 R4 K4 ["TestFloatCurve"]
       11 SETTABLEKS                       R3 R2 K5 ["Name"]
       13 NEWTABLE                         R3 0 3
       15 GETIMPORT                        R6 K7 [FloatCurveKey.new]
       17 LOADN                            R7 0
       18 LOADN                            R8 0
       19 GETIMPORT                        R9 K11 [Enum.KeyInterpolationMode.Cubic]
       21 CALL                             R6 3 1
       22 GETIMPORT                        R7 K7 [FloatCurveKey.new]
       24 LOADN                            R8 1
       25 LOADN                            R9 1
       26 GETIMPORT                        R10 K11 [Enum.KeyInterpolationMode.Cubic]
       28 CALL                             R7 3 1
       29 GETIMPORT                        R8 K7 [FloatCurveKey.new]
       31 LOADN                            R9 2
       32 LOADN                            R10 0
       33 GETIMPORT                        R11 K11 [Enum.KeyInterpolationMode.Cubic]
       35 CALL                             R8 3 -1
       36 SETLIST                          R3 R6 -1 [1]
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 MOVE                             R10 R7
       42 NAMECALL                         R8 R2 K12 ["InsertKey"]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-5]
       47 GETTABLEKS                       R3 R1 K13 ["Parent"]
       49 SETTABLEKS                       R3 R2 K13 ["Parent"]
       51 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["RotationCurve"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Rotation"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       10 DUPTABLE                         R2 K9 [{["Name"] = "X", ["Parent"]}]
       11 SETTABLEKS                       R0 R2 K8 ["Parent"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       17 DUPTABLE                         R2 K11 [{["Name"] = "Y", ["Parent"]}]
       18 SETTABLEKS                       R0 R2 K8 ["Parent"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       24 DUPTABLE                         R2 K13 [{["Name"] = "Z", ["Parent"]}]
       25 SETTABLEKS                       R0 R2 K8 ["Parent"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Vector3Curve"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Position"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       10 DUPTABLE                         R2 K9 [{["Name"] = "X", ["Parent"]}]
       11 SETTABLEKS                       R0 R2 K8 ["Parent"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       17 DUPTABLE                         R2 K11 [{["Name"] = "Y", ["Parent"]}]
       18 SETTABLEKS                       R0 R2 K8 ["Parent"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["makeFloatCurve"]
       24 DUPTABLE                         R2 K13 [{["Name"] = "Z", ["Parent"]}]
       25 SETTABLEKS                       R0 R2 K8 ["Parent"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["CurveAnimation"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["TestCurveAnimation"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K6 ["makeRotationCurve"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R0 R1 K7 ["Parent"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K8 ["makePositionCurve"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R0 R2 K7 ["Parent"]
       19 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TestAssets"]
        3 GETTABLEKS                       R0 R0 K1 ["AttackAnimationCurve"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TestAssets"]
        3 GETTABLEKS                       R0 R0 K1 ["TestRig"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K3 ["HumanoidRootPart"]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K4 ["Anchored"]
       13 GETTABLEKS                       R1 R0 K5 ["Humanoid"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["getOrCreateAnimSavesFolder"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K7 ["mockAttackCurveAnimation"]
       23 CALL                             R3 0 1
       24 SETTABLEKS                       R2 R3 K8 ["Parent"]
       26 GETUPVAL                         R4 3
       27 SETTABLEKS                       R4 R0 K8 ["Parent"]
       29 DUPTABLE                         R4 K13 [{"character", "humanoid", "curveAnimation", "destroy"}]
       30 SETTABLEKS                       R0 R4 K9 ["character"]
       32 SETTABLEKS                       R1 R4 K10 ["humanoid"]
       34 SETTABLEKS                       R3 R4 K11 ["curveAnimation"]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K12 ["destroy"]
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ServerStorage"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Workspace"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["Rig"]
       25 GETTABLEKS                       R4 R4 K13 ["AnimationRigDataUtils"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 SETTABLEKS                       R5 R4 K15 ["makeFloatCurve"]
       33 DUPCLOSURE                       R5 K16 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R5 R4 K17 ["makeRotationCurve"]
       37 DUPCLOSURE                       R5 K18 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R4 K19 ["makePositionCurve"]
       41 DUPCLOSURE                       R5 K20 [PROTO_3]
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R5 R4 K21 ["makeCurveAnimationWithRotationAndPositionCurve"]
       45 DUPCLOSURE                       R5 K22 [PROTO_4]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R4 K23 ["mockAttackCurveAnimation"]
       49 DUPCLOSURE                       R5 K24 [PROTO_6]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R4 K25 ["mockAnimSavesCharacter"]
       56 RETURN                           R4 1
