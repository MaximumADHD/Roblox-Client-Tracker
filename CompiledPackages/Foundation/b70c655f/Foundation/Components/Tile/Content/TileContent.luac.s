PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 5
       12 DUPTABLE                         R6 K6 [{"tag", "flexItem", "padding", "LayoutOrder", "testId"}]
       13 LOADK                            R7 K7 ["size-full col gap-small align-y-top"]
       14 SETTABLEKS                       R7 R6 K1 ["tag"]
       16 DUPTABLE                         R7 K9 [{"FlexMode"}]
       17 GETIMPORT                        R8 K13 [Enum.UIFlexMode.Shrink]
       19 SETTABLEKS                       R8 R7 K8 ["FlexMode"]
       21 SETTABLEKS                       R7 R6 K2 ["flexItem"]
       23 GETTABLEKS                       R8 R3 K14 ["isContained"]
       25 JUMPIFNOT                        R8 ; [+5]
       26 GETTABLEKS                       R8 R2 K15 ["Padding"]
       28 GETTABLEKS                       R7 R8 K16 ["Small"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K3 ["padding"]
       34 GETTABLEKS                       R7 R1 K4 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       38 LOADK                            R8 K17 ["%*--content"]
       39 GETTABLEKS                       R10 R3 K5 ["testId"]
       41 NAMECALL                         R8 R8 K18 ["format"]
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 SETTABLEKS                       R7 R6 K5 ["testId"]
       47 GETTABLEKS                       R7 R1 K19 ["children"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["Tile"]
       27 GETTABLEKS                       R5 R6 K11 ["useTile"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Providers"]
       34 GETTABLEKS                       R7 R8 K13 ["Style"]
       36 GETTABLEKS                       R6 R7 K14 ["useTokens"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K15 ["Utility"]
       43 GETTABLEKS                       R7 R8 K16 ["withDefaults"]
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K18 [{"LayoutOrder"}]
       47 LOADN                            R8 2
       48 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
       50 DUPCLOSURE                       R8 K19 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 RETURN                           R8 1
