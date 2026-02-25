PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Enabled"]
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        8 JUMPIFNOTEQ                      R2 R3 ; [+12]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K5 ["OnClick"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["Selected"]
       16 NOT                              R3 R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K7 ["Uri"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 8 0
        6 GETTABLEKS                       R4 R0 K2 ["Position"]
        8 SETTABLEKS                       R4 R3 K2 ["Position"]
       10 GETTABLEKS                       R4 R0 K3 ["AnchorPoint"]
       12 SETTABLEKS                       R4 R3 K3 ["AnchorPoint"]
       14 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       16 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K5 ["Event"]
       21 GETTABLEKS                       R4 R5 K6 ["InputBegan"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K7 ["Tag"]
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
       51 CALL                             R5 3 1
       52 SETTABLE                         R5 R3 R4
       53 DUPTABLE                         R4 K16 [{"Knob"}]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["createElement"]
       57 LOADK                            R6 K1 ["Frame"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K15 ["Knob"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["uriToTestId"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Styling"]
       32 GETTABLEKS                       R5 R4 K13 ["joinTags"]
       34 DUPCLOSURE                       R6 K14 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
