PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 5
       12 DUPTABLE                         R6 K7 [{["tag"] = "size-full col gap-small align-y-top", ["flexItem"], ["padding"], ["LayoutOrder"], ["testId"]}]
       13 DUPTABLE                         R7 K9 [{"FlexMode"}]
       14 GETIMPORT                        R8 K13 [Enum.UIFlexMode.Shrink]
       16 SETTABLEKS                       R8 R7 K8 ["FlexMode"]
       18 SETTABLEKS                       R7 R6 K3 ["flexItem"]
       20 GETTABLEKS                       R8 R3 K14 ["isContained"]
       22 JUMPIFNOT                        R8 ; [+5]
       23 GETTABLEKS                       R7 R2 K15 ["Padding"]
       25 GETTABLEKS                       R7 R7 K16 ["Small"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K4 ["padding"]
       31 GETTABLEKS                       R7 R1 K5 ["LayoutOrder"]
       33 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       35 LOADK                            R8 K17 ["%*--content"]
       36 GETTABLEKS                       R10 R3 K6 ["testId"]
       38 NAMECALL                         R8 R8 K18 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 SETTABLEKS                       R7 R6 K6 ["testId"]
       44 GETTABLEKS                       R7 R1 K19 ["children"]
       46 CALL                             R4 3 -1
       47 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Tile"]
       20 GETTABLEKS                       R4 R4 K10 ["useTile"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Utility"]
       27 GETTABLEKS                       R5 R5 K12 ["withDefaults"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Providers"]
       34 GETTABLEKS                       R6 R6 K14 ["Style"]
       36 GETTABLEKS                       R6 R6 K15 ["useTokens"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Components"]
       43 GETTABLEKS                       R7 R7 K16 ["View"]
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K19 [{["LayoutOrder"] = 2}]
       47 DUPCLOSURE                       R8 K20 [PROTO_0]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R6
       54 RETURN                           R8 1
