PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Item"]
        4 GETUPVAL                         R3 1
        5 LOADK                            R4 K1 ["TextButton"]
        6 NEWTABLE                         R5 8 0
        8 GETTABLEKS                       R6 R0 K2 ["Index"]
       10 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R0 K4 ["Position"]
       14 SETTABLEKS                       R6 R5 K4 ["Position"]
       16 GETTABLEKS                       R6 R0 K5 ["Size"]
       18 SETTABLEKS                       R6 R5 K5 ["Size"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["Event"]
       23 GETTABLEKS                       R6 R6 K7 ["Activated"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 SETTABLE                         R7 R5 R6
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K8 ["Tag"]
       31 GETUPVAL                         R7 3
       32 LOADK                            R8 K9 ["Component-TabRow Role-Surface X-Fit X-Middle"]
       33 GETTABLEKS                       R10 R0 K10 ["Selected"]
       35 JUMPIFNOT                        R10 ; [+2]
       36 LOADK                            R9 K10 ["Selected"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 CALL                             R7 2 1
       40 SETTABLE                         R7 R5 R6
       41 DUPTABLE                         R6 K12 [{"Checkbox"}]
       42 GETUPVAL                         R7 1
       43 GETUPVAL                         R8 4
       44 DUPTABLE                         R9 K18 [{["LayoutOrder"], ["Checked"], ["OnClick"], ["Text"], ["ExcludeTextFromClickableArea"] = True}]
       45 MOVE                             R10 R1
       46 CALL                             R10 0 1
       47 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       49 GETTABLEKS                       R10 R2 K13 ["Checked"]
       51 SETTABLEKS                       R10 R9 K13 ["Checked"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R10 R9 K14 ["OnClick"]
       57 GETTABLEKS                       R10 R2 K15 ["Text"]
       59 SETTABLEKS                       R10 R9 K15 ["Text"]
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K11 ["Checkbox"]
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["counter"]
       27 GETTABLEKS                       R5 R3 K12 ["Styling"]
       29 GETTABLEKS                       R5 R5 K13 ["joinTags"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K14 ["Src"]
       35 GETTABLEKS                       R7 R7 K15 ["Components"]
       37 GETTABLEKS                       R7 R7 K16 ["RibbonCheckbox"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K17 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 RETURN                           R7 1
