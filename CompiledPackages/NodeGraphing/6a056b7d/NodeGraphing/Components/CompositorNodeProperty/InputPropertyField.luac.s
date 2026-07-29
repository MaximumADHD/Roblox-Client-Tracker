PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K7 [{["tag"] = "row flex-between align-y-center items-stretch gap-xsmall auto-y", ["Size"], ["LayoutOrder"] = 2}]
        7 GETIMPORT                        R4 K10 [UDim2.new]
        9 LOADN                            R5 0
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K11 ["PROPERTY_WIDTH"]
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 SETTABLEKS                       R4 R3 K4 ["Size"]
       18 DUPTABLE                         R4 K14 [{"Input", "RevertOverrideButton"}]
       19 GETTABLEKS                       R5 R0 K15 ["children"]
       21 SETTABLEKS                       R5 R4 K12 ["Input"]
       23 GETTABLEKS                       R6 R0 K16 ["IsParameterOverridden"]
       25 JUMPIFNOT                        R6 ; [+22]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K17 ["IconButton"]
       32 DUPTABLE                         R7 K25 [{["LayoutOrder"] = 3, ["size"], ["icon"] = "icons/actions/edit/undo", ["onActivated"], ["testId"] = "PropertyOverrideRevertButton"}]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K26 ["Enums"]
       36 GETTABLEKS                       R8 R8 K27 ["InputSize"]
       38 GETTABLEKS                       R8 R8 K28 ["XSmall"]
       40 SETTABLEKS                       R8 R7 K19 ["size"]
       42 GETTABLEKS                       R8 R0 K29 ["OnParameterOverrideRevert"]
       44 SETTABLEKS                       R8 R7 K22 ["onActivated"]
       46 CALL                             R5 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 SETTABLEKS                       R5 R4 K13 ["RevertOverrideButton"]
       51 CALL                             R1 3 -1
       52 RETURN                           R1 -1

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
