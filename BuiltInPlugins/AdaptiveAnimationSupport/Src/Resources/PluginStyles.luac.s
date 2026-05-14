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
       26 DUPTABLE                         R7 K14 [{"Color", "Transparency"}]
       27 LOADK                            R8 K15 ["$Color.Extended.Gray.Gray_600"]
       28 SETTABLEKS                       R8 R7 K12 ["Color"]
       30 LOADN                            R8 0
       31 SETTABLEKS                       R8 R7 K13 ["Transparency"]
       33 CALL                             R5 2 1
       34 MOVE                             R6 R2
       35 LOADK                            R7 K16 [".Selected"]
       36 DUPTABLE                         R8 K14 [{"Color", "Transparency"}]
       37 LOADK                            R9 K17 ["$Color.Selection.Start"]
       38 SETTABLEKS                       R9 R8 K12 ["Color"]
       40 LOADK                            R9 K18 [0.5]
       41 SETTABLEKS                       R9 R8 K13 ["Transparency"]
       43 CALL                             R6 2 1
       44 MOVE                             R7 R2
       45 LOADK                            R8 K19 [".Assigned"]
       46 DUPTABLE                         R9 K14 [{"Color", "Transparency"}]
       47 LOADK                            R10 K20 ["$Color.Extended.Orange.Orange_800"]
       48 SETTABLEKS                       R10 R9 K12 ["Color"]
       50 LOADK                            R10 K18 [0.5]
       51 SETTABLEKS                       R10 R9 K13 ["Transparency"]
       53 CALL                             R7 2 1
       54 MOVE                             R8 R2
       55 LOADK                            R9 K21 [".AssignedHover"]
       56 DUPTABLE                         R10 K14 [{"Color", "Transparency"}]
       57 LOADK                            R11 K22 ["$Color.Extended.Orange.Orange_1100"]
       58 SETTABLEKS                       R11 R10 K12 ["Color"]
       60 LOADK                            R11 K18 [0.5]
       61 SETTABLEKS                       R11 R10 K13 ["Transparency"]
       63 CALL                             R8 2 1
       64 MOVE                             R9 R2
       65 LOADK                            R10 K23 [".NotAssigned"]
       66 DUPTABLE                         R11 K14 [{"Color", "Transparency"}]
       67 LOADK                            R12 K24 ["$Mist_800"]
       68 SETTABLEKS                       R12 R11 K12 ["Color"]
       70 LOADK                            R12 K18 [0.5]
       71 SETTABLEKS                       R12 R11 K13 ["Transparency"]
       73 CALL                             R9 2 1
       74 MOVE                             R10 R2
       75 LOADK                            R11 K25 [".NotAssignedHover"]
       76 DUPTABLE                         R12 K14 [{"Color", "Transparency"}]
       77 LOADK                            R13 K26 ["$Mist_1100"]
       78 SETTABLEKS                       R13 R12 K12 ["Color"]
       80 LOADK                            R13 K18 [0.5]
       81 SETTABLEKS                       R13 R12 K13 ["Transparency"]
       83 CALL                             R10 2 -1
       84 SETLIST                          R4 R5 -1 [1]
       86 DUPTABLE                         R5 K29 [{"Mist_800", "Mist_1100"}]
       87 GETIMPORT                        R6 K32 [Color3.fromRGB]
       89 LOADN                            R7 128
       90 LOADN                            R8 137
       91 LOADN                            R9 172
       92 CALL                             R6 3 1
       93 SETTABLEKS                       R6 R5 K27 ["Mist_800"]
       95 GETIMPORT                        R6 K32 [Color3.fromRGB]
       97 LOADN                            R7 196
       98 LOADN                            R8 201
       99 LOADN                            R9 217
      100 CALL                             R6 3 1
      101 SETTABLEKS                       R6 R5 K28 ["Mist_1100"]
      103 MOVE                             R6 R3
      104 LOADK                            R7 K2 ["AdaptiveAnimationSupport"]
      105 MOVE                             R8 R4
      106 MOVE                             R9 R5
      107 CALL                             R6 3 -1
      108 RETURN                           R6 -1
