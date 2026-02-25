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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       10 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       11 LOADK                            R3 K9 ["X"]
       12 SETTABLEKS                       R3 R2 K5 ["Name"]
       14 SETTABLEKS                       R0 R2 K7 ["Parent"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       20 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       21 LOADK                            R3 K10 ["Y"]
       22 SETTABLEKS                       R3 R2 K5 ["Name"]
       24 SETTABLEKS                       R0 R2 K7 ["Parent"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       30 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       31 LOADK                            R3 K11 ["Z"]
       32 SETTABLEKS                       R3 R2 K5 ["Name"]
       34 SETTABLEKS                       R0 R2 K7 ["Parent"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Vector3Curve"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Position"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       10 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       11 LOADK                            R3 K9 ["X"]
       12 SETTABLEKS                       R3 R2 K5 ["Name"]
       14 SETTABLEKS                       R0 R2 K7 ["Parent"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       20 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       21 LOADK                            R3 K10 ["Y"]
       22 SETTABLEKS                       R3 R2 K5 ["Name"]
       24 SETTABLEKS                       R0 R2 K7 ["Parent"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K6 ["makeFloatCurve"]
       30 DUPTABLE                         R2 K8 [{"Name", "Parent"}]
       31 LOADK                            R3 K11 ["Z"]
       32 SETTABLEKS                       R3 R2 K5 ["Name"]
       34 SETTABLEKS                       R0 R2 K7 ["Parent"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["CurveAnimation"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["TestCurveAnimation"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K6 ["makeRotationCurve"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R0 R1 K7 ["Parent"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K8 ["makePositionCurve"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R0 R2 K7 ["Parent"]
       19 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TestAssets"]
        3 GETTABLEKS                       R0 R1 K1 ["AttackAnimationCurve"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TestAssets"]
        3 GETTABLEKS                       R0 R1 K1 ["TestRig"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K3 ["HumanoidRootPart"]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K4 ["Anchored"]
       13 GETTABLEKS                       R1 R0 K5 ["Humanoid"]
       15 GETIMPORT                        R2 K8 [Instance.new]
       17 LOADK                            R3 K9 ["ObjectValue"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K10 ["AnimSaves"]
       20 SETTABLEKS                       R3 R2 K11 ["Name"]
       22 SETTABLEKS                       R0 R2 K12 ["Value"]
       24 GETIMPORT                        R3 K8 [Instance.new]
       26 LOADK                            R4 K9 ["ObjectValue"]
       27 CALL                             R3 1 1
       28 LOADK                            R4 K10 ["AnimSaves"]
       29 SETTABLEKS                       R4 R3 K11 ["Name"]
       31 SETTABLEKS                       R2 R3 K12 ["Value"]
       33 SETTABLEKS                       R0 R3 K13 ["Parent"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K14 ["mockAttackCurveAnimation"]
       38 CALL                             R4 0 1
       39 SETTABLEKS                       R2 R4 K13 ["Parent"]
       41 GETUPVAL                         R5 0
       42 SETTABLEKS                       R5 R2 K13 ["Parent"]
       44 GETUPVAL                         R5 2
       45 SETTABLEKS                       R5 R0 K13 ["Parent"]
       47 DUPTABLE                         R5 K19 [{"character", "humanoid", "curveAnimation", "destroy"}]
       48 SETTABLEKS                       R0 R5 K15 ["character"]
       50 SETTABLEKS                       R1 R5 K16 ["humanoid"]
       52 SETTABLEKS                       R4 R5 K17 ["curveAnimation"]
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R6 R5 K18 ["destroy"]
       59 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ServerStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 8 0
       15 DUPCLOSURE                       R3 K5 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K6 ["makeFloatCurve"]
       18 DUPCLOSURE                       R3 K7 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K8 ["makeRotationCurve"]
       22 DUPCLOSURE                       R3 K9 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K10 ["makePositionCurve"]
       26 DUPCLOSURE                       R3 K11 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K12 ["makeCurveAnimationWithRotationAndPositionCurve"]
       30 DUPCLOSURE                       R3 K13 [PROTO_4]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R3 R2 K14 ["mockAttackCurveAnimation"]
       34 DUPCLOSURE                       R3 K15 [PROTO_6]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R3 R2 K16 ["mockAnimSavesCharacter"]
       40 RETURN                           R2 1
