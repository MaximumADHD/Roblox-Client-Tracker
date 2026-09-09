PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        3 JUMPIFNOT                        R2 ; [+27]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+8]
       11 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
       13 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseButton1]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+11]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["OnClick"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["Selected"]
       26 NOT                              R3 R4
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["Uri"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        6 JUMPIFEQKNIL                     R2 ; [+4]
        8 GETTABLEKS                       R1 R0 K0 ["Enabled"]
       10 JUMP                             ; [+1]
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["createElement"]
       15 LOADK                            R3 K2 ["Frame"]
       16 NEWTABLE                         R4 8 0
       18 GETTABLEKS                       R5 R0 K3 ["Position"]
       20 SETTABLEKS                       R5 R4 K3 ["Position"]
       22 GETTABLEKS                       R5 R0 K4 ["AnchorPoint"]
       24 SETTABLEKS                       R5 R4 K4 ["AnchorPoint"]
       26 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       28 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       30 GETUPVAL                         R6 0
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+2]
       33 MOVE                             R5 R1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K6 ["Selectable"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K7 ["Event"]
       41 GETTABLEKS                       R5 R5 K8 ["InputBegan"]
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 SETTABLE                         R6 R4 R5
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K9 ["Tag"]
       51 GETUPVAL                         R6 3
       52 LOADK                            R8 K10 ["Component-Toggle data-testid=%*"]
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R11 R0 K11 ["Uri"]
       56 CALL                             R10 1 1
       57 NAMECALL                         R8 R8 K12 ["format"]
       59 CALL                             R8 2 1
       60 MOVE                             R7 R8
       61 GETTABLEKS                       R9 R0 K13 ["Selected"]
       63 JUMPIFNOT                        R9 ; [+2]
       64 LOADK                            R8 K14 ["State-Selected"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R8
       67 GETTABLEKS                       R10 R0 K0 ["Enabled"]
       69 JUMPIF                           R10 ; [+2]
       70 LOADK                            R9 K15 ["State-Disabled"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 GETUPVAL                         R11 5
       74 CALL                             R11 0 1
       75 JUMPIFNOT                        R11 ; [+8]
       76 GETTABLEKS                       R11 R0 K0 ["Enabled"]
       78 JUMPIFNOT                        R11 ; [+5]
       79 GETTABLEKS                       R11 R0 K13 ["Selected"]
       81 JUMPIF                           R11 ; [+2]
       82 LOADK                            R10 K16 ["State-Default"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R10
       85 CALL                             R6 4 1
       86 SETTABLE                         R6 R4 R5
       87 DUPTABLE                         R5 K18 [{"Knob"}]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K1 ["createElement"]
       91 LOADK                            R7 K2 ["Frame"]
       92 CALL                             R6 1 1
       93 SETTABLEKS                       R6 R5 K17 ["Knob"]
       95 CALL                             R2 3 -1
       96 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["isActivationInput"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["uriToTestId"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagRibbonToggleHoverStateFix"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       47 GETTABLEKS                       R6 R6 K14 ["getFFlagRibbonEnableKeyboardNavigation"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Packages"]
       54 GETTABLEKS                       R7 R7 K15 ["Framework"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K16 ["Styling"]
       59 GETTABLEKS                       R8 R7 K17 ["joinTags"]
       61 DUPCLOSURE                       R9 K18 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 RETURN                           R9 1
