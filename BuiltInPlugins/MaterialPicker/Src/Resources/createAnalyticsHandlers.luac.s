PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R3 K3 [{"studioSid", "clientId", "placeId"}]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K4 ["GetSessionId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K0 ["studioSid"]
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R4 R4 K5 ["GetClientId"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K1 ["clientId"]
       19 GETIMPORT                        R5 K7 [game]
       21 GETTABLEKS                       R4 R5 K8 ["PlaceId"]
       23 SETTABLEKS                       R4 R3 K2 ["placeId"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K9 ["LogAnalytics"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+14]
       32 GETIMPORT                        R3 K11 [print]
       34 LOADK                            R4 K12 ["%s SendEvent eventName=%s args=%s"]
       35 LOADK                            R6 K13 ["MaterialPicker"]
       36 MOVE                             R7 R0
       37 GETUPVAL                         R8 3
       38 MOVE                             R10 R2
       39 NAMECALL                         R8 R8 K14 ["JSONEncode"]
       41 CALL                             R8 2 -1
       42 NAMECALL                         R4 R4 K15 ["format"]
       44 CALL                             R4 -1 -1
       45 CALL                             R3 -1 0
       46 GETUPVAL                         R3 1
       47 LOADK                            R5 K16 ["studio"]
       48 LOADK                            R6 K13 ["MaterialPicker"]
       49 MOVE                             R7 R0
       50 MOVE                             R8 R2
       51 NAMECALL                         R3 R3 K17 ["SendEventDeferred"]
       53 CALL                             R3 5 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["MaterialPickerAnalyticsThrottleHundrethsPercent"]
        3 NAMECALL                         R2 R2 K3 ["GetFastInt"]
        5 CALL                             R2 2 1
        6 MOVE                             R3 R1
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R1 R3
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["LogAnalytics"]
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+23]
       16 GETIMPORT                        R3 K6 [print]
       18 LOADK                            R4 K7 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
       19 LOADK                            R6 K8 ["MaterialPicker"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R8 R0
       22 GETIMPORT                        R7 K10 [tostring]
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 1
       26 MOVE                             R10 R1
       27 NAMECALL                         R8 R8 K11 ["JSONEncode"]
       29 CALL                             R8 2 1
       30 FASTCALL1                        TOSTRING R2 ; [+3]
       31 MOVE                             R10 R2
       32 GETIMPORT                        R9 K10 [tostring]
       34 CALL                             R9 1 1
       35 NAMECALL                         R4 R4 K12 ["format"]
       37 CALL                             R4 5 -1
       38 CALL                             R3 -1 0
       39 GETUPVAL                         R3 2
       40 MOVE                             R5 R0
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 NAMECALL                         R3 R3 K13 ["ReportInfluxSeries"]
       45 CALL                             R3 4 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 DUPTABLE                         R7 K4 [{"applicationMethod", "instancesSelectedCount", "materialIdentifier", "materialType"}]
        2 SETTABLEKS                       R1 R7 K0 ["applicationMethod"]
        4 SETTABLEKS                       R2 R7 K1 ["instancesSelectedCount"]
        6 SETTABLEKS                       R3 R7 K2 ["materialIdentifier"]
        8 SETTABLEKS                       R4 R7 K3 ["materialType"]
       10 MOVE                             R8 R5
       11 JUMPIF                           R8 ; [+2]
       12 NEWTABLE                         R8 0 0
       14 CALL                             R6 2 1
       15 SETGLOBAL                        R6 K5 ["args"]
       17 GETUPVAL                         R6 1
       18 LOADK                            R7 K6 ["MaterialPicker_MaterialApplied"]
       19 GETGLOBAL                        R8 K5 ["args"]
       21 CALL                             R6 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MaterialPicker_MaterialGeneratorOpened"]
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MaterialPicker_MaterialManagerOpened"]
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MaterialPicker_PopupOpened"]
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["MaterialPicker_FilterChipToggled"]
        2 DUPTABLE                         R5 K3 [{"filterChipName", "toggleType"}]
        3 SETTABLEKS                       R1 R5 K1 ["filterChipName"]
        5 SETTABLEKS                       R2 R5 K2 ["toggleType"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["MaterialPicker_ViewTypeToggled"]
        2 DUPTABLE                         R4 K2 [{"viewType"}]
        3 SETTABLEKS                       R1 R4 K1 ["viewType"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 DUPTABLE                         R3 K6 [{"MaterialApplied", "MaterialGeneratorOpened", "MaterialManagerOpened", "PopupOpened", "FilterChipToggled", "ViewTypeToggled"}]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R3 K0 ["MaterialApplied"]
       15 NEWCLOSURE                       R4 P3
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K1 ["MaterialGeneratorOpened"]
       19 NEWCLOSURE                       R4 P4
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R3 K2 ["MaterialManagerOpened"]
       23 NEWCLOSURE                       R4 P5
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K3 ["PopupOpened"]
       27 NEWCLOSURE                       R4 P6
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K4 ["FilterChipToggled"]
       31 NEWCLOSURE                       R4 P7
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K5 ["ViewTypeToggled"]
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Dash"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R6 R1 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["DebugFlags"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R2 K14 ["join"]
       33 GETIMPORT                        R5 K1 [game]
       35 LOADK                            R7 K15 ["MaterialPickerAnalyticsThrottleHundrethsPercent"]
       36 LOADN                            R8 0
       37 NAMECALL                         R5 R5 K16 ["DefineFastInt"]
       39 CALL                             R5 3 0
       40 DUPCLOSURE                       R5 K17 [PROTO_8]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 RETURN                           R5 1
