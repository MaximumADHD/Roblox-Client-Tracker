PROTO_0:
        0 DUPTABLE                         R1 K1 [{"Transparency"}]
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADK                            R2 K2 [0.5]
        3 JUMP                             ; [+1]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["Transparency"]
        7 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 JUMPIF                           R1 ; [+2]
        2 LOADK                            R2 K0 ["size-400-400"]
        3 JUMP                             ; [+1]
        4 LOADK                            R2 K1 ["size-300-400"]
        5 DUPTABLE                         R3 K3 [{"tag"}]
        6 LOADK                            R5 K4 ["row align-x-center align-y-center %*"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R5 R5 K5 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R3 K2 ["tag"]
       14 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isCompact"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["padding-y-small"]
        4 JUMP                             ; [+6]
        5 GETTABLEKS                       R2 R0 K2 ["isSmall"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADK                            R1 K3 ["padding-y-xsmall"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K4 ["padding-y-medium"]
       11 DUPTABLE                         R2 K7 [{"tag", "stateLayer"}]
       12 NEWTABLE                         R3 4 0
       14 LOADK                            R5 K8 ["row align-x-center align-y-center auto-xy radius-small %*"]
       15 MOVE                             R7 R1
       16 NAMECALL                         R5 R5 K9 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 LOADB                            R5 1
       21 SETTABLE                         R5 R3 R4
       22 GETTABLEKS                       R5 R0 K10 ["selected"]
       24 JUMPIFNOT                        R5 ; [+2]
       25 LOADB                            R4 1
       26 JUMP                             ; [+1]
       27 LOADB                            R4 0
       28 SETTABLEKS                       R4 R3 K11 ["bg-action-standard"]
       30 GETTABLEKS                       R5 R0 K0 ["isCompact"]
       32 JUMPIF                           R5 ; [+5]
       33 GETTABLEKS                       R5 R0 K2 ["isSmall"]
       35 JUMPIF                           R5 ; [+2]
       36 LOADB                            R4 1
       37 JUMP                             ; [+1]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K12 ["padding-x-xxsmall"]
       41 SETTABLEKS                       R3 R2 K5 ["tag"]
       43 DUPTABLE                         R3 K17 [{["affordance"], ["inset"] = , ["mode"] = }]
       44 GETTABLEKS                       R5 R0 K18 ["isSingle"]
       46 JUMPIFNOT                        R5 ; [+4]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K19 ["None"]
       50 JUMP                             ; [+3]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K20 ["Background"]
       54 SETTABLEKS                       R4 R3 K13 ["affordance"]
       56 SETTABLEKS                       R3 R2 K6 ["stateLayer"]
       58 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"arrowContainer", "arrow", "arrowIconStyle"}]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K8 [{"selected", "isCompact", "isSmall", "isSingle"}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K4 ["selected"]
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K7 ["isSingle"]
       10 JUMPIF                           R4 ; [+2]
       11 LOADB                            R3 1
       12 JUMP                             ; [+1]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["selected"]
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R3 R2 K5 ["isCompact"]
       19 GETUPVAL                         R3 3
       20 SETTABLEKS                       R3 R2 K6 ["isSmall"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K7 ["isSingle"]
       25 SETTABLEKS                       R3 R2 K7 ["isSingle"]
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K0 ["arrowContainer"]
       30 GETUPVAL                         R2 2
       31 GETUPVAL                         R3 3
       32 JUMPIF                           R2 ; [+3]
       33 JUMPIF                           R3 ; [+2]
       34 LOADK                            R4 K9 ["size-400-400"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K10 ["size-300-400"]
       37 DUPTABLE                         R1 K12 [{"tag"}]
       38 LOADK                            R6 K13 ["row align-x-center align-y-center %*"]
       39 MOVE                             R8 R4
       40 NAMECALL                         R6 R6 K14 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 SETTABLEKS                       R5 R1 K11 ["tag"]
       46 SETTABLEKS                       R1 R0 K1 ["arrow"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K15 ["isDropdownEnabled"]
       51 NOT                              R2 R3
       52 DUPTABLE                         R1 K17 [{"Transparency"}]
       53 JUMPIFNOT                        R2 ; [+2]
       54 LOADK                            R3 K18 [0.5]
       55 JUMP                             ; [+1]
       56 LOADN                            R3 0
       57 SETTABLEKS                       R3 R1 K16 ["Transparency"]
       59 SETTABLEKS                       R1 R0 K2 ["arrowIconStyle"]
       61 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 JUMPIFEQKS                       R3 K1 ["Small"] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 GETTABLEKS                       R4 R1 K2 ["mode"]
        8 JUMPIFEQKS                       R4 K3 ["DensityCompact"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETUPVAL                         R4 0
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 5
       20 GETTABLEKS                       R7 R0 K4 ["isSingle"]
       22 MOVE                             R8 R3
       23 MOVE                             R9 R2
       24 GETTABLEKS                       R10 R0 K5 ["selected"]
       26 GETTABLEKS                       R11 R0 K6 ["isDropdownEnabled"]
       28 SETLIST                          R6 R7 5 [1]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useMemo"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["StateLayerAffordance"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K14 ["Density"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_0]
       37 DUPCLOSURE                       R7 K16 [PROTO_1]
       38 DUPCLOSURE                       R8 K17 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R9 K18 [PROTO_4]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R8
       43 RETURN                           R9 1
