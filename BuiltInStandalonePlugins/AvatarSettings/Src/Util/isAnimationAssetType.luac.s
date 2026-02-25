PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R2 K3 [Enum.AssetType.Animation]
        5 GETTABLEKS                       R1 R2 K4 ["Value"]
        7 LOADB                            R2 1
        8 SETTABLE                         R2 R0 R1
        9 GETIMPORT                        R2 K6 [Enum.AssetType.RunAnimation]
       11 GETTABLEKS                       R1 R2 K4 ["Value"]
       13 LOADB                            R2 1
       14 SETTABLE                         R2 R0 R1
       15 GETIMPORT                        R2 K8 [Enum.AssetType.WalkAnimation]
       17 GETTABLEKS                       R1 R2 K4 ["Value"]
       19 LOADB                            R2 1
       20 SETTABLE                         R2 R0 R1
       21 GETIMPORT                        R2 K10 [Enum.AssetType.FallAnimation]
       23 GETTABLEKS                       R1 R2 K4 ["Value"]
       25 LOADB                            R2 1
       26 SETTABLE                         R2 R0 R1
       27 GETIMPORT                        R2 K12 [Enum.AssetType.JumpAnimation]
       29 GETTABLEKS                       R1 R2 K4 ["Value"]
       31 LOADB                            R2 1
       32 SETTABLE                         R2 R0 R1
       33 GETIMPORT                        R2 K14 [Enum.AssetType.IdleAnimation]
       35 GETTABLEKS                       R1 R2 K4 ["Value"]
       37 LOADB                            R2 1
       38 SETTABLE                         R2 R0 R1
       39 GETIMPORT                        R2 K16 [Enum.AssetType.SwimAnimation]
       41 GETTABLEKS                       R1 R2 K4 ["Value"]
       43 LOADB                            R2 1
       44 SETTABLE                         R2 R0 R1
       45 GETIMPORT                        R2 K18 [Enum.AssetType.ClimbAnimation]
       47 GETTABLEKS                       R1 R2 K4 ["Value"]
       49 LOADB                            R2 1
       50 SETTABLE                         R2 R0 R1
       51 GETIMPORT                        R2 K20 [Enum.AssetType.MoodAnimation]
       53 GETTABLEKS                       R1 R2 K4 ["Value"]
       55 LOADB                            R2 1
       56 SETTABLE                         R2 R0 R1
       57 DUPCLOSURE                       R1 K21 [PROTO_0]
       58 CAPTURE                          VAL R0
       59 RETURN                           R1 1
