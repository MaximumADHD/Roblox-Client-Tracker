PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{"tag", "Size", "LayoutOrder"}]
        7 LOADK                            R4 K6 ["row auto-y flex-between align-y-center gap-xsmall items-stretch"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 GETIMPORT                        R4 K9 [UDim2.new]
       12 LOADN                            R5 0
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K10 ["PROPERTY_WIDTH"]
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K3 ["Size"]
       21 LOADN                            R4 2
       22 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       24 DUPTABLE                         R4 K13 [{"Input", "RevertOverrideButton"}]
       25 GETTABLEKS                       R5 R0 K14 ["children"]
       27 SETTABLEKS                       R5 R4 K11 ["Input"]
       29 GETTABLEKS                       R6 R0 K15 ["IsParameterOverridden"]
       31 JUMPIFNOT                        R6 ; [+31]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K16 ["IconButton"]
       38 DUPTABLE                         R7 K21 [{"LayoutOrder", "size", "icon", "onActivated", "testId"}]
       39 LOADN                            R8 3
       40 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K22 ["Enums"]
       45 GETTABLEKS                       R8 R8 K23 ["InputSize"]
       47 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       49 SETTABLEKS                       R8 R7 K17 ["size"]
       51 LOADK                            R8 K25 ["icons/actions/edit/undo"]
       52 SETTABLEKS                       R8 R7 K18 ["icon"]
       54 GETTABLEKS                       R8 R0 K26 ["OnParameterOverrideRevert"]
       56 SETTABLEKS                       R8 R7 K19 ["onActivated"]
       58 LOADK                            R8 K27 ["PropertyOverrideRevertButton"]
       59 SETTABLEKS                       R8 R7 K20 ["testId"]
       61 CALL                             R5 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K12 ["RevertOverrideButton"]
       66 CALL                             R1 3 -1
       67 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["CompositorNodeProperty"]
       20 GETTABLEKS                       R3 R3 K10 ["PropertyConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
