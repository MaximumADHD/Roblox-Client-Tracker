PROTO_0:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 ORK                              R1 R1 K0 ["WindControl"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        9 GETTABLEKS                       R3 R4 K2 ["join"]
       11 DUPTABLE                         R4 K4 [{"placeId"}]
       12 GETIMPORT                        R6 K6 [game]
       14 GETTABLEKS                       R5 R6 K7 ["PlaceId"]
       16 SETTABLEKS                       R5 R4 K3 ["placeId"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 LOADK                            R6 K8 ["studio"]
       22 MOVE                             R7 R1
       23 MOVE                             R8 R0
       24 MOVE                             R9 R3
       25 NAMECALL                         R4 R4 K9 ["SendEventDeferred"]
       27 CALL                             R4 5 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["windsockOrigin"]
        2 LOADK                            R2 K1 ["ribbon"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["windsockOrigin"]
        2 LOADK                            R2 K1 ["properties"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["widgetDisabled"]
        2 JUMP                             ; [+1]
        3 LOADK                            R1 K1 ["placeClosing"]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K2 ["totalCount"]
        7 CALL                             R2 1 1
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+25]
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K3 ["windsockUsage"]
       13 MOVE                             R4 R1
       14 DUPTABLE                         R5 K7 [{"textFieldCount", "sliderCount", "greenCircleCount"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K4 ["textFieldCount"]
       18 SETTABLEKS                       R6 R5 K4 ["textFieldCount"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K5 ["sliderCount"]
       23 SETTABLEKS                       R6 R5 K5 ["sliderCount"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K6 ["greenCircleCount"]
       28 SETTABLEKS                       R6 R5 K6 ["greenCircleCount"]
       30 CALL                             R2 3 0
       31 GETUPVAL                         R2 0
       32 NAMECALL                         R2 R2 K8 ["reset"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPTABLE                         R2 K3 [{"openedFromRibbon", "openedFromProperties", "usageReport"}]
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K0 ["openedFromRibbon"]
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K1 ["openedFromProperties"]
       12 NEWCLOSURE                       R3 P3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["usageReport"]
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["AnalyticsGlobals"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_4]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
