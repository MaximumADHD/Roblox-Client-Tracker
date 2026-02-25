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
      116 GETUPVAL                         R6 13
      117 JUMPIFNOT                        R6 ; [+14]
      118 GETUPVAL                         R7 9
      119 GETTABLEKS                       R6 R7 K18 ["fflagAnnotationsPerThreadNotifPrefs"]
      121 JUMPIFNOT                        R6 ; [+10]
      122 GETIMPORT                        R6 K21 [coroutine.wrap]
      124 NEWCLOSURE                       R7 P5
      125 CAPTURE                          UPVAL U14
      126 CAPTURE                          UPVAL U15
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          UPVAL U16
      129 CAPTURE                          UPVAL U17
      130 CALL                             R6 1 1
      131 CALL                             R6 0 0
      132 NEWCLOSURE                       R6 P6
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R5
      139 RETURN                           R6 1

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
       28 JUMPIFNOT                        R1 ; [+72]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R2 R3 K6 ["current"]
       32 GETTABLEKS                       R1 R2 K7 ["beginEditing"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 5
       37 JUMPIFNOT                        R1 ; [+31]
       38 GETUPVAL                         R2 6
       39 GETTABLEKS                       R1 R2 K8 ["fflagAnnotationsPerThreadNotifPrefs"]
       41 JUMPIFNOT                        R1 ; [+27]
       42 GETUPVAL                         R1 0
       43 LOADK                            R3 K0 ["Dropdown"]
       44 LOADK                            R4 K9 ["Unsubscribe"]
       45 NAMECALL                         R1 R1 K2 ["getText"]
       47 CALL                             R1 3 1
       48 JUMPIFNOTEQ                      R0 R1 ; [+20]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R1 R2 K10 ["None"]
       53 GETUPVAL                         R2 8
       54 GETUPVAL                         R4 9
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K4 ["Annotation"]
       58 GETTABLEKS                       R5 R6 K11 ["ChannelId"]
       60 GETUPVAL                         R6 10
       61 MOVE                             R7 R1
       62 NAMECALL                         R2 R2 K12 ["CreateOrUpdateChannelPreferenceAsync"]
       64 CALL                             R2 5 0
       65 GETUPVAL                         R2 11
       66 MOVE                             R3 R1
       67 CALL                             R2 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 5
       70 JUMPIFNOT                        R1 ; [+30]
       71 GETUPVAL                         R2 6
       72 GETTABLEKS                       R1 R2 K8 ["fflagAnnotationsPerThreadNotifPrefs"]
       74 JUMPIFNOT                        R1 ; [+26]
       75 GETUPVAL                         R1 0
       76 LOADK                            R3 K0 ["Dropdown"]
       77 LOADK                            R4 K13 ["Subscribe"]
       78 NAMECALL                         R1 R1 K2 ["getText"]
       80 CALL                             R1 3 1
       81 JUMPIFNOTEQ                      R0 R1 ; [+19]
       83 GETUPVAL                         R2 7
       84 GETTABLEKS                       R1 R2 K14 ["All"]
       86 GETUPVAL                         R2 8
       87 GETUPVAL                         R4 9
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R6 R7 K4 ["Annotation"]
       91 GETTABLEKS                       R5 R6 K11 ["ChannelId"]
       93 GETUPVAL                         R6 10
       94 MOVE                             R7 R1
       95 NAMECALL                         R2 R2 K12 ["CreateOrUpdateChannelPreferenceAsync"]
       97 CALL                             R2 5 0
       98 GETUPVAL                         R2 11
       99 MOVE                             R3 R1
      100 CALL                             R2 1 0
      101 RETURN                           R0 0

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
      138 CAPTURE                          UPVAL U16
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R26
      141 CAPTURE                          VAL R25
      142 CAPTURE                          VAL R23
      143 NEWTABLE                         R29 0 1
      145 GETTABLEKS                       R30 R0 K5 ["Annotation"]
      147 SETLIST                          R29 R30 1 [1]
      149 CALL                             R27 2 0
      150 NEWTABLE                         R27 0 0
      152 GETIMPORT                        R28 K21 [table.sort]
      154 MOVE                             R29 R6
      155 DUPCLOSURE                       R30 K22 [PROTO_8]
      156 CALL                             R28 2 0
      157 GETIMPORT                        R28 K24 [ipairs]
      159 MOVE                             R29 R6
      160 CALL                             R28 1 3
      161 FORGPREP_INEXT                   R28
      162 LOADK                            R35 K5 ["Annotation"]
      163 NAMECALL                         R33 R32 K25 ["IsA"]
      165 CALL                             R33 2 1
      166 JUMPIF                           R33 ; [+1]
      167 JUMP                             ; [+48]
      168 GETUPVAL                         R33 17
      169 MOVE                             R34 R32
      170 CALL                             R33 1 1
      171 JUMPIFNOT                        R33 ; [+12]
      172 GETTABLEKS                       R33 R32 K26 ["RequestCompleted"]
      174 NEWCLOSURE                       R35 P2
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R18
      180 NAMECALL                         R33 R33 K27 ["Once"]
      182 CALL                             R33 2 0
      183 JUMP                             ; [+32]
      184 LOADK                            R35 K28 ["IsDraft"]
      185 NAMECALL                         R33 R32 K29 ["GetAttribute"]
      187 CALL                             R33 2 1
      188 JUMPIF                           R33 ; [+27]
      189 MOVE                             R34 R27
      190 GETUPVAL                         R36 0
      191 GETTABLEKS                       R35 R36 K30 ["createElement"]
      193 GETUPVAL                         R36 18
      194 DUPTABLE                         R37 K35 [{"LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      195 SETTABLEKS                       R31 R37 K31 ["LayoutOrder"]
      197 SETTABLEKS                       R32 R37 K5 ["Annotation"]
      199 NEWCLOSURE                       R38 P3
      200 CAPTURE                          VAL R12
      201 SETTABLEKS                       R38 R37 K32 ["ToggleEditing"]
      203 GETTABLEKS                       R38 R0 K33 ["SetIsTagDropdownOpen"]
      205 SETTABLEKS                       R38 R37 K33 ["SetIsTagDropdownOpen"]
      207 GETTABLEKS                       R38 R0 K34 ["IsTagDropdownOpen"]
      209 SETTABLEKS                       R38 R37 K34 ["IsTagDropdownOpen"]
      211 CALL                             R35 2 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R33 K37 [table.insert]
      215 CALL                             R33 -1 0
      216 FORGLOOP                         R28 2 [inext] ; [-55]
      218 GETTABLEKS                       R30 R0 K5 ["Annotation"]
      220 GETTABLEKS                       R29 R30 K38 ["AuthorId"]
      222 GETUPVAL                         R30 13
      223 NAMECALL                         R30 R30 K17 ["GetUserId"]
      225 CALL                             R30 1 1
      226 JUMPIFEQ                         R29 R30 ; [+2]
      228 LOADB                            R28 0 +1
      229 LOADB                            R28 1
      230 FASTCALL1                        STRING_LEN R8 ; [+3]
      231 MOVE                             R31 R8
      232 GETIMPORT                        R30 K41 [string.len]
      234 CALL                             R30 1 1
      235 GETUPVAL                         R31 19
      236 JUMPIFLT                         R31 R30 ; [+2]
      238 LOADB                            R29 0 +1
      239 LOADB                            R29 1
      240 LOADB                            R30 0
      241 GETUPVAL                         R32 7
      242 GETTABLEKS                       R31 R32 K9 ["InProgress"]
      244 JUMPIFEQ                         R17 R31 ; [+8]
      246 LOADB                            R30 0
      247 GETUPVAL                         R32 7
      248 GETTABLEKS                       R31 R32 K9 ["InProgress"]
      250 JUMPIFEQ                         R15 R31 ; [+2]
      252 NOT                              R30 R11
      253 GETUPVAL                         R32 20
      254 MOVE                             R33 R15
      255 CALL                             R32 1 1
      256 JUMPIFNOT                        R32 ; [+71]
      257 GETUPVAL                         R32 0
      258 GETTABLEKS                       R31 R32 K30 ["createElement"]
      260 LOADK                            R32 K42 ["Frame"]
      261 DUPTABLE                         R33 K46 [{"LayoutOrder", "ZIndex", "Size", "BackgroundTransparency"}]
      262 LOADN                            R34 255
      263 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      265 LOADN                            R34 100
      266 SETTABLEKS                       R34 R33 K43 ["ZIndex"]
      268 GETIMPORT                        R34 K49 [UDim2.new]
      270 LOADN                            R35 1
      271 LOADN                            R36 0
      272 LOADN                            R37 0
      273 LOADN                            R38 252
      274 CALL                             R34 4 1
      275 SETTABLEKS                       R34 R33 K44 ["Size"]
      277 LOADN                            R34 1
      278 SETTABLEKS                       R34 R33 K45 ["BackgroundTransparency"]
      280 DUPTABLE                         R34 K51 [{"Alert"}]
      281 GETUPVAL                         R36 0
      282 GETTABLEKS                       R35 R36 K30 ["createElement"]
      284 GETUPVAL                         R36 21
      285 DUPTABLE                         R37 K57 [{"Message", "AnchorPoint", "Position", "Size", "IsPopup", "OnClose"}]
      286 GETUPVAL                         R38 22
      287 MOVE                             R39 R15
      288 GETTABLEKS                       R40 R0 K5 ["Annotation"]
      290 MOVE                             R41 R3
      291 CALL                             R38 3 1
      292 SETTABLEKS                       R38 R37 K52 ["Message"]
      294 GETIMPORT                        R38 K59 [Vector2.new]
      296 LOADK                            R39 K60 [0.5]
      297 LOADN                            R40 0
      298 CALL                             R38 2 1
      299 SETTABLEKS                       R38 R37 K53 ["AnchorPoint"]
      301 GETIMPORT                        R38 K62 [UDim2.fromScale]
      303 LOADK                            R39 K60 [0.5]
      304 LOADN                            R40 0
      305 CALL                             R38 2 1
      306 SETTABLEKS                       R38 R37 K54 ["Position"]
      308 GETIMPORT                        R38 K62 [UDim2.fromScale]
      310 LOADK                            R39 K63 [0.75]
      311 LOADN                            R40 0
      312 CALL                             R38 2 1
      313 SETTABLEKS                       R38 R37 K44 ["Size"]
      315 LOADB                            R38 1
      316 SETTABLEKS                       R38 R37 K55 ["IsPopup"]
      318 NEWCLOSURE                       R38 P4
      319 CAPTURE                          VAL R16
      320 CAPTURE                          UPVAL U7
      321 SETTABLEKS                       R38 R37 K56 ["OnClose"]
      323 CALL                             R35 2 1
      324 SETTABLEKS                       R35 R34 K50 ["Alert"]
      326 CALL                             R31 3 1
      327 JUMP                             ; [+1]
      328 LOADNIL                          R31
      329 NEWCLOSURE                       R32 P5
      330 CAPTURE                          VAL R24
      331 CAPTURE                          VAL R26
      332 CAPTURE                          VAL R0
      333 CAPTURE                          VAL R25
      334 CAPTURE                          VAL R23
      335 GETUPVAL                         R34 0
      336 GETTABLEKS                       R33 R34 K30 ["createElement"]
      338 GETUPVAL                         R34 23
      339 DUPTABLE                         R35 K66 [{"Width", "Position", "OnFocusLost"}]
      340 LOADN                            R36 94
      341 SETTABLEKS                       R36 R35 K64 ["Width"]
      343 GETTABLEKS                       R36 R0 K54 ["Position"]
      345 SETTABLEKS                       R36 R35 K54 ["Position"]
      347 GETTABLEKS                       R36 R0 K67 ["OnCancel"]
      349 SETTABLEKS                       R36 R35 K65 ["OnFocusLost"]
      351 DUPTABLE                         R36 K75 [{"ErrorBanner", "Header", "ContentWrapper", "ReplyBox", "ReplyError", "Footer", "Popup"}]
      352 SETTABLEKS                       R31 R36 K68 ["ErrorBanner"]
      354 GETUPVAL                         R38 0
      355 GETTABLEKS                       R37 R38 K30 ["createElement"]
      357 GETUPVAL                         R38 24
      358 DUPTABLE                         R39 K77 [{"DataModel", "Annotation"}]
      359 LOADK                            R40 K78 ["Edit"]
      360 SETTABLEKS                       R40 R39 K76 ["DataModel"]
      362 GETTABLEKS                       R40 R0 K5 ["Annotation"]
      364 SETTABLEKS                       R40 R39 K5 ["Annotation"]
      366 DUPTABLE                         R40 K82 [{"MoreIcon", "ResolveButton", "CloseButton"}]
      367 GETUPVAL                         R42 0
      368 GETTABLEKS                       R41 R42 K30 ["createElement"]
      370 GETUPVAL                         R42 25
      371 NEWTABLE                         R43 8 0
      373 NEWTABLE                         R44 0 4
      375 JUMPIFNOT                        R28 ; [+6]
      376 LOADK                            R47 K83 ["Dropdown"]
      377 LOADK                            R48 K78 ["Edit"]
      378 NAMECALL                         R45 R3 K84 ["getText"]
      380 CALL                             R45 3 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R45
      383 LOADK                            R48 K83 ["Dropdown"]
      384 LOADK                            R49 K85 ["ZoomTo"]
      385 NAMECALL                         R46 R3 K84 ["getText"]
      387 CALL                             R46 3 1
      388 GETUPVAL                         R48 16
      389 JUMPIFNOT                        R48 ; [+21]
      390 GETUPVAL                         R49 4
      391 GETTABLEKS                       R48 R49 K86 ["fflagAnnotationsPerThreadNotifPrefs"]
      393 JUMPIFNOT                        R48 ; [+17]
      394 GETUPVAL                         R49 10
      395 GETTABLEKS                       R48 R49 K14 ["All"]
      397 JUMPIFNOTEQ                      R22 R48 ; [+7]
      399 LOADK                            R49 K83 ["Dropdown"]
      400 LOADK                            R50 K87 ["Unsubscribe"]
      401 NAMECALL                         R47 R3 K84 ["getText"]
      403 CALL                             R47 3 1
      404 JUMP                             ; [+7]
      405 LOADK                            R49 K83 ["Dropdown"]
      406 LOADK                            R50 K88 ["Subscribe"]
      407 NAMECALL                         R47 R3 K84 ["getText"]
      409 CALL                             R47 3 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R47
      412 JUMPIFNOT                        R28 ; [+28]
      413 GETUPVAL                         R49 0
      414 GETTABLEKS                       R48 R49 K30 ["createElement"]
      416 LOADK                            R49 K89 ["TextButton"]
      417 NEWTABLE                         R50 4 0
      419 LOADK                            R53 K83 ["Dropdown"]
      420 LOADK                            R54 K90 ["DeleteThread"]
      421 NAMECALL                         R51 R3 K84 ["getText"]
      423 CALL                             R51 3 1
      424 SETTABLEKS                       R51 R50 K91 ["Text"]
      426 GETUPVAL                         R53 0
      427 GETTABLEKS                       R52 R53 K92 ["Event"]
      429 GETTABLEKS                       R51 R52 K93 ["Activated"]
      431 NEWCLOSURE                       R52 P6
      432 CAPTURE                          VAL R14
      433 SETTABLE                         R52 R50 R51
      434 GETUPVAL                         R52 0
      435 GETTABLEKS                       R51 R52 K94 ["Tag"]
      437 LOADK                            R52 K95 ["Component-DropdownItem Delete"]
      438 SETTABLE                         R52 R50 R51
      439 CALL                             R48 2 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R48
      442 SETLIST                          R44 R45 4 [1]
      444 SETTABLEKS                       R44 R43 K96 ["DropdownItems"]
      446 NEWCLOSURE                       R44 P7
      447 CAPTURE                          VAL R3
      448 CAPTURE                          UPVAL U26
      449 CAPTURE                          VAL R4
      450 CAPTURE                          VAL R0
      451 CAPTURE                          VAL R10
      452 CAPTURE                          UPVAL U16
      453 CAPTURE                          UPVAL U4
      454 CAPTURE                          UPVAL U10
      455 CAPTURE                          VAL R24
      456 CAPTURE                          VAL R26
      457 CAPTURE                          VAL R25
      458 CAPTURE                          VAL R23
      459 SETTABLEKS                       R44 R43 K97 ["OnSelect"]
      461 GETUPVAL                         R46 7
      462 GETTABLEKS                       R45 R46 K9 ["InProgress"]
      464 JUMPIFEQ                         R15 R45 ; [+2]
      466 LOADB                            R44 0 +1
      467 LOADB                            R44 1
      468 SETTABLEKS                       R44 R43 K98 ["Disabled"]
      470 LOADN                            R44 1
      471 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      473 GETUPVAL                         R45 0
      474 GETTABLEKS                       R44 R45 K94 ["Tag"]
      476 GETUPVAL                         R47 7
      477 GETTABLEKS                       R46 R47 K9 ["InProgress"]
      479 JUMPIFNOTEQ                      R15 R46 ; [+3]
      481 LOADK                            R45 K98 ["Disabled"]
      482 JUMP                             ; [+1]
      483 LOADNIL                          R45
      484 SETTABLE                         R45 R43 R44
      485 CALL                             R41 2 1
      486 SETTABLEKS                       R41 R40 K79 ["MoreIcon"]
      488 GETUPVAL                         R42 0
      489 GETTABLEKS                       R41 R42 K30 ["createElement"]
      491 GETUPVAL                         R42 27
      492 DUPTABLE                         R43 K101 [{"Resolved", "Disabled", "OnClick", "LayoutOrder"}]
      493 GETTABLEKS                       R45 R0 K5 ["Annotation"]
      495 GETTABLEKS                       R44 R45 K99 ["Resolved"]
      497 SETTABLEKS                       R44 R43 K99 ["Resolved"]
      499 GETUPVAL                         R46 7
      500 GETTABLEKS                       R45 R46 K9 ["InProgress"]
      502 JUMPIFEQ                         R15 R45 ; [+2]
      504 LOADB                            R44 0 +1
      505 LOADB                            R44 1
      506 SETTABLEKS                       R44 R43 K98 ["Disabled"]
      508 NEWCLOSURE                       R44 P8
      509 CAPTURE                          UPVAL U26
      510 CAPTURE                          VAL R4
      511 CAPTURE                          VAL R0
      512 SETTABLEKS                       R44 R43 K100 ["OnClick"]
      514 LOADN                            R44 2
      515 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      517 CALL                             R41 2 1
      518 SETTABLEKS                       R41 R40 K80 ["ResolveButton"]
      520 GETUPVAL                         R42 0
      521 GETTABLEKS                       R41 R42 K30 ["createElement"]
      523 LOADK                            R42 K89 ["TextButton"]
      524 NEWTABLE                         R43 4 0
      526 GETUPVAL                         R46 0
      527 GETTABLEKS                       R45 R46 K92 ["Event"]
      529 GETTABLEKS                       R44 R45 K93 ["Activated"]
      531 GETTABLEKS                       R45 R0 K67 ["OnCancel"]
      533 SETTABLE                         R45 R43 R44
      534 LOADN                            R44 3
      535 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      537 GETUPVAL                         R45 0
      538 GETTABLEKS                       R44 R45 K94 ["Tag"]
      540 LOADK                            R45 K81 ["CloseButton"]
      541 SETTABLE                         R45 R43 R44
      542 DUPTABLE                         R44 K103 [{"CloseIcon"}]
      543 GETUPVAL                         R46 0
      544 GETTABLEKS                       R45 R46 K30 ["createElement"]
      546 LOADK                            R46 K104 ["ImageLabel"]
      547 NEWTABLE                         R47 1 0
      549 GETUPVAL                         R49 0
      550 GETTABLEKS                       R48 R49 K94 ["Tag"]
      552 LOADK                            R49 K105 ["CloseIcon X-Transparent"]
      553 SETTABLE                         R49 R47 R48
      554 CALL                             R45 2 1
      555 SETTABLEKS                       R45 R44 K102 ["CloseIcon"]
      557 CALL                             R41 3 1
      558 SETTABLEKS                       R41 R40 K81 ["CloseButton"]
      560 CALL                             R37 3 1
      561 SETTABLEKS                       R37 R36 K69 ["Header"]
      563 GETUPVAL                         R38 0
      564 GETTABLEKS                       R37 R38 K30 ["createElement"]
      566 GETUPVAL                         R38 28
      567 DUPTABLE                         R39 K107 [{"LayoutOrder", "MaxY"}]
      568 LOADN                            R40 1
      569 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      571 LOADN                            R40 250
      572 SETTABLEKS                       R40 R39 K106 ["MaxY"]
      574 NEWTABLE                         R40 1 1
      576 GETUPVAL                         R43 0
      577 GETTABLEKS                       R42 R43 K30 ["createElement"]
      579 GETUPVAL                         R43 18
      580 DUPTABLE                         R44 K109 [{"ref", "LayoutOrder", "Annotation", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      581 SETTABLEKS                       R10 R44 K108 ["ref"]
      583 LOADN                            R45 0
      584 SETTABLEKS                       R45 R44 K31 ["LayoutOrder"]
      586 GETTABLEKS                       R45 R0 K5 ["Annotation"]
      588 SETTABLEKS                       R45 R44 K5 ["Annotation"]
      590 NEWCLOSURE                       R45 P9
      591 CAPTURE                          VAL R12
      592 SETTABLEKS                       R45 R44 K32 ["ToggleEditing"]
      594 GETTABLEKS                       R45 R0 K33 ["SetIsTagDropdownOpen"]
      596 SETTABLEKS                       R45 R44 K33 ["SetIsTagDropdownOpen"]
      598 GETTABLEKS                       R45 R0 K34 ["IsTagDropdownOpen"]
      600 SETTABLEKS                       R45 R44 K34 ["IsTagDropdownOpen"]
      602 CALL                             R42 2 1
      603 SETTABLEKS                       R42 R40 K110 ["Comment"]
      605 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
      606 MOVE                             R42 R27
      607 GETIMPORT                        R41 K112 [table.unpack]
      609 CALL                             R41 1 -1
      610 SETLIST                          R40 R41 -1 [1]
      612 CALL                             R37 3 1
      613 SETTABLEKS                       R37 R36 K70 ["ContentWrapper"]
      615 JUMPIF                           R11 ; [+92]
      616 GETUPVAL                         R38 0
      617 GETTABLEKS                       R37 R38 K30 ["createElement"]
      619 LOADK                            R38 K42 ["Frame"]
      620 NEWTABLE                         R39 8 0
      622 LOADN                            R40 2
      623 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      625 LOADN                            R40 1
      626 SETTABLEKS                       R40 R39 K45 ["BackgroundTransparency"]
      628 GETIMPORT                        R40 K116 [Enum.AutomaticSize.Y]
      630 SETTABLEKS                       R40 R39 K114 ["AutomaticSize"]
      632 GETIMPORT                        R40 K62 [UDim2.fromScale]
      634 LOADN                            R41 1
      635 LOADN                            R42 0
      636 CALL                             R40 2 1
      637 SETTABLEKS                       R40 R39 K44 ["Size"]
      639 GETUPVAL                         R41 0
      640 GETTABLEKS                       R40 R41 K94 ["Tag"]
      642 LOADK                            R41 K117 ["X-RowM"]
      643 SETTABLE                         R41 R39 R40
      644 DUPTABLE                         R40 K120 [{"Avatar", "TextInput"}]
      645 GETUPVAL                         R42 0
      646 GETTABLEKS                       R41 R42 K30 ["createElement"]
      648 LOADK                            R42 K104 ["ImageLabel"]
      649 NEWTABLE                         R43 4 0
      651 LOADK                            R45 K121 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      652 GETUPVAL                         R47 13
      653 NAMECALL                         R47 R47 K17 ["GetUserId"]
      655 CALL                             R47 1 1
      656 NAMECALL                         R45 R45 K122 ["format"]
      658 CALL                             R45 2 1
      659 MOVE                             R44 R45
      660 SETTABLEKS                       R44 R43 K123 ["Image"]
      662 LOADN                            R44 0
      663 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      665 GETUPVAL                         R45 0
      666 GETTABLEKS                       R44 R45 K94 ["Tag"]
      668 LOADK                            R45 K124 ["Component-Avatar"]
      669 SETTABLE                         R45 R43 R44
      670 CALL                             R41 2 1
      671 SETTABLEKS                       R41 R40 K118 ["Avatar"]
      673 GETUPVAL                         R42 0
      674 GETTABLEKS                       R41 R42 K30 ["createElement"]
      676 GETUPVAL                         R42 29
      677 DUPTABLE                         R43 K128 [{"Key", "LayoutOrder", "Text", "PlaceholderText", "OnTextChanged", "Disabled"}]
      678 GETTABLEKS                       R44 R0 K5 ["Annotation"]
      680 SETTABLEKS                       R44 R43 K125 ["Key"]
      682 LOADN                            R44 1
      683 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      685 SETTABLEKS                       R8 R43 K91 ["Text"]
      687 LOADK                            R46 K129 ["Reply"]
      688 LOADK                            R47 K130 ["Placeholder"]
      689 NAMECALL                         R44 R3 K84 ["getText"]
      691 CALL                             R44 3 1
      692 SETTABLEKS                       R44 R43 K126 ["PlaceholderText"]
      694 NEWCLOSURE                       R44 P10
      695 CAPTURE                          VAL R9
      696 CAPTURE                          UPVAL U15
      697 CAPTURE                          VAL R0
      698 SETTABLEKS                       R44 R43 K127 ["OnTextChanged"]
      700 NOT                              R44 R30
      701 SETTABLEKS                       R44 R43 K98 ["Disabled"]
      703 CALL                             R41 2 1
      704 SETTABLEKS                       R41 R40 K119 ["TextInput"]
      706 CALL                             R37 3 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R37
      709 SETTABLEKS                       R37 R36 K71 ["ReplyBox"]
      711 JUMPIF                           R11 ; [+63]
      712 GETUPVAL                         R38 20
      713 MOVE                             R39 R17
      714 MOVE                             R40 R8
      715 MOVE                             R41 R21
      716 CALL                             R38 3 1
      717 JUMPIF                           R38 ; [+1]
      718 JUMPIFNOT                        R29 ; [+56]
      719 GETUPVAL                         R38 0
      720 GETTABLEKS                       R37 R38 K30 ["createElement"]
      722 GETUPVAL                         R38 21
      723 DUPTABLE                         R39 K132 [{"LayoutOrder", "Position", "Message", "UIPadding"}]
      724 LOADN                            R40 3
      725 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      727 GETIMPORT                        R40 K134 [UDim2.fromOffset]
      729 LOADN                            R41 42
      730 LOADN                            R42 0
      731 CALL                             R40 2 1
      732 SETTABLEKS                       R40 R39 K54 ["Position"]
      734 JUMPIFNOT                        R29 ; [+14]
      735 LOADK                            R42 K119 ["TextInput"]
      736 LOADK                            R43 K135 ["LengthExceeded"]
      737 DUPTABLE                         R44 K137 [{"maxLength"}]
      738 GETUPVAL                         R46 19
      739 FASTCALL1                        TOSTRING R46 ; [+2]
      740 GETIMPORT                        R45 K139 [tostring]
      742 CALL                             R45 1 1
      743 SETTABLEKS                       R45 R44 K136 ["maxLength"]
      745 NAMECALL                         R40 R3 K84 ["getText"]
      747 CALL                             R40 4 1
      748 JUMP                             ; [+7]
      749 GETUPVAL                         R40 22
      750 MOVE                             R41 R17
      751 LOADNIL                          R42
      752 MOVE                             R43 R3
      753 MOVE                             R44 R8
      754 MOVE                             R45 R21
      755 CALL                             R40 5 1
      756 SETTABLEKS                       R40 R39 K52 ["Message"]
      758 GETUPVAL                         R41 0
      759 GETTABLEKS                       R40 R41 K30 ["createElement"]
      761 LOADK                            R41 K131 ["UIPadding"]
      762 DUPTABLE                         R42 K141 [{"PaddingLeft"}]
      763 GETIMPORT                        R43 K143 [UDim.new]
      765 LOADN                            R44 0
      766 LOADN                            R45 42
      767 CALL                             R43 2 1
      768 SETTABLEKS                       R43 R42 K140 ["PaddingLeft"]
      770 CALL                             R40 2 1
      771 SETTABLEKS                       R40 R39 K131 ["UIPadding"]
      773 CALL                             R37 2 1
      774 JUMP                             ; [+1]
      775 LOADNIL                          R37
      776 SETTABLEKS                       R37 R36 K72 ["ReplyError"]
      778 JUMPIFNOT                        R30 ; [+27]
      779 GETUPVAL                         R38 0
      780 GETTABLEKS                       R37 R38 K30 ["createElement"]
      782 GETUPVAL                         R38 30
      783 DUPTABLE                         R39 K145 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      784 LOADN                            R40 4
      785 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      787 SETTABLEKS                       R8 R39 K91 ["Text"]
      789 NEWCLOSURE                       R40 P11
      790 CAPTURE                          VAL R9
      791 CAPTURE                          UPVAL U15
      792 CAPTURE                          VAL R0
      793 SETTABLEKS                       R40 R39 K67 ["OnCancel"]
      795 NEWCLOSURE                       R40 P12
      796 CAPTURE                          VAL R18
      797 CAPTURE                          UPVAL U7
      798 CAPTURE                          VAL R0
      799 CAPTURE                          UPVAL U31
      800 CAPTURE                          VAL R20
      801 CAPTURE                          UPVAL U32
      802 SETTABLEKS                       R40 R39 K144 ["OnSubmit"]
      804 CALL                             R37 2 1
      805 JUMP                             ; [+1]
      806 LOADNIL                          R37
      807 SETTABLEKS                       R37 R36 K73 ["Footer"]
      809 MOVE                             R37 R13
      810 JUMPIFNOT                        R37 ; [+24]
      811 GETUPVAL                         R38 0
      812 GETTABLEKS                       R37 R38 K30 ["createElement"]
      814 GETUPVAL                         R38 33
      815 DUPTABLE                         R39 K147 [{"Text", "OnCancel", "OnDelete"}]
      816 LOADK                            R42 K148 ["ConfirmDeleteDialog"]
      817 LOADK                            R43 K90 ["DeleteThread"]
      818 NAMECALL                         R40 R3 K84 ["getText"]
      820 CALL                             R40 3 1
      821 SETTABLEKS                       R40 R39 K91 ["Text"]
      823 NEWCLOSURE                       R40 P13
      824 CAPTURE                          VAL R14
      825 SETTABLEKS                       R40 R39 K67 ["OnCancel"]
      827 NEWCLOSURE                       R40 P14
      828 CAPTURE                          VAL R14
      829 CAPTURE                          UPVAL U26
      830 CAPTURE                          VAL R4
      831 CAPTURE                          VAL R0
      832 SETTABLEKS                       R40 R39 K146 ["OnDelete"]
      834 CALL                             R37 2 1
      835 SETTABLEKS                       R37 R36 K74 ["Popup"]
      837 CALL                             R33 3 -1
      838 RETURN                           R33 -1

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
      250 GETIMPORT                        R35 K5 [require]
      252 GETTABLEKS                       R38 R0 K12 ["Src"]
      254 GETTABLEKS                       R37 R38 K13 ["Util"]
      256 GETTABLEKS                       R36 R37 K50 ["getIsAnnotationsNotificationsEnabled"]
      258 CALL                             R35 1 1
      259 MOVE                             R36 R35
      260 CALL                             R36 0 1
      261 GETIMPORT                        R37 K52 [game]
      263 LOADK                            R39 K53 ["AnnotationsService"]
      264 NAMECALL                         R37 R37 K54 ["GetService"]
      266 CALL                             R37 2 1
      267 GETIMPORT                        R38 K52 [game]
      269 LOADK                            R40 K55 ["StudioService"]
      270 NAMECALL                         R38 R38 K54 ["GetService"]
      272 CALL                             R38 2 1
      273 GETIMPORT                        R39 K5 [require]
      275 GETTABLEKS                       R42 R0 K12 ["Src"]
      277 GETTABLEKS                       R41 R42 K22 ["Contexts"]
      279 GETTABLEKS                       R40 R41 K56 ["AnnotationsServiceContext"]
      281 CALL                             R39 1 1
      282 GETTABLEKS                       R40 R3 K57 ["fflagAnnotationsMaxTextLength"]
      284 NEWTABLE                         R41 0 0
      286 DUPCLOSURE                       R42 K58 [PROTO_23]
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R9
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R11
      293 CAPTURE                          VAL R25
      294 CAPTURE                          VAL R20
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R31
      297 CAPTURE                          VAL R34
      298 CAPTURE                          VAL R39
      299 CAPTURE                          VAL R6
      300 CAPTURE                          VAL R38
      301 CAPTURE                          VAL R27
      302 CAPTURE                          VAL R41
      303 CAPTURE                          VAL R36
      304 CAPTURE                          VAL R24
      305 CAPTURE                          VAL R13
      306 CAPTURE                          VAL R40
      307 CAPTURE                          VAL R28
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R12
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R16
      313 CAPTURE                          VAL R4
      314 CAPTURE                          VAL R17
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R23
      317 CAPTURE                          VAL R14
      318 CAPTURE                          VAL R30
      319 CAPTURE                          VAL R37
      320 CAPTURE                          VAL R33
      321 RETURN                           R42 1
