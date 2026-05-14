PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        8 JUMPIFNOTEQ                      R2 R3 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["OnClick"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["Selected"]
       16 NOT                              R3 R4
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["Uri"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 8 0
        6 GETTABLEKS                       R4 R0 K2 ["Position"]
        8 SETTABLEKS                       R4 R3 K2 ["Position"]
       10 GETTABLEKS                       R4 R0 K3 ["AnchorPoint"]
       12 SETTABLEKS                       R4 R3 K3 ["AnchorPoint"]
       14 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       16 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Event"]
       21 GETTABLEKS                       R4 R4 K6 ["InputBegan"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["Tag"]
       29 GETUPVAL                         R5 1
       30 LOADK                            R7 K8 ["Component-Toggle data-testid=%*"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R10 R0 K9 ["Uri"]
       34 CALL                             R9 1 1
       35 NAMECALL                         R7 R7 K10 ["format"]
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 GETTABLEKS                       R8 R0 K11 ["Selected"]
       41 JUMPIFNOT                        R8 ; [+2]
       42 LOADK                            R7 K12 ["State-Selected"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R7
       45 GETTABLEKS                       R9 R0 K13 ["Enabled"]
       47 JUMPIF                           R9 ; [+2]
       48 LOADK                            R8 K14 ["State-Disabled"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 GETUPVAL                         R10 3
       52 CALL                             R10 0 1
       53 JUMPIFNOT                        R10 ; [+8]
       54 GETTABLEKS                       R10 R0 K13 ["Enabled"]
       56 JUMPIFNOT                        R10 ; [+5]
       57 GETTABLEKS                       R10 R0 K11 ["Selected"]
       59 JUMPIF                           R10 ; [+2]
       60 LOADK                            R9 K15 ["State-Default"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 CALL                             R5 4 1
       64 SETTABLE                         R5 R3 R4
       65 DUPTABLE                         R4 K17 [{"Knob"}]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K0 ["createElement"]
       69 LOADK                            R6 K1 ["Frame"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K16 ["Knob"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["uriToTestId"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["SharedFlags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagRibbonToggleHoverStateFix"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["Styling"]
       41 GETTABLEKS                       R6 R5 K15 ["joinTags"]
       43 DUPCLOSURE                       R7 K16 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 RETURN                           R7 1
