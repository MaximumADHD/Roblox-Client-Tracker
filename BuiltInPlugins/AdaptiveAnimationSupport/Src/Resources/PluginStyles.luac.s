MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 6
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".WireAdorn"]
       26 DUPTABLE                         R7 K16 [{["Color"] = "$Color.Extended.Gray.Gray_600", ["Transparency"] = 0}]
       27 CALL                             R5 2 1
       28 MOVE                             R6 R2
       29 LOADK                            R7 K17 [".Selected"]
       30 DUPTABLE                         R8 K20 [{["Color"] = "$Color.Selection.Start", ["Transparency"] = 0.5}]
       31 CALL                             R6 2 1
       32 MOVE                             R7 R2
       33 LOADK                            R8 K21 [".Assigned"]
       34 DUPTABLE                         R9 K23 [{["Color"] = "$Color.Extended.Orange.Orange_800", ["Transparency"] = 0.5}]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K24 [".AssignedHover"]
       38 DUPTABLE                         R10 K26 [{["Color"] = "$Color.Extended.Orange.Orange_1100", ["Transparency"] = 0.5}]
       39 CALL                             R8 2 1
       40 MOVE                             R9 R2
       41 LOADK                            R10 K27 [".NotAssigned"]
       42 DUPTABLE                         R11 K29 [{["Color"] = "$Mist_800", ["Transparency"] = 0.5}]
       43 CALL                             R9 2 1
       44 MOVE                             R10 R2
       45 LOADK                            R11 K30 [".NotAssignedHover"]
       46 DUPTABLE                         R12 K32 [{["Color"] = "$Mist_1100", ["Transparency"] = 0.5}]
       47 CALL                             R10 2 -1
       48 SETLIST                          R4 R5 -1 [1]
       50 DUPTABLE                         R5 K35 [{"Mist_800", "Mist_1100"}]
       51 GETIMPORT                        R6 K38 [Color3.fromRGB]
       53 LOADN                            R7 128
       54 LOADN                            R8 137
       55 LOADN                            R9 172
       56 CALL                             R6 3 1
       57 SETTABLEKS                       R6 R5 K33 ["Mist_800"]
       59 GETIMPORT                        R6 K38 [Color3.fromRGB]
       61 LOADN                            R7 196
       62 LOADN                            R8 201
       63 LOADN                            R9 217
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K34 ["Mist_1100"]
       67 MOVE                             R6 R3
       68 LOADK                            R7 K2 ["AdaptiveAnimationSupport"]
       69 MOVE                             R8 R4
       70 MOVE                             R9 R5
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1
