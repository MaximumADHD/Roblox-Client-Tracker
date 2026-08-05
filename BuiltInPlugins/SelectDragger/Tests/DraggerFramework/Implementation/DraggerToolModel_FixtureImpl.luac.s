PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R2 K0 ["selectionInfo"]
        7 JUMPIF                           R4 ; [+14]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["new"]
       15 MOVE                             R6 R0
       16 NAMECALL                         R7 R4 K2 ["Get"]
       18 CALL                             R7 1 -1
       19 CALL                             R5 -1 1
       20 MOVE                             R3 R5
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R3 R2 K0 ["selectionInfo"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K1 ["new"]
       27 MOVE                             R5 R0
       28 GETTABLEKS                       R6 R2 K3 ["schema"]
       30 JUMPIF                           R6 ; [+1]
       31 GETUPVAL                         R6 3
       32 DUPTABLE                         R7 K8 [{["AnalyticsName"], ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True}]
       33 GETTABLEKS                       R9 R2 K10 ["analyticsName"]
       35 ORK                              R8 R9 K9 ["TestDragger"]
       36 SETTABLEKS                       R8 R7 K4 ["AnalyticsName"]
       38 GETTABLEKS                       R8 R2 K11 ["requestRenderCallback"]
       40 JUMPIF                           R8 ; [+1]
       41 DUPCLOSURE                       R8 K12 [PROTO_0]
       42 GETTABLEKS                       R9 R2 K13 ["markViewDirtyCallback"]
       44 JUMPIF                           R9 ; [+1]
       45 DUPCLOSURE                       R9 K14 [PROTO_1]
       46 GETTABLEKS                       R10 R2 K15 ["markSelectionDirtyCallback"]
       48 JUMPIF                           R10 ; [+1]
       49 DUPCLOSURE                       R10 K16 [PROTO_2]
       50 CALL                             R4 6 1
       51 GETTABLEKS                       R5 R2 K17 ["selectionWrapper"]
       53 JUMPIF                           R5 ; [+4]
       54 DUPTABLE                         R5 K19 [{"get"}]
       55 DUPCLOSURE                       R6 K20 [PROTO_3]
       56 SETTABLEKS                       R6 R5 K18 ["get"]
       58 SETTABLEKS                       R5 R4 K21 ["_selectionWrapper"]
       60 GETTABLEKS                       R5 R2 K22 ["boundsChangedTracker"]
       62 JUMPIF                           R5 ; [+10]
       63 DUPTABLE                         R5 K26 [{"uninstall", "install", "setSelection"}]
       64 DUPCLOSURE                       R6 K27 [PROTO_4]
       65 SETTABLEKS                       R6 R5 K23 ["uninstall"]
       67 DUPCLOSURE                       R6 K28 [PROTO_5]
       68 SETTABLEKS                       R6 R5 K24 ["install"]
       70 DUPCLOSURE                       R6 K29 [PROTO_6]
       71 SETTABLEKS                       R6 R5 K25 ["setSelection"]
       73 SETTABLEKS                       R5 R4 K30 ["_boundsChangedTracker"]
       75 GETTABLEKS                       R5 R2 K31 ["sessionAnalytics"]
       77 JUMPIF                           R5 ; [+1]
       78 DUPTABLE                         R5 K36 [{["freeformDrags"] = 0, ["handleDrags"] = 0, ["dragSelects"] = 0}]
       79 SETTABLEKS                       R5 R4 K37 ["_sessionAnalytics"]
       81 SETTABLEKS                       R3 R4 K38 ["_selectionInfo"]
       83 DUPCLOSURE                       R5 K39 [PROTO_7]
       84 SETTABLEKS                       R5 R4 K40 ["selectNextSelectables"]
       86 DUPCLOSURE                       R5 K41 [PROTO_8]
       87 SETTABLEKS                       R5 R4 K42 ["transitionToState"]
       89 DUPCLOSURE                       R5 K43 [PROTO_9]
       90 SETTABLEKS                       R5 R4 K44 ["_scheduleRender"]
       92 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R1 K3 ["Packages"]
       13 GETTABLEKS                       R3 R2 K4 ["DraggerFramework"]
       15 GETTABLEKS                       R4 R2 K5 ["DraggerSchemaCore"]
       17 GETIMPORT                        R5 K7 [require]
       19 GETTABLEKS                       R6 R4 K8 ["DraggerSchema"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K7 [require]
       24 GETTABLEKS                       R7 R3 K9 ["Types"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R7 K7 [require]
       29 GETTABLEKS                       R8 R3 K10 ["Implementation"]
       31 GETTABLEKS                       R8 R8 K11 ["DraggerToolModel"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K7 [require]
       36 GETTABLEKS                       R9 R4 K12 ["SelectionInfo"]
       38 CALL                             R8 1 1
       39 GETIMPORT                        R9 K7 [require]
       41 GETTABLEKS                       R10 R4 K13 ["Selection"]
       43 CALL                             R9 1 1
       44 NEWTABLE                         R10 1 0
       46 DUPCLOSURE                       R11 K14 [PROTO_10]
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R11 R10 K15 ["new"]
       53 RETURN                           R10 1
