PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLEKS                       R8 R7 K2 ["ClassName"]
       11 GETTABLE                         R9 R1 R8
       12 JUMPIF                           R9 ; [+9]
       13 LOADB                            R9 1
       14 SETTABLE                         R9 R1 R8
       15 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       17 MOVE                             R10 R2
       18 MOVE                             R11 R8
       19 GETIMPORT                        R9 K5 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R3 2 [inext] ; [-14]
       24 GETIMPORT                        R3 K7 [table.concat]
       26 MOVE                             R4 R2
       27 LOADK                            R5 K8 [","]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_1:
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
       19 GETIMPORT                        R4 K7 [game]
       21 GETTABLEKS                       R4 R4 K8 ["PlaceId"]
       23 SETTABLEKS                       R4 R3 K2 ["placeId"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K9 ["LogAnalytics"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+18]
       32 GETIMPORT                        R3 K11 [print]
       34 LOADK                            R4 K12 ["%s SendEvent eventName=%s args=%s"]
       35 LOADK                            R6 K13 ["AlignTool"]
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R8 R0
       38 GETIMPORT                        R7 K15 [tostring]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 3
       42 MOVE                             R10 R2
       43 NAMECALL                         R8 R8 K16 ["JSONEncode"]
       45 CALL                             R8 2 -1
       46 NAMECALL                         R4 R4 K17 ["format"]
       48 CALL                             R4 -1 -1
       49 CALL                             R3 -1 0
       50 GETUPVAL                         R3 1
       51 LOADK                            R5 K18 ["studio"]
       52 LOADK                            R6 K13 ["AlignTool"]
       53 MOVE                             R7 R0
       54 MOVE                             R8 R2
       55 NAMECALL                         R3 R3 K19 ["SendEventDeferred"]
       57 CALL                             R3 5 0
       58 RETURN                           R0 0

PROTO_2:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["%s ReportCounter counterName=%s count=%s"]
        9 LOADK                            R5 K5 ["AlignTool"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K7 [tostring]
       14 CALL                             R6 1 1
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 1 1
       20 NAMECALL                         R3 R3 K8 ["format"]
       22 CALL                             R3 4 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K9 ["ReportCounter"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AlignToolOpen"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AlignToolClose"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["AlignTool"]
       11 LOADK                            R6 K6 ["AlignToolImpression"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["AlignToolImpression"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R0 2
       32 LOADK                            R1 K6 ["AlignToolImpression"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 DUPTABLE                         R4 K8 [{"mode", "x", "y", "z", "coordinateSpace", "relativeTo", "objectCount", "objectTypes"}]
        4 GETTABLEKS                       R5 R2 K9 ["Mode"]
        6 SETTABLEKS                       R5 R4 K0 ["mode"]
        8 GETTABLEKS                       R5 R2 K10 ["Axes"]
       10 GETTABLEKS                       R5 R5 K11 ["X"]
       12 SETTABLEKS                       R5 R4 K1 ["x"]
       14 GETTABLEKS                       R5 R2 K10 ["Axes"]
       16 GETTABLEKS                       R5 R5 K12 ["Y"]
       18 SETTABLEKS                       R5 R4 K2 ["y"]
       20 GETTABLEKS                       R5 R2 K10 ["Axes"]
       22 GETTABLEKS                       R5 R5 K13 ["Z"]
       24 SETTABLEKS                       R5 R4 K3 ["z"]
       26 GETTABLEKS                       R5 R2 K14 ["CoordinateSpace"]
       28 SETTABLEKS                       R5 R4 K4 ["coordinateSpace"]
       30 GETTABLEKS                       R5 R2 K15 ["RelativeTo"]
       32 SETTABLEKS                       R5 R4 K5 ["relativeTo"]
       34 LENGTH                           R5 R1
       35 SETTABLEKS                       R5 R4 K6 ["objectCount"]
       37 SETTABLEKS                       R3 R4 K7 ["objectTypes"]
       39 GETUPVAL                         R5 1
       40 LOADK                            R6 K16 ["UseAlignTool"]
       41 MOVE                             R7 R4
       42 CALL                             R5 2 0
       43 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 DUPTABLE                         R3 K4 [{"alignToolOpen", "alignToolClose", "alignToolImpression", "useAlignTool"}]
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R4 R3 K0 ["alignToolOpen"]
       13 NEWCLOSURE                       R4 P3
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R4 R3 K1 ["alignToolClose"]
       17 NEWCLOSURE                       R4 P4
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R3 K2 ["alignToolImpression"]
       23 NEWCLOSURE                       R4 P5
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R3 K3 ["useAlignTool"]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Utility"]
       28 GETTABLEKS                       R4 R4 K12 ["DebugFlags"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K13 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["Dash"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K15 ["join"]
       40 DUPCLOSURE                       R6 K16 [PROTO_0]
       41 DUPCLOSURE                       R7 K17 [PROTO_7]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R6
       46 RETURN                           R7 1
