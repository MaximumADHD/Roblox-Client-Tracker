MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K2 [Color3.fromRGB]
        5 LOADN                            R2 66
        6 LOADN                            R3 66
        7 LOADN                            R4 66
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K3 ["DarkGrey2"]
       11 GETIMPORT                        R1 K2 [Color3.fromRGB]
       13 LOADN                            R2 60
       14 LOADN                            R3 60
       15 LOADN                            R4 60
       16 CALL                             R1 3 1
       17 SETTABLEKS                       R1 R0 K4 ["DarkGrey"]
       19 GETIMPORT                        R1 K2 [Color3.fromRGB]
       21 LOADN                            R2 255
       22 LOADN                            R3 255
       23 LOADN                            R4 255
       24 CALL                             R1 3 1
       25 SETTABLEKS                       R1 R0 K5 ["White"]
       27 GETIMPORT                        R1 K2 [Color3.fromRGB]
       29 LOADN                            R2 0
       30 LOADN                            R3 0
       31 LOADN                            R4 0
       32 CALL                             R1 3 1
       33 SETTABLEKS                       R1 R0 K6 ["Black"]
       35 GETIMPORT                        R1 K2 [Color3.fromRGB]
       37 LOADN                            R2 160
       38 LOADN                            R3 160
       39 LOADN                            R4 160
       40 CALL                             R1 3 1
       41 SETTABLEKS                       R1 R0 K7 ["DefaultColor"]
       43 GETIMPORT                        R1 K2 [Color3.fromRGB]
       45 LOADN                            R2 0
       46 LOADN                            R3 0
       47 LOADN                            R4 0
       48 CALL                             R1 3 1
       49 SETTABLEKS                       R1 R0 K8 ["TitleText"]
       51 GETTABLEKS                       R1 R0 K7 ["DefaultColor"]
       53 SETTABLEKS                       R1 R0 K9 ["BodyText"]
       55 RETURN                           R0 1
