PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Guest"]
        3 GETTABLEKS                       R1 R2 K1 ["createInstanceGuestRPCInterface"]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K6 [{"historyTracker", "selection", "reflection", "instancePicker"}]
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K2 ["historyTracker"]
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 SETTABLEKS                       R4 R3 K3 ["selection"]
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 SETTABLEKS                       R4 R3 K4 ["reflection"]
       19 GETUPVAL                         R4 4
       20 SETTABLEKS                       R4 R3 K5 ["instancePicker"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K0 ["Guest"]
        9 GETTABLEKS                       R5 R6 K1 ["startGuest"]
       11 DUPTABLE                         R6 K4 [{"guestConnectionObservable", "createInstanceGuestRPCInterface"}]
       12 SETTABLEKS                       R1 R6 K2 ["guestConnectionObservable"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R7 R6 K3 ["createInstanceGuestRPCInterface"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R0 K5 ["Unloading"]
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 NAMECALL                         R6 R6 K6 ["Connect"]
       31 CALL                             R6 2 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Guest"]
       20 GETTABLEKS                       R3 R4 K10 ["createStudioGuestConnection"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Guest"]
       29 GETTABLEKS                       R4 R5 K11 ["createStudioHistoryTracker"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Guest"]
       38 GETTABLEKS                       R5 R6 K12 ["createStudioInstancePicker"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K9 ["Guest"]
       47 GETTABLEKS                       R6 R7 K13 ["createStudioSelection"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R7 R1 K14 ["Util"]
       52 GETTABLEKS                       R6 R7 K15 ["createStudioReflection"]
       54 DUPCLOSURE                       R7 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 RETURN                           R7 1
