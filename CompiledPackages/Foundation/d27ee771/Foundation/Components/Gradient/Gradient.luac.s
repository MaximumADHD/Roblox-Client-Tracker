PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["UIGradient"]
        4 DUPTABLE                         R3 K4 [{"Rotation", "Transparency"}]
        5 GETTABLEKS                       R5 R0 K5 ["fillDirection"]
        7 GETIMPORT                        R6 K9 [Enum.FillDirection.Vertical]
        9 JUMPIFNOTEQ                      R5 R6 ; [+3]
       11 LOADN                            R4 90
       12 JUMP                             ; [+1]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K2 ["Rotation"]
       16 GETIMPORT                        R4 K12 [NumberSequence.new]
       18 NEWTABLE                         R5 0 4
       20 GETIMPORT                        R6 K14 [NumberSequenceKeypoint.new]
       22 LOADN                            R7 0
       23 GETTABLEKS                       R9 R0 K15 ["top"]
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADN                            R8 0
       27 JUMP                             ; [+1]
       28 LOADN                            R8 1
       29 CALL                             R6 2 1
       30 GETIMPORT                        R7 K14 [NumberSequenceKeypoint.new]
       32 LOADK                            R8 K16 [0.5]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K17 ["FoundationDialogHeroMediaGradientFix"]
       36 JUMPIFNOT                        R10 ; [+7]
       37 GETTABLEKS                       R10 R0 K15 ["top"]
       39 JUMPIFNOT                        R10 ; [+2]
       40 LOADN                            R9 0
       41 JUMP                             ; [+3]
       42 LOADN                            R9 1
       43 JUMP                             ; [+1]
       44 LOADN                            R9 0
       45 CALL                             R7 2 1
       46 GETIMPORT                        R8 K14 [NumberSequenceKeypoint.new]
       48 LOADK                            R9 K18 [0.50001]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K17 ["FoundationDialogHeroMediaGradientFix"]
       52 JUMPIFNOT                        R11 ; [+7]
       53 GETTABLEKS                       R11 R0 K15 ["top"]
       55 JUMPIFNOT                        R11 ; [+2]
       56 LOADN                            R10 1
       57 JUMP                             ; [+3]
       58 LOADN                            R10 0
       59 JUMP                             ; [+1]
       60 LOADN                            R10 0
       61 CALL                             R8 2 1
       62 GETIMPORT                        R9 K14 [NumberSequenceKeypoint.new]
       64 LOADN                            R10 1
       65 GETTABLEKS                       R12 R0 K15 ["top"]
       67 JUMPIFNOT                        R12 ; [+2]
       68 LOADN                            R11 1
       69 JUMP                             ; [+1]
       70 LOADN                            R11 0
       71 CALL                             R9 2 -1
       72 SETLIST                          R5 R6 -1 [1]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K3 ["Transparency"]
       77 CALL                             R1 2 -1
       78 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 RETURN                           R4 1
