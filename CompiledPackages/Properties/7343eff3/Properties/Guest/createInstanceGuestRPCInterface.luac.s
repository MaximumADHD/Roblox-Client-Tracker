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
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K0 ["destroy"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

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
       31 GETUPVAL                         R7 5
       32 MOVE                             R8 R0
       33 CALL                             R7 1 1
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 DUPTABLE                         R9 K12 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "instancePickerPickInstanceAsync", "deactivateInstancePickerAsync", "updateGameId", "shareAccessToAssetsAsync"}]
       40 GETTABLEKS                       R10 R4 K4 ["beginEditingAsync"]
       42 SETTABLEKS                       R10 R9 K4 ["beginEditingAsync"]
       44 GETTABLEKS                       R10 R4 K5 ["continueEditing"]
       46 SETTABLEKS                       R10 R9 K5 ["continueEditing"]
       48 GETTABLEKS                       R10 R4 K6 ["finishEditing"]
       50 SETTABLEKS                       R10 R9 K6 ["finishEditing"]
       52 GETTABLEKS                       R10 R4 K7 ["resetProperty"]
       54 SETTABLEKS                       R10 R9 K7 ["resetProperty"]
       56 GETTABLEKS                       R10 R6 K13 ["pickInstanceAsync"]
       58 SETTABLEKS                       R10 R9 K8 ["instancePickerPickInstanceAsync"]
       60 GETTABLEKS                       R10 R6 K9 ["deactivateInstancePickerAsync"]
       62 SETTABLEKS                       R10 R9 K9 ["deactivateInstancePickerAsync"]
       64 GETTABLEKS                       R10 R7 K10 ["updateGameId"]
       66 SETTABLEKS                       R10 R9 K10 ["updateGameId"]
       68 GETTABLEKS                       R11 R1 K14 ["assetAccessController"]
       70 GETTABLEKS                       R10 R11 K11 ["shareAccessToAssetsAsync"]
       72 SETTABLEKS                       R10 R9 K11 ["shareAccessToAssetsAsync"]
       74 MOVE                             R10 R8
       75 RETURN                           R9 2

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
       23 GETTABLEKS                       R4 R5 K9 ["createGuestGameIdProvider"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Guest"]
       30 GETTABLEKS                       R5 R6 K10 ["createGuestInstancePicker"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K7 ["Guest"]
       37 GETTABLEKS                       R6 R7 K11 ["createGuestInstanceRegistry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K7 ["Guest"]
       44 GETTABLEKS                       R7 R8 K12 ["createGuestSelecting"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Guest"]
       51 GETTABLEKS                       R8 R9 K13 ["createPropertyCatalog"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K14 [PROTO_1]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 RETURN                           R8 1
