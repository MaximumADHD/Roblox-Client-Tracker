MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K13 [{"sqrt3on2", "radiusOfStructure", "viewportSize", "spsToFudgedMps", "numBones", "windScaleFactor", "cameraDistance", "maxDtsToAvg", "animationTime", "selectRingXZDistance", "dragDelta", "planeTestRayLength", "inverseStandardGravity"}]
        2 LOADK                            R1 K14 [0.866025]
        3 SETTABLEKS                       R1 R0 K0 ["sqrt3on2"]
        5 LOADK                            R1 K15 [0.25]
        6 SETTABLEKS                       R1 R0 K1 ["radiusOfStructure"]
        8 LOADN                            R1 232
        9 SETTABLEKS                       R1 R0 K2 ["viewportSize"]
       11 LOADK                            R1 K16 [0.28]
       12 SETTABLEKS                       R1 R0 K3 ["spsToFudgedMps"]
       14 LOADN                            R1 6
       15 SETTABLEKS                       R1 R0 K4 ["numBones"]
       17 LOADN                            R1 10
       18 SETTABLEKS                       R1 R0 K5 ["windScaleFactor"]
       20 LOADN                            R1 3
       21 SETTABLEKS                       R1 R0 K6 ["cameraDistance"]
       23 LOADN                            R1 10
       24 SETTABLEKS                       R1 R0 K7 ["maxDtsToAvg"]
       26 LOADK                            R1 K17 [0.2]
       27 SETTABLEKS                       R1 R0 K8 ["animationTime"]
       29 LOADK                            R1 K18 [-0.5]
       30 SETTABLEKS                       R1 R0 K9 ["selectRingXZDistance"]
       32 LOADN                            R1 0
       33 SETTABLEKS                       R1 R0 K10 ["dragDelta"]
       35 LOADN                            R1 244
       36 SETTABLEKS                       R1 R0 K11 ["planeTestRayLength"]
       38 LOADK                            R1 K19 [0.0101936]
       39 SETTABLEKS                       R1 R0 K12 ["inverseStandardGravity"]
       41 RETURN                           R0 1
