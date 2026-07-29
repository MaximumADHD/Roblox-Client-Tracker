PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MULK                             R4 R0 K5 [2]
        3 MODK                             R3 R4 K4 [3]
        4 SUBK                             R2 R3 K3 [1.5]
        5 LOADN                            R3 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useClock"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R4 R2 K1 ["reducedMotion"]
       10 JUMPIF                           R4 ; [+50]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 LOADK                            R4 K3 ["UIGradient"]
       15 DUPTABLE                         R5 K9 [{["Color"], ["Transparency"], ["Offset"], ["Rotation"] = 15}]
       16 GETIMPORT                        R6 K12 [ColorSequence.new]
       18 GETTABLEKS                       R7 R1 K4 ["Color"]
       20 GETTABLEKS                       R7 R7 K13 ["Content"]
       22 GETTABLEKS                       R7 R7 K14 ["Emphasis"]
       24 GETTABLEKS                       R7 R7 K15 ["Color3"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K4 ["Color"]
       29 GETIMPORT                        R6 K17 [NumberSequence.new]
       31 NEWTABLE                         R7 0 3
       33 GETIMPORT                        R8 K19 [NumberSequenceKeypoint.new]
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 CALL                             R8 2 1
       38 GETIMPORT                        R9 K19 [NumberSequenceKeypoint.new]
       40 LOADK                            R10 K20 [0.5]
       41 LOADN                            R11 1
       42 CALL                             R9 2 1
       43 GETIMPORT                        R10 K19 [NumberSequenceKeypoint.new]
       45 LOADN                            R11 1
       46 LOADN                            R12 0
       47 CALL                             R10 2 -1
       48 SETLIST                          R7 R8 -1 [1]
       50 CALL                             R6 1 1
       51 SETTABLEKS                       R6 R5 K5 ["Transparency"]
       53 DUPCLOSURE                       R8 K21 [PROTO_0]
       54 NAMECALL                         R6 R0 K22 ["map"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K6 ["Offset"]
       59 CALL                             R3 2 1
       60 RETURN                           R3 1
       61 LOADNIL                          R3
       62 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["usePreferences"]
       32 GETTABLEKS                       R5 R3 K10 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       36 DUPCLOSURE                       R6 K13 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 GETTABLEKS                       R7 R1 K14 ["memo"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 -1
       45 RETURN                           R7 -1
