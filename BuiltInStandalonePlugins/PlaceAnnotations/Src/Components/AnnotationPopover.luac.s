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
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K5 ["fflagStudioUserReportingComments"]
       20 JUMPIF                           R1 ; [+19]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K0 ["Dropdown"]
       23 LOADK                            R4 K6 ["Edit"]
       24 NAMECALL                         R1 R1 K2 ["getText"]
       26 CALL                             R1 3 1
       27 JUMPIFNOTEQ                      R0 R1 ; [+12]
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K7 ["current"]
       32 JUMPIFNOT                        R1 ; [+81]
       33 GETUPVAL                         R1 5
       34 GETTABLEKS                       R1 R1 K7 ["current"]
       36 GETTABLEKS                       R1 R1 K8 ["beginEditing"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 0
       41 LOADK                            R3 K0 ["Dropdown"]
       42 LOADK                            R4 K9 ["Unsubscribe"]
       43 NAMECALL                         R1 R1 K2 ["getText"]
       45 CALL                             R1 3 1
       46 JUMPIFNOTEQ                      R0 R1 ; [+20]
       48 GETUPVAL                         R1 6
       49 GETTABLEKS                       R1 R1 K10 ["None"]
       51 GETUPVAL                         R2 7
       52 GETUPVAL                         R4 8
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R5 R5 K4 ["Annotation"]
       56 GETTABLEKS                       R5 R5 K11 ["ChannelId"]
       58 GETUPVAL                         R6 9
       59 MOVE                             R7 R1
       60 NAMECALL                         R2 R2 K12 ["CreateOrUpdateChannelPreferenceAsync"]
       62 CALL                             R2 5 0
       63 GETUPVAL                         R2 10
       64 MOVE                             R3 R1
       65 CALL                             R2 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R1 0
       68 LOADK                            R3 K0 ["Dropdown"]
       69 LOADK                            R4 K13 ["Subscribe"]
       70 NAMECALL                         R1 R1 K2 ["getText"]
       72 CALL                             R1 3 1
       73 JUMPIFNOTEQ                      R0 R1 ; [+20]
       75 GETUPVAL                         R1 6
       76 GETTABLEKS                       R1 R1 K14 ["All"]
       78 GETUPVAL                         R2 7
       79 GETUPVAL                         R4 8
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R5 R5 K4 ["Annotation"]
       83 GETTABLEKS                       R5 R5 K11 ["ChannelId"]
       85 GETUPVAL                         R6 9
       86 MOVE                             R7 R1
       87 NAMECALL                         R2 R2 K12 ["CreateOrUpdateChannelPreferenceAsync"]
       89 CALL                             R2 5 0
       90 GETUPVAL                         R2 10
       91 MOVE                             R3 R1
       92 CALL                             R2 1 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R1 4
       95 GETTABLEKS                       R1 R1 K5 ["fflagStudioUserReportingComments"]
       97 JUMPIFNOT                        R1 ; [+16]
       98 GETUPVAL                         R1 0
       99 LOADK                            R3 K0 ["Dropdown"]
      100 LOADK                            R4 K15 ["Report"]
      101 NAMECALL                         R1 R1 K2 ["getText"]
      103 CALL                             R1 3 1
      104 JUMPIFNOTEQ                      R0 R1 ; [+9]
      106 GETUPVAL                         R1 1
      107 GETTABLEKS                       R1 R1 K16 ["openReportThread"]
      109 GETUPVAL                         R2 2
      110 GETUPVAL                         R3 3
      111 GETTABLEKS                       R3 R3 K4 ["Annotation"]
      113 CALL                             R1 2 0
      114 RETURN                           R0 0

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
      159 JUMP                             ; [+53]
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
      175 JUMP                             ; [+37]
      176 LOADK                            R35 K27 ["IsDraft"]
      177 NAMECALL                         R33 R32 K28 ["GetAttribute"]
      179 CALL                             R33 2 1
      180 JUMPIF                           R33 ; [+32]
      181 MOVE                             R34 R27
      182 GETUPVAL                         R35 0
      183 GETTABLEKS                       R35 R35 K29 ["createElement"]
      185 GETUPVAL                         R36 16
      186 DUPTABLE                         R37 K35 [{"LayoutOrder", "Annotation", "ShowActions", "ToggleEditing", "SetIsTagDropdownOpen", "IsTagDropdownOpen"}]
      187 SETTABLEKS                       R31 R37 K30 ["LayoutOrder"]
      189 SETTABLEKS                       R32 R37 K4 ["Annotation"]
      191 GETUPVAL                         R38 17
      192 GETTABLEKS                       R38 R38 K36 ["fflagStudioUserReportingComments"]
      194 SETTABLEKS                       R38 R37 K31 ["ShowActions"]
      196 NEWCLOSURE                       R38 P3
      197 CAPTURE                          VAL R12
      198 SETTABLEKS                       R38 R37 K32 ["ToggleEditing"]
      200 GETTABLEKS                       R38 R0 K33 ["SetIsTagDropdownOpen"]
      202 SETTABLEKS                       R38 R37 K33 ["SetIsTagDropdownOpen"]
      204 GETTABLEKS                       R38 R0 K34 ["IsTagDropdownOpen"]
      206 SETTABLEKS                       R38 R37 K34 ["IsTagDropdownOpen"]
      208 CALL                             R35 2 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R33 K38 [table.insert]
      212 CALL                             R33 -1 0
      213 FORGLOOP                         R28 2 [inext] ; [-60]
      215 GETTABLEKS                       R29 R0 K4 ["Annotation"]
      217 GETTABLEKS                       R29 R29 K39 ["AuthorId"]
      219 GETUPVAL                         R30 12
      220 NAMECALL                         R30 R30 K16 ["GetUserId"]
      222 CALL                             R30 1 1
      223 JUMPIFEQ                         R29 R30 ; [+2]
      225 LOADB                            R28 0 +1
      226 LOADB                            R28 1
      227 FASTCALL1                        STRING_LEN R8 ; [+3]
      228 MOVE                             R31 R8
      229 GETIMPORT                        R30 K42 [string.len]
      231 CALL                             R30 1 1
      232 GETUPVAL                         R31 18
      233 JUMPIFLT                         R31 R30 ; [+2]
      235 LOADB                            R29 0 +1
      236 LOADB                            R29 1
      237 LOADB                            R30 0
      238 GETUPVAL                         R31 6
      239 GETTABLEKS                       R31 R31 K8 ["InProgress"]
      241 JUMPIFEQ                         R17 R31 ; [+8]
      243 LOADB                            R30 0
      244 GETUPVAL                         R31 6
      245 GETTABLEKS                       R31 R31 K8 ["InProgress"]
      247 JUMPIFEQ                         R15 R31 ; [+2]
      249 NOT                              R30 R11
      250 GETUPVAL                         R32 19
      251 MOVE                             R33 R15
      252 CALL                             R32 1 1
      253 JUMPIFNOT                        R32 ; [+59]
      254 GETUPVAL                         R31 0
      255 GETTABLEKS                       R31 R31 K29 ["createElement"]
      257 LOADK                            R32 K43 ["Frame"]
      258 DUPTABLE                         R33 K50 [{["LayoutOrder"] = -1, ["ZIndex"] = 100, ["Size"], ["BackgroundTransparency"] = 1}]
      259 GETIMPORT                        R34 K53 [UDim2.new]
      261 LOADN                            R35 1
      262 LOADN                            R36 0
      263 LOADN                            R37 0
      264 LOADN                            R38 -4
      265 CALL                             R34 4 1
      266 SETTABLEKS                       R34 R33 K47 ["Size"]
      268 DUPTABLE                         R34 K55 [{"Alert"}]
      269 GETUPVAL                         R35 0
      270 GETTABLEKS                       R35 R35 K29 ["createElement"]
      272 GETUPVAL                         R36 20
      273 DUPTABLE                         R37 K62 [{["Message"], ["AnchorPoint"], ["Position"], ["Size"], ["IsPopup"] = True, ["OnClose"]}]
      274 GETUPVAL                         R38 21
      275 MOVE                             R39 R15
      276 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      278 MOVE                             R41 R3
      279 CALL                             R38 3 1
      280 SETTABLEKS                       R38 R37 K56 ["Message"]
      282 GETIMPORT                        R38 K64 [Vector2.new]
      284 LOADK                            R39 K65 [0.5]
      285 LOADN                            R40 0
      286 CALL                             R38 2 1
      287 SETTABLEKS                       R38 R37 K57 ["AnchorPoint"]
      289 GETIMPORT                        R38 K67 [UDim2.fromScale]
      291 LOADK                            R39 K65 [0.5]
      292 LOADN                            R40 0
      293 CALL                             R38 2 1
      294 SETTABLEKS                       R38 R37 K58 ["Position"]
      296 GETIMPORT                        R38 K67 [UDim2.fromScale]
      298 LOADK                            R39 K68 [0.75]
      299 LOADN                            R40 0
      300 CALL                             R38 2 1
      301 SETTABLEKS                       R38 R37 K47 ["Size"]
      303 NEWCLOSURE                       R38 P4
      304 CAPTURE                          VAL R16
      305 CAPTURE                          UPVAL U6
      306 SETTABLEKS                       R38 R37 K61 ["OnClose"]
      308 CALL                             R35 2 1
      309 SETTABLEKS                       R35 R34 K54 ["Alert"]
      311 CALL                             R31 3 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R31
      314 NEWCLOSURE                       R32 P5
      315 CAPTURE                          VAL R24
      316 CAPTURE                          VAL R26
      317 CAPTURE                          VAL R0
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R23
      320 GETUPVAL                         R33 0
      321 GETTABLEKS                       R33 R33 K29 ["createElement"]
      323 GETUPVAL                         R34 22
      324 DUPTABLE                         R35 K72 [{["Width"] = 350, ["Position"], ["OnFocusLost"]}]
      325 GETTABLEKS                       R36 R0 K58 ["Position"]
      327 SETTABLEKS                       R36 R35 K58 ["Position"]
      329 GETTABLEKS                       R36 R0 K73 ["OnCancel"]
      331 SETTABLEKS                       R36 R35 K71 ["OnFocusLost"]
      333 DUPTABLE                         R36 K81 [{"ErrorBanner", "Header", "ContentWrapper", "ReplyBox", "ReplyError", "Footer", "Popup"}]
      334 SETTABLEKS                       R31 R36 K74 ["ErrorBanner"]
      336 GETUPVAL                         R37 0
      337 GETTABLEKS                       R37 R37 K29 ["createElement"]
      339 GETUPVAL                         R38 23
      340 DUPTABLE                         R39 K84 [{["DataModel"] = "Edit", ["Annotation"]}]
      341 GETTABLEKS                       R40 R0 K4 ["Annotation"]
      343 SETTABLEKS                       R40 R39 K4 ["Annotation"]
      345 DUPTABLE                         R40 K88 [{"MoreIcon", "ResolveButton", "CloseButton"}]
      346 GETUPVAL                         R41 0
      347 GETTABLEKS                       R41 R41 K29 ["createElement"]
      349 GETUPVAL                         R42 24
      350 NEWTABLE                         R43 8 0
      352 NEWTABLE                         R44 0 5
      354 GETUPVAL                         R46 17
      355 GETTABLEKS                       R46 R46 K36 ["fflagStudioUserReportingComments"]
      357 JUMPIF                           R46 ; [+7]
      358 JUMPIFNOT                        R28 ; [+6]
      359 LOADK                            R47 K89 ["Dropdown"]
      360 LOADK                            R48 K83 ["Edit"]
      361 NAMECALL                         R45 R3 K90 ["getText"]
      363 CALL                             R45 3 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R45
      366 LOADK                            R48 K89 ["Dropdown"]
      367 LOADK                            R49 K91 ["ZoomTo"]
      368 NAMECALL                         R46 R3 K90 ["getText"]
      370 CALL                             R46 3 1
      371 GETUPVAL                         R48 9
      372 GETTABLEKS                       R48 R48 K13 ["All"]
      374 JUMPIFNOTEQ                      R22 R48 ; [+7]
      376 LOADK                            R49 K89 ["Dropdown"]
      377 LOADK                            R50 K92 ["Unsubscribe"]
      378 NAMECALL                         R47 R3 K90 ["getText"]
      380 CALL                             R47 3 1
      381 JUMP                             ; [+5]
      382 LOADK                            R49 K89 ["Dropdown"]
      383 LOADK                            R50 K93 ["Subscribe"]
      384 NAMECALL                         R47 R3 K90 ["getText"]
      386 CALL                             R47 3 1
      387 GETUPVAL                         R49 17
      388 GETTABLEKS                       R49 R49 K36 ["fflagStudioUserReportingComments"]
      390 JUMPIFNOT                        R49 ; [+6]
      391 LOADK                            R50 K89 ["Dropdown"]
      392 LOADK                            R51 K94 ["Report"]
      393 NAMECALL                         R48 R3 K90 ["getText"]
      395 CALL                             R48 3 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R48
      398 JUMPIFNOT                        R28 ; [+28]
      399 GETUPVAL                         R49 0
      400 GETTABLEKS                       R49 R49 K29 ["createElement"]
      402 LOADK                            R50 K95 ["TextButton"]
      403 NEWTABLE                         R51 4 0
      405 LOADK                            R54 K89 ["Dropdown"]
      406 LOADK                            R55 K96 ["DeleteThread"]
      407 NAMECALL                         R52 R3 K90 ["getText"]
      409 CALL                             R52 3 1
      410 SETTABLEKS                       R52 R51 K97 ["Text"]
      412 GETUPVAL                         R52 0
      413 GETTABLEKS                       R52 R52 K98 ["Event"]
      415 GETTABLEKS                       R52 R52 K99 ["Activated"]
      417 NEWCLOSURE                       R53 P6
      418 CAPTURE                          VAL R14
      419 SETTABLE                         R53 R51 R52
      420 GETUPVAL                         R52 0
      421 GETTABLEKS                       R52 R52 K100 ["Tag"]
      423 LOADK                            R53 K101 ["Component-DropdownItem Delete"]
      424 SETTABLE                         R53 R51 R52
      425 CALL                             R49 2 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R49
      428 SETLIST                          R44 R45 5 [1]
      430 SETTABLEKS                       R44 R43 K102 ["DropdownItems"]
      432 NEWCLOSURE                       R44 P7
      433 CAPTURE                          VAL R3
      434 CAPTURE                          UPVAL U25
      435 CAPTURE                          VAL R4
      436 CAPTURE                          VAL R0
      437 CAPTURE                          UPVAL U17
      438 CAPTURE                          VAL R10
      439 CAPTURE                          UPVAL U9
      440 CAPTURE                          VAL R24
      441 CAPTURE                          VAL R26
      442 CAPTURE                          VAL R25
      443 CAPTURE                          VAL R23
      444 SETTABLEKS                       R44 R43 K103 ["OnSelect"]
      446 GETUPVAL                         R45 6
      447 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      449 JUMPIFEQ                         R15 R45 ; [+2]
      451 LOADB                            R44 0 +1
      452 LOADB                            R44 1
      453 SETTABLEKS                       R44 R43 K104 ["Disabled"]
      455 LOADN                            R44 1
      456 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      458 GETUPVAL                         R44 0
      459 GETTABLEKS                       R44 R44 K100 ["Tag"]
      461 GETUPVAL                         R46 6
      462 GETTABLEKS                       R46 R46 K8 ["InProgress"]
      464 JUMPIFNOTEQ                      R15 R46 ; [+3]
      466 LOADK                            R45 K104 ["Disabled"]
      467 JUMP                             ; [+1]
      468 LOADNIL                          R45
      469 SETTABLE                         R45 R43 R44
      470 CALL                             R41 2 1
      471 SETTABLEKS                       R41 R40 K85 ["MoreIcon"]
      473 GETUPVAL                         R41 0
      474 GETTABLEKS                       R41 R41 K29 ["createElement"]
      476 GETUPVAL                         R42 26
      477 DUPTABLE                         R43 K108 [{["Resolved"], ["Disabled"], ["OnClick"], ["LayoutOrder"] = 2}]
      478 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      480 GETTABLEKS                       R44 R44 K105 ["Resolved"]
      482 SETTABLEKS                       R44 R43 K105 ["Resolved"]
      484 GETUPVAL                         R45 6
      485 GETTABLEKS                       R45 R45 K8 ["InProgress"]
      487 JUMPIFEQ                         R15 R45 ; [+2]
      489 LOADB                            R44 0 +1
      490 LOADB                            R44 1
      491 SETTABLEKS                       R44 R43 K104 ["Disabled"]
      493 NEWCLOSURE                       R44 P8
      494 CAPTURE                          UPVAL U25
      495 CAPTURE                          VAL R4
      496 CAPTURE                          VAL R0
      497 SETTABLEKS                       R44 R43 K106 ["OnClick"]
      499 CALL                             R41 2 1
      500 SETTABLEKS                       R41 R40 K86 ["ResolveButton"]
      502 GETUPVAL                         R41 0
      503 GETTABLEKS                       R41 R41 K29 ["createElement"]
      505 LOADK                            R42 K95 ["TextButton"]
      506 NEWTABLE                         R43 4 0
      508 GETUPVAL                         R44 0
      509 GETTABLEKS                       R44 R44 K98 ["Event"]
      511 GETTABLEKS                       R44 R44 K99 ["Activated"]
      513 GETTABLEKS                       R45 R0 K73 ["OnCancel"]
      515 SETTABLE                         R45 R43 R44
      516 LOADN                            R44 3
      517 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      519 GETUPVAL                         R44 0
      520 GETTABLEKS                       R44 R44 K100 ["Tag"]
      522 LOADK                            R45 K87 ["CloseButton"]
      523 SETTABLE                         R45 R43 R44
      524 DUPTABLE                         R44 K110 [{"CloseIcon"}]
      525 GETUPVAL                         R45 0
      526 GETTABLEKS                       R45 R45 K29 ["createElement"]
      528 LOADK                            R46 K111 ["ImageLabel"]
      529 NEWTABLE                         R47 1 0
      531 GETUPVAL                         R48 0
      532 GETTABLEKS                       R48 R48 K100 ["Tag"]
      534 LOADK                            R49 K112 ["CloseIcon X-Transparent"]
      535 SETTABLE                         R49 R47 R48
      536 CALL                             R45 2 1
      537 SETTABLEKS                       R45 R44 K109 ["CloseIcon"]
      539 CALL                             R41 3 1
      540 SETTABLEKS                       R41 R40 K87 ["CloseButton"]
      542 CALL                             R37 3 1
      543 SETTABLEKS                       R37 R36 K75 ["Header"]
      545 GETUPVAL                         R37 0
      546 GETTABLEKS                       R37 R37 K29 ["createElement"]
      548 GETUPVAL                         R38 27
      549 DUPTABLE                         R39 K115 [{["LayoutOrder"] = 1, ["MaxY"] = 250}]
      550 NEWTABLE                         R40 1 1
      552 GETUPVAL                         R42 0
      553 GETTABLEKS                       R42 R42 K29 ["createElement"]
      555 GETUPVAL                         R43 16
      556 DUPTABLE                         R44 K118 [{["ref"], ["LayoutOrder"] = 0, ["Annotation"], ["ShowActions"], ["ToggleEditing"], ["SetIsTagDropdownOpen"], ["IsTagDropdownOpen"]}]
      557 SETTABLEKS                       R10 R44 K116 ["ref"]
      559 GETTABLEKS                       R45 R0 K4 ["Annotation"]
      561 SETTABLEKS                       R45 R44 K4 ["Annotation"]
      563 GETUPVAL                         R45 17
      564 GETTABLEKS                       R45 R45 K36 ["fflagStudioUserReportingComments"]
      566 SETTABLEKS                       R45 R44 K31 ["ShowActions"]
      568 NEWCLOSURE                       R45 P9
      569 CAPTURE                          VAL R12
      570 SETTABLEKS                       R45 R44 K32 ["ToggleEditing"]
      572 GETTABLEKS                       R45 R0 K33 ["SetIsTagDropdownOpen"]
      574 SETTABLEKS                       R45 R44 K33 ["SetIsTagDropdownOpen"]
      576 GETTABLEKS                       R45 R0 K34 ["IsTagDropdownOpen"]
      578 SETTABLEKS                       R45 R44 K34 ["IsTagDropdownOpen"]
      580 CALL                             R42 2 1
      581 SETTABLEKS                       R42 R40 K119 ["Comment"]
      583 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
      584 MOVE                             R42 R27
      585 GETIMPORT                        R41 K121 [table.unpack]
      587 CALL                             R41 1 -1
      588 SETLIST                          R40 R41 -1 [1]
      590 CALL                             R37 3 1
      591 SETTABLEKS                       R37 R36 K76 ["ContentWrapper"]
      593 JUMPIF                           R11 ; [+89]
      594 GETUPVAL                         R37 0
      595 GETTABLEKS                       R37 R37 K29 ["createElement"]
      597 LOADK                            R38 K43 ["Frame"]
      598 NEWTABLE                         R39 8 0
      600 LOADN                            R40 2
      601 SETTABLEKS                       R40 R39 K30 ["LayoutOrder"]
      603 LOADN                            R40 1
      604 SETTABLEKS                       R40 R39 K48 ["BackgroundTransparency"]
      606 GETIMPORT                        R40 K125 [Enum.AutomaticSize.Y]
      608 SETTABLEKS                       R40 R39 K123 ["AutomaticSize"]
      610 GETIMPORT                        R40 K67 [UDim2.fromScale]
      612 LOADN                            R41 1
      613 LOADN                            R42 0
      614 CALL                             R40 2 1
      615 SETTABLEKS                       R40 R39 K47 ["Size"]
      617 GETUPVAL                         R40 0
      618 GETTABLEKS                       R40 R40 K100 ["Tag"]
      620 LOADK                            R41 K126 ["X-RowM"]
      621 SETTABLE                         R41 R39 R40
      622 DUPTABLE                         R40 K129 [{"Avatar", "TextInput"}]
      623 GETUPVAL                         R41 0
      624 GETTABLEKS                       R41 R41 K29 ["createElement"]
      626 LOADK                            R42 K111 ["ImageLabel"]
      627 NEWTABLE                         R43 4 0
      629 LOADK                            R45 K130 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      630 GETUPVAL                         R47 12
      631 NAMECALL                         R47 R47 K16 ["GetUserId"]
      633 CALL                             R47 1 1
      634 NAMECALL                         R45 R45 K131 ["format"]
      636 CALL                             R45 2 1
      637 MOVE                             R44 R45
      638 SETTABLEKS                       R44 R43 K132 ["Image"]
      640 LOADN                            R44 0
      641 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      643 GETUPVAL                         R44 0
      644 GETTABLEKS                       R44 R44 K100 ["Tag"]
      646 LOADK                            R45 K133 ["Component-Avatar"]
      647 SETTABLE                         R45 R43 R44
      648 CALL                             R41 2 1
      649 SETTABLEKS                       R41 R40 K127 ["Avatar"]
      651 GETUPVAL                         R41 0
      652 GETTABLEKS                       R41 R41 K29 ["createElement"]
      654 GETUPVAL                         R42 28
      655 DUPTABLE                         R43 K137 [{["Key"], ["LayoutOrder"] = 1, ["Text"], ["PlaceholderText"], ["OnTextChanged"], ["Disabled"]}]
      656 GETTABLEKS                       R44 R0 K4 ["Annotation"]
      658 SETTABLEKS                       R44 R43 K134 ["Key"]
      660 SETTABLEKS                       R8 R43 K97 ["Text"]
      662 LOADK                            R46 K138 ["Reply"]
      663 LOADK                            R47 K139 ["Placeholder"]
      664 NAMECALL                         R44 R3 K90 ["getText"]
      666 CALL                             R44 3 1
      667 SETTABLEKS                       R44 R43 K135 ["PlaceholderText"]
      669 NEWCLOSURE                       R44 P10
      670 CAPTURE                          VAL R9
      671 CAPTURE                          UPVAL U14
      672 CAPTURE                          VAL R0
      673 SETTABLEKS                       R44 R43 K136 ["OnTextChanged"]
      675 NOT                              R44 R30
      676 SETTABLEKS                       R44 R43 K104 ["Disabled"]
      678 CALL                             R41 2 1
      679 SETTABLEKS                       R41 R40 K128 ["TextInput"]
      681 CALL                             R37 3 1
      682 JUMP                             ; [+1]
      683 LOADNIL                          R37
      684 SETTABLEKS                       R37 R36 K77 ["ReplyBox"]
      686 JUMPIF                           R11 ; [+60]
      687 GETUPVAL                         R38 19
      688 MOVE                             R39 R17
      689 MOVE                             R40 R8
      690 MOVE                             R41 R21
      691 CALL                             R38 3 1
      692 JUMPIF                           R38 ; [+1]
      693 JUMPIFNOT                        R29 ; [+53]
      694 GETUPVAL                         R37 0
      695 GETTABLEKS                       R37 R37 K29 ["createElement"]
      697 GETUPVAL                         R38 20
      698 DUPTABLE                         R39 K142 [{["LayoutOrder"] = 3, ["Position"], ["Message"], ["UIPadding"]}]
      699 GETIMPORT                        R40 K144 [UDim2.fromOffset]
      701 LOADN                            R41 42
      702 LOADN                            R42 0
      703 CALL                             R40 2 1
      704 SETTABLEKS                       R40 R39 K58 ["Position"]
      706 JUMPIFNOT                        R29 ; [+14]
      707 LOADK                            R42 K128 ["TextInput"]
      708 LOADK                            R43 K145 ["LengthExceeded"]
      709 DUPTABLE                         R44 K147 [{"maxLength"}]
      710 GETUPVAL                         R46 18
      711 FASTCALL1                        TOSTRING R46 ; [+2]
      712 GETIMPORT                        R45 K149 [tostring]
      714 CALL                             R45 1 1
      715 SETTABLEKS                       R45 R44 K146 ["maxLength"]
      717 NAMECALL                         R40 R3 K90 ["getText"]
      719 CALL                             R40 4 1
      720 JUMP                             ; [+7]
      721 GETUPVAL                         R40 21
      722 MOVE                             R41 R17
      723 LOADNIL                          R42
      724 MOVE                             R43 R3
      725 MOVE                             R44 R8
      726 MOVE                             R45 R21
      727 CALL                             R40 5 1
      728 SETTABLEKS                       R40 R39 K56 ["Message"]
      730 GETUPVAL                         R40 0
      731 GETTABLEKS                       R40 R40 K29 ["createElement"]
      733 LOADK                            R41 K141 ["UIPadding"]
      734 DUPTABLE                         R42 K151 [{"PaddingLeft"}]
      735 GETIMPORT                        R43 K153 [UDim.new]
      737 LOADN                            R44 0
      738 LOADN                            R45 42
      739 CALL                             R43 2 1
      740 SETTABLEKS                       R43 R42 K150 ["PaddingLeft"]
      742 CALL                             R40 2 1
      743 SETTABLEKS                       R40 R39 K141 ["UIPadding"]
      745 CALL                             R37 2 1
      746 JUMP                             ; [+1]
      747 LOADNIL                          R37
      748 SETTABLEKS                       R37 R36 K78 ["ReplyError"]
      750 JUMPIFNOT                        R30 ; [+24]
      751 GETUPVAL                         R37 0
      752 GETTABLEKS                       R37 R37 K29 ["createElement"]
      754 GETUPVAL                         R38 29
      755 DUPTABLE                         R39 K156 [{["LayoutOrder"] = 4, ["Text"], ["OnCancel"], ["OnSubmit"]}]
      756 SETTABLEKS                       R8 R39 K97 ["Text"]
      758 NEWCLOSURE                       R40 P11
      759 CAPTURE                          VAL R9
      760 CAPTURE                          UPVAL U14
      761 CAPTURE                          VAL R0
      762 SETTABLEKS                       R40 R39 K73 ["OnCancel"]
      764 NEWCLOSURE                       R40 P12
      765 CAPTURE                          VAL R18
      766 CAPTURE                          UPVAL U6
      767 CAPTURE                          VAL R0
      768 CAPTURE                          UPVAL U30
      769 CAPTURE                          VAL R20
      770 CAPTURE                          UPVAL U31
      771 SETTABLEKS                       R40 R39 K155 ["OnSubmit"]
      773 CALL                             R37 2 1
      774 JUMP                             ; [+1]
      775 LOADNIL                          R37
      776 SETTABLEKS                       R37 R36 K79 ["Footer"]
      778 MOVE                             R37 R13
      779 JUMPIFNOT                        R37 ; [+24]
      780 GETUPVAL                         R37 0
      781 GETTABLEKS                       R37 R37 K29 ["createElement"]
      783 GETUPVAL                         R38 32
      784 DUPTABLE                         R39 K158 [{"Text", "OnCancel", "OnDelete"}]
      785 LOADK                            R42 K159 ["ConfirmDeleteDialog"]
      786 LOADK                            R43 K96 ["DeleteThread"]
      787 NAMECALL                         R40 R3 K90 ["getText"]
      789 CALL                             R40 3 1
      790 SETTABLEKS                       R40 R39 K97 ["Text"]
      792 NEWCLOSURE                       R40 P13
      793 CAPTURE                          VAL R14
      794 SETTABLEKS                       R40 R39 K73 ["OnCancel"]
      796 NEWCLOSURE                       R40 P14
      797 CAPTURE                          VAL R14
      798 CAPTURE                          UPVAL U25
      799 CAPTURE                          VAL R4
      800 CAPTURE                          VAL R0
      801 SETTABLEKS                       R40 R39 K157 ["OnDelete"]
      803 CALL                             R37 2 1
      804 SETTABLEKS                       R37 R36 K80 ["Popup"]
      806 CALL                             R33 3 -1
      807 RETURN                           R33 -1

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
      293 CAPTURE                          VAL R3
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
