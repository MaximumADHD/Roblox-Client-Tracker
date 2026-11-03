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
       15 GETTABLEKS                       R7 R1 K3 ["selection"]
       17 GETTABLEKS                       R8 R1 K2 ["reflection"]
       19 MOVE                             R9 R4
       20 CALL                             R5 4 1
       21 GETUPVAL                         R6 4
       22 MOVE                             R7 R0
       23 GETTABLEKS                       R8 R1 K4 ["historyTracker"]
       25 GETTABLEKS                       R9 R5 K5 ["getSelection"]
       27 GETTABLEKS                       R10 R1 K2 ["reflection"]
       29 MOVE                             R11 R3
       30 MOVE                             R12 R2
       31 CALL                             R6 6 1
       32 GETUPVAL                         R7 5
       33 MOVE                             R8 R0
       34 GETTABLEKS                       R9 R1 K6 ["instancePicker"]
       36 MOVE                             R10 R3
       37 CALL                             R7 3 1
       38 GETUPVAL                         R8 6
       39 MOVE                             R9 R0
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 7
       42 MOVE                             R10 R0
       43 GETTABLEKS                       R11 R1 K3 ["selection"]
       45 CALL                             R9 2 1
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R9
       51 DUPTABLE                         R11 K16 [{"editProperty", "resetProperty", "instancePickerPickInstanceAsync", "deactivateInstancePickerAsync", "updateGameId", "shareAccessToAssetsAsync", "requestInitialGuestEnums", "pinSelection", "unpinSelection"}]
       52 GETTABLEKS                       R12 R6 K7 ["editProperty"]
       54 SETTABLEKS                       R12 R11 K7 ["editProperty"]
       56 GETTABLEKS                       R12 R6 K8 ["resetProperty"]
       58 SETTABLEKS                       R12 R11 K8 ["resetProperty"]
       60 GETTABLEKS                       R12 R7 K17 ["pickInstanceAsync"]
       62 SETTABLEKS                       R12 R11 K9 ["instancePickerPickInstanceAsync"]
       64 GETTABLEKS                       R12 R7 K10 ["deactivateInstancePickerAsync"]
       66 SETTABLEKS                       R12 R11 K10 ["deactivateInstancePickerAsync"]
       68 GETTABLEKS                       R12 R8 K11 ["updateGameId"]
       70 SETTABLEKS                       R12 R11 K11 ["updateGameId"]
       72 GETTABLEKS                       R12 R1 K18 ["assetAccessController"]
       74 GETTABLEKS                       R12 R12 K12 ["shareAccessToAssetsAsync"]
       76 SETTABLEKS                       R12 R11 K12 ["shareAccessToAssetsAsync"]
       78 GETTABLEKS                       R12 R9 K19 ["onInitialRequest"]
       80 SETTABLEKS                       R12 R11 K13 ["requestInitialGuestEnums"]
       82 GETTABLEKS                       R12 R5 K20 ["pinning"]
       84 GETTABLEKS                       R12 R12 K14 ["pinSelection"]
       86 SETTABLEKS                       R12 R11 K14 ["pinSelection"]
       88 GETTABLEKS                       R12 R5 K20 ["pinning"]
       90 GETTABLEKS                       R12 R12 K15 ["unpinSelection"]
       92 SETTABLEKS                       R12 R11 K15 ["unpinSelection"]
       94 MOVE                             R12 R10
       95 RETURN                           R11 2

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
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["createGuestEnumProvider"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Guest"]
       39 GETTABLEKS                       R6 R6 K12 ["createGuestGameIdProvider"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Guest"]
       46 GETTABLEKS                       R7 R7 K13 ["createGuestInstancePicker"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Guest"]
       53 GETTABLEKS                       R8 R8 K14 ["createGuestInstanceRegistry"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Guest"]
       60 GETTABLEKS                       R9 R9 K15 ["createGuestSelecting"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Guest"]
       67 GETTABLEKS                       R10 R10 K16 ["createPropertyCatalog"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K17 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 RETURN                           R10 1
