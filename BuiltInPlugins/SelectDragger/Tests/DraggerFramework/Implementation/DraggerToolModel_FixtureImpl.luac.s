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
        0 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 LOADNIL                          R2
        6 GETTABLEKS                       R3 R1 K0 ["selectionInfo"]
        8 JUMPIF                           R3 ; [+14]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["new"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R6 R3 K2 ["Get"]
       19 CALL                             R6 1 -1
       20 CALL                             R4 -1 1
       21 MOVE                             R2 R4
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R2 R1 K0 ["selectionInfo"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K1 ["new"]
       28 MOVE                             R4 R0
       29 GETTABLEKS                       R5 R1 K3 ["schema"]
       31 JUMPIF                           R5 ; [+1]
       32 GETUPVAL                         R5 3
       33 DUPTABLE                         R6 K8 [{["AnalyticsName"], ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True}]
       34 GETTABLEKS                       R8 R1 K10 ["analyticsName"]
       36 ORK                              R7 R8 K9 ["TestDragger"]
       37 SETTABLEKS                       R7 R6 K4 ["AnalyticsName"]
       39 GETTABLEKS                       R7 R1 K11 ["requestRenderCallback"]
       41 JUMPIF                           R7 ; [+1]
       42 DUPCLOSURE                       R7 K12 [PROTO_0]
       43 GETTABLEKS                       R8 R1 K13 ["markViewDirtyCallback"]
       45 JUMPIF                           R8 ; [+1]
       46 DUPCLOSURE                       R8 K14 [PROTO_1]
       47 GETTABLEKS                       R9 R1 K15 ["markSelectionDirtyCallback"]
       49 JUMPIF                           R9 ; [+1]
       50 DUPCLOSURE                       R9 K16 [PROTO_2]
       51 CALL                             R3 6 1
       52 GETTABLEKS                       R4 R1 K17 ["selectionWrapper"]
       54 JUMPIF                           R4 ; [+4]
       55 DUPTABLE                         R4 K19 [{"get"}]
       56 DUPCLOSURE                       R5 K20 [PROTO_3]
       57 SETTABLEKS                       R5 R4 K18 ["get"]
       59 SETTABLEKS                       R4 R3 K21 ["_selectionWrapper"]
       61 GETTABLEKS                       R4 R1 K22 ["boundsChangedTracker"]
       63 JUMPIF                           R4 ; [+10]
       64 DUPTABLE                         R4 K26 [{"uninstall", "install", "setSelection"}]
       65 DUPCLOSURE                       R5 K27 [PROTO_4]
       66 SETTABLEKS                       R5 R4 K23 ["uninstall"]
       68 DUPCLOSURE                       R5 K28 [PROTO_5]
       69 SETTABLEKS                       R5 R4 K24 ["install"]
       71 DUPCLOSURE                       R5 K29 [PROTO_6]
       72 SETTABLEKS                       R5 R4 K25 ["setSelection"]
       74 SETTABLEKS                       R4 R3 K30 ["_boundsChangedTracker"]
       76 GETTABLEKS                       R4 R1 K31 ["sessionAnalytics"]
       78 JUMPIF                           R4 ; [+1]
       79 DUPTABLE                         R4 K36 [{["freeformDrags"] = 0, ["handleDrags"] = 0, ["dragSelects"] = 0}]
       80 SETTABLEKS                       R4 R3 K37 ["_sessionAnalytics"]
       82 SETTABLEKS                       R2 R3 K38 ["_selectionInfo"]
       84 DUPTABLE                         R4 K40 [{"leave"}]
       85 DUPCLOSURE                       R5 K41 [PROTO_7]
       86 SETTABLEKS                       R5 R4 K39 ["leave"]
       88 SETTABLEKS                       R4 R3 K42 ["_currentState"]
       90 DUPCLOSURE                       R4 K43 [PROTO_8]
       91 SETTABLEKS                       R4 R3 K44 ["selectNextSelectables"]
       93 DUPCLOSURE                       R4 K45 [PROTO_9]
       94 SETTABLEKS                       R4 R3 K46 ["transitionToState"]
       96 DUPCLOSURE                       R4 K47 [PROTO_10]
       97 SETTABLEKS                       R4 R3 K48 ["_scheduleRender"]
       99 RETURN                           R3 1

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
       24 GETTABLEKS                       R7 R3 K9 ["Implementation"]
       26 GETTABLEKS                       R7 R7 K10 ["DraggerToolModel"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K7 [require]
       31 GETTABLEKS                       R8 R4 K11 ["SelectionInfo"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K7 [require]
       36 GETTABLEKS                       R9 R4 K12 ["Selection"]
       38 CALL                             R8 1 1
       39 NEWTABLE                         R9 1 0
       41 DUPCLOSURE                       R10 K13 [PROTO_11]
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R10 R9 K14 ["new"]
       48 RETURN                           R9 1
