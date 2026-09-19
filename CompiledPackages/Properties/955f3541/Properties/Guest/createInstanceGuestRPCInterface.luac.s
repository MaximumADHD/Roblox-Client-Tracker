PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["destroy"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K0 ["destroy"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["warnCapturable"]
        2 JUMPIF                           R2 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["defaultWarn"]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R3
       10 GETTABLEKS                       R6 R1 K2 ["reflection"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 3
       14 MOVE                             R6 R0
       15 GETTABLEKS                       R7 R1 K3 ["historyTracker"]
       17 GETTABLEKS                       R8 R1 K4 ["selection"]
       19 GETTABLEKS                       R9 R1 K2 ["reflection"]
       21 MOVE                             R10 R3
       22 MOVE                             R11 R2
       23 CALL                             R5 6 1
       24 GETUPVAL                         R6 4
       25 MOVE                             R7 R0
       26 GETTABLEKS                       R8 R1 K4 ["selection"]
       28 GETTABLEKS                       R9 R1 K2 ["reflection"]
       30 MOVE                             R10 R4
       31 CALL                             R6 4 1
       32 GETUPVAL                         R7 5
       33 MOVE                             R8 R0
       34 GETTABLEKS                       R9 R1 K5 ["instancePicker"]
       36 MOVE                             R10 R3
       37 CALL                             R7 3 1
       38 GETUPVAL                         R8 6
       39 MOVE                             R9 R0
       40 CALL                             R8 1 1
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 DUPTABLE                         R10 K14 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "instancePickerPickInstanceAsync", "deactivateInstancePickerAsync", "updateGameId", "shareAccessToAssetsAsync"}]
       47 GETTABLEKS                       R11 R5 K6 ["beginEditingAsync"]
       49 SETTABLEKS                       R11 R10 K6 ["beginEditingAsync"]
       51 GETTABLEKS                       R11 R5 K7 ["continueEditing"]
       53 SETTABLEKS                       R11 R10 K7 ["continueEditing"]
       55 GETTABLEKS                       R11 R5 K8 ["finishEditing"]
       57 SETTABLEKS                       R11 R10 K8 ["finishEditing"]
       59 GETTABLEKS                       R11 R5 K9 ["resetProperty"]
       61 SETTABLEKS                       R11 R10 K9 ["resetProperty"]
       63 GETTABLEKS                       R11 R7 K15 ["pickInstanceAsync"]
       65 SETTABLEKS                       R11 R10 K10 ["instancePickerPickInstanceAsync"]
       67 GETTABLEKS                       R11 R7 K11 ["deactivateInstancePickerAsync"]
       69 SETTABLEKS                       R11 R10 K11 ["deactivateInstancePickerAsync"]
       71 GETTABLEKS                       R11 R8 K12 ["updateGameId"]
       73 SETTABLEKS                       R11 R10 K12 ["updateGameId"]
       75 GETTABLEKS                       R11 R1 K16 ["assetAccessController"]
       77 GETTABLEKS                       R11 R11 K13 ["shareAccessToAssetsAsync"]
       79 SETTABLEKS                       R11 R10 K13 ["shareAccessToAssetsAsync"]
       81 MOVE                             R11 R9
       82 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["CapturableWarnings"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Guest"]
       23 GETTABLEKS                       R4 R4 K9 ["createGuestEditing"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Guest"]
       30 GETTABLEKS                       R5 R5 K10 ["createGuestGameIdProvider"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Guest"]
       37 GETTABLEKS                       R6 R6 K11 ["createGuestInstancePicker"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Guest"]
       44 GETTABLEKS                       R7 R7 K12 ["createGuestInstanceRegistry"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Guest"]
       51 GETTABLEKS                       R8 R8 K13 ["createGuestSelecting"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Guest"]
       58 GETTABLEKS                       R9 R9 K14 ["createPropertyCatalog"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K15 [PROTO_1]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 RETURN                           R9 1
