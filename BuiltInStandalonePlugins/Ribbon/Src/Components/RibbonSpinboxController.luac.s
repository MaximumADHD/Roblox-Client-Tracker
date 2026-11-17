PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Tag"]
       13 GETUPVAL                         R5 2
       14 LOADK                            R6 K3 ["Component-RibbonSpinboxController X-Fit X-Column"]
       15 GETTABLEKS                       R8 R0 K4 ["Disabled"]
       17 JUMPIFNOT                        R8 ; [+2]
       18 LOADK                            R7 K5 ["State-Disabled"]
       19 JUMP                             ; [+1]
       20 LOADK                            R7 K6 ["State-Default"]
       21 CALL                             R5 2 1
       22 SETTABLE                         R5 R3 R4
       23 DUPTABLE                         R4 K9 [{"ControlUp", "ControlDown"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 3
       28 NEWTABLE                         R7 8 0
       30 NEWTABLE                         R8 0 0
       32 SETTABLEKS                       R8 R7 K10 ["LeftIcon"]
       34 GETTABLEKS                       R8 R0 K11 ["OnClickUp"]
       36 SETTABLEKS                       R8 R7 K12 ["OnClick"]
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K13 ["OverrideTags"]
       41 LOADK                            R8 K14 ["X-Fit"]
       42 SETTABLEKS                       R8 R7 K15 ["PaneTags"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K2 ["Tag"]
       47 GETUPVAL                         R9 2
       48 LOADK                            R10 K16 ["Component-IconButton ControlUp"]
       49 GETTABLEKS                       R12 R0 K17 ["DisabledUp"]
       51 JUMPIFNOT                        R12 ; [+2]
       52 LOADK                            R11 K5 ["State-Disabled"]
       53 JUMP                             ; [+1]
       54 LOADK                            R11 K6 ["State-Default"]
       55 CALL                             R9 2 1
       56 SETTABLE                         R9 R7 R8
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K7 ["ControlUp"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K0 ["createElement"]
       63 GETUPVAL                         R6 3
       64 NEWTABLE                         R7 8 0
       66 NEWTABLE                         R8 0 0
       68 SETTABLEKS                       R8 R7 K10 ["LeftIcon"]
       70 GETTABLEKS                       R8 R0 K18 ["OnClickDown"]
       72 SETTABLEKS                       R8 R7 K12 ["OnClick"]
       74 LOADB                            R8 1
       75 SETTABLEKS                       R8 R7 K13 ["OverrideTags"]
       77 LOADK                            R8 K14 ["X-Fit"]
       78 SETTABLEKS                       R8 R7 K15 ["PaneTags"]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K2 ["Tag"]
       83 GETUPVAL                         R9 2
       84 LOADK                            R10 K19 ["Component-IconButton ControlDown"]
       85 GETTABLEKS                       R12 R0 K20 ["DisabledDown"]
       87 JUMPIFNOT                        R12 ; [+2]
       88 LOADK                            R11 K5 ["State-Disabled"]
       89 JUMP                             ; [+1]
       90 LOADK                            R11 K6 ["State-Default"]
       91 CALL                             R9 2 1
       92 SETTABLE                         R9 R7 R8
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K8 ["ControlDown"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["IconButton"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 DUPCLOSURE                       R8 K14 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 RETURN                           R8 1
