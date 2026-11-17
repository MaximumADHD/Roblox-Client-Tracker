PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K7 [{["tag"], ["Size"], ["LayoutOrder"] = 2, ["testId"]}]
        9 NEWTABLE                         R5 2 0
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K8 ["row flex-between align-y-center items-stretch gap-xsmall auto-y"]
       14 SETTABLEKS                       R1 R5 K9 ["fill"]
       16 SETTABLEKS                       R5 R4 K2 ["tag"]
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADNIL                          R5
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R5 K12 [UDim2.new]
       23 LOADN                            R6 0
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K13 ["PROPERTY_WIDTH"]
       27 LOADN                            R8 0
       28 LOADN                            R9 0
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K3 ["Size"]
       32 JUMPIFNOT                        R1 ; [+2]
       33 LOADK                            R5 K14 ["property-field-cell"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K6 ["testId"]
       38 DUPTABLE                         R5 K17 [{"Input", "RevertOverrideButton"}]
       39 GETTABLEKS                       R6 R0 K18 ["children"]
       41 SETTABLEKS                       R6 R5 K15 ["Input"]
       43 GETTABLEKS                       R7 R0 K19 ["IsParameterOverridden"]
       45 JUMPIFNOT                        R7 ; [+22]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K0 ["createElement"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K20 ["IconButton"]
       52 DUPTABLE                         R8 K27 [{["LayoutOrder"] = 3, ["size"], ["icon"] = "icons/actions/edit/undo", ["onActivated"], ["testId"] = "PropertyOverrideRevertButton"}]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K28 ["Enums"]
       56 GETTABLEKS                       R9 R9 K29 ["InputSize"]
       58 GETTABLEKS                       R9 R9 K30 ["XSmall"]
       60 SETTABLEKS                       R9 R8 K22 ["size"]
       62 GETTABLEKS                       R9 R0 K31 ["OnParameterOverrideRevert"]
       64 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       66 CALL                             R6 2 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R5 K16 ["RevertOverrideButton"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["PropertyConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["React"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K11 ["getFFlagAnimGraphUINodeFieldLayout"]
       39 DUPCLOSURE                       R6 K12 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
