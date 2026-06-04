PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["keyCode"]
        2 ORK                              R1 R2 K0 [""]
        3 GETTABLEKS                       R3 R0 K2 ["actions"]
        5 ORK                              R2 R3 K0 [""]
        6 LOADK                            R4 K3 ["%* is used elsewhere: %*"]
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 3 1
       12 MOVE                             R3 R4
       13 RETURN                           R3 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R0
        3 JUMPIFNOT                        R3 ; [+8]
        4 MOVE                             R4 R3
        5 MOVE                             R5 R1
        6 JUMPIF                           R5 ; [+2]
        7 NEWTABLE                         R5 0 0
        9 CALL                             R4 1 1
       10 MOVE                             R2 R4
       11 JUMP                             ; [+2]
       12 GETUPVAL                         R4 1
       13 GETTABLE                         R2 R4 R0
       14 DUPTABLE                         R4 K4 [{"Message", "Severity", "Title", "Type"}]
       15 SETTABLEKS                       R2 R4 K0 ["Message"]
       17 GETUPVAL                         R6 2
       18 GETTABLE                         R5 R6 R0
       19 SETTABLEKS                       R5 R4 K1 ["Severity"]
       21 GETUPVAL                         R6 3
       22 GETTABLE                         R5 R6 R0
       23 SETTABLEKS                       R5 R4 K2 ["Title"]
       25 SETTABLEKS                       R0 R4 K3 ["Type"]
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 GETIMPORT                        R3 K11 [Enum.PropertyStatus.Error]
       18 SETTABLEKS                       R3 R2 K12 ["DUPLICATE_KEYCODE"]
       20 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       22 SETTABLEKS                       R3 R2 K15 ["MODIFIER_KEYCODE"]
       24 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       26 SETTABLEKS                       R3 R2 K16 ["NO_KEYCODE"]
       28 NEWTABLE                         R3 4 0
       30 LOADK                            R4 K17 ["Modifier KeyCode"]
       31 SETTABLEKS                       R4 R3 K15 ["MODIFIER_KEYCODE"]
       33 LOADK                            R4 K18 ["Duplicate KeyCode"]
       34 SETTABLEKS                       R4 R3 K12 ["DUPLICATE_KEYCODE"]
       36 LOADK                            R4 K19 ["No KeyCode"]
       37 SETTABLEKS                       R4 R3 K16 ["NO_KEYCODE"]
       39 NEWTABLE                         R4 2 0
       41 LOADK                            R5 K20 ["The primary and secondary modifiers must have different values from each other and the binding's keycode."]
       42 SETTABLEKS                       R5 R4 K15 ["MODIFIER_KEYCODE"]
       44 LOADK                            R5 K21 ["No KeyCode set."]
       45 SETTABLEKS                       R5 R4 K16 ["NO_KEYCODE"]
       47 NEWTABLE                         R5 1 0
       49 DUPCLOSURE                       R6 K22 [PROTO_0]
       50 SETTABLEKS                       R6 R5 K12 ["DUPLICATE_KEYCODE"]
       52 DUPCLOSURE                       R6 K23 [PROTO_1]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 RETURN                           R6 1
