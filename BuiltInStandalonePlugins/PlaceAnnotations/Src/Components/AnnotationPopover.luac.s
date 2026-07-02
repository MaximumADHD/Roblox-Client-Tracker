PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Annotation"]
        3 GETTABLEKS                       R0 R0 K1 ["Parent"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["OnCancel"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["InProgress"]
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
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["Annotation"]
        5 GETTABLEKS                       R3 R3 K1 ["ChannelId"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Annotation"]
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["Annotation"]
       11 GETTABLEKS                       R0 R0 K2 ["ChildAdded"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R0 R0 K3 ["Connect"]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K0 ["Annotation"]
       22 GETTABLEKS                       R1 R1 K4 ["ChildRemoved"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K3 ["Connect"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K0 ["Annotation"]
       33 GETTABLEKS                       R2 R2 K5 ["AncestryChanged"]
       35 NEWCLOSURE                       R4 P2
       36 CAPTURE                          UPVAL U1
       37 NAMECALL                         R2 R2 K3 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K0 ["Annotation"]
       43 GETTABLEKS                       R3 R3 K6 ["RequestInitiated"]
       45 NEWCLOSURE                       R5 P3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 NAMECALL                         R3 R3 K3 ["Connect"]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K0 ["Annotation"]
       54 GETTABLEKS                       R4 R4 K7 ["RequestCompleted"]
       56 NEWCLOSURE                       R6 P4
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U4
       59 NAMECALL                         R4 R4 K3 ["Connect"]
       61 CALL                             R4 2 1
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K0 ["Annotation"]
       65 LOADK                            R7 K8 ["Resolved"]
       66 NAMECALL                         R5 R5 K9 ["GetPropertyChangedSignal"]
       68 CALL                             R5 2 1
       69 GETUPVAL                         R7 5
       70 NAMECALL                         R5 R5 K3 ["Connect"]
       72 CALL                             R5 2 1
       73 GETUPVAL                         R6 6
       74 GETUPVAL                         R9 7
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K0 ["Annotation"]
       78 GETTABLE                         R8 R9 R10
       79 ORK                              R7 R8 K10 [""]
       80 CALL                             R6 1 0
       81 GETUPVAL                         R6 2
       82 GETUPVAL                         R8 8
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K0 ["Annotation"]
       86 CALL                             R8 1 1
       87 JUMPIFNOT                        R8 ; [+4]
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R7 R7 K11 ["InProgress"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R7 3
       93 GETTABLEKS                       R7 R7 K12 ["None"]
       95 CALL                             R6 1 0
       96 GETUPVAL                         R6 9
       97 GETUPVAL                         R8 9
       98 NAMECALL                         R8 R8 K13 ["getAnnotationsPluginActionEvent"]
      100 CALL                             R8 1 1
      101 GETUPVAL                         R9 9
      102 GETUPVAL                         R11 10
      103 GETTABLEKS                       R11 R11 K14 ["PopoverOpenEvent"]
      105 GETUPVAL                         R12 11
      106 NAMECALL                         R9 R9 K15 ["getTelemetryEvent"]
      108 CALL                             R9 3 -1
      109 NAMECALL                         R6 R6 K16 ["logRobloxTelemetryEvent"]
      111 CALL                             R6 -1 0
      112 GETIMPORT                        R6 K19 [coroutine.wrap]
      114 NEWCLOSURE                       R7 P5
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          UPVAL U1
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          UPVAL U15
      120 CALL                             R6 1 1
      121 CALL                             R6 0 0
      122 NEWCLOSURE                       R6 P6
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R5
      129 RETURN                           R6 1

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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["None"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["Annotation"]
        5 GETTABLEKS                       R4 R4 K1 ["ChannelId"]
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
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["zoomTo"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["Annotation"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K0 ["Dropdown"]
       19 LOADK                            R4 K5 ["Edit"]
       20 NAMECALL                         R1 R1 K2 ["getText"]
       22 CALL                             R1 3 1
       23 JUMPIFNOTEQ                      R0 R1 ; [+12]
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K6 ["current"]
       28 JUMPIFNOT                        R1 ; [+60]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K6 ["current"]
       32 GETTABLEKS                       R1 R1 K7 ["beginEditing"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 0
       37 LOADK                            R3 K0 ["Dropdown"]
       38 LOADK                            R4 K8 ["Unsubscribe"]
       39 NAMECALL                         R1 R1 K2 ["getText"]
       41 CALL                             R1 3 1
       42 JUMPIFNOTEQ                      R0 R1 ; [+20]
       44 GETUPVAL                         R1 5
       45 GETTABLEKS                       R1 R1 K9 ["None"]
       47 GETUPVAL                         R2 6
       48 GETUPVAL                         R4 7
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K4 ["Annotation"]
       52 GETTABLEKS                       R5 R5 K10 ["ChannelId"]
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
       71 GETUPVAL                         R1 5
       72 GETTABLEKS                       R1 R1 K13 ["All"]
       74 GETUPVAL                         R2 6
       75 GETUPVAL                         R4 7
       76 GETUPVAL                         R5 3
       77 GETTABLEKS                       R5 R5 K4 ["Annotation"]
       79 GETTABLEKS                       R5 R5 K10 ["ChannelId"]
       81 GETUPVAL                         R6 8
       82 MOVE                             R7 R1
       83 NAMECALL                         R2 R2 K11 ["CreateOrUpdateChannelPreferenceAsync"]
       85 CALL                             R2 5 0
       86 GETUPVAL                         R2 9
       87 MOVE                             R3 R1
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setAnnotationResolved"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Annotation"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Annotation"]
       10 GETTABLEKS                       R4 R4 K2 ["Resolved"]
       12 NOT                              R3 R4
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["Annotation"]
       17 GETTABLEKS                       R0 R0 K2 ["Resolved"]
       19 JUMPIF                           R0 ; [+12]
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K1 ["Annotation"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Annotation"]
        7 SETTABLE                         R0 R1 R2
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K1 ["Annotation"]
        7 LOADK                            R2 K0 [""]
        8 SETTABLE                         R2 R0 R1
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["OnCancel"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InProgress"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["DraftAnnotationInstance"]
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["Annotation"]
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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["deleteAnnotation"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["Annotation"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReducer"]
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
       17 GETUPVAL                         R5 4
       18 NAMECALL                         R5 R5 K1 ["use"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["useState"]
       24 GETTABLEKS                       R7 R0 K4 ["Annotation"]
       26 NAMECALL                         R7 R7 K5 ["GetChildren"]
       28 CALL                             R7 1 -1
       29 CALL                             R6 -1 2
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["useState"]
       33 LOADK                            R9 K6 [""]
       34 CALL                             R8 1 2
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K7 ["useRef"]
       38 LOADNIL                          R11
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K3 ["useState"]
       43 LOADB                            R12 0
       44 CALL                             R11 1 2
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K3 ["useState"]
       48 LOADB                            R14 0
       49 CALL                             R13 1 2
       50 GETUPVAL                         R15 0
       51 GETTABLEKS                       R15 R15 K3 ["useState"]
       53 GETUPVAL                         R17 5
       54 GETTABLEKS                       R18 R0 K4 ["Annotation"]
       56 CALL                             R17 1 1
       57 JUMPIFNOT                        R17 ; [+4]
       58 GETUPVAL                         R16 6
       59 GETTABLEKS                       R16 R16 K8 ["InProgress"]
       61 JUMP                             ; [+3]
       62 GETUPVAL                         R16 6
       63 GETTABLEKS                       R16 R16 K9 ["None"]
       65 CALL                             R15 1 2
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K3 ["useState"]
       69 GETUPVAL                         R19 7
       70 GETTABLEKS                       R20 R0 K4 ["Annotation"]
       72 CALL                             R19 1 1
       73 JUMPIFNOT                        R19 ; [+4]
       74 GETUPVAL                         R18 6
       75 GETTABLEKS                       R18 R18 K8 ["InProgress"]
       77 JUMP                             ; [+3]
       78 GETUPVAL                         R18 6
       79 GETTABLEKS                       R18 R18 K9 ["None"]
       81 CALL                             R17 1 2
       82 GETUPVAL                         R19 0
       83 GETTABLEKS                       R19 R19 K10 ["useContext"]
       85 GETUPVAL                         R20 8
       86 CALL                             R19 1 1
       87 GETTABLEKS                       R20 R19 K11 ["joinedTaggableUsersMap"]
       89 GETTABLEKS                       R21 R19 K12 ["isTaggableUsersErrorStatus"]
       91 GETUPVAL                         R22 0
       92 GETTABLEKS                       R22 R22 K3 ["useState"]
       94 GETUPVAL                         R23 9
       95 GETTABLEKS                       R23 R23 K13 ["All"]
       97 CALL                             R22 1 2
       98 GETUPVAL                         R24 10
       99 NAMECALL                         R24 R24 K1 ["use"]
      101 CALL                             R24 1 1
      102 NAMECALL                         R24 R24 K2 ["get"]
      104 CALL                             R24 1 1
      105 GETUPVAL                         R27 11
      106 GETTABLEKS                       R27 R27 K14 ["PlaceIdKey"]
      108 NAMECALL                         R25 R4 K15 ["GetItem"]
      110 CALL                             R25 2 1
      111 GETUPVAL                         R26 12
      112 NAMECALL                         R26 R26 K16 ["GetUserId"]
      114 CALL                             R26 1 1
      115 GETUPVAL                         R27 0
      116 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      118 NEWCLOSURE                       R28 P0
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R16
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          UPVAL U13
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R9
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R5
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R24
      132 CAPTURE                          VAL R26
      133 CAPTURE                          VAL R25
      134 CAPTURE                          VAL R23
      135 NEWTABLE                         R29 0 1
      137 GETTABLEKS                       R30 R0 K4 ["Annotation"]
      139 SETLIST                          R29 R30 1 [1]
      141 CALL                             R27 2 0
      142 NEWTABLE                         R27 0 0
      144 GETIMPORT                        R28 K20 [table.sort]
      146 MOVE                             R29 R6
      147 DUPCLOSURE                       R30 K21 [PROTO_8]
      148 CALL                             R28 2 0
      149 GETIMPORT                        R28 K23 [ipairs]
      151 MOVE                             R29 R6
      152 CALL                             R28 1 3
      153 FORGPREP_INEXT                   R28
      154 LOADK                            R35 K4 ["Annotation"]
      155 NAMECALL                         R33 R32 K24 ["IsA"]
      157 CALL                             R33 2 1
      158 JUMPIF                           R33 ; [+1]
      159 JUMP                             ; [+48]
      160 GETUPVAL                         R33 15
      161 MOVE                             R34 R32
      162 CALL                             R33 1 1
      163 JUMPIFNOT                        R33 ; [+12]
      164 GETTABLEKS                       R33 R32 K25 ["RequestCompleted"]
      166 NEWCLOSURE                       R35 P2
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R32
      171 CAPTURE                          VAL R18
      172 NAMECALL                         R33 R33 K26 ["Once"]
      174 CALL                             R33 2 0
      175 JUMP                             ; [+32]
      176 LOADK                            R35 K27 ["IsDraft"]
      177 NAMECALL                         R33 R32 K28 ["GetAttribute"]
      179 CALL                             R33 2 1
      180 JUMPIF                           R33 ; [+27]
      181 MOVE                             R34 R27
      182 GETUPVAL                         R35 0
      183 GETTABLEKS                       R35 R35 K29 ["createElement"]
      185 GETUPVAL                         R36 16
      186 DUPTABLE                         R37 K34 [{"LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      187 SETTABLEKS                       R31 R37 K30 ["LayoutOrder"]
      189 SETTABLEKS                       R32 R37 K4 ["Annotation"]
      191 NEWCLOSURE                       R38 P3
      192 CAPTURE                          VAL R12
      193 SETTABLEKS                       R38 R37 K31 ["ToggleEditing"]
      195 GETTABLEKS                       R38 R0 K32 ["SetIsTagDropdownOpen"]
      197 SETTABLEKS                       R38 R37 K32 ["SetIsTagDropdownOpen"]
      199 GETTABLEKS                       R38 R0 K33 ["IsTagDropdownOpen"]
      201 SETTABLEKS                       R38 R37 K33 ["IsTagDropdownOpen"]
      203 CALL                             R35 2 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R33 K36 [table.insert]
      207 CALL                             R33 -1 0
      208 FORGLOOP                         R28 2 [inext] ; [-55]
      210 GETTABLEKS                       R29 R0 K4 ["Annotation"]
      212 GETTABLEKS                       R29 R29 K37 ["AuthorId"]
      214 GETUPVAL                         R30 12
      215 NAMECALL                         R30 R30 K16 ["GetUserId"]
      217 CALL                             R30 1 1
      218 JUMPIFEQ                         R29 R30 ; [+2]
      220 LOADB                            R28 0 +1
      221 LOADB                            R28 1
      222 FASTCALL1                        STRING_LEN R8 ; [+3]
      223 MOVE                             R31 R8
      224 GETIMPORT                        R30 K40 [string.len]
      226 CALL                             R30 1 1
      227 GETUPVAL                         R31 17
      228 JUMPIFLT                         R31 R30 ; [+2]
      230 LOADB                            R29 0 +1
      231 LOADB                            R29 1
      232 LOADB                            R30 0
      233 GETUPVAL                         R31 6
      234 GETTABLEKS                       R31 R31 K8 ["InProgress"]
      236 JUMPIFEQ                         R17 R31 ; [+8]
      238 LOADB                            R30 0
      239 GETUPVAL                         R31 6
      240 GETTABLEKS                       R31 R31 K8 ["InProgress"]
      242 JUMPIFEQ                         R15 R31 ; [+2]
      244 NOT                              R30 R11
      245 GETUPVAL                         R32 18
      246 MOVE                             R33 R15
      247 CALL                             R32 1 1
      248 JUMPIFNOT                        R32 ; [+59]
      249 GETUPVAL                         R31 0
      250 GETTABLEKS                       R31 R31 K29 ["createElement"]
      252 LOADK                            R32 K41 ["Frame"]
      253 DUPTABLE                         R33 K48 [{["LayoutOrder"] = -1, ["ZIndex"] = 100, ["Size"], ["BackgroundTransparency"] = 1}]
      254 GETIMPORT                        R34 K51 [UDim2.new]
      256 LOADN                            R35 1
      257 LOADN                            R36 0
      258 LOADN                            R37 0
      259 LOADN                            R38 -4
      260 CALL                             R34 4 1
      261 SETTABLEKS                       R34 R33 K45 ["Size"]
      263 DUPTABLE                         R34 K53 [{"Alert"}]
      264 GETUPVAL                         R35 0
      265 GETTABLEKS                       R35 R35 K29 ["createElement"]
      267 GETUPVAL                         R36 19
      268 DUPTABLE                         R37 K60 [{["Message"], ["AnchorPoint"], ["Position"], ["Size"], ["IsPopup"] = True, ["OnClose"]}]
      269 GETUPVAL                         R38 20
      270 MOVE                             R39 R15
      271 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      273 MOVE                             R41 R3
      274 CALL                             R38 3 1
      275 SETTABLEKS                       R38 R37 K54 ["Message"]
      277 GETIMPORT                        R38 K62 [Vector2.new]
      279 LOADK                            R39 K63 [0.5]
      280 LOADN                            R40 0
      281 CALL                             R38 2 1
      282 SETTABLEKS                       R38 R37 K55 ["AnchorPoint"]
      284 GETIMPORT                        R38 K65 [UDim2.fromScale]
      286 LOADK                            R39 K63 [0.5]
      287 LOADN                            R40 0
      288 CALL                             R38 2 1
      289 SETTABLEKS                       R38 R37 K56 ["Position"]
      291 GETIMPORT                        R38 K65 [UDim2.fromScale]
      293 LOADK                            R39 K66 [0.75]
      294 LOADN                            R40 0
      295 CALL                             R38 2 1
      296 SETTABLEKS                       R38 R37 K45 ["Size"]
      298 NEWCLOSURE                       R38 P4
      299 CAPTURE                          VAL R16
      300 CAPTURE                          UPVAL U6
      301 SETTABLEKS                       R38 R37 K59 ["OnClose"]
      303 CALL                             R35 2 1
      304 SETTABLEKS                       R35 R34 K52 ["Alert"]
      306 CALL                             R31 3 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R31
      309 NEWCLOSURE                       R32 P5
      310 CAPTURE                          VAL R24
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R0
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R23
      315 GETUPVAL                         R33 0
      316 GETTABLEKS                       R33 R33 K29 ["createElement"]
      318 GETUPVAL                         R34 21
      319 DUPTABLE                         R35 K70 [{["Width"] = 350, ["Position"], ["OnFocusLost"]}]
      320 GETTABLEKS                       R36 R0 K56 ["Position"]
      322 SETTABLEKS                       R36 R35 K56 ["Position"]
      324 GETTABLEKS                       R36 R0 K71 ["OnCancel"]
      326 SETTABLEKS                       R36 R35 K69 ["OnFocusLost"]
      328 DUPTABLE                         R36 K79 [{"ErrorBanner", "Header", "ContentWrapper", "ReplyBox", "ReplyError", "Footer", "Popup"}]
      329 SETTABLEKS                       R31 R36 K72 ["ErrorBanner"]
      331 GETUPVAL                         R37 0
      332 GETTABLEKS                       R37 R37 K29 ["createElement"]
      334 GETUPVAL                         R38 22
      335 DUPTABLE                         R39 K82 [{["DataModel"] = "Edit", ["Annotation"]}]
      336 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      338 SETTABLEKS                       R40 R39 K4 ["Annotation"]
      340 DUPTABLE                         R40 K86 [{"MoreIcon", "ResolveButton", "CloseButton"}]
      341 GETUPVAL                         R41 0
      342 GETTABLEKS                       R41 R41 K29 ["createElement"]
      344 GETUPVAL                         R42 23
      345 NEWTABLE                         R43 8 0
      347 NEWTABLE                         R44 0 4
      349 JUMPIFNOT                        R28 ; [+6]
      350 LOADK                            R47 K87 ["Dropdown"]
      351 LOADK                            R48 K81 ["Edit"]
      352 NAMECALL                         R45 R3 K88 ["getText"]
      354 CALL                             R45 3 1
      355 JUMP                             ; [+1]
      356 LOADNIL                          R45
      357 LOADK                            R48 K87 ["Dropdown"]
      358 LOADK                            R49 K89 ["ZoomTo"]
      359 NAMECALL                         R46 R3 K88 ["getText"]
      361 CALL                             R46 3 1
      362 GETUPVAL                         R48 9
      363 GETTABLEKS                       R48 R48 K13 ["All"]
      365 JUMPIFNOTEQ                      R22 R48 ; [+7]
      367 LOADK                            R49 K87 ["Dropdown"]
      368 LOADK                            R50 K90 ["Unsubscribe"]
      369 NAMECALL                         R47 R3 K88 ["getText"]
      371 CALL                             R47 3 1
      372 JUMP                             ; [+5]
      373 LOADK                            R49 K87 ["Dropdown"]
      374 LOADK                            R50 K91 ["Subscribe"]
      375 NAMECALL                         R47 R3 K88 ["getText"]
      377 CALL                             R47 3 1
      378 JUMPIFNOT                        R28 ; [+28]
      379 GETUPVAL                         R48 0
      380 GETTABLEKS                       R48 R48 K29 ["createElement"]
      382 LOADK                            R49 K92 ["TextButton"]
      383 NEWTABLE                         R50 4 0
      385 LOADK                            R53 K87 ["Dropdown"]
      386 LOADK                            R54 K93 ["DeleteThread"]
      387 NAMECALL                         R51 R3 K88 ["getText"]
      389 CALL                             R51 3 1
      390 SETTABLEKS                       R51 R50 K94 ["Text"]
      392 GETUPVAL                         R51 0
      393 GETTABLEKS                       R51 R51 K95 ["Event"]
      395 GETTABLEKS                       R51 R51 K96 ["Activated"]
      397 NEWCLOSURE                       R52 P6
      398 CAPTURE                          VAL R14
      399 SETTABLE                         R52 R50 R51
      400 GETUPVAL                         R51 0
      401 GETTABLEKS                       R51 R51 K97 ["Tag"]
      403 LOADK                            R52 K98 ["Component-DropdownItem Delete"]
      404 SETTABLE                         R52 R50 R51
      405 CALL                             R48 2 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R48
      408 SETLIST                          R44 R45 4 [1]
      410 SETTABLEKS                       R44 R43 K99 ["DropdownItems"]
      412 NEWCLOSURE                       R44 P7
      413 CAPTURE                          VAL R3
      414 CAPTURE                          UPVAL U24
      415 CAPTURE                          VAL R4
      416 CAPTURE                          VAL R0
      417 CAPTURE                          VAL R10
      418 CAPTURE                          UPVAL U9
      419 CAPTURE                          VAL R24
      420 CAPTURE                          VAL R26
      421 CAPTURE                          VAL R25
      422 CAPTURE                          VAL R23
      423 SETTABLEKS                       R44 R43 K100 ["OnSelect"]
      425 GETUPVAL                         R45 6
      426 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      428 JUMPIFEQ                         R15 R45 ; [+2]
      430 LOADB                            R44 0 +1
      431 LOADB                            R44 1
      432 SETTABLEKS                       R44 R43 K101 ["Disabled"]
      434 LOADN                            R44 1
      435 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      437 GETUPVAL                         R44 0
      438 GETTABLEKS                       R44 R44 K97 ["Tag"]
      440 GETUPVAL                         R46 6
      441 GETTABLEKS                       R46 R46 K8 ["InProgress"]
      443 JUMPIFNOTEQ                      R15 R46 ; [+3]
      445 LOADK                            R45 K101 ["Disabled"]
      446 JUMP                             ; [+1]
      447 LOADNIL                          R45
      448 SETTABLE                         R45 R43 R44
      449 CALL                             R41 2 1
      450 SETTABLEKS                       R41 R40 K83 ["MoreIcon"]
      452 GETUPVAL                         R41 0
      453 GETTABLEKS                       R41 R41 K29 ["createElement"]
      455 GETUPVAL                         R42 25
      456 DUPTABLE                         R43 K105 [{["Resolved"], ["Disabled"], ["OnClick"], ["LayoutOrder"] = 2}]
      457 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      459 GETTABLEKS                       R44 R44 K102 ["Resolved"]
      461 SETTABLEKS                       R44 R43 K102 ["Resolved"]
      463 GETUPVAL                         R45 6
      464 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      466 JUMPIFEQ                         R15 R45 ; [+2]
      468 LOADB                            R44 0 +1
      469 LOADB                            R44 1
      470 SETTABLEKS                       R44 R43 K101 ["Disabled"]
      472 NEWCLOSURE                       R44 P8
      473 CAPTURE                          UPVAL U24
      474 CAPTURE                          VAL R4
      475 CAPTURE                          VAL R0
      476 SETTABLEKS                       R44 R43 K103 ["OnClick"]
      478 CALL                             R41 2 1
      479 SETTABLEKS                       R41 R40 K84 ["ResolveButton"]
      481 GETUPVAL                         R41 0
      482 GETTABLEKS                       R41 R41 K29 ["createElement"]
      484 LOADK                            R42 K92 ["TextButton"]
      485 NEWTABLE                         R43 4 0
      487 GETUPVAL                         R44 0
      488 GETTABLEKS                       R44 R44 K95 ["Event"]
      490 GETTABLEKS                       R44 R44 K96 ["Activated"]
      492 GETTABLEKS                       R45 R0 K71 ["OnCancel"]
      494 SETTABLE                         R45 R43 R44
      495 LOADN                            R44 3
      496 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      498 GETUPVAL                         R44 0
      499 GETTABLEKS                       R44 R44 K97 ["Tag"]
      501 LOADK                            R45 K85 ["CloseButton"]
      502 SETTABLE                         R45 R43 R44
      503 DUPTABLE                         R44 K107 [{"CloseIcon"}]
      504 GETUPVAL                         R45 0
      505 GETTABLEKS                       R45 R45 K29 ["createElement"]
      507 LOADK                            R46 K108 ["ImageLabel"]
      508 NEWTABLE                         R47 1 0
      510 GETUPVAL                         R48 0
      511 GETTABLEKS                       R48 R48 K97 ["Tag"]
      513 LOADK                            R49 K109 ["CloseIcon X-Transparent"]
      514 SETTABLE                         R49 R47 R48
      515 CALL                             R45 2 1
      516 SETTABLEKS                       R45 R44 K106 ["CloseIcon"]
      518 CALL                             R41 3 1
      519 SETTABLEKS                       R41 R40 K85 ["CloseButton"]
      521 CALL                             R37 3 1
      522 SETTABLEKS                       R37 R36 K73 ["Header"]
      524 GETUPVAL                         R37 0
      525 GETTABLEKS                       R37 R37 K29 ["createElement"]
      527 GETUPVAL                         R38 26
      528 DUPTABLE                         R39 K112 [{["LayoutOrder"] = 1, ["MaxY"] = 250}]
      529 NEWTABLE                         R40 1 1
      531 GETUPVAL                         R42 0
      532 GETTABLEKS                       R42 R42 K29 ["createElement"]
      534 GETUPVAL                         R43 16
      535 DUPTABLE                         R44 K115 [{["ref"], ["LayoutOrder"] = 0, ["Annotation"], ["ToggleEditing"], ["SetIsTagDropdownOpen"], ["IsTagDropdownOpen"]}]
      536 SETTABLEKS                       R10 R44 K113 ["ref"]
      538 GETTABLEKS                       R45 R0 K4 ["Annotation"]
      540 SETTABLEKS                       R45 R44 K4 ["Annotation"]
      542 NEWCLOSURE                       R45 P9
      543 CAPTURE                          VAL R12
      544 SETTABLEKS                       R45 R44 K31 ["ToggleEditing"]
      546 GETTABLEKS                       R45 R0 K32 ["SetIsTagDropdownOpen"]
      548 SETTABLEKS                       R45 R44 K32 ["SetIsTagDropdownOpen"]
      550 GETTABLEKS                       R45 R0 K33 ["IsTagDropdownOpen"]
      552 SETTABLEKS                       R45 R44 K33 ["IsTagDropdownOpen"]
      554 CALL                             R42 2 1
      555 SETTABLEKS                       R42 R40 K116 ["Comment"]
      557 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
      558 MOVE                             R42 R27
      559 GETIMPORT                        R41 K118 [table.unpack]
      561 CALL                             R41 1 -1
      562 SETLIST                          R40 R41 -1 [1]
      564 CALL                             R37 3 1
      565 SETTABLEKS                       R37 R36 K74 ["ContentWrapper"]
      567 JUMPIF                           R11 ; [+89]
      568 GETUPVAL                         R37 0
      569 GETTABLEKS                       R37 R37 K29 ["createElement"]
      571 LOADK                            R38 K41 ["Frame"]
      572 NEWTABLE                         R39 8 0
      574 LOADN                            R40 2
      575 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      577 LOADN                            R40 1
      578 SETTABLEKS                       R40 R39 K46 ["BackgroundTransparency"]
      580 GETIMPORT                        R40 K122 [Enum.AutomaticSize.Y]
      582 SETTABLEKS                       R40 R39 K120 ["AutomaticSize"]
      584 GETIMPORT                        R40 K65 [UDim2.fromScale]
      586 LOADN                            R41 1
      587 LOADN                            R42 0
      588 CALL                             R40 2 1
      589 SETTABLEKS                       R40 R39 K45 ["Size"]
      591 GETUPVAL                         R40 0
      592 GETTABLEKS                       R40 R40 K97 ["Tag"]
      594 LOADK                            R41 K123 ["X-RowM"]
      595 SETTABLE                         R41 R39 R40
      596 DUPTABLE                         R40 K126 [{"Avatar", "TextInput"}]
      597 GETUPVAL                         R41 0
      598 GETTABLEKS                       R41 R41 K29 ["createElement"]
      600 LOADK                            R42 K108 ["ImageLabel"]
      601 NEWTABLE                         R43 4 0
      603 LOADK                            R45 K127 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      604 GETUPVAL                         R47 12
      605 NAMECALL                         R47 R47 K16 ["GetUserId"]
      607 CALL                             R47 1 1
      608 NAMECALL                         R45 R45 K128 ["format"]
      610 CALL                             R45 2 1
      611 MOVE                             R44 R45
      612 SETTABLEKS                       R44 R43 K129 ["Image"]
      614 LOADN                            R44 0
      615 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      617 GETUPVAL                         R44 0
      618 GETTABLEKS                       R44 R44 K97 ["Tag"]
      620 LOADK                            R45 K130 ["Component-Avatar"]
      621 SETTABLE                         R45 R43 R44
      622 CALL                             R41 2 1
      623 SETTABLEKS                       R41 R40 K124 ["Avatar"]
      625 GETUPVAL                         R41 0
      626 GETTABLEKS                       R41 R41 K29 ["createElement"]
      628 GETUPVAL                         R42 27
      629 DUPTABLE                         R43 K134 [{["Key"], ["LayoutOrder"] = 1, ["Text"], ["PlaceholderText"], ["OnTextChanged"], ["Disabled"]}]
      630 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      632 SETTABLEKS                       R44 R43 K131 ["Key"]
      634 SETTABLEKS                       R8 R43 K94 ["Text"]
      636 LOADK                            R46 K135 ["Reply"]
      637 LOADK                            R47 K136 ["Placeholder"]
      638 NAMECALL                         R44 R3 K88 ["getText"]
      640 CALL                             R44 3 1
      641 SETTABLEKS                       R44 R43 K132 ["PlaceholderText"]
      643 NEWCLOSURE                       R44 P10
      644 CAPTURE                          VAL R9
      645 CAPTURE                          UPVAL U14
      646 CAPTURE                          VAL R0
      647 SETTABLEKS                       R44 R43 K133 ["OnTextChanged"]
      649 NOT                              R44 R30
      650 SETTABLEKS                       R44 R43 K101 ["Disabled"]
      652 CALL                             R41 2 1
      653 SETTABLEKS                       R41 R40 K125 ["TextInput"]
      655 CALL                             R37 3 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R37
      658 SETTABLEKS                       R37 R36 K75 ["ReplyBox"]
      660 JUMPIF                           R11 ; [+60]
      661 GETUPVAL                         R38 18
      662 MOVE                             R39 R17
      663 MOVE                             R40 R8
      664 MOVE                             R41 R21
      665 CALL                             R38 3 1
      666 JUMPIF                           R38 ; [+1]
      667 JUMPIFNOT                        R29 ; [+53]
      668 GETUPVAL                         R37 0
      669 GETTABLEKS                       R37 R37 K29 ["createElement"]
      671 GETUPVAL                         R38 19
      672 DUPTABLE                         R39 K139 [{["LayoutOrder"] = 3, ["Position"], ["Message"], ["UIPadding"]}]
      673 GETIMPORT                        R40 K141 [UDim2.fromOffset]
      675 LOADN                            R41 42
      676 LOADN                            R42 0
      677 CALL                             R40 2 1
      678 SETTABLEKS                       R40 R39 K56 ["Position"]
      680 JUMPIFNOT                        R29 ; [+14]
      681 LOADK                            R42 K125 ["TextInput"]
      682 LOADK                            R43 K142 ["LengthExceeded"]
      683 DUPTABLE                         R44 K144 [{"maxLength"}]
      684 GETUPVAL                         R46 17
      685 FASTCALL1                        TOSTRING R46 ; [+2]
      686 GETIMPORT                        R45 K146 [tostring]
      688 CALL                             R45 1 1
      689 SETTABLEKS                       R45 R44 K143 ["maxLength"]
      691 NAMECALL                         R40 R3 K88 ["getText"]
      693 CALL                             R40 4 1
      694 JUMP                             ; [+7]
      695 GETUPVAL                         R40 20
      696 MOVE                             R41 R17
      697 LOADNIL                          R42
      698 MOVE                             R43 R3
      699 MOVE                             R44 R8
      700 MOVE                             R45 R21
      701 CALL                             R40 5 1
      702 SETTABLEKS                       R40 R39 K54 ["Message"]
      704 GETUPVAL                         R40 0
      705 GETTABLEKS                       R40 R40 K29 ["createElement"]
      707 LOADK                            R41 K138 ["UIPadding"]
      708 DUPTABLE                         R42 K148 [{"PaddingLeft"}]
      709 GETIMPORT                        R43 K150 [UDim.new]
      711 LOADN                            R44 0
      712 LOADN                            R45 42
      713 CALL                             R43 2 1
      714 SETTABLEKS                       R43 R42 K147 ["PaddingLeft"]
      716 CALL                             R40 2 1
      717 SETTABLEKS                       R40 R39 K138 ["UIPadding"]
      719 CALL                             R37 2 1
      720 JUMP                             ; [+1]
      721 LOADNIL                          R37
      722 SETTABLEKS                       R37 R36 K76 ["ReplyError"]
      724 JUMPIFNOT                        R30 ; [+24]
      725 GETUPVAL                         R37 0
      726 GETTABLEKS                       R37 R37 K29 ["createElement"]
      728 GETUPVAL                         R38 28
      729 DUPTABLE                         R39 K153 [{["LayoutOrder"] = 4, ["Text"], ["OnCancel"], ["OnSubmit"]}]
      730 SETTABLEKS                       R8 R39 K94 ["Text"]
      732 NEWCLOSURE                       R40 P11
      733 CAPTURE                          VAL R9
      734 CAPTURE                          UPVAL U14
      735 CAPTURE                          VAL R0
      736 SETTABLEKS                       R40 R39 K71 ["OnCancel"]
      738 NEWCLOSURE                       R40 P12
      739 CAPTURE                          VAL R18
      740 CAPTURE                          UPVAL U6
      741 CAPTURE                          VAL R0
      742 CAPTURE                          UPVAL U29
      743 CAPTURE                          VAL R20
      744 CAPTURE                          UPVAL U30
      745 SETTABLEKS                       R40 R39 K152 ["OnSubmit"]
      747 CALL                             R37 2 1
      748 JUMP                             ; [+1]
      749 LOADNIL                          R37
      750 SETTABLEKS                       R37 R36 K77 ["Footer"]
      752 MOVE                             R37 R13
      753 JUMPIFNOT                        R37 ; [+24]
      754 GETUPVAL                         R37 0
      755 GETTABLEKS                       R37 R37 K29 ["createElement"]
      757 GETUPVAL                         R38 31
      758 DUPTABLE                         R39 K155 [{"Text", "OnCancel", "OnDelete"}]
      759 LOADK                            R42 K156 ["ConfirmDeleteDialog"]
      760 LOADK                            R43 K93 ["DeleteThread"]
      761 NAMECALL                         R40 R3 K88 ["getText"]
      763 CALL                             R40 3 1
      764 SETTABLEKS                       R40 R39 K94 ["Text"]
      766 NEWCLOSURE                       R40 P13
      767 CAPTURE                          VAL R14
      768 SETTABLEKS                       R40 R39 K71 ["OnCancel"]
      770 NEWCLOSURE                       R40 P14
      771 CAPTURE                          VAL R14
      772 CAPTURE                          UPVAL U24
      773 CAPTURE                          VAL R4
      774 CAPTURE                          VAL R0
      775 SETTABLEKS                       R40 R39 K154 ["OnDelete"]
      777 CALL                             R37 2 1
      778 SETTABLEKS                       R37 R36 K78 ["Popup"]
      780 CALL                             R33 3 -1
      781 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Bin"]
       25 GETTABLEKS                       R4 R4 K10 ["Common"]
       27 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["CrossDMCommunication"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R4 R4 K15 ["Edit"]
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K16 ["AnnotationRequestUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K12 ["Src"]
       54 GETTABLEKS                       R7 R7 K13 ["Util"]
       56 GETTABLEKS                       R7 R7 K17 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K12 ["Src"]
       63 GETTABLEKS                       R8 R8 K18 ["Types"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       68 GETTABLEKS                       R9 R8 K20 ["Plugin"]
       70 GETTABLEKS                       R10 R8 K21 ["Localization"]
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K12 ["Src"]
       76 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       78 GETTABLEKS                       R12 R12 K23 ["TelemetryContext"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K12 ["Src"]
       85 GETTABLEKS                       R13 R13 K24 ["Components"]
       87 GETTABLEKS                       R13 R13 K25 ["PopoverBase"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K12 ["Src"]
       94 GETTABLEKS                       R14 R14 K24 ["Components"]
       96 GETTABLEKS                       R14 R14 K26 ["AnnotationContents"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K12 ["Src"]
      103 GETTABLEKS                       R15 R15 K24 ["Components"]
      105 GETTABLEKS                       R15 R15 K27 ["CancelSubmitFooter"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K12 ["Src"]
      112 GETTABLEKS                       R16 R16 K24 ["Components"]
      114 GETTABLEKS                       R16 R16 K28 ["SizedScrollingFrame"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K12 ["Src"]
      121 GETTABLEKS                       R17 R17 K24 ["Components"]
      123 GETTABLEKS                       R17 R17 K29 ["DropdownButton"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K12 ["Src"]
      130 GETTABLEKS                       R18 R18 K24 ["Components"]
      132 GETTABLEKS                       R18 R18 K30 ["ResolveButton"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R19 R0 K12 ["Src"]
      139 GETTABLEKS                       R19 R19 K31 ["Enums"]
      141 GETTABLEKS                       R19 R19 K32 ["AnnotationRequestStatus"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R20 R0 K12 ["Src"]
      148 GETTABLEKS                       R20 R20 K31 ["Enums"]
      150 GETTABLEKS                       R20 R20 K33 ["AnnotationRequestType"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K5 [require]
      155 GETTABLEKS                       R21 R0 K12 ["Src"]
      157 GETTABLEKS                       R21 R21 K31 ["Enums"]
      159 GETTABLEKS                       R21 R21 K34 ["UIRequestStatus"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K5 [require]
      164 GETTABLEKS                       R22 R0 K12 ["Src"]
      166 GETTABLEKS                       R22 R22 K24 ["Components"]
      168 GETTABLEKS                       R22 R22 K35 ["ErrorAlert"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K5 [require]
      173 GETTABLEKS                       R23 R0 K12 ["Src"]
      175 GETTABLEKS                       R23 R23 K13 ["Util"]
      177 GETTABLEKS                       R23 R23 K36 ["rerenderReducer"]
      179 CALL                             R22 1 1
      180 GETIMPORT                        R23 K5 [require]
      182 GETTABLEKS                       R24 R0 K12 ["Src"]
      184 GETTABLEKS                       R24 R24 K24 ["Components"]
      186 GETTABLEKS                       R24 R24 K37 ["SizedTextInput"]
      188 CALL                             R23 1 1
      189 GETTABLEKS                       R24 R5 K38 ["IsLocalDraft"]
      191 GETTABLEKS                       R25 R5 K39 ["HasRequests"]
      193 GETTABLEKS                       R26 R5 K40 ["HasReplyRequests"]
      195 GETTABLEKS                       R27 R5 K41 ["GetUIRequestStatus"]
      197 GETTABLEKS                       R28 R5 K42 ["IsErrorStatus"]
      199 GETTABLEKS                       R29 R5 K43 ["GetErrorMessage"]
      201 GETIMPORT                        R30 K5 [require]
      203 GETTABLEKS                       R31 R0 K12 ["Src"]
      205 GETTABLEKS                       R31 R31 K13 ["Util"]
      207 GETTABLEKS                       R31 R31 K44 ["TaggedUsersUtils"]
      209 CALL                             R30 1 1
      210 GETTABLEKS                       R30 R30 K45 ["GetTaggedUsersAndAnonymizedContents"]
      212 GETIMPORT                        R31 K5 [require]
      214 GETTABLEKS                       R32 R0 K12 ["Src"]
      216 GETTABLEKS                       R32 R32 K22 ["Contexts"]
      218 GETTABLEKS                       R32 R32 K46 ["TaggableUsersContext"]
      220 CALL                             R31 1 1
      221 GETTABLEKS                       R31 R31 K46 ["TaggableUsersContext"]
      223 GETIMPORT                        R32 K5 [require]
      225 GETTABLEKS                       R33 R0 K12 ["Src"]
      227 GETTABLEKS                       R33 R33 K24 ["Components"]
      229 GETTABLEKS                       R33 R33 K47 ["AnnotationHeader"]
      231 CALL                             R32 1 1
      232 GETIMPORT                        R33 K5 [require]
      234 GETTABLEKS                       R34 R0 K12 ["Src"]
      236 GETTABLEKS                       R34 R34 K24 ["Components"]
      238 GETTABLEKS                       R34 R34 K48 ["CancelDeleteDialog"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K5 [require]
      243 GETTABLEKS                       R35 R0 K12 ["Src"]
      245 GETTABLEKS                       R35 R35 K31 ["Enums"]
      247 GETTABLEKS                       R35 R35 K49 ["AnnotationChannelContentPreference"]
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
      264 GETTABLEKS                       R38 R0 K12 ["Src"]
      266 GETTABLEKS                       R38 R38 K22 ["Contexts"]
      268 GETTABLEKS                       R38 R38 K55 ["AnnotationsServiceContext"]
      270 CALL                             R37 1 1
      271 GETTABLEKS                       R38 R3 K56 ["fflagAnnotationsMaxTextLength"]
      273 NEWTABLE                         R39 0 0
      275 DUPCLOSURE                       R40 K57 [PROTO_23]
      276 CAPTURE                          VAL R1
      277 CAPTURE                          VAL R22
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R9
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R25
      282 CAPTURE                          VAL R20
      283 CAPTURE                          VAL R26
      284 CAPTURE                          VAL R31
      285 CAPTURE                          VAL R34
      286 CAPTURE                          VAL R37
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R36
      289 CAPTURE                          VAL R27
      290 CAPTURE                          VAL R39
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R13
      293 CAPTURE                          VAL R38
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R21
      296 CAPTURE                          VAL R29
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R32
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R4
      301 CAPTURE                          VAL R17
      302 CAPTURE                          VAL R15
      303 CAPTURE                          VAL R23
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R30
      306 CAPTURE                          VAL R35
      307 CAPTURE                          VAL R33
      308 RETURN                           R40 1
