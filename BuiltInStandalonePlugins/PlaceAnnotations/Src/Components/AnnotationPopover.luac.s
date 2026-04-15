PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        3 GETTABLEKS                       R0 R1 K1 ["Parent"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["OnCancel"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["InProgress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R2
        3 MOVE                             R6 R1
        4 CALL                             R4 2 -1
        5 CALL                             R3 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["Annotation"]
        5 GETTABLEKS                       R3 R4 K1 ["ChannelId"]
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R0 R0 K2 ["GetChannelPreferenceAsync"]
       10 CALL                             R0 4 1
       11 GETUPVAL                         R1 4
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["Annotation"]
       11 GETTABLEKS                       R0 R1 K2 ["ChildAdded"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R0 R0 K3 ["Connect"]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K0 ["Annotation"]
       22 GETTABLEKS                       R1 R2 K4 ["ChildRemoved"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K3 ["Connect"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K0 ["Annotation"]
       33 GETTABLEKS                       R2 R3 K5 ["AncestryChanged"]
       35 NEWCLOSURE                       R4 P2
       36 CAPTURE                          UPVAL U1
       37 NAMECALL                         R2 R2 K3 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K0 ["Annotation"]
       43 GETTABLEKS                       R3 R4 K6 ["RequestInitiated"]
       45 NEWCLOSURE                       R5 P3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 NAMECALL                         R3 R3 K3 ["Connect"]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K0 ["Annotation"]
       54 GETTABLEKS                       R4 R5 K7 ["RequestCompleted"]
       56 NEWCLOSURE                       R6 P4
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U4
       59 NAMECALL                         R4 R4 K3 ["Connect"]
       61 CALL                             R4 2 1
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R5 R6 K0 ["Annotation"]
       65 LOADK                            R7 K8 ["Resolved"]
       66 NAMECALL                         R5 R5 K9 ["GetPropertyChangedSignal"]
       68 CALL                             R5 2 1
       69 GETUPVAL                         R7 5
       70 NAMECALL                         R5 R5 K3 ["Connect"]
       72 CALL                             R5 2 1
       73 GETUPVAL                         R6 6
       74 GETUPVAL                         R9 7
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R10 R11 K0 ["Annotation"]
       78 GETTABLE                         R8 R9 R10
       79 ORK                              R7 R8 K10 [""]
       80 CALL                             R6 1 0
       81 GETUPVAL                         R6 2
       82 GETUPVAL                         R8 8
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K0 ["Annotation"]
       86 CALL                             R8 1 1
       87 JUMPIFNOT                        R8 ; [+4]
       88 GETUPVAL                         R8 3
       89 GETTABLEKS                       R7 R8 K11 ["InProgress"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R7 R8 K12 ["None"]
       95 CALL                             R6 1 0
       96 GETUPVAL                         R7 9
       97 GETTABLEKS                       R6 R7 K13 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       99 JUMPIFNOT                        R6 ; [+16]
      100 GETUPVAL                         R6 10
      101 GETUPVAL                         R8 10
      102 NAMECALL                         R8 R8 K14 ["getAnnotationsPluginActionEvent"]
      104 CALL                             R8 1 1
      105 GETUPVAL                         R9 10
      106 GETUPVAL                         R12 11
      107 GETTABLEKS                       R11 R12 K15 ["PopoverOpenEvent"]
      109 GETUPVAL                         R12 12
      110 NAMECALL                         R9 R9 K16 ["getTelemetryEvent"]
      112 CALL                             R9 3 -1
      113 NAMECALL                         R6 R6 K17 ["logRobloxTelemetryEvent"]
      115 CALL                             R6 -1 0
      116 GETIMPORT                        R6 K20 [coroutine.wrap]
      118 NEWCLOSURE                       R7 P5
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          UPVAL U16
      124 CALL                             R6 1 1
      125 CALL                             R6 0 0
      126 NEWCLOSURE                       R6 P6
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R5
      133 RETURN                           R6 1

PROTO_8:
        0 LOADK                            R4 K0 ["Annotation"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 LOADK                            R4 K0 ["Annotation"]
        8 NAMECALL                         R2 R1 K1 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 GETTABLEKS                       R3 R0 K2 ["CreationTimeUnix"]
       16 GETTABLEKS                       R4 R1 K2 ["CreationTimeUnix"]
       18 JUMPIFLT                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["None"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+5]
        9 GETUPVAL                         R4 2
       10 LOADK                            R5 K1 [""]
       11 CALL                             R4 1 0
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R4 3
       14 NAMECALL                         R4 R4 K2 ["Destroy"]
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 4
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["None"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R6 2
        3 GETTABLEKS                       R5 R6 K0 ["Annotation"]
        5 GETTABLEKS                       R4 R5 K1 ["ChannelId"]
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R0
        9 NAMECALL                         R1 R1 K2 ["CreateOrUpdateChannelPreferenceAsync"]
       11 CALL                             R1 5 0
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Dropdown"]
        2 LOADK                            R4 K1 ["ZoomTo"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+10]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["zoomTo"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K4 ["Annotation"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K0 ["Dropdown"]
       19 LOADK                            R4 K5 ["Edit"]
       20 NAMECALL                         R1 R1 K2 ["getText"]
       22 CALL                             R1 3 1
       23 JUMPIFNOTEQ                      R0 R1 ; [+12]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K6 ["current"]
       28 JUMPIFNOT                        R1 ; [+60]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R2 R3 K6 ["current"]
       32 GETTABLEKS                       R1 R2 K7 ["beginEditing"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 0
       37 LOADK                            R3 K0 ["Dropdown"]
       38 LOADK                            R4 K8 ["Unsubscribe"]
       39 NAMECALL                         R1 R1 K2 ["getText"]
       41 CALL                             R1 3 1
       42 JUMPIFNOTEQ                      R0 R1 ; [+20]
       44 GETUPVAL                         R2 5
       45 GETTABLEKS                       R1 R2 K9 ["None"]
       47 GETUPVAL                         R2 6
       48 GETUPVAL                         R4 7
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K4 ["Annotation"]
       52 GETTABLEKS                       R5 R6 K10 ["ChannelId"]
       54 GETUPVAL                         R6 8
       55 MOVE                             R7 R1
       56 NAMECALL                         R2 R2 K11 ["CreateOrUpdateChannelPreferenceAsync"]
       58 CALL                             R2 5 0
       59 GETUPVAL                         R2 9
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R1 0
       64 LOADK                            R3 K0 ["Dropdown"]
       65 LOADK                            R4 K12 ["Subscribe"]
       66 NAMECALL                         R1 R1 K2 ["getText"]
       68 CALL                             R1 3 1
       69 JUMPIFNOTEQ                      R0 R1 ; [+19]
       71 GETUPVAL                         R2 5
       72 GETTABLEKS                       R1 R2 K13 ["All"]
       74 GETUPVAL                         R2 6
       75 GETUPVAL                         R4 7
       76 GETUPVAL                         R7 3
       77 GETTABLEKS                       R6 R7 K4 ["Annotation"]
       79 GETTABLEKS                       R5 R6 K10 ["ChannelId"]
       81 GETUPVAL                         R6 8
       82 MOVE                             R7 R1
       83 NAMECALL                         R2 R2 K11 ["CreateOrUpdateChannelPreferenceAsync"]
       85 CALL                             R2 5 0
       86 GETUPVAL                         R2 9
       87 MOVE                             R3 R1
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnCancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setAnnotationResolved"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["Annotation"]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K1 ["Annotation"]
       10 GETTABLEKS                       R4 R5 K2 ["Resolved"]
       12 NOT                              R3 R4
       13 CALL                             R0 3 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K1 ["Annotation"]
       17 GETTABLEKS                       R0 R1 K2 ["Resolved"]
       19 JUMPIF                           R0 ; [+12]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R0 R1 K1 ["Annotation"]
       23 LOADK                            R2 K2 ["Resolved"]
       24 NAMECALL                         R0 R0 K3 ["GetPropertyChangedSignal"]
       26 CALL                             R0 2 1
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U2
       29 NAMECALL                         R0 R0 K4 ["Once"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["Annotation"]
        7 SETTABLE                         R0 R1 R2
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["Annotation"]
        7 LOADK                            R2 K0 [""]
        8 SETTABLE                         R2 R0 R1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K2 ["OnCancel"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["InProgress"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["DraftAnnotationInstance"]
        8 LOADNIL                          R2
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["Annotation"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 4
       16 CALL                             R2 2 2
       17 SETTABLEKS                       R2 R1 K3 ["TaggedUsers"]
       19 SETTABLEKS                       R3 R1 K4 ["Contents"]
       21 GETUPVAL                         R4 5
       22 MOVE                             R6 R1
       23 NAMECALL                         R4 R4 K5 ["CreateAnnotation"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["deleteAnnotation"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R2 R3 K1 ["Annotation"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReducer"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 0
        5 CALL                             R1 2 2
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R3 R3 K1 ["use"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 3
       11 NAMECALL                         R4 R4 K1 ["use"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R4 R4 K2 ["get"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R6 R7 K3 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       20 JUMPIFNOT                        R6 ; [+5]
       21 GETUPVAL                         R5 5
       22 NAMECALL                         R5 R5 K1 ["use"]
       24 CALL                             R5 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K4 ["useState"]
       30 GETTABLEKS                       R7 R0 K5 ["Annotation"]
       32 NAMECALL                         R7 R7 K6 ["GetChildren"]
       34 CALL                             R7 1 -1
       35 CALL                             R6 -1 2
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K4 ["useState"]
       39 LOADK                            R9 K7 [""]
       40 CALL                             R8 1 2
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R10 R11 K8 ["useRef"]
       44 LOADNIL                          R11
       45 CALL                             R10 1 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R11 R12 K4 ["useState"]
       49 LOADB                            R12 0
       50 CALL                             R11 1 2
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R13 R14 K4 ["useState"]
       54 LOADB                            R14 0
       55 CALL                             R13 1 2
       56 GETUPVAL                         R16 0
       57 GETTABLEKS                       R15 R16 K4 ["useState"]
       59 GETUPVAL                         R17 6
       60 GETTABLEKS                       R18 R0 K5 ["Annotation"]
       62 CALL                             R17 1 1
       63 JUMPIFNOT                        R17 ; [+4]
       64 GETUPVAL                         R17 7
       65 GETTABLEKS                       R16 R17 K9 ["InProgress"]
       67 JUMP                             ; [+3]
       68 GETUPVAL                         R17 7
       69 GETTABLEKS                       R16 R17 K10 ["None"]
       71 CALL                             R15 1 2
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R17 R18 K4 ["useState"]
       75 GETUPVAL                         R19 8
       76 GETTABLEKS                       R20 R0 K5 ["Annotation"]
       78 CALL                             R19 1 1
       79 JUMPIFNOT                        R19 ; [+4]
       80 GETUPVAL                         R19 7
       81 GETTABLEKS                       R18 R19 K9 ["InProgress"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R19 7
       85 GETTABLEKS                       R18 R19 K10 ["None"]
       87 CALL                             R17 1 2
       88 GETUPVAL                         R20 0
       89 GETTABLEKS                       R19 R20 K11 ["useContext"]
       91 GETUPVAL                         R20 9
       92 CALL                             R19 1 1
       93 GETTABLEKS                       R20 R19 K12 ["joinedTaggableUsersMap"]
       95 GETTABLEKS                       R21 R19 K13 ["isTaggableUsersErrorStatus"]
       97 GETUPVAL                         R23 0
       98 GETTABLEKS                       R22 R23 K4 ["useState"]
      100 GETUPVAL                         R24 10
      101 GETTABLEKS                       R23 R24 K14 ["All"]
      103 CALL                             R22 1 2
      104 GETUPVAL                         R24 11
      105 NAMECALL                         R24 R24 K1 ["use"]
      107 CALL                             R24 1 1
      108 NAMECALL                         R24 R24 K2 ["get"]
      110 CALL                             R24 1 1
      111 GETUPVAL                         R28 12
      112 GETTABLEKS                       R27 R28 K15 ["PlaceIdKey"]
      114 NAMECALL                         R25 R4 K16 ["GetItem"]
      116 CALL                             R25 2 1
      117 GETUPVAL                         R26 13
      118 NAMECALL                         R26 R26 K17 ["GetUserId"]
      120 CALL                             R26 1 1
      121 GETUPVAL                         R28 0
      122 GETTABLEKS                       R27 R28 K18 ["useEffect"]
      124 NEWCLOSURE                       R28 P0
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R16
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U14
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R9
      132 CAPTURE                          UPVAL U15
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          VAL R5
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R24
      139 CAPTURE                          VAL R26
      140 CAPTURE                          VAL R25
      141 CAPTURE                          VAL R23
      142 NEWTABLE                         R29 0 1
      144 GETTABLEKS                       R30 R0 K5 ["Annotation"]
      146 SETLIST                          R29 R30 1 [1]
      148 CALL                             R27 2 0
      149 NEWTABLE                         R27 0 0
      151 GETIMPORT                        R28 K21 [table.sort]
      153 MOVE                             R29 R6
      154 DUPCLOSURE                       R30 K22 [PROTO_8]
      155 CALL                             R28 2 0
      156 GETIMPORT                        R28 K24 [ipairs]
      158 MOVE                             R29 R6
      159 CALL                             R28 1 3
      160 FORGPREP_INEXT                   R28
      161 LOADK                            R35 K5 ["Annotation"]
      162 NAMECALL                         R33 R32 K25 ["IsA"]
      164 CALL                             R33 2 1
      165 JUMPIF                           R33 ; [+1]
      166 JUMP                             ; [+48]
      167 GETUPVAL                         R33 16
      168 MOVE                             R34 R32
      169 CALL                             R33 1 1
      170 JUMPIFNOT                        R33 ; [+12]
      171 GETTABLEKS                       R33 R32 K26 ["RequestCompleted"]
      173 NEWCLOSURE                       R35 P2
      174 CAPTURE                          UPVAL U14
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R32
      178 CAPTURE                          VAL R18
      179 NAMECALL                         R33 R33 K27 ["Once"]
      181 CALL                             R33 2 0
      182 JUMP                             ; [+32]
      183 LOADK                            R35 K28 ["IsDraft"]
      184 NAMECALL                         R33 R32 K29 ["GetAttribute"]
      186 CALL                             R33 2 1
      187 JUMPIF                           R33 ; [+27]
      188 MOVE                             R34 R27
      189 GETUPVAL                         R36 0
      190 GETTABLEKS                       R35 R36 K30 ["createElement"]
      192 GETUPVAL                         R36 17
      193 DUPTABLE                         R37 K35 [{"LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      194 SETTABLEKS                       R31 R37 K31 ["LayoutOrder"]
      196 SETTABLEKS                       R32 R37 K5 ["Annotation"]
      198 NEWCLOSURE                       R38 P3
      199 CAPTURE                          VAL R12
      200 SETTABLEKS                       R38 R37 K32 ["ToggleEditing"]
      202 GETTABLEKS                       R38 R0 K33 ["SetIsTagDropdownOpen"]
      204 SETTABLEKS                       R38 R37 K33 ["SetIsTagDropdownOpen"]
      206 GETTABLEKS                       R38 R0 K34 ["IsTagDropdownOpen"]
      208 SETTABLEKS                       R38 R37 K34 ["IsTagDropdownOpen"]
      210 CALL                             R35 2 -1
      211 FASTCALL                         TABLE_INSERT ; [+2]
      212 GETIMPORT                        R33 K37 [table.insert]
      214 CALL                             R33 -1 0
      215 FORGLOOP                         R28 2 [inext] ; [-55]
      217 GETTABLEKS                       R30 R0 K5 ["Annotation"]
      219 GETTABLEKS                       R29 R30 K38 ["AuthorId"]
      221 GETUPVAL                         R30 13
      222 NAMECALL                         R30 R30 K17 ["GetUserId"]
      224 CALL                             R30 1 1
      225 JUMPIFEQ                         R29 R30 ; [+2]
      227 LOADB                            R28 0 +1
      228 LOADB                            R28 1
      229 FASTCALL1                        STRING_LEN R8 ; [+3]
      230 MOVE                             R31 R8
      231 GETIMPORT                        R30 K41 [string.len]
      233 CALL                             R30 1 1
      234 GETUPVAL                         R31 18
      235 JUMPIFLT                         R31 R30 ; [+2]
      237 LOADB                            R29 0 +1
      238 LOADB                            R29 1
      239 LOADB                            R30 0
      240 GETUPVAL                         R32 7
      241 GETTABLEKS                       R31 R32 K9 ["InProgress"]
      243 JUMPIFEQ                         R17 R31 ; [+8]
      245 LOADB                            R30 0
      246 GETUPVAL                         R32 7
      247 GETTABLEKS                       R31 R32 K9 ["InProgress"]
      249 JUMPIFEQ                         R15 R31 ; [+2]
      251 NOT                              R30 R11
      252 GETUPVAL                         R32 19
      253 MOVE                             R33 R15
      254 CALL                             R32 1 1
      255 JUMPIFNOT                        R32 ; [+71]
      256 GETUPVAL                         R32 0
      257 GETTABLEKS                       R31 R32 K30 ["createElement"]
      259 LOADK                            R32 K42 ["Frame"]
      260 DUPTABLE                         R33 K46 [{"LayoutOrder", "ZIndex", "Size", "BackgroundTransparency"}]
      261 LOADN                            R34 255
      262 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      264 LOADN                            R34 100
      265 SETTABLEKS                       R34 R33 K43 ["ZIndex"]
      267 GETIMPORT                        R34 K49 [UDim2.new]
      269 LOADN                            R35 1
      270 LOADN                            R36 0
      271 LOADN                            R37 0
      272 LOADN                            R38 252
      273 CALL                             R34 4 1
      274 SETTABLEKS                       R34 R33 K44 ["Size"]
      276 LOADN                            R34 1
      277 SETTABLEKS                       R34 R33 K45 ["BackgroundTransparency"]
      279 DUPTABLE                         R34 K51 [{"Alert"}]
      280 GETUPVAL                         R36 0
      281 GETTABLEKS                       R35 R36 K30 ["createElement"]
      283 GETUPVAL                         R36 20
      284 DUPTABLE                         R37 K57 [{"Message", "AnchorPoint", "Position", "Size", "IsPopup", "OnClose"}]
      285 GETUPVAL                         R38 21
      286 MOVE                             R39 R15
      287 GETTABLEKS                       R40 R0 K5 ["Annotation"]
      289 MOVE                             R41 R3
      290 CALL                             R38 3 1
      291 SETTABLEKS                       R38 R37 K52 ["Message"]
      293 GETIMPORT                        R38 K59 [Vector2.new]
      295 LOADK                            R39 K60 [0.5]
      296 LOADN                            R40 0
      297 CALL                             R38 2 1
      298 SETTABLEKS                       R38 R37 K53 ["AnchorPoint"]
      300 GETIMPORT                        R38 K62 [UDim2.fromScale]
      302 LOADK                            R39 K60 [0.5]
      303 LOADN                            R40 0
      304 CALL                             R38 2 1
      305 SETTABLEKS                       R38 R37 K54 ["Position"]
      307 GETIMPORT                        R38 K62 [UDim2.fromScale]
      309 LOADK                            R39 K63 [0.75]
      310 LOADN                            R40 0
      311 CALL                             R38 2 1
      312 SETTABLEKS                       R38 R37 K44 ["Size"]
      314 LOADB                            R38 1
      315 SETTABLEKS                       R38 R37 K55 ["IsPopup"]
      317 NEWCLOSURE                       R38 P4
      318 CAPTURE                          VAL R16
      319 CAPTURE                          UPVAL U7
      320 SETTABLEKS                       R38 R37 K56 ["OnClose"]
      322 CALL                             R35 2 1
      323 SETTABLEKS                       R35 R34 K50 ["Alert"]
      325 CALL                             R31 3 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R31
      328 NEWCLOSURE                       R32 P5
      329 CAPTURE                          VAL R24
      330 CAPTURE                          VAL R26
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R25
      333 CAPTURE                          VAL R23
      334 GETUPVAL                         R34 0
      335 GETTABLEKS                       R33 R34 K30 ["createElement"]
      337 GETUPVAL                         R34 22
      338 DUPTABLE                         R35 K66 [{"Width", "Position", "OnFocusLost"}]
      339 LOADN                            R36 94
      340 SETTABLEKS                       R36 R35 K64 ["Width"]
      342 GETTABLEKS                       R36 R0 K54 ["Position"]
      344 SETTABLEKS                       R36 R35 K54 ["Position"]
      346 GETTABLEKS                       R36 R0 K67 ["OnCancel"]
      348 SETTABLEKS                       R36 R35 K65 ["OnFocusLost"]
      350 DUPTABLE                         R36 K75 [{"ErrorBanner", "Header", "ContentWrapper", "ReplyBox", "ReplyError", "Footer", "Popup"}]
      351 SETTABLEKS                       R31 R36 K68 ["ErrorBanner"]
      353 GETUPVAL                         R38 0
      354 GETTABLEKS                       R37 R38 K30 ["createElement"]
      356 GETUPVAL                         R38 23
      357 DUPTABLE                         R39 K77 [{"DataModel", "Annotation"}]
      358 LOADK                            R40 K78 ["Edit"]
      359 SETTABLEKS                       R40 R39 K76 ["DataModel"]
      361 GETTABLEKS                       R40 R0 K5 ["Annotation"]
      363 SETTABLEKS                       R40 R39 K5 ["Annotation"]
      365 DUPTABLE                         R40 K82 [{"MoreIcon", "ResolveButton", "CloseButton"}]
      366 GETUPVAL                         R42 0
      367 GETTABLEKS                       R41 R42 K30 ["createElement"]
      369 GETUPVAL                         R42 24
      370 NEWTABLE                         R43 8 0
      372 NEWTABLE                         R44 0 4
      374 JUMPIFNOT                        R28 ; [+6]
      375 LOADK                            R47 K83 ["Dropdown"]
      376 LOADK                            R48 K78 ["Edit"]
      377 NAMECALL                         R45 R3 K84 ["getText"]
      379 CALL                             R45 3 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R45
      382 LOADK                            R48 K83 ["Dropdown"]
      383 LOADK                            R49 K85 ["ZoomTo"]
      384 NAMECALL                         R46 R3 K84 ["getText"]
      386 CALL                             R46 3 1
      387 GETUPVAL                         R49 10
      388 GETTABLEKS                       R48 R49 K14 ["All"]
      390 JUMPIFNOTEQ                      R22 R48 ; [+7]
      392 LOADK                            R49 K83 ["Dropdown"]
      393 LOADK                            R50 K86 ["Unsubscribe"]
      394 NAMECALL                         R47 R3 K84 ["getText"]
      396 CALL                             R47 3 1
      397 JUMP                             ; [+5]
      398 LOADK                            R49 K83 ["Dropdown"]
      399 LOADK                            R50 K87 ["Subscribe"]
      400 NAMECALL                         R47 R3 K84 ["getText"]
      402 CALL                             R47 3 1
      403 JUMPIFNOT                        R28 ; [+28]
      404 GETUPVAL                         R49 0
      405 GETTABLEKS                       R48 R49 K30 ["createElement"]
      407 LOADK                            R49 K88 ["TextButton"]
      408 NEWTABLE                         R50 4 0
      410 LOADK                            R53 K83 ["Dropdown"]
      411 LOADK                            R54 K89 ["DeleteThread"]
      412 NAMECALL                         R51 R3 K84 ["getText"]
      414 CALL                             R51 3 1
      415 SETTABLEKS                       R51 R50 K90 ["Text"]
      417 GETUPVAL                         R53 0
      418 GETTABLEKS                       R52 R53 K91 ["Event"]
      420 GETTABLEKS                       R51 R52 K92 ["Activated"]
      422 NEWCLOSURE                       R52 P6
      423 CAPTURE                          VAL R14
      424 SETTABLE                         R52 R50 R51
      425 GETUPVAL                         R52 0
      426 GETTABLEKS                       R51 R52 K93 ["Tag"]
      428 LOADK                            R52 K94 ["Component-DropdownItem Delete"]
      429 SETTABLE                         R52 R50 R51
      430 CALL                             R48 2 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R48
      433 SETLIST                          R44 R45 4 [1]
      435 SETTABLEKS                       R44 R43 K95 ["DropdownItems"]
      437 NEWCLOSURE                       R44 P7
      438 CAPTURE                          VAL R3
      439 CAPTURE                          UPVAL U25
      440 CAPTURE                          VAL R4
      441 CAPTURE                          VAL R0
      442 CAPTURE                          VAL R10
      443 CAPTURE                          UPVAL U10
      444 CAPTURE                          VAL R24
      445 CAPTURE                          VAL R26
      446 CAPTURE                          VAL R25
      447 CAPTURE                          VAL R23
      448 SETTABLEKS                       R44 R43 K96 ["OnSelect"]
      450 GETUPVAL                         R46 7
      451 GETTABLEKS                       R45 R46 K9 ["InProgress"]
      453 JUMPIFEQ                         R15 R45 ; [+2]
      455 LOADB                            R44 0 +1
      456 LOADB                            R44 1
      457 SETTABLEKS                       R44 R43 K97 ["Disabled"]
      459 LOADN                            R44 1
      460 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      462 GETUPVAL                         R45 0
      463 GETTABLEKS                       R44 R45 K93 ["Tag"]
      465 GETUPVAL                         R47 7
      466 GETTABLEKS                       R46 R47 K9 ["InProgress"]
      468 JUMPIFNOTEQ                      R15 R46 ; [+3]
      470 LOADK                            R45 K97 ["Disabled"]
      471 JUMP                             ; [+1]
      472 LOADNIL                          R45
      473 SETTABLE                         R45 R43 R44
      474 CALL                             R41 2 1
      475 SETTABLEKS                       R41 R40 K79 ["MoreIcon"]
      477 GETUPVAL                         R42 0
      478 GETTABLEKS                       R41 R42 K30 ["createElement"]
      480 GETUPVAL                         R42 26
      481 DUPTABLE                         R43 K100 [{"Resolved", "Disabled", "OnClick", "LayoutOrder"}]
      482 GETTABLEKS                       R45 R0 K5 ["Annotation"]
      484 GETTABLEKS                       R44 R45 K98 ["Resolved"]
      486 SETTABLEKS                       R44 R43 K98 ["Resolved"]
      488 GETUPVAL                         R46 7
      489 GETTABLEKS                       R45 R46 K9 ["InProgress"]
      491 JUMPIFEQ                         R15 R45 ; [+2]
      493 LOADB                            R44 0 +1
      494 LOADB                            R44 1
      495 SETTABLEKS                       R44 R43 K97 ["Disabled"]
      497 NEWCLOSURE                       R44 P8
      498 CAPTURE                          UPVAL U25
      499 CAPTURE                          VAL R4
      500 CAPTURE                          VAL R0
      501 SETTABLEKS                       R44 R43 K99 ["OnClick"]
      503 LOADN                            R44 2
      504 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      506 CALL                             R41 2 1
      507 SETTABLEKS                       R41 R40 K80 ["ResolveButton"]
      509 GETUPVAL                         R42 0
      510 GETTABLEKS                       R41 R42 K30 ["createElement"]
      512 LOADK                            R42 K88 ["TextButton"]
      513 NEWTABLE                         R43 4 0
      515 GETUPVAL                         R46 0
      516 GETTABLEKS                       R45 R46 K91 ["Event"]
      518 GETTABLEKS                       R44 R45 K92 ["Activated"]
      520 GETTABLEKS                       R45 R0 K67 ["OnCancel"]
      522 SETTABLE                         R45 R43 R44
      523 LOADN                            R44 3
      524 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      526 GETUPVAL                         R45 0
      527 GETTABLEKS                       R44 R45 K93 ["Tag"]
      529 LOADK                            R45 K81 ["CloseButton"]
      530 SETTABLE                         R45 R43 R44
      531 DUPTABLE                         R44 K102 [{"CloseIcon"}]
      532 GETUPVAL                         R46 0
      533 GETTABLEKS                       R45 R46 K30 ["createElement"]
      535 LOADK                            R46 K103 ["ImageLabel"]
      536 NEWTABLE                         R47 1 0
      538 GETUPVAL                         R49 0
      539 GETTABLEKS                       R48 R49 K93 ["Tag"]
      541 LOADK                            R49 K104 ["CloseIcon X-Transparent"]
      542 SETTABLE                         R49 R47 R48
      543 CALL                             R45 2 1
      544 SETTABLEKS                       R45 R44 K101 ["CloseIcon"]
      546 CALL                             R41 3 1
      547 SETTABLEKS                       R41 R40 K81 ["CloseButton"]
      549 CALL                             R37 3 1
      550 SETTABLEKS                       R37 R36 K69 ["Header"]
      552 GETUPVAL                         R38 0
      553 GETTABLEKS                       R37 R38 K30 ["createElement"]
      555 GETUPVAL                         R38 27
      556 DUPTABLE                         R39 K106 [{"LayoutOrder", "MaxY"}]
      557 LOADN                            R40 1
      558 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      560 LOADN                            R40 250
      561 SETTABLEKS                       R40 R39 K105 ["MaxY"]
      563 NEWTABLE                         R40 1 1
      565 GETUPVAL                         R43 0
      566 GETTABLEKS                       R42 R43 K30 ["createElement"]
      568 GETUPVAL                         R43 17
      569 DUPTABLE                         R44 K108 [{"ref", "LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      570 SETTABLEKS                       R10 R44 K107 ["ref"]
      572 LOADN                            R45 0
      573 SETTABLEKS                       R45 R44 K31 ["LayoutOrder"]
      575 GETTABLEKS                       R45 R0 K5 ["Annotation"]
      577 SETTABLEKS                       R45 R44 K5 ["Annotation"]
      579 NEWCLOSURE                       R45 P9
      580 CAPTURE                          VAL R12
      581 SETTABLEKS                       R45 R44 K32 ["ToggleEditing"]
      583 GETTABLEKS                       R45 R0 K33 ["SetIsTagDropdownOpen"]
      585 SETTABLEKS                       R45 R44 K33 ["SetIsTagDropdownOpen"]
      587 GETTABLEKS                       R45 R0 K34 ["IsTagDropdownOpen"]
      589 SETTABLEKS                       R45 R44 K34 ["IsTagDropdownOpen"]
      591 CALL                             R42 2 1
      592 SETTABLEKS                       R42 R40 K109 ["Comment"]
      594 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
      595 MOVE                             R42 R27
      596 GETIMPORT                        R41 K111 [table.unpack]
      598 CALL                             R41 1 -1
      599 SETLIST                          R40 R41 -1 [1]
      601 CALL                             R37 3 1
      602 SETTABLEKS                       R37 R36 K70 ["ContentWrapper"]
      604 JUMPIF                           R11 ; [+92]
      605 GETUPVAL                         R38 0
      606 GETTABLEKS                       R37 R38 K30 ["createElement"]
      608 LOADK                            R38 K42 ["Frame"]
      609 NEWTABLE                         R39 8 0
      611 LOADN                            R40 2
      612 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      614 LOADN                            R40 1
      615 SETTABLEKS                       R40 R39 K45 ["BackgroundTransparency"]
      617 GETIMPORT                        R40 K115 [Enum.AutomaticSize.Y]
      619 SETTABLEKS                       R40 R39 K113 ["AutomaticSize"]
      621 GETIMPORT                        R40 K62 [UDim2.fromScale]
      623 LOADN                            R41 1
      624 LOADN                            R42 0
      625 CALL                             R40 2 1
      626 SETTABLEKS                       R40 R39 K44 ["Size"]
      628 GETUPVAL                         R41 0
      629 GETTABLEKS                       R40 R41 K93 ["Tag"]
      631 LOADK                            R41 K116 ["X-RowM"]
      632 SETTABLE                         R41 R39 R40
      633 DUPTABLE                         R40 K119 [{"Avatar", "TextInput"}]
      634 GETUPVAL                         R42 0
      635 GETTABLEKS                       R41 R42 K30 ["createElement"]
      637 LOADK                            R42 K103 ["ImageLabel"]
      638 NEWTABLE                         R43 4 0
      640 LOADK                            R45 K120 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      641 GETUPVAL                         R47 13
      642 NAMECALL                         R47 R47 K17 ["GetUserId"]
      644 CALL                             R47 1 1
      645 NAMECALL                         R45 R45 K121 ["format"]
      647 CALL                             R45 2 1
      648 MOVE                             R44 R45
      649 SETTABLEKS                       R44 R43 K122 ["Image"]
      651 LOADN                            R44 0
      652 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      654 GETUPVAL                         R45 0
      655 GETTABLEKS                       R44 R45 K93 ["Tag"]
      657 LOADK                            R45 K123 ["Component-Avatar"]
      658 SETTABLE                         R45 R43 R44
      659 CALL                             R41 2 1
      660 SETTABLEKS                       R41 R40 K117 ["Avatar"]
      662 GETUPVAL                         R42 0
      663 GETTABLEKS                       R41 R42 K30 ["createElement"]
      665 GETUPVAL                         R42 28
      666 DUPTABLE                         R43 K127 [{"Key", "LayoutOrder", "Text", "PlaceholderText", "OnTextChanged", "Disabled"}]
      667 GETTABLEKS                       R44 R0 K5 ["Annotation"]
      669 SETTABLEKS                       R44 R43 K124 ["Key"]
      671 LOADN                            R44 1
      672 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      674 SETTABLEKS                       R8 R43 K90 ["Text"]
      676 LOADK                            R46 K128 ["Reply"]
      677 LOADK                            R47 K129 ["Placeholder"]
      678 NAMECALL                         R44 R3 K84 ["getText"]
      680 CALL                             R44 3 1
      681 SETTABLEKS                       R44 R43 K125 ["PlaceholderText"]
      683 NEWCLOSURE                       R44 P10
      684 CAPTURE                          VAL R9
      685 CAPTURE                          UPVAL U15
      686 CAPTURE                          VAL R0
      687 SETTABLEKS                       R44 R43 K126 ["OnTextChanged"]
      689 NOT                              R44 R30
      690 SETTABLEKS                       R44 R43 K97 ["Disabled"]
      692 CALL                             R41 2 1
      693 SETTABLEKS                       R41 R40 K118 ["TextInput"]
      695 CALL                             R37 3 1
      696 JUMP                             ; [+1]
      697 LOADNIL                          R37
      698 SETTABLEKS                       R37 R36 K71 ["ReplyBox"]
      700 JUMPIF                           R11 ; [+63]
      701 GETUPVAL                         R38 19
      702 MOVE                             R39 R17
      703 MOVE                             R40 R8
      704 MOVE                             R41 R21
      705 CALL                             R38 3 1
      706 JUMPIF                           R38 ; [+1]
      707 JUMPIFNOT                        R29 ; [+56]
      708 GETUPVAL                         R38 0
      709 GETTABLEKS                       R37 R38 K30 ["createElement"]
      711 GETUPVAL                         R38 20
      712 DUPTABLE                         R39 K131 [{"LayoutOrder", "Position", "Message", "UIPadding"}]
      713 LOADN                            R40 3
      714 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      716 GETIMPORT                        R40 K133 [UDim2.fromOffset]
      718 LOADN                            R41 42
      719 LOADN                            R42 0
      720 CALL                             R40 2 1
      721 SETTABLEKS                       R40 R39 K54 ["Position"]
      723 JUMPIFNOT                        R29 ; [+14]
      724 LOADK                            R42 K118 ["TextInput"]
      725 LOADK                            R43 K134 ["LengthExceeded"]
      726 DUPTABLE                         R44 K136 [{"maxLength"}]
      727 GETUPVAL                         R46 18
      728 FASTCALL1                        TOSTRING R46 ; [+2]
      729 GETIMPORT                        R45 K138 [tostring]
      731 CALL                             R45 1 1
      732 SETTABLEKS                       R45 R44 K135 ["maxLength"]
      734 NAMECALL                         R40 R3 K84 ["getText"]
      736 CALL                             R40 4 1
      737 JUMP                             ; [+7]
      738 GETUPVAL                         R40 21
      739 MOVE                             R41 R17
      740 LOADNIL                          R42
      741 MOVE                             R43 R3
      742 MOVE                             R44 R8
      743 MOVE                             R45 R21
      744 CALL                             R40 5 1
      745 SETTABLEKS                       R40 R39 K52 ["Message"]
      747 GETUPVAL                         R41 0
      748 GETTABLEKS                       R40 R41 K30 ["createElement"]
      750 LOADK                            R41 K130 ["UIPadding"]
      751 DUPTABLE                         R42 K140 [{"PaddingLeft"}]
      752 GETIMPORT                        R43 K142 [UDim.new]
      754 LOADN                            R44 0
      755 LOADN                            R45 42
      756 CALL                             R43 2 1
      757 SETTABLEKS                       R43 R42 K139 ["PaddingLeft"]
      759 CALL                             R40 2 1
      760 SETTABLEKS                       R40 R39 K130 ["UIPadding"]
      762 CALL                             R37 2 1
      763 JUMP                             ; [+1]
      764 LOADNIL                          R37
      765 SETTABLEKS                       R37 R36 K72 ["ReplyError"]
      767 JUMPIFNOT                        R30 ; [+27]
      768 GETUPVAL                         R38 0
      769 GETTABLEKS                       R37 R38 K30 ["createElement"]
      771 GETUPVAL                         R38 29
      772 DUPTABLE                         R39 K144 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      773 LOADN                            R40 4
      774 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      776 SETTABLEKS                       R8 R39 K90 ["Text"]
      778 NEWCLOSURE                       R40 P11
      779 CAPTURE                          VAL R9
      780 CAPTURE                          UPVAL U15
      781 CAPTURE                          VAL R0
      782 SETTABLEKS                       R40 R39 K67 ["OnCancel"]
      784 NEWCLOSURE                       R40 P12
      785 CAPTURE                          VAL R18
      786 CAPTURE                          UPVAL U7
      787 CAPTURE                          VAL R0
      788 CAPTURE                          UPVAL U30
      789 CAPTURE                          VAL R20
      790 CAPTURE                          UPVAL U31
      791 SETTABLEKS                       R40 R39 K143 ["OnSubmit"]
      793 CALL                             R37 2 1
      794 JUMP                             ; [+1]
      795 LOADNIL                          R37
      796 SETTABLEKS                       R37 R36 K73 ["Footer"]
      798 MOVE                             R37 R13
      799 JUMPIFNOT                        R37 ; [+24]
      800 GETUPVAL                         R38 0
      801 GETTABLEKS                       R37 R38 K30 ["createElement"]
      803 GETUPVAL                         R38 32
      804 DUPTABLE                         R39 K146 [{"Text", "OnCancel", "OnDelete"}]
      805 LOADK                            R42 K147 ["ConfirmDeleteDialog"]
      806 LOADK                            R43 K89 ["DeleteThread"]
      807 NAMECALL                         R40 R3 K84 ["getText"]
      809 CALL                             R40 3 1
      810 SETTABLEKS                       R40 R39 K90 ["Text"]
      812 NEWCLOSURE                       R40 P13
      813 CAPTURE                          VAL R14
      814 SETTABLEKS                       R40 R39 K67 ["OnCancel"]
      816 NEWCLOSURE                       R40 P14
      817 CAPTURE                          VAL R14
      818 CAPTURE                          UPVAL U25
      819 CAPTURE                          VAL R4
      820 CAPTURE                          VAL R0
      821 SETTABLEKS                       R40 R39 K145 ["OnDelete"]
      823 CALL                             R37 2 1
      824 SETTABLEKS                       R37 R36 K74 ["Popup"]
      826 CALL                             R33 3 -1
      827 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Bin"]
       25 GETTABLEKS                       R5 R6 K10 ["Common"]
       27 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Src"]
       34 GETTABLEKS                       R7 R8 K13 ["Util"]
       36 GETTABLEKS                       R6 R7 K14 ["CrossDMCommunication"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R4 R5 K15 ["Edit"]
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Util"]
       47 GETTABLEKS                       R6 R7 K16 ["AnnotationRequestUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R9 K13 ["Util"]
       56 GETTABLEKS                       R7 R8 K17 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K12 ["Src"]
       63 GETTABLEKS                       R8 R9 K18 ["Types"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       68 GETTABLEKS                       R9 R8 K20 ["Plugin"]
       70 GETTABLEKS                       R10 R8 K21 ["Localization"]
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K12 ["Src"]
       76 GETTABLEKS                       R13 R14 K22 ["Contexts"]
       78 GETTABLEKS                       R12 R13 K23 ["TelemetryContext"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K12 ["Src"]
       85 GETTABLEKS                       R14 R15 K24 ["Components"]
       87 GETTABLEKS                       R13 R14 K25 ["PopoverBase"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R16 R0 K12 ["Src"]
       94 GETTABLEKS                       R15 R16 K24 ["Components"]
       96 GETTABLEKS                       R14 R15 K26 ["AnnotationContents"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R17 R0 K12 ["Src"]
      103 GETTABLEKS                       R16 R17 K24 ["Components"]
      105 GETTABLEKS                       R15 R16 K27 ["CancelSubmitFooter"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R18 R0 K12 ["Src"]
      112 GETTABLEKS                       R17 R18 K24 ["Components"]
      114 GETTABLEKS                       R16 R17 K28 ["SizedScrollingFrame"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R19 R0 K12 ["Src"]
      121 GETTABLEKS                       R18 R19 K24 ["Components"]
      123 GETTABLEKS                       R17 R18 K29 ["DropdownButton"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R20 R0 K12 ["Src"]
      130 GETTABLEKS                       R19 R20 K24 ["Components"]
      132 GETTABLEKS                       R18 R19 K30 ["ResolveButton"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R21 R0 K12 ["Src"]
      139 GETTABLEKS                       R20 R21 K31 ["Enums"]
      141 GETTABLEKS                       R19 R20 K32 ["AnnotationRequestStatus"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R22 R0 K12 ["Src"]
      148 GETTABLEKS                       R21 R22 K31 ["Enums"]
      150 GETTABLEKS                       R20 R21 K33 ["AnnotationRequestType"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K5 [require]
      155 GETTABLEKS                       R23 R0 K12 ["Src"]
      157 GETTABLEKS                       R22 R23 K31 ["Enums"]
      159 GETTABLEKS                       R21 R22 K34 ["UIRequestStatus"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K5 [require]
      164 GETTABLEKS                       R24 R0 K12 ["Src"]
      166 GETTABLEKS                       R23 R24 K24 ["Components"]
      168 GETTABLEKS                       R22 R23 K35 ["ErrorAlert"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K5 [require]
      173 GETTABLEKS                       R25 R0 K12 ["Src"]
      175 GETTABLEKS                       R24 R25 K13 ["Util"]
      177 GETTABLEKS                       R23 R24 K36 ["rerenderReducer"]
      179 CALL                             R22 1 1
      180 GETIMPORT                        R23 K5 [require]
      182 GETTABLEKS                       R26 R0 K12 ["Src"]
      184 GETTABLEKS                       R25 R26 K24 ["Components"]
      186 GETTABLEKS                       R24 R25 K37 ["SizedTextInput"]
      188 CALL                             R23 1 1
      189 GETTABLEKS                       R24 R5 K38 ["IsLocalDraft"]
      191 GETTABLEKS                       R25 R5 K39 ["HasRequests"]
      193 GETTABLEKS                       R26 R5 K40 ["HasReplyRequests"]
      195 GETTABLEKS                       R27 R5 K41 ["GetUIRequestStatus"]
      197 GETTABLEKS                       R28 R5 K42 ["IsErrorStatus"]
      199 GETTABLEKS                       R29 R5 K43 ["GetErrorMessage"]
      201 GETIMPORT                        R31 K5 [require]
      203 GETTABLEKS                       R34 R0 K12 ["Src"]
      205 GETTABLEKS                       R33 R34 K13 ["Util"]
      207 GETTABLEKS                       R32 R33 K44 ["TaggedUsersUtils"]
      209 CALL                             R31 1 1
      210 GETTABLEKS                       R30 R31 K45 ["GetTaggedUsersAndAnonymizedContents"]
      212 GETIMPORT                        R32 K5 [require]
      214 GETTABLEKS                       R35 R0 K12 ["Src"]
      216 GETTABLEKS                       R34 R35 K22 ["Contexts"]
      218 GETTABLEKS                       R33 R34 K46 ["TaggableUsersContext"]
      220 CALL                             R32 1 1
      221 GETTABLEKS                       R31 R32 K46 ["TaggableUsersContext"]
      223 GETIMPORT                        R32 K5 [require]
      225 GETTABLEKS                       R35 R0 K12 ["Src"]
      227 GETTABLEKS                       R34 R35 K24 ["Components"]
      229 GETTABLEKS                       R33 R34 K47 ["AnnotationHeader"]
      231 CALL                             R32 1 1
      232 GETIMPORT                        R33 K5 [require]
      234 GETTABLEKS                       R36 R0 K12 ["Src"]
      236 GETTABLEKS                       R35 R36 K24 ["Components"]
      238 GETTABLEKS                       R34 R35 K48 ["CancelDeleteDialog"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K5 [require]
      243 GETTABLEKS                       R37 R0 K12 ["Src"]
      245 GETTABLEKS                       R36 R37 K31 ["Enums"]
      247 GETTABLEKS                       R35 R36 K49 ["AnnotationChannelContentPreference"]
      249 CALL                             R34 1 1
      250 GETIMPORT                        R35 K51 [game]
      252 LOADK                            R37 K52 ["AnnotationsService"]
      253 NAMECALL                         R35 R35 K53 ["GetService"]
      255 CALL                             R35 2 1
      256 GETIMPORT                        R36 K51 [game]
      258 LOADK                            R38 K54 ["StudioService"]
      259 NAMECALL                         R36 R36 K53 ["GetService"]
      261 CALL                             R36 2 1
      262 GETIMPORT                        R37 K5 [require]
      264 GETTABLEKS                       R40 R0 K12 ["Src"]
      266 GETTABLEKS                       R39 R40 K22 ["Contexts"]
      268 GETTABLEKS                       R38 R39 K55 ["AnnotationsServiceContext"]
      270 CALL                             R37 1 1
      271 GETTABLEKS                       R38 R3 K56 ["fflagAnnotationsMaxTextLength"]
      273 NEWTABLE                         R39 0 0
      275 DUPCLOSURE                       R40 K57 [PROTO_23]
      276 CAPTURE                          VAL R1
      277 CAPTURE                          VAL R22
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R9
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R25
      283 CAPTURE                          VAL R20
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R34
      287 CAPTURE                          VAL R37
      288 CAPTURE                          VAL R6
      289 CAPTURE                          VAL R36
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R39
      292 CAPTURE                          VAL R24
      293 CAPTURE                          VAL R13
      294 CAPTURE                          VAL R38
      295 CAPTURE                          VAL R28
      296 CAPTURE                          VAL R21
      297 CAPTURE                          VAL R29
      298 CAPTURE                          VAL R12
      299 CAPTURE                          VAL R32
      300 CAPTURE                          VAL R16
      301 CAPTURE                          VAL R4
      302 CAPTURE                          VAL R17
      303 CAPTURE                          VAL R15
      304 CAPTURE                          VAL R23
      305 CAPTURE                          VAL R14
      306 CAPTURE                          VAL R30
      307 CAPTURE                          VAL R35
      308 CAPTURE                          VAL R33
      309 RETURN                           R40 1
