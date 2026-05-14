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
      248 JUMPIFNOT                        R32 ; [+71]
      249 GETUPVAL                         R31 0
      250 GETTABLEKS                       R31 R31 K29 ["createElement"]
      252 LOADK                            R32 K41 ["Frame"]
      253 DUPTABLE                         R33 K45 [{"LayoutOrder", "ZIndex", "Size", "BackgroundTransparency"}]
      254 LOADN                            R34 255
      255 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      257 LOADN                            R34 100
      258 SETTABLEKS                       R34 R33 K42 ["ZIndex"]
      260 GETIMPORT                        R34 K48 [UDim2.new]
      262 LOADN                            R35 1
      263 LOADN                            R36 0
      264 LOADN                            R37 0
      265 LOADN                            R38 252
      266 CALL                             R34 4 1
      267 SETTABLEKS                       R34 R33 K43 ["Size"]
      269 LOADN                            R34 1
      270 SETTABLEKS                       R34 R33 K44 ["BackgroundTransparency"]
      272 DUPTABLE                         R34 K50 [{"Alert"}]
      273 GETUPVAL                         R35 0
      274 GETTABLEKS                       R35 R35 K29 ["createElement"]
      276 GETUPVAL                         R36 19
      277 DUPTABLE                         R37 K56 [{"Message", "AnchorPoint", "Position", "Size", "IsPopup", "OnClose"}]
      278 GETUPVAL                         R38 20
      279 MOVE                             R39 R15
      280 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      282 MOVE                             R41 R3
      283 CALL                             R38 3 1
      284 SETTABLEKS                       R38 R37 K51 ["Message"]
      286 GETIMPORT                        R38 K58 [Vector2.new]
      288 LOADK                            R39 K59 [0.5]
      289 LOADN                            R40 0
      290 CALL                             R38 2 1
      291 SETTABLEKS                       R38 R37 K52 ["AnchorPoint"]
      293 GETIMPORT                        R38 K61 [UDim2.fromScale]
      295 LOADK                            R39 K59 [0.5]
      296 LOADN                            R40 0
      297 CALL                             R38 2 1
      298 SETTABLEKS                       R38 R37 K53 ["Position"]
      300 GETIMPORT                        R38 K61 [UDim2.fromScale]
      302 LOADK                            R39 K62 [0.75]
      303 LOADN                            R40 0
      304 CALL                             R38 2 1
      305 SETTABLEKS                       R38 R37 K43 ["Size"]
      307 LOADB                            R38 1
      308 SETTABLEKS                       R38 R37 K54 ["IsPopup"]
      310 NEWCLOSURE                       R38 P4
      311 CAPTURE                          VAL R16
      312 CAPTURE                          UPVAL U6
      313 SETTABLEKS                       R38 R37 K55 ["OnClose"]
      315 CALL                             R35 2 1
      316 SETTABLEKS                       R35 R34 K49 ["Alert"]
      318 CALL                             R31 3 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R31
      321 NEWCLOSURE                       R32 P5
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R26
      324 CAPTURE                          VAL R0
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R23
      327 GETUPVAL                         R33 0
      328 GETTABLEKS                       R33 R33 K29 ["createElement"]
      330 GETUPVAL                         R34 21
      331 DUPTABLE                         R35 K65 [{"Width", "Position", "OnFocusLost"}]
      332 LOADN                            R36 94
      333 SETTABLEKS                       R36 R35 K63 ["Width"]
      335 GETTABLEKS                       R36 R0 K53 ["Position"]
      337 SETTABLEKS                       R36 R35 K53 ["Position"]
      339 GETTABLEKS                       R36 R0 K66 ["OnCancel"]
      341 SETTABLEKS                       R36 R35 K64 ["OnFocusLost"]
      343 DUPTABLE                         R36 K74 [{"ErrorBanner", "Header", "ContentWrapper", "ReplyBox", "ReplyError", "Footer", "Popup"}]
      344 SETTABLEKS                       R31 R36 K67 ["ErrorBanner"]
      346 GETUPVAL                         R37 0
      347 GETTABLEKS                       R37 R37 K29 ["createElement"]
      349 GETUPVAL                         R38 22
      350 DUPTABLE                         R39 K76 [{"DataModel", "Annotation"}]
      351 LOADK                            R40 K77 ["Edit"]
      352 SETTABLEKS                       R40 R39 K75 ["DataModel"]
      354 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      356 SETTABLEKS                       R40 R39 K4 ["Annotation"]
      358 DUPTABLE                         R40 K81 [{"MoreIcon", "ResolveButton", "CloseButton"}]
      359 GETUPVAL                         R41 0
      360 GETTABLEKS                       R41 R41 K29 ["createElement"]
      362 GETUPVAL                         R42 23
      363 NEWTABLE                         R43 8 0
      365 NEWTABLE                         R44 0 4
      367 JUMPIFNOT                        R28 ; [+6]
      368 LOADK                            R47 K82 ["Dropdown"]
      369 LOADK                            R48 K77 ["Edit"]
      370 NAMECALL                         R45 R3 K83 ["getText"]
      372 CALL                             R45 3 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R45
      375 LOADK                            R48 K82 ["Dropdown"]
      376 LOADK                            R49 K84 ["ZoomTo"]
      377 NAMECALL                         R46 R3 K83 ["getText"]
      379 CALL                             R46 3 1
      380 GETUPVAL                         R48 9
      381 GETTABLEKS                       R48 R48 K13 ["All"]
      383 JUMPIFNOTEQ                      R22 R48 ; [+7]
      385 LOADK                            R49 K82 ["Dropdown"]
      386 LOADK                            R50 K85 ["Unsubscribe"]
      387 NAMECALL                         R47 R3 K83 ["getText"]
      389 CALL                             R47 3 1
      390 JUMP                             ; [+5]
      391 LOADK                            R49 K82 ["Dropdown"]
      392 LOADK                            R50 K86 ["Subscribe"]
      393 NAMECALL                         R47 R3 K83 ["getText"]
      395 CALL                             R47 3 1
      396 JUMPIFNOT                        R28 ; [+28]
      397 GETUPVAL                         R48 0
      398 GETTABLEKS                       R48 R48 K29 ["createElement"]
      400 LOADK                            R49 K87 ["TextButton"]
      401 NEWTABLE                         R50 4 0
      403 LOADK                            R53 K82 ["Dropdown"]
      404 LOADK                            R54 K88 ["DeleteThread"]
      405 NAMECALL                         R51 R3 K83 ["getText"]
      407 CALL                             R51 3 1
      408 SETTABLEKS                       R51 R50 K89 ["Text"]
      410 GETUPVAL                         R51 0
      411 GETTABLEKS                       R51 R51 K90 ["Event"]
      413 GETTABLEKS                       R51 R51 K91 ["Activated"]
      415 NEWCLOSURE                       R52 P6
      416 CAPTURE                          VAL R14
      417 SETTABLE                         R52 R50 R51
      418 GETUPVAL                         R51 0
      419 GETTABLEKS                       R51 R51 K92 ["Tag"]
      421 LOADK                            R52 K93 ["Component-DropdownItem Delete"]
      422 SETTABLE                         R52 R50 R51
      423 CALL                             R48 2 1
      424 JUMP                             ; [+1]
      425 LOADNIL                          R48
      426 SETLIST                          R44 R45 4 [1]
      428 SETTABLEKS                       R44 R43 K94 ["DropdownItems"]
      430 NEWCLOSURE                       R44 P7
      431 CAPTURE                          VAL R3
      432 CAPTURE                          UPVAL U24
      433 CAPTURE                          VAL R4
      434 CAPTURE                          VAL R0
      435 CAPTURE                          VAL R10
      436 CAPTURE                          UPVAL U9
      437 CAPTURE                          VAL R24
      438 CAPTURE                          VAL R26
      439 CAPTURE                          VAL R25
      440 CAPTURE                          VAL R23
      441 SETTABLEKS                       R44 R43 K95 ["OnSelect"]
      443 GETUPVAL                         R45 6
      444 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      446 JUMPIFEQ                         R15 R45 ; [+2]
      448 LOADB                            R44 0 +1
      449 LOADB                            R44 1
      450 SETTABLEKS                       R44 R43 K96 ["Disabled"]
      452 LOADN                            R44 1
      453 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      455 GETUPVAL                         R44 0
      456 GETTABLEKS                       R44 R44 K92 ["Tag"]
      458 GETUPVAL                         R46 6
      459 GETTABLEKS                       R46 R46 K8 ["InProgress"]
      461 JUMPIFNOTEQ                      R15 R46 ; [+3]
      463 LOADK                            R45 K96 ["Disabled"]
      464 JUMP                             ; [+1]
      465 LOADNIL                          R45
      466 SETTABLE                         R45 R43 R44
      467 CALL                             R41 2 1
      468 SETTABLEKS                       R41 R40 K78 ["MoreIcon"]
      470 GETUPVAL                         R41 0
      471 GETTABLEKS                       R41 R41 K29 ["createElement"]
      473 GETUPVAL                         R42 25
      474 DUPTABLE                         R43 K99 [{"Resolved", "Disabled", "OnClick", "LayoutOrder"}]
      475 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      477 GETTABLEKS                       R44 R44 K97 ["Resolved"]
      479 SETTABLEKS                       R44 R43 K97 ["Resolved"]
      481 GETUPVAL                         R45 6
      482 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      484 JUMPIFEQ                         R15 R45 ; [+2]
      486 LOADB                            R44 0 +1
      487 LOADB                            R44 1
      488 SETTABLEKS                       R44 R43 K96 ["Disabled"]
      490 NEWCLOSURE                       R44 P8
      491 CAPTURE                          UPVAL U24
      492 CAPTURE                          VAL R4
      493 CAPTURE                          VAL R0
      494 SETTABLEKS                       R44 R43 K98 ["OnClick"]
      496 LOADN                            R44 2
      497 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      499 CALL                             R41 2 1
      500 SETTABLEKS                       R41 R40 K79 ["ResolveButton"]
      502 GETUPVAL                         R41 0
      503 GETTABLEKS                       R41 R41 K29 ["createElement"]
      505 LOADK                            R42 K87 ["TextButton"]
      506 NEWTABLE                         R43 4 0
      508 GETUPVAL                         R44 0
      509 GETTABLEKS                       R44 R44 K90 ["Event"]
      511 GETTABLEKS                       R44 R44 K91 ["Activated"]
      513 GETTABLEKS                       R45 R0 K66 ["OnCancel"]
      515 SETTABLE                         R45 R43 R44
      516 LOADN                            R44 3
      517 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      519 GETUPVAL                         R44 0
      520 GETTABLEKS                       R44 R44 K92 ["Tag"]
      522 LOADK                            R45 K80 ["CloseButton"]
      523 SETTABLE                         R45 R43 R44
      524 DUPTABLE                         R44 K101 [{"CloseIcon"}]
      525 GETUPVAL                         R45 0
      526 GETTABLEKS                       R45 R45 K29 ["createElement"]
      528 LOADK                            R46 K102 ["ImageLabel"]
      529 NEWTABLE                         R47 1 0
      531 GETUPVAL                         R48 0
      532 GETTABLEKS                       R48 R48 K92 ["Tag"]
      534 LOADK                            R49 K103 ["CloseIcon X-Transparent"]
      535 SETTABLE                         R49 R47 R48
      536 CALL                             R45 2 1
      537 SETTABLEKS                       R45 R44 K100 ["CloseIcon"]
      539 CALL                             R41 3 1
      540 SETTABLEKS                       R41 R40 K80 ["CloseButton"]
      542 CALL                             R37 3 1
      543 SETTABLEKS                       R37 R36 K68 ["Header"]
      545 GETUPVAL                         R37 0
      546 GETTABLEKS                       R37 R37 K29 ["createElement"]
      548 GETUPVAL                         R38 26
      549 DUPTABLE                         R39 K105 [{"LayoutOrder", "MaxY"}]
      550 LOADN                            R40 1
      551 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      553 LOADN                            R40 250
      554 SETTABLEKS                       R40 R39 K104 ["MaxY"]
      556 NEWTABLE                         R40 1 1
      558 GETUPVAL                         R42 0
      559 GETTABLEKS                       R42 R42 K29 ["createElement"]
      561 GETUPVAL                         R43 16
      562 DUPTABLE                         R44 K107 [{"ref", "LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      563 SETTABLEKS                       R10 R44 K106 ["ref"]
      565 LOADN                            R45 0
      566 SETTABLEKS                       R45 R44 K30 ["LayoutOrder"]
      568 GETTABLEKS                       R45 R0 K4 ["Annotation"]
      570 SETTABLEKS                       R45 R44 K4 ["Annotation"]
      572 NEWCLOSURE                       R45 P9
      573 CAPTURE                          VAL R12
      574 SETTABLEKS                       R45 R44 K31 ["ToggleEditing"]
      576 GETTABLEKS                       R45 R0 K32 ["SetIsTagDropdownOpen"]
      578 SETTABLEKS                       R45 R44 K32 ["SetIsTagDropdownOpen"]
      580 GETTABLEKS                       R45 R0 K33 ["IsTagDropdownOpen"]
      582 SETTABLEKS                       R45 R44 K33 ["IsTagDropdownOpen"]
      584 CALL                             R42 2 1
      585 SETTABLEKS                       R42 R40 K108 ["Comment"]
      587 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
      588 MOVE                             R42 R27
      589 GETIMPORT                        R41 K110 [table.unpack]
      591 CALL                             R41 1 -1
      592 SETLIST                          R40 R41 -1 [1]
      594 CALL                             R37 3 1
      595 SETTABLEKS                       R37 R36 K69 ["ContentWrapper"]
      597 JUMPIF                           R11 ; [+92]
      598 GETUPVAL                         R37 0
      599 GETTABLEKS                       R37 R37 K29 ["createElement"]
      601 LOADK                            R38 K41 ["Frame"]
      602 NEWTABLE                         R39 8 0
      604 LOADN                            R40 2
      605 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      607 LOADN                            R40 1
      608 SETTABLEKS                       R40 R39 K44 ["BackgroundTransparency"]
      610 GETIMPORT                        R40 K114 [Enum.AutomaticSize.Y]
      612 SETTABLEKS                       R40 R39 K112 ["AutomaticSize"]
      614 GETIMPORT                        R40 K61 [UDim2.fromScale]
      616 LOADN                            R41 1
      617 LOADN                            R42 0
      618 CALL                             R40 2 1
      619 SETTABLEKS                       R40 R39 K43 ["Size"]
      621 GETUPVAL                         R40 0
      622 GETTABLEKS                       R40 R40 K92 ["Tag"]
      624 LOADK                            R41 K115 ["X-RowM"]
      625 SETTABLE                         R41 R39 R40
      626 DUPTABLE                         R40 K118 [{"Avatar", "TextInput"}]
      627 GETUPVAL                         R41 0
      628 GETTABLEKS                       R41 R41 K29 ["createElement"]
      630 LOADK                            R42 K102 ["ImageLabel"]
      631 NEWTABLE                         R43 4 0
      633 LOADK                            R45 K119 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      634 GETUPVAL                         R47 12
      635 NAMECALL                         R47 R47 K16 ["GetUserId"]
      637 CALL                             R47 1 1
      638 NAMECALL                         R45 R45 K120 ["format"]
      640 CALL                             R45 2 1
      641 MOVE                             R44 R45
      642 SETTABLEKS                       R44 R43 K121 ["Image"]
      644 LOADN                            R44 0
      645 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      647 GETUPVAL                         R44 0
      648 GETTABLEKS                       R44 R44 K92 ["Tag"]
      650 LOADK                            R45 K122 ["Component-Avatar"]
      651 SETTABLE                         R45 R43 R44
      652 CALL                             R41 2 1
      653 SETTABLEKS                       R41 R40 K116 ["Avatar"]
      655 GETUPVAL                         R41 0
      656 GETTABLEKS                       R41 R41 K29 ["createElement"]
      658 GETUPVAL                         R42 27
      659 DUPTABLE                         R43 K126 [{"Key", "LayoutOrder", "Text", "PlaceholderText", "OnTextChanged", "Disabled"}]
      660 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      662 SETTABLEKS                       R44 R43 K123 ["Key"]
      664 LOADN                            R44 1
      665 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      667 SETTABLEKS                       R8 R43 K89 ["Text"]
      669 LOADK                            R46 K127 ["Reply"]
      670 LOADK                            R47 K128 ["Placeholder"]
      671 NAMECALL                         R44 R3 K83 ["getText"]
      673 CALL                             R44 3 1
      674 SETTABLEKS                       R44 R43 K124 ["PlaceholderText"]
      676 NEWCLOSURE                       R44 P10
      677 CAPTURE                          VAL R9
      678 CAPTURE                          UPVAL U14
      679 CAPTURE                          VAL R0
      680 SETTABLEKS                       R44 R43 K125 ["OnTextChanged"]
      682 NOT                              R44 R30
      683 SETTABLEKS                       R44 R43 K96 ["Disabled"]
      685 CALL                             R41 2 1
      686 SETTABLEKS                       R41 R40 K117 ["TextInput"]
      688 CALL                             R37 3 1
      689 JUMP                             ; [+1]
      690 LOADNIL                          R37
      691 SETTABLEKS                       R37 R36 K70 ["ReplyBox"]
      693 JUMPIF                           R11 ; [+63]
      694 GETUPVAL                         R38 18
      695 MOVE                             R39 R17
      696 MOVE                             R40 R8
      697 MOVE                             R41 R21
      698 CALL                             R38 3 1
      699 JUMPIF                           R38 ; [+1]
      700 JUMPIFNOT                        R29 ; [+56]
      701 GETUPVAL                         R37 0
      702 GETTABLEKS                       R37 R37 K29 ["createElement"]
      704 GETUPVAL                         R38 19
      705 DUPTABLE                         R39 K130 [{"LayoutOrder", "Position", "Message", "UIPadding"}]
      706 LOADN                            R40 3
      707 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      709 GETIMPORT                        R40 K132 [UDim2.fromOffset]
      711 LOADN                            R41 42
      712 LOADN                            R42 0
      713 CALL                             R40 2 1
      714 SETTABLEKS                       R40 R39 K53 ["Position"]
      716 JUMPIFNOT                        R29 ; [+14]
      717 LOADK                            R42 K117 ["TextInput"]
      718 LOADK                            R43 K133 ["LengthExceeded"]
      719 DUPTABLE                         R44 K135 [{"maxLength"}]
      720 GETUPVAL                         R46 17
      721 FASTCALL1                        TOSTRING R46 ; [+2]
      722 GETIMPORT                        R45 K137 [tostring]
      724 CALL                             R45 1 1
      725 SETTABLEKS                       R45 R44 K134 ["maxLength"]
      727 NAMECALL                         R40 R3 K83 ["getText"]
      729 CALL                             R40 4 1
      730 JUMP                             ; [+7]
      731 GETUPVAL                         R40 20
      732 MOVE                             R41 R17
      733 LOADNIL                          R42
      734 MOVE                             R43 R3
      735 MOVE                             R44 R8
      736 MOVE                             R45 R21
      737 CALL                             R40 5 1
      738 SETTABLEKS                       R40 R39 K51 ["Message"]
      740 GETUPVAL                         R40 0
      741 GETTABLEKS                       R40 R40 K29 ["createElement"]
      743 LOADK                            R41 K129 ["UIPadding"]
      744 DUPTABLE                         R42 K139 [{"PaddingLeft"}]
      745 GETIMPORT                        R43 K141 [UDim.new]
      747 LOADN                            R44 0
      748 LOADN                            R45 42
      749 CALL                             R43 2 1
      750 SETTABLEKS                       R43 R42 K138 ["PaddingLeft"]
      752 CALL                             R40 2 1
      753 SETTABLEKS                       R40 R39 K129 ["UIPadding"]
      755 CALL                             R37 2 1
      756 JUMP                             ; [+1]
      757 LOADNIL                          R37
      758 SETTABLEKS                       R37 R36 K71 ["ReplyError"]
      760 JUMPIFNOT                        R30 ; [+27]
      761 GETUPVAL                         R37 0
      762 GETTABLEKS                       R37 R37 K29 ["createElement"]
      764 GETUPVAL                         R38 28
      765 DUPTABLE                         R39 K143 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      766 LOADN                            R40 4
      767 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      769 SETTABLEKS                       R8 R39 K89 ["Text"]
      771 NEWCLOSURE                       R40 P11
      772 CAPTURE                          VAL R9
      773 CAPTURE                          UPVAL U14
      774 CAPTURE                          VAL R0
      775 SETTABLEKS                       R40 R39 K66 ["OnCancel"]
      777 NEWCLOSURE                       R40 P12
      778 CAPTURE                          VAL R18
      779 CAPTURE                          UPVAL U6
      780 CAPTURE                          VAL R0
      781 CAPTURE                          UPVAL U29
      782 CAPTURE                          VAL R20
      783 CAPTURE                          UPVAL U30
      784 SETTABLEKS                       R40 R39 K142 ["OnSubmit"]
      786 CALL                             R37 2 1
      787 JUMP                             ; [+1]
      788 LOADNIL                          R37
      789 SETTABLEKS                       R37 R36 K72 ["Footer"]
      791 MOVE                             R37 R13
      792 JUMPIFNOT                        R37 ; [+24]
      793 GETUPVAL                         R37 0
      794 GETTABLEKS                       R37 R37 K29 ["createElement"]
      796 GETUPVAL                         R38 31
      797 DUPTABLE                         R39 K145 [{"Text", "OnCancel", "OnDelete"}]
      798 LOADK                            R42 K146 ["ConfirmDeleteDialog"]
      799 LOADK                            R43 K88 ["DeleteThread"]
      800 NAMECALL                         R40 R3 K83 ["getText"]
      802 CALL                             R40 3 1
      803 SETTABLEKS                       R40 R39 K89 ["Text"]
      805 NEWCLOSURE                       R40 P13
      806 CAPTURE                          VAL R14
      807 SETTABLEKS                       R40 R39 K66 ["OnCancel"]
      809 NEWCLOSURE                       R40 P14
      810 CAPTURE                          VAL R14
      811 CAPTURE                          UPVAL U24
      812 CAPTURE                          VAL R4
      813 CAPTURE                          VAL R0
      814 SETTABLEKS                       R40 R39 K144 ["OnDelete"]
      816 CALL                             R37 2 1
      817 SETTABLEKS                       R37 R36 K73 ["Popup"]
      819 CALL                             R33 3 -1
      820 RETURN                           R33 -1

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
