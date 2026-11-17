PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K4 [{"placeId", "calledFrom"}]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R4 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R4 R3 K2 ["placeId"]
       17 SETTABLEKS                       R0 R3 K3 ["calledFrom"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 1
       22 LOADK                            R5 K8 ["TagEditorUsage"]
       23 MOVE                             R6 R2
       24 GETIMPORT                        R7 K6 [game]
       26 LOADK                            R9 K9 ["ReportTagEditorEventsThrottleHundrethsPercent2"]
       27 NAMECALL                         R7 R7 K10 ["GetFastInt"]
       29 CALL                             R7 2 -1
       30 NAMECALL                         R3 R3 K11 ["ReportInfluxSeries"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReportCounter"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Opened"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["WorldVisualization"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ColorChanged"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["IconChanged"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["TagCreated"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ObjectTagged"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagEditorToggleWidget"]
        2 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagEditorOpenWidget"]
        2 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagEditorCloseWidget"]
        2 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 DUPTABLE                         R3 K9 [{"opened", "worldVisualization", "colorChanged", "iconChanged", "tagCreated", "objectTagged", "toggleWidget", "openWidget", "closeWidget"}]
        6 NEWCLOSURE                       R4 P2
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R4 R3 K0 ["opened"]
       10 NEWCLOSURE                       R4 P3
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K1 ["worldVisualization"]
       14 NEWCLOSURE                       R4 P4
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R4 R3 K2 ["colorChanged"]
       18 NEWCLOSURE                       R4 P5
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R3 K3 ["iconChanged"]
       22 NEWCLOSURE                       R4 P6
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R4 R3 K4 ["tagCreated"]
       26 NEWCLOSURE                       R4 P7
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K5 ["objectTagged"]
       30 NEWCLOSURE                       R4 P8
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R4 R3 K6 ["toggleWidget"]
       34 NEWCLOSURE                       R4 P9
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R4 R3 K7 ["openWidget"]
       38 NEWCLOSURE                       R4 P10
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R4 R3 K8 ["closeWidget"]
       42 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_11]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
