PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Tag"]
       13 GETUPVAL                         R5 1
       14 LOADK                            R7 K4 ["Component-RibbonToggle Role-Surface X-Fit data-testid=%*"]
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R10 R0 K5 ["Uri"]
       18 CALL                             R9 1 1
       19 NAMECALL                         R7 R7 K6 ["format"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 GETTABLEKS                       R8 R0 K7 ["Enabled"]
       25 JUMPIF                           R8 ; [+2]
       26 LOADK                            R7 K8 ["State-Disabled"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 CALL                             R5 2 1
       30 SETTABLE                         R5 R3 R4
       31 DUPTABLE                         R4 K11 [{"Label", "Toggle"}]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 LOADK                            R6 K12 ["TextLabel"]
       36 NEWTABLE                         R7 2 0
       38 GETTABLEKS                       R8 R0 K13 ["Text"]
       40 SETTABLEKS                       R8 R7 K13 ["Text"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K3 ["Tag"]
       45 LOADK                            R9 K14 ["X-Fit"]
       46 SETTABLE                         R9 R7 R8
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["Label"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["createElement"]
       53 GETUPVAL                         R6 3
       54 DUPTABLE                         R7 K20 [{["Uri"], ["AnchorPoint"], ["Enabled"], ["OnClick"], ["LayoutOrder"] = 1, ["Position"], ["Selected"]}]
       55 GETTABLEKS                       R8 R0 K5 ["Uri"]
       57 SETTABLEKS                       R8 R7 K5 ["Uri"]
       59 GETTABLEKS                       R8 R0 K15 ["AnchorPoint"]
       61 SETTABLEKS                       R8 R7 K15 ["AnchorPoint"]
       63 GETTABLEKS                       R8 R0 K7 ["Enabled"]
       65 SETTABLEKS                       R8 R7 K7 ["Enabled"]
       67 GETTABLEKS                       R8 R0 K16 ["OnClick"]
       69 SETTABLEKS                       R8 R7 K16 ["OnClick"]
       71 GETTABLEKS                       R8 R0 K18 ["Position"]
       73 SETTABLEKS                       R8 R7 K18 ["Position"]
       75 GETTABLEKS                       R8 R0 K19 ["Selected"]
       77 SETTABLEKS                       R8 R7 K19 ["Selected"]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R4 K10 ["Toggle"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Styling"]
       23 GETTABLEKS                       R4 R3 K10 ["joinTags"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["Toggle"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Util"]
       40 GETTABLEKS                       R7 R7 K15 ["uriToTestId"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K16 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
