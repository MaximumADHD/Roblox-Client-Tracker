PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Icon"]
        4 DUPTABLE                         R2 K7 [{"name", "size", "variant", "style", "Position", "AnchorPoint"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K8 ["X"]
        8 SETTABLEKS                       R3 R2 K1 ["name"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K9 ["XSmall"]
       13 SETTABLEKS                       R3 R2 K2 ["size"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K10 ["emphasis"]
       18 JUMPIFNOT                        R4 ; [+4]
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K11 ["Filled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K3 ["variant"]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K10 ["emphasis"]
       29 JUMPIFNOT                        R4 ; [+8]
       30 GETUPVAL                         R3 6
       31 GETTABLEKS                       R3 R3 K12 ["DarkMode"]
       33 GETTABLEKS                       R3 R3 K13 ["Content"]
       35 GETTABLEKS                       R3 R3 K14 ["Emphasis"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K4 ["style"]
       41 GETIMPORT                        R3 K17 [UDim2.fromScale]
       43 LOADK                            R4 K18 [0.5]
       44 LOADK                            R5 K18 [0.5]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K5 ["Position"]
       48 GETIMPORT                        R3 K21 [Vector2.new]
       50 LOADK                            R4 K18 [0.5]
       51 LOADK                            R5 K18 [0.5]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K6 ["AnchorPoint"]
       55 CALL                             R0 2 -1
       56 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{"clickableViewProps", "affordanceViewProps", "onActivated", "LayoutOrder", "Visible"}]
        5 DUPTABLE                         R5 K7 [{"tag"}]
        6 LOADK                            R6 K8 ["size-600-600"]
        7 SETTABLEKS                       R6 R5 K6 ["tag"]
        9 SETTABLEKS                       R5 R4 K0 ["clickableViewProps"]
       11 DUPTABLE                         R5 K7 [{"tag"}]
       12 LOADK                            R6 K9 ["size-400-400 position-center-center anchor-center-center radius-circle"]
       13 SETTABLEKS                       R6 R5 K6 ["tag"]
       15 SETTABLEKS                       R5 R4 K1 ["affordanceViewProps"]
       17 GETTABLEKS                       R5 R0 K10 ["onClose"]
       19 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       21 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       23 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       25 GETTABLEKS                       R5 R0 K4 ["Visible"]
       27 SETTABLEKS                       R5 R4 K4 ["Visible"]
       29 DUPTABLE                         R5 K12 [{"CloseIcon"}]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K13 ["useMemo"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R8 0 2
       43 GETTABLEKS                       R9 R0 K14 ["emphasis"]
       45 MOVE                             R10 R1
       46 SETLIST                          R8 R9 2 [1]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K11 ["CloseIcon"]
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyRows"]
       25 GETTABLEKS                       R5 R5 K11 ["SeparatedView"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K12 ["createElement"]
       30 GETTABLEKS                       R6 R2 K13 ["Enums"]
       32 GETTABLEKS                       R6 R6 K14 ["IconName"]
       34 GETTABLEKS                       R7 R2 K13 ["Enums"]
       36 GETTABLEKS                       R7 R7 K15 ["IconSize"]
       38 GETTABLEKS                       R8 R2 K13 ["Enums"]
       40 GETTABLEKS                       R8 R8 K16 ["IconVariant"]
       42 GETTABLEKS                       R9 R2 K17 ["Hooks"]
       44 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       46 DUPCLOSURE                       R10 K19 [PROTO_1]
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 RETURN                           R10 1
