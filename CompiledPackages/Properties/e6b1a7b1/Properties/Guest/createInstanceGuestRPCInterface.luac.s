PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K0 ["destroy"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R1 K0 ["reflection"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 GETTABLEKS                       R6 R1 K1 ["historyTracker"]
       11 GETTABLEKS                       R7 R1 K2 ["selection"]
       13 GETTABLEKS                       R8 R1 K0 ["reflection"]
       15 MOVE                             R9 R2
       16 CALL                             R4 5 1
       17 GETUPVAL                         R5 3
       18 MOVE                             R6 R0
       19 GETTABLEKS                       R7 R1 K2 ["selection"]
       21 GETTABLEKS                       R8 R1 K0 ["reflection"]
       23 MOVE                             R9 R3
       24 CALL                             R5 4 1
       25 GETUPVAL                         R6 4
       26 MOVE                             R7 R0
       27 GETTABLEKS                       R8 R1 K3 ["instancePicker"]
       29 MOVE                             R9 R2
       30 CALL                             R6 3 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 DUPTABLE                         R8 K11 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "instancePickerPickInstanceAsync", "deactivateInstancePickerAsync", "getGameIdAsync"}]
       36 GETTABLEKS                       R9 R4 K4 ["beginEditingAsync"]
       38 SETTABLEKS                       R9 R8 K4 ["beginEditingAsync"]
       40 GETTABLEKS                       R9 R4 K5 ["continueEditing"]
       42 SETTABLEKS                       R9 R8 K5 ["continueEditing"]
       44 GETTABLEKS                       R9 R4 K6 ["finishEditing"]
       46 SETTABLEKS                       R9 R8 K6 ["finishEditing"]
       48 GETTABLEKS                       R9 R4 K7 ["resetProperty"]
       50 SETTABLEKS                       R9 R8 K7 ["resetProperty"]
       52 GETTABLEKS                       R9 R6 K12 ["pickInstanceAsync"]
       54 SETTABLEKS                       R9 R8 K8 ["instancePickerPickInstanceAsync"]
       56 GETTABLEKS                       R9 R6 K9 ["deactivateInstancePickerAsync"]
       58 SETTABLEKS                       R9 R8 K9 ["deactivateInstancePickerAsync"]
       60 GETUPVAL                         R9 5
       61 SETTABLEKS                       R9 R8 K10 ["getGameIdAsync"]
       63 MOVE                             R9 R7
       64 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R4 K8 ["createGuestEditing"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Guest"]
       23 GETTABLEKS                       R4 R5 K9 ["createGuestInstancePicker"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Guest"]
       30 GETTABLEKS                       R5 R6 K10 ["createGuestInstanceRegistry"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K7 ["Guest"]
       37 GETTABLEKS                       R6 R7 K11 ["createGuestSelecting"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K7 ["Guest"]
       44 GETTABLEKS                       R7 R8 K12 ["createPropertyCatalog"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R10 R0 K7 ["Guest"]
       51 GETTABLEKS                       R9 R10 K13 ["Methods"]
       53 GETTABLEKS                       R8 R9 K14 ["getGameIdAsync"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_1]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 RETURN                           R8 1
