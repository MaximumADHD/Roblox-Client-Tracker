PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChange"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onChange"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["value"]
       10 ORK                              R2 R3 K1 [False]
       11 NOT                              R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["onChange"]
        9 GETTABLEKS                       R5 R0 K2 ["value"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 2
       16 DUPTABLE                         R4 K10 [{["LayoutOrder"], ["isChecked"], ["onActivated"], ["label"] = "", ["size"], ["isDisabled"]}]
       17 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       19 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       21 GETTABLEKS                       R6 R0 K2 ["value"]
       23 ORK                              R5 R6 K11 [False]
       24 SETTABLEKS                       R5 R4 K4 ["isChecked"]
       26 SETTABLEKS                       R1 R4 K5 ["onActivated"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K12 ["Enums"]
       31 GETTABLEKS                       R5 R5 K13 ["InputSize"]
       33 GETTABLEKS                       R5 R5 K14 ["Small"]
       35 SETTABLEKS                       R5 R4 K8 ["size"]
       37 GETTABLEKS                       R5 R0 K9 ["isDisabled"]
       39 SETTABLEKS                       R5 R4 K9 ["isDisabled"]
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"type", "label", "prop", "initialValue"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K6 ["Boolean"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["PropertyRowTypes"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K10 ["Checkbox"]
       32 GETTABLEKS                       R5 R2 K11 ["createElement"]
       34 DUPCLOSURE                       R6 K12 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R7 K13 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 DUPTABLE                         R8 K16 [{"BooleanPropertyRow", "createRowDefinition"}]
       42 SETTABLEKS                       R6 R8 K14 ["BooleanPropertyRow"]
       44 SETTABLEKS                       R7 R8 K15 ["createRowDefinition"]
       46 RETURN                           R8 1
