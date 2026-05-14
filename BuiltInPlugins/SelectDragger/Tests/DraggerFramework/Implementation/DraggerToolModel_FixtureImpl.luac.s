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
        8 JUMPIF                           R3 ; [+15]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["new"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R6 R3 K2 ["Get"]
       19 CALL                             R6 1 1
       20 LOADN                            R7 1
       21 CALL                             R4 3 1
       22 MOVE                             R2 R4
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R2 R1 K0 ["selectionInfo"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K1 ["new"]
       29 MOVE                             R4 R0
       30 GETTABLEKS                       R5 R1 K3 ["schema"]
       32 JUMPIF                           R5 ; [+1]
       33 GETUPVAL                         R5 3
       34 DUPTABLE                         R6 K7 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag"}]
       35 GETTABLEKS                       R8 R1 K9 ["analyticsName"]
       37 ORK                              R7 R8 K8 ["TestDragger"]
       38 SETTABLEKS                       R7 R6 K4 ["AnalyticsName"]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K5 ["AllowDragSelect"]
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K6 ["AllowFreeformDrag"]
       46 GETTABLEKS                       R7 R1 K10 ["requestRenderCallback"]
       48 JUMPIF                           R7 ; [+1]
       49 DUPCLOSURE                       R7 K11 [PROTO_0]
       50 GETTABLEKS                       R8 R1 K12 ["markViewDirtyCallback"]
       52 JUMPIF                           R8 ; [+1]
       53 DUPCLOSURE                       R8 K13 [PROTO_1]
       54 GETTABLEKS                       R9 R1 K14 ["markSelectionDirtyCallback"]
       56 JUMPIF                           R9 ; [+1]
       57 DUPCLOSURE                       R9 K15 [PROTO_2]
       58 CALL                             R3 6 1
       59 GETTABLEKS                       R4 R1 K16 ["selectionWrapper"]
       61 JUMPIF                           R4 ; [+4]
       62 DUPTABLE                         R4 K18 [{"get"}]
       63 DUPCLOSURE                       R5 K19 [PROTO_3]
       64 SETTABLEKS                       R5 R4 K17 ["get"]
       66 SETTABLEKS                       R4 R3 K20 ["_selectionWrapper"]
       68 GETTABLEKS                       R4 R1 K21 ["boundsChangedTracker"]
       70 JUMPIF                           R4 ; [+10]
       71 DUPTABLE                         R4 K25 [{"uninstall", "install", "setSelection"}]
       72 DUPCLOSURE                       R5 K26 [PROTO_4]
       73 SETTABLEKS                       R5 R4 K22 ["uninstall"]
       75 DUPCLOSURE                       R5 K27 [PROTO_5]
       76 SETTABLEKS                       R5 R4 K23 ["install"]
       78 DUPCLOSURE                       R5 K28 [PROTO_6]
       79 SETTABLEKS                       R5 R4 K24 ["setSelection"]
       81 SETTABLEKS                       R4 R3 K29 ["_boundsChangedTracker"]
       83 GETTABLEKS                       R4 R1 K30 ["sessionAnalytics"]
       85 JUMPIF                           R4 ; [+10]
       86 DUPTABLE                         R4 K34 [{"freeformDrags", "handleDrags", "dragSelects"}]
       87 LOADN                            R5 0
       88 SETTABLEKS                       R5 R4 K31 ["freeformDrags"]
       90 LOADN                            R5 0
       91 SETTABLEKS                       R5 R4 K32 ["handleDrags"]
       93 LOADN                            R5 0
       94 SETTABLEKS                       R5 R4 K33 ["dragSelects"]
       96 SETTABLEKS                       R4 R3 K35 ["_sessionAnalytics"]
       98 SETTABLEKS                       R2 R3 K36 ["_selectionInfo"]
      100 DUPTABLE                         R4 K38 [{"leave"}]
      101 DUPCLOSURE                       R5 K39 [PROTO_7]
      102 SETTABLEKS                       R5 R4 K37 ["leave"]
      104 SETTABLEKS                       R4 R3 K40 ["_currentState"]
      106 DUPCLOSURE                       R4 K41 [PROTO_8]
      107 SETTABLEKS                       R4 R3 K42 ["selectNextSelectables"]
      109 DUPCLOSURE                       R4 K43 [PROTO_9]
      110 SETTABLEKS                       R4 R3 K44 ["transitionToState"]
      112 DUPCLOSURE                       R4 K45 [PROTO_10]
      113 SETTABLEKS                       R4 R3 K46 ["_scheduleRender"]
      115 RETURN                           R3 1

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
