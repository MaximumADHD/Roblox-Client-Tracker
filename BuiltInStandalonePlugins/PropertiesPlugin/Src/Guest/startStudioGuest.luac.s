PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Guest"]
        3 GETTABLEKS                       R1 R1 K1 ["createInstanceGuestRPCInterface"]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K7 [{"historyTracker", "selection", "reflection", "instancePicker", "assetAccessController"}]
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K2 ["historyTracker"]
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 SETTABLEKS                       R4 R3 K3 ["selection"]
       14 GETUPVAL                         R4 3
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K4 ["reflection"]
       18 GETUPVAL                         R4 4
       19 SETTABLEKS                       R4 R3 K5 ["instancePicker"]
       21 GETUPVAL                         R4 5
       22 SETTABLEKS                       R4 R3 K6 ["assetAccessController"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 3
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 4
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R0
        8 CALL                             R5 1 2
        9 GETUPVAL                         R7 3
       10 CALL                             R7 0 2
       11 GETUPVAL                         R9 4
       12 GETTABLEKS                       R9 R9 K0 ["Guest"]
       14 GETTABLEKS                       R9 R9 K1 ["startGuest"]
       16 DUPTABLE                         R10 K4 [{"guestConnectionObservable", "createInstanceGuestRPCInterface"}]
       17 SETTABLEKS                       R1 R10 K2 ["guestConnectionObservable"]
       19 NEWCLOSURE                       R11 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R7
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R11 R10 K3 ["createInstanceGuestRPCInterface"]
       28 CALL                             R9 1 1
       29 GETTABLEKS                       R10 R0 K5 ["Unloading"]
       31 NEWCLOSURE                       R12 P1
       32 CAPTURE                          VAL R9
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R8
       37 NAMECALL                         R10 R10 K6 ["Connect"]
       39 CALL                             R10 2 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["createStudioAssetAccessController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Guest"]
       29 GETTABLEKS                       R4 R4 K11 ["createStudioGuestConnection"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Guest"]
       38 GETTABLEKS                       R5 R5 K12 ["createStudioHistoryTracker"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Guest"]
       47 GETTABLEKS                       R6 R6 K13 ["createStudioInstancePicker"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Guest"]
       56 GETTABLEKS                       R7 R7 K14 ["createStudioSelection"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R1 K15 ["Util"]
       61 GETTABLEKS                       R7 R7 K16 ["createStudioReflection"]
       63 DUPCLOSURE                       R8 K17 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 RETURN                           R8 1
