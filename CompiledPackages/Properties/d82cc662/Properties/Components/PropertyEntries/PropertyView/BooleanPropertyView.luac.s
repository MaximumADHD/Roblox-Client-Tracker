PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editProperty"]
        3 DUPTABLE                         R2 K4 [{["type"] = "Edit", ["part"]}]
        4 DUPTABLE                         R3 K7 [{["name"] = "value", ["value"]}]
        5 SETTABLEKS                       R0 R3 K6 ["value"]
        7 SETTABLEKS                       R3 R2 K3 ["part"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["parts"]
        8 GETTABLEKS                       R2 R2 K3 ["value"]
       10 GETTABLEKS                       R2 R2 K4 ["multiple"]
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADB                            R3 1
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R3 R1 K2 ["parts"]
       17 GETTABLEKS                       R3 R3 K3 ["value"]
       19 GETTABLEKS                       R3 R3 K3 ["value"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["useEventCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K6 ["createElement"]
       30 GETUPVAL                         R6 3
       31 DUPTABLE                         R7 K14 [{["isChecked"], ["isIndeterminate"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
       32 SETTABLEKS                       R3 R7 K7 ["isChecked"]
       34 SETTABLEKS                       R2 R7 K8 ["isIndeterminate"]
       36 SETTABLEKS                       R4 R7 K11 ["onActivated"]
       38 GETTABLEKS                       R8 R1 K15 ["readonly"]
       40 SETTABLEKS                       R8 R7 K12 ["isDisabled"]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K16 ["XSmall"]
       45 SETTABLEKS                       R8 R7 K13 ["size"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["SignalsReact"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R2 K12 ["Checkbox"]
       36 GETTABLEKS                       R8 R2 K13 ["Enums"]
       38 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       40 DUPCLOSURE                       R9 K15 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 RETURN                           R9 1
