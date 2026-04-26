PROTO_0:
        0 OR                               R3 R0 R1
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Top-level annotations must be placed at a mouse position, and replies must have a parent."]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETIMPORT                        R2 K5 [Instance.new]
        9 LOADK                            R3 K6 ["WorkspaceAnnotation"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 NAMECALL                         R3 R3 K7 ["GetUserId"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K8 ["AuthorId"]
       17 LOADK                            R5 K9 ["IsDraft"]
       18 LOADB                            R6 1
       19 NAMECALL                         R3 R2 K10 ["SetAttribute"]
       21 CALL                             R3 3 0
       22 LOADK                            R5 K11 ["Parent"]
       23 JUMPIFNOT                        R1 ; [+4]
       24 NAMECALL                         R6 R1 K12 ["GetStringUniqueId"]
       26 CALL                             R6 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R6
       29 NAMECALL                         R3 R2 K10 ["SetAttribute"]
       31 CALL                             R3 3 0
       32 JUMPIFNOT                        R0 ; [+9]
       33 GETTABLEKS                       R3 R0 K3 ["Instance"]
       35 SETTABLEKS                       R3 R2 K13 ["Adornee"]
       37 GETTABLEKS                       R5 R0 K14 ["Position"]
       39 NAMECALL                         R3 R2 K15 ["SetAdorneeOffsetFromAbsolutePosition"]
       41 CALL                             R3 2 0
       42 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R2 0
        7 JUMPIF                           R2 ; [+4]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 0
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputEnded"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Mode"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["fflagAnnotationCreationLocksCamera"]
        8 JUMPIFNOT                        R0 ; [+35]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K0 ["Mode"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K2 ["WritingNew"]
       15 JUMPIFNOTEQ                      R0 R1 ; [+17]
       17 GETIMPORT                        R2 K4 [workspace]
       19 GETTABLEKS                       R1 R2 K5 ["CurrentCamera"]
       21 GETTABLEKS                       R0 R1 K6 ["CameraType"]
       23 SETUPVAL                         R0 4
       24 GETIMPORT                        R1 K4 [workspace]
       26 GETTABLEKS                       R0 R1 K5 ["CurrentCamera"]
       28 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
       30 SETTABLEKS                       R1 R0 K6 ["CameraType"]
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 4
       34 JUMPIFNOT                        R0 ; [+9]
       35 GETIMPORT                        R1 K4 [workspace]
       37 GETTABLEKS                       R0 R1 K5 ["CurrentCamera"]
       39 GETUPVAL                         R1 4
       40 SETTABLEKS                       R1 R0 K6 ["CameraType"]
       42 LOADNIL                          R0
       43 SETUPVAL                         R0 4
       44 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["Parent"]
        2 LOADNIL                          R4
        3 SETTABLEKS                       R4 R1 K0 ["Parent"]
        5 SETTABLEKS                       R3 R1 K0 ["Parent"]
        7 GETTABLEKS                       R4 R1 K1 ["Resolved"]
        9 JUMPIF                           R4 ; [+16]
       10 GETTABLEKS                       R4 R1 K2 ["Adornee"]
       12 JUMPIFNOT                        R4 ; [+13]
       13 GETTABLEKS                       R4 R1 K0 ["Parent"]
       15 JUMPIFNOT                        R4 ; [+10]
       16 GETTABLEKS                       R4 R1 K0 ["Parent"]
       18 LOADK                            R6 K3 ["AnnotationsService"]
       19 NAMECALL                         R4 R4 K4 ["IsA"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R1
       25 CALL                             R4 1 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K5 ["createAnnotation"]
       29 GETUPVAL                         R5 2
       30 MOVE                             R6 R1
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 4
       34 NAMECALL                         R5 R5 K6 ["GetAnnotationThreads"]
       36 CALL                             R5 1 -1
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 LOADB                            R6 1
        5 CALL                             R2 4 0
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 NAMECALL                         R3 R3 K0 ["GetAnnotationThreads"]
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K0 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["syncStandaloneAnnotation"]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R3
       12 DUPTABLE                         R7 K4 [{"Contents", "TaggedUsers"}]
       13 SETTABLEKS                       R2 R7 K2 ["Contents"]
       15 GETTABLEKS                       R8 R3 K3 ["TaggedUsers"]
       17 SETTABLEKS                       R8 R7 K3 ["TaggedUsers"]
       19 CALL                             R4 3 0
       20 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R2 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["Adornee"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 CALL                             R3 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["syncStandaloneAnnotation"]
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R1
       12 DUPTABLE                         R6 K3 [{"Resolved"}]
       13 SETTABLEKS                       R2 R6 K2 ["Resolved"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectionChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["Selected"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K1 ["Selected"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K1 ["Selected"]
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 1
       18 LOADB                            R2 1
       19 NAMECALL                         R0 R0 K2 ["Activate"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 1
       24 NAMECALL                         R0 R0 K3 ["Deactivate"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["PlacingNew"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+35]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+30]
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R1 R2 K2 ["current"]
       19 GETUPVAL                         R2 6
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K3 ["WritingNew"]
       26 SETTABLEKS                       R3 R2 K0 ["Mode"]
       28 GETUPVAL                         R2 3
       29 LOADK                            R3 K4 [""]
       30 SETTABLEKS                       R3 R2 K5 ["Icon"]
       32 GETUPVAL                         R2 7
       33 NEWTABLE                         R4 0 1
       35 GETTABLEKS                       R5 R0 K6 ["Instance"]
       37 SETLIST                          R4 R5 1 [1]
       39 NAMECALL                         R2 R2 K7 ["Set"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Selected"]
        4 RETURN                           R0 0

PROTO_12:
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
       24 GETUPVAL                         R0 6
       25 NAMECALL                         R0 R0 K0 ["Disconnect"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 7
       29 NAMECALL                         R0 R0 K0 ["Disconnect"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAnnotationThreads"]
        3 CALL                             R0 1 1
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADK                            R8 K1 ["IsDraft"]
        9 NAMECALL                         R6 R5 K2 ["GetAttribute"]
       11 CALL                             R6 2 1
       12 JUMPIF                           R6 ; [+15]
       13 GETTABLEKS                       R6 R5 K3 ["Resolved"]
       15 JUMPIF                           R6 ; [+6]
       16 GETTABLEKS                       R6 R5 K4 ["Adornee"]
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R5
       21 CALL                             R6 1 0
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K5 ["createAnnotation"]
       25 GETUPVAL                         R7 3
       26 MOVE                             R8 R5
       27 CALL                             R6 2 0
       28 FORGLOOP                         R1 2 ; [-21]
       30 GETUPVAL                         R1 4
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["Mode"]
       35 NAMECALL                         R1 R1 K7 ["GetPropertyChangedSignal"]
       37 CALL                             R1 2 1
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U8
       44 NAMECALL                         R1 R1 K8 ["Connect"]
       46 CALL                             R1 2 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R2 R3 K9 ["AnnotationAdded"]
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U0
       56 NAMECALL                         R2 R2 K8 ["Connect"]
       58 CALL                             R2 2 1
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K10 ["AnnotationDeleted"]
       62 NEWCLOSURE                       R5 P2
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U0
       68 NAMECALL                         R3 R3 K8 ["Connect"]
       70 CALL                             R3 2 1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K11 ["AnnotationEdited"]
       74 NEWCLOSURE                       R6 P3
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          UPVAL U3
       78 NAMECALL                         R4 R4 K8 ["Connect"]
       80 CALL                             R4 2 1
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R5 R6 K12 ["AnnotationResolved"]
       84 NEWCLOSURE                       R7 P4
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U3
       88 NAMECALL                         R5 R5 K8 ["Connect"]
       90 CALL                             R5 2 1
       91 GETUPVAL                         R6 0
       92 LOADK                            R8 K13 ["Selected"]
       93 NAMECALL                         R6 R6 K7 ["GetPropertyChangedSignal"]
       95 CALL                             R6 2 1
       96 NEWCLOSURE                       R8 P5
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          UPVAL U10
      101 NAMECALL                         R6 R6 K8 ["Connect"]
      103 CALL                             R6 2 1
      104 GETUPVAL                         R8 11
      105 GETTABLEKS                       R7 R8 K14 ["Button1Down"]
      107 NEWCLOSURE                       R9 P6
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          UPVAL U14
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U15
      116 NAMECALL                         R7 R7 K8 ["Connect"]
      118 CALL                             R7 2 1
      119 GETUPVAL                         R9 3
      120 GETTABLEKS                       R8 R9 K15 ["Deactivation"]
      122 NEWCLOSURE                       R10 P7
      123 CAPTURE                          UPVAL U0
      124 NAMECALL                         R8 R8 K8 ["Connect"]
      126 CALL                             R8 2 1
      127 NEWCLOSURE                       R9 P8
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R8
      136 RETURN                           R9 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["AbsoluteSize"]
        4 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R2 R2 K2 ["Connect"]
       12 CALL                             R2 2 1
       13 MOVE                             R0 R2
       14 GETIMPORT                        R3 K4 [workspace]
       16 GETTABLEKS                       R2 R3 K5 ["CurrentCamera"]
       18 LOADK                            R4 K6 ["CFrame"]
       19 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R2 R2 K2 ["Connect"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 NEWCLOSURE                       R2 P2
       29 CAPTURE                          REF R0
       30 CAPTURE                          REF R1
       31 CLOSEUPVALS                      R0
       32 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Hovered"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+6]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["Selected"]
       10 JUMP                             ; [+8]
       11 GETUPVAL                         R0 2
       12 JUMPIF                           R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["Hovered"]
       17 SETTABLEKS                       R1 R0 K1 ["Selected"]
       19 GETUPVAL                         R0 3
       20 GETUPVAL                         R2 3
       21 NAMECALL                         R2 R2 K2 ["getAnnotationsPluginActionEvent"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K3 ["PopoverCloseEvent"]
       28 GETUPVAL                         R6 5
       29 NAMECALL                         R3 R3 K4 ["getTelemetryEvent"]
       31 CALL                             R3 3 -1
       32 NAMECALL                         R0 R0 K5 ["logRobloxTelemetryEvent"]
       34 CALL                             R0 -1 0
       35 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["PlacingNew"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+7]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K2 ["WritingNew"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+41]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R0 R1 K3 ["current"]
       21 JUMPIFNOT                        R0 ; [+34]
       22 GETIMPORT                        R1 K5 [workspace]
       24 GETTABLEKS                       R0 R1 K6 ["CurrentCamera"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R2 R3 K3 ["current"]
       29 NAMECALL                         R2 R2 K7 ["GetAbsolutePosition"]
       31 CALL                             R2 1 -1
       32 NAMECALL                         R0 R0 K8 ["WorldToScreenPoint"]
       34 CALL                             R0 -1 1
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R1 R2 K1 ["createElement"]
       38 GETUPVAL                         R2 5
       39 DUPTABLE                         R3 K11 [{"Annotation", "Position"}]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R4 R5 K3 ["current"]
       43 SETTABLEKS                       R4 R3 K9 ["Annotation"]
       45 GETIMPORT                        R4 K14 [UDim2.fromOffset]
       47 GETTABLEKS                       R5 R0 K15 ["X"]
       49 GETTABLEKS                       R6 R0 K16 ["Y"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K10 ["Position"]
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1
       56 LOADNIL                          R0
       57 RETURN                           R0 1
       58 GETUPVAL                         R0 6
       59 JUMPIFNOT                        R0 ; [+90]
       60 GETUPVAL                         R0 0
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R1 R2 K17 ["None"]
       64 JUMPIFNOTEQ                      R0 R1 ; [+85]
       66 GETUPVAL                         R1 6
       67 FASTCALL2K                       ASSERT R1 K18 ; [+4]
       69 LOADK                            R2 K18 ["A selected annotation must exist."]
       70 GETIMPORT                        R0 K20 [assert]
       72 CALL                             R0 2 0
       73 LOADNIL                          R0
       74 GETUPVAL                         R2 6
       75 GETTABLEKS                       R1 R2 K21 ["Adornee"]
       77 JUMPIFNOT                        R1 ; [+19]
       78 GETUPVAL                         R1 6
       79 LOADK                            R3 K22 ["SingleClick"]
       80 NAMECALL                         R1 R1 K23 ["GetAttribute"]
       82 CALL                             R1 2 1
       83 JUMPIF                           R1 ; [+13]
       84 GETIMPORT                        R2 K5 [workspace]
       86 GETTABLEKS                       R1 R2 K6 ["CurrentCamera"]
       88 GETUPVAL                         R3 6
       89 NAMECALL                         R3 R3 K7 ["GetAbsolutePosition"]
       91 CALL                             R3 1 -1
       92 NAMECALL                         R1 R1 K8 ["WorldToScreenPoint"]
       94 CALL                             R1 -1 1
       95 MOVE                             R0 R1
       96 JUMP                             ; [+22]
       97 GETIMPORT                        R1 K26 [Vector2.new]
       99 GETIMPORT                        R6 K5 [workspace]
      101 GETTABLEKS                       R5 R6 K6 ["CurrentCamera"]
      103 GETTABLEKS                       R4 R5 K28 ["ViewportSize"]
      105 GETTABLEKS                       R3 R4 K15 ["X"]
      107 DIVK                             R2 R3 K27 [2]
      108 GETIMPORT                        R7 K5 [workspace]
      110 GETTABLEKS                       R6 R7 K6 ["CurrentCamera"]
      112 GETTABLEKS                       R5 R6 K28 ["ViewportSize"]
      114 GETTABLEKS                       R4 R5 K16 ["Y"]
      116 DIVK                             R3 R4 K27 [2]
      117 CALL                             R1 2 1
      118 MOVE                             R0 R1
      119 GETUPVAL                         R2 2
      120 GETTABLEKS                       R1 R2 K1 ["createElement"]
      122 GETUPVAL                         R2 7
      123 DUPTABLE                         R3 K31 [{"Position", "Annotation", "DraftAnnotationInstance", "OnCancel"}]
      124 GETIMPORT                        R4 K14 [UDim2.fromOffset]
      126 GETTABLEKS                       R5 R0 K15 ["X"]
      128 GETTABLEKS                       R6 R0 K16 ["Y"]
      130 CALL                             R4 2 1
      131 SETTABLEKS                       R4 R3 K10 ["Position"]
      133 GETUPVAL                         R4 6
      134 SETTABLEKS                       R4 R3 K9 ["Annotation"]
      136 GETUPVAL                         R4 8
      137 SETTABLEKS                       R4 R3 K29 ["DraftAnnotationInstance"]
      139 NEWCLOSURE                       R4 P0
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          UPVAL U11
      144 CAPTURE                          UPVAL U12
      145 CAPTURE                          UPVAL U13
      146 SETTABLEKS                       R4 R3 K30 ["OnCancel"]
      148 CALL                             R1 2 1
      149 RETURN                           R1 1
      150 LOADNIL                          R0
      151 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["PlacingNew"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+5]
        8 GETUPVAL                         R0 2
        9 LOADK                            R1 K2 ["rbxasset://textures/PlaceAnnotations/Cursor.png"]
       10 SETTABLEKS                       R1 R0 K3 ["Icon"]
       12 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 SETTABLEKS                       R1 R0 K1 ["Icon"]
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useReducer"]
        9 GETUPVAL                         R4 1
       10 LOADN                            R5 0
       11 CALL                             R3 2 2
       12 GETUPVAL                         R5 2
       13 NAMECALL                         R5 R5 K2 ["use"]
       15 CALL                             R5 1 1
       16 NAMECALL                         R5 R5 K3 ["get"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K0 ["useState"]
       22 GETTABLEKS                       R7 R5 K4 ["Mode"]
       24 CALL                             R6 1 2
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K0 ["useState"]
       28 GETTABLEKS                       R10 R5 K5 ["Selected"]
       30 JUMPIFNOT                        R10 ; [+3]
       31 GETTABLEKS                       R9 R5 K5 ["Selected"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 CALL                             R8 1 2
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R10 R11 K6 ["useContext"]
       39 GETUPVAL                         R11 3
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R11 R10 K7 ["isTagDropdownOpen"]
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R12 R13 K8 ["useRef"]
       46 LOADNIL                          R13
       47 CALL                             R12 1 1
       48 GETUPVAL                         R13 4
       49 NAMECALL                         R13 R13 K2 ["use"]
       51 CALL                             R13 1 1
       52 NAMECALL                         R13 R13 K3 ["get"]
       54 CALL                             R13 1 1
       55 GETUPVAL                         R14 5
       56 NAMECALL                         R14 R14 K2 ["use"]
       58 CALL                             R14 1 1
       59 NAMECALL                         R14 R14 K3 ["get"]
       61 CALL                             R14 1 1
       62 GETUPVAL                         R15 6
       63 NAMECALL                         R15 R15 K2 ["use"]
       65 CALL                             R15 1 1
       66 NAMECALL                         R15 R15 K3 ["get"]
       68 CALL                             R15 1 1
       69 GETUPVAL                         R16 7
       70 NAMECALL                         R16 R16 K2 ["use"]
       72 CALL                             R16 1 1
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R17 R18 K9 ["useEffect"]
       76 NEWCLOSURE                       R18 P0
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          VAL R11
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          VAL R15
       81 NEWTABLE                         R19 0 1
       83 MOVE                             R20 R11
       84 SETLIST                          R19 R20 1 [1]
       86 CALL                             R17 2 0
       87 GETUPVAL                         R18 0
       88 GETTABLEKS                       R17 R18 K9 ["useEffect"]
       90 NEWCLOSURE                       R18 P1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R7
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 CAPTURE                          UPVAL U14
      100 CAPTURE                          UPVAL U15
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          UPVAL U16
      104 CAPTURE                          UPVAL U17
      105 CAPTURE                          VAL R12
      106 CAPTURE                          UPVAL U18
      107 NEWTABLE                         R19 0 0
      109 CALL                             R17 2 0
      110 GETUPVAL                         R18 0
      111 GETTABLEKS                       R17 R18 K8 ["useRef"]
      113 LOADB                            R18 0
      114 CALL                             R17 1 1
      115 LOADB                            R18 0
      116 SETTABLEKS                       R18 R17 K10 ["current"]
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R18 R19 K9 ["useEffect"]
      121 NEWCLOSURE                       R19 P2
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R4
      125 NEWTABLE                         R20 0 1
      127 MOVE                             R21 R17
      128 SETLIST                          R20 R21 1 [1]
      130 CALL                             R18 2 0
      131 NEWCLOSURE                       R18 P3
      132 CAPTURE                          VAL R6
      133 CAPTURE                          UPVAL U13
      134 CAPTURE                          UPVAL U0
      135 CAPTURE                          UPVAL U19
      136 CAPTURE                          VAL R12
      137 CAPTURE                          UPVAL U20
      138 CAPTURE                          VAL R8
      139 CAPTURE                          UPVAL U21
      140 CAPTURE                          UPVAL U17
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R16
      144 CAPTURE                          UPVAL U22
      145 CAPTURE                          VAL R15
      146 GETUPVAL                         R20 0
      147 GETTABLEKS                       R19 R20 K11 ["createElement"]
      149 GETUPVAL                         R20 23
      150 DUPTABLE                         R21 K13 [{"GameId"}]
      151 GETIMPORT                        R23 K15 [game]
      153 GETTABLEKS                       R22 R23 K12 ["GameId"]
      155 SETTABLEKS                       R22 R21 K12 ["GameId"]
      157 DUPTABLE                         R22 K17 [{"Manager"}]
      158 GETUPVAL                         R24 0
      159 GETTABLEKS                       R23 R24 K11 ["createElement"]
      161 LOADK                            R24 K18 ["Frame"]
      162 NEWTABLE                         R25 4 0
      164 LOADN                            R26 1
      165 SETTABLEKS                       R26 R25 K19 ["BackgroundTransparency"]
      167 GETIMPORT                        R26 K22 [UDim2.fromScale]
      169 LOADN                            R27 1
      170 LOADN                            R28 1
      171 CALL                             R26 2 1
      172 SETTABLEKS                       R26 R25 K23 ["Size"]
      174 GETUPVAL                         R28 0
      175 GETTABLEKS                       R27 R28 K24 ["Event"]
      177 GETTABLEKS                       R26 R27 K25 ["MouseMoved"]
      179 NEWCLOSURE                       R27 P4
      180 CAPTURE                          VAL R5
      181 CAPTURE                          UPVAL U13
      182 CAPTURE                          VAL R14
      183 SETTABLE                         R27 R25 R26
      184 GETUPVAL                         R28 0
      185 GETTABLEKS                       R27 R28 K24 ["Event"]
      187 GETTABLEKS                       R26 R27 K26 ["MouseLeave"]
      189 NEWCLOSURE                       R27 P5
      190 CAPTURE                          VAL R14
      191 SETTABLE                         R27 R25 R26
      192 DUPTABLE                         R26 K28 [{"Element"}]
      193 MOVE                             R27 R18
      194 CALL                             R27 0 1
      195 SETTABLEKS                       R27 R26 K27 ["Element"]
      197 CALL                             R23 3 1
      198 SETTABLEKS                       R23 R22 K16 ["Manager"]
      200 CALL                             R19 3 -1
      201 RETURN                           R19 -1

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
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["CrossDMCommunication"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K12 ["Edit"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K13 ["Bin"]
       36 GETTABLEKS                       R6 R7 K14 ["Common"]
       38 GETTABLEKS                       R5 R6 K15 ["defineLuaFlags"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K10 ["Util"]
       47 GETTABLEKS                       R6 R7 K16 ["Constants"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K17 ["ContextServices"]
       52 GETTABLEKS                       R7 R6 K18 ["Mouse"]
       54 GETTABLEKS                       R8 R6 K19 ["Plugin"]
       56 GETTABLEKS                       R9 R6 K20 ["Focus"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K9 ["Src"]
       62 GETTABLEKS                       R12 R13 K21 ["Contexts"]
       64 GETTABLEKS                       R11 R12 K22 ["AnnotationsServiceContext"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R15 R0 K9 ["Src"]
       71 GETTABLEKS                       R14 R15 K21 ["Contexts"]
       73 GETTABLEKS                       R13 R14 K23 ["TagDropdownContext"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R11 R12 K23 ["TagDropdownContext"]
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K9 ["Src"]
       82 GETTABLEKS                       R14 R15 K21 ["Contexts"]
       84 GETTABLEKS                       R13 R14 K24 ["TelemetryContext"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K9 ["Src"]
       91 GETTABLEKS                       R15 R16 K10 ["Util"]
       93 GETTABLEKS                       R14 R15 K25 ["createAnnotationBillboard"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R17 R0 K9 ["Src"]
      100 GETTABLEKS                       R16 R17 K10 ["Util"]
      102 GETTABLEKS                       R15 R16 K26 ["doSelectionRaycast"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R18 R0 K9 ["Src"]
      109 GETTABLEKS                       R17 R18 K10 ["Util"]
      111 GETTABLEKS                       R16 R17 K27 ["rerenderReducer"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R19 R0 K9 ["Src"]
      118 GETTABLEKS                       R18 R19 K28 ["Enums"]
      120 GETTABLEKS                       R17 R18 K29 ["AnnotationEditingMode"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R20 R0 K9 ["Src"]
      127 GETTABLEKS                       R19 R20 K30 ["CoreGuiComponents"]
      129 GETTABLEKS                       R18 R19 K31 ["TargetHighlight"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R21 R0 K9 ["Src"]
      136 GETTABLEKS                       R20 R21 K32 ["Components"]
      138 GETTABLEKS                       R19 R20 K33 ["AddAnnotationPopup"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R22 R0 K9 ["Src"]
      145 GETTABLEKS                       R21 R22 K32 ["Components"]
      147 GETTABLEKS                       R20 R21 K34 ["AnnotationPopover"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R21 K5 [require]
      152 GETTABLEKS                       R24 R0 K9 ["Src"]
      154 GETTABLEKS                       R23 R24 K21 ["Contexts"]
      156 GETTABLEKS                       R22 R23 K35 ["TaggableUsersContext"]
      158 CALL                             R21 1 1
      159 GETTABLEKS                       R20 R21 K36 ["TaggableUsersProvider"]
      161 GETIMPORT                        R22 K5 [require]
      163 GETTABLEKS                       R25 R0 K9 ["Src"]
      165 GETTABLEKS                       R24 R25 K10 ["Util"]
      167 GETTABLEKS                       R23 R24 K37 ["TaggedUsersUtils"]
      169 CALL                             R22 1 1
      170 GETTABLEKS                       R21 R22 K38 ["UpdateAnnotationOrParentTaggedUsersInThread"]
      172 GETIMPORT                        R22 K40 [game]
      174 LOADK                            R24 K41 ["UserInputService"]
      175 NAMECALL                         R22 R22 K42 ["GetService"]
      177 CALL                             R22 2 1
      178 GETIMPORT                        R23 K5 [require]
      180 GETTABLEKS                       R26 R0 K9 ["Src"]
      182 GETTABLEKS                       R25 R26 K10 ["Util"]
      184 GETTABLEKS                       R24 R25 K43 ["toggleAddAnnotation"]
      186 CALL                             R23 1 1
      187 GETIMPORT                        R24 K5 [require]
      189 GETTABLEKS                       R26 R0 K9 ["Src"]
      191 GETTABLEKS                       R25 R26 K44 ["Types"]
      193 CALL                             R24 1 1
      194 GETIMPORT                        R25 K40 [game]
      196 LOADK                            R27 K45 ["StudioService"]
      197 NAMECALL                         R25 R25 K42 ["GetService"]
      199 CALL                             R25 2 1
      200 GETIMPORT                        R26 K40 [game]
      202 LOADK                            R28 K46 ["Selection"]
      203 NAMECALL                         R26 R26 K42 ["GetService"]
      205 CALL                             R26 2 1
      206 LOADNIL                          R27
      207 DUPCLOSURE                       R28 K47 [PROTO_0]
      208 CAPTURE                          VAL R25
      209 NEWCLOSURE                       R29 P1
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R16
      224 CAPTURE                          REF R27
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R20
      234 CLOSEUPVALS                      R27
      235 RETURN                           R29 1
