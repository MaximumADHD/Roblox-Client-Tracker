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
        1 CALL                             R0 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        5 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K0 ["Hooks"]
       11 GETTABLEKS                       R2 R3 K2 ["usePreferences"]
       13 CALL                             R2 0 1
       14 GETTABLEKS                       R4 R2 K3 ["reducedMotion"]
       16 JUMPIF                           R4 ; [+51]
       17 GETUPVAL                         R3 2
       18 LOADK                            R4 K4 ["UIGradient"]
       19 DUPTABLE                         R5 K9 [{"Color", "Transparency", "Offset", "Rotation"}]
       20 GETIMPORT                        R6 K12 [ColorSequence.new]
       22 GETTABLEKS                       R10 R1 K5 ["Color"]
       24 GETTABLEKS                       R9 R10 K13 ["Content"]
       26 GETTABLEKS                       R8 R9 K14 ["Emphasis"]
       28 GETTABLEKS                       R7 R8 K15 ["Color3"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K5 ["Color"]
       33 GETIMPORT                        R6 K17 [NumberSequence.new]
       35 NEWTABLE                         R7 0 3
       37 GETIMPORT                        R8 K19 [NumberSequenceKeypoint.new]
       39 LOADN                            R9 0
       40 LOADN                            R10 0
       41 CALL                             R8 2 1
       42 GETIMPORT                        R9 K19 [NumberSequenceKeypoint.new]
       44 LOADK                            R10 K20 [0.5]
       45 LOADN                            R11 1
       46 CALL                             R9 2 1
       47 GETIMPORT                        R10 K19 [NumberSequenceKeypoint.new]
       49 LOADN                            R11 1
       50 LOADN                            R12 0
       51 CALL                             R10 2 -1
       52 SETLIST                          R7 R8 -1 [1]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K6 ["Transparency"]
       57 DUPCLOSURE                       R8 K21 [PROTO_0]
       58 NAMECALL                         R6 R0 K22 ["map"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["Offset"]
       63 LOADN                            R6 15
       64 SETTABLEKS                       R6 R5 K8 ["Rotation"]
       66 CALL                             R3 2 1
       67 RETURN                           R3 1
       68 LOADNIL                          R3
       69 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["createElement"]
       30 GETTABLEKS                       R5 R3 K11 ["useClock"]
       32 DUPCLOSURE                       R6 K12 [PROTO_1]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 GETTABLEKS                       R7 R2 K13 ["memo"]
       38 GETTABLEKS                       R8 R2 K14 ["forwardRef"]
       40 MOVE                             R9 R6
       41 CALL                             R8 1 -1
       42 CALL                             R7 -1 -1
       43 RETURN                           R7 -1
