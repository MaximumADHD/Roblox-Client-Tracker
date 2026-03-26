PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAccept"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["cancel"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["current"]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K2 ["saveVersionNotes"]
       18 DUPTABLE                         R3 K6 [{"placeId", "version", "notes"}]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K3 ["placeId"]
       22 SETTABLEKS                       R4 R3 K3 ["placeId"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K4 ["version"]
       27 SETTABLEKS                       R4 R3 K4 ["version"]
       29 SETTABLEKS                       R0 R3 K5 ["notes"]
       31 CALL                             R2 1 1
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U3
       34 NAMECALL                         R2 R2 K7 ["andThen"]
       36 CALL                             R2 2 1
       37 DUPCLOSURE                       R4 K8 [PROTO_1]
       38 NAMECALL                         R2 R2 K9 ["catch"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R1 K0 ["current"]
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K2 ["onReject"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 0
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K3 ["createElement"]
       38 GETUPVAL                         R7 3
       39 DUPTABLE                         R8 K8 [{"variant", "notes", "onAccept", "onReject"}]
       40 LOADK                            R9 K9 ["Edit"]
       41 SETTABLEKS                       R9 R8 K4 ["variant"]
       43 GETTABLEKS                       R9 R0 K5 ["notes"]
       45 SETTABLEKS                       R9 R8 K5 ["notes"]
       47 SETTABLEKS                       R4 R8 K6 ["onAccept"]
       49 SETTABLEKS                       R5 R8 K7 ["onReject"]
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["enable"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K1 ["fromEvent"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R3 R4 K2 ["Event"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETIMPORT                        R1 K3 [Enum.PlacePublishType.Save]
        2 JUMPIFNOTEQ                      R0 R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K4 ["enable"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K6 [Enum.PlacePublishType.Publish]
       11 JUMPIFNOTEQ                      R0 R1 ; [+5]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K4 ["enable"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+12]
        3 DUPTABLE                         R2 K2 [{"Title", "Description"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K3 ["title"]
        7 SETTABLEKS                       R3 R2 K0 ["Title"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K4 ["description"]
       12 SETTABLEKS                       R3 R2 K1 ["Description"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 NAMECALL                         R0 R0 K5 ["RespondVersionNotesAsync"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 1
        7 DUPCLOSURE                       R3 K1 [PROTO_8]
        8 NAMECALL                         R1 R1 K2 ["catch"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 1
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 LOADK                            R4 K2 ["PlaceVersionHistory"]
        8 NAMECALL                         R2 R1 K3 ["GetPluginComponent"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 1
       16 CALL                             R5 0 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["useState"]
       20 LOADN                            R7 0
       21 CALL                             R6 1 2
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K4 ["useState"]
       25 NEWTABLE                         R9 0 0
       27 CALL                             R8 1 2
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       31 NEWCLOSURE                       R11 P0
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R9
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R12 0 0
       39 CALL                             R10 2 1
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R12 R2 K6 ["OnVersionNotesRequest"]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R4
       49 MOVE                             R16 R5
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R11 3 0
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R11 R12 K5 ["useCallback"]
       56 NEWCLOSURE                       R12 P2
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R13 0 1
       61 MOVE                             R14 R2
       62 SETLIST                          R13 R14 1 [1]
       64 CALL                             R11 2 1
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K7 ["createElement"]
       68 GETUPVAL                         R14 6
       69 GETTABLEKS                       R13 R14 K8 ["Provider"]
       71 DUPTABLE                         R14 K10 [{"value"}]
       72 DUPTABLE                         R15 K12 [{"DEPRECATED_openEditNotesDialog"}]
       73 SETTABLEKS                       R10 R15 K11 ["DEPRECATED_openEditNotesDialog"]
       75 SETTABLEKS                       R15 R14 K9 ["value"]
       77 DUPTABLE                         R15 K16 [{"EditNotesDialog", "SaveDialog", "PublishDialog"}]
       78 GETTABLEKS                       R16 R3 K17 ["enabled"]
       80 JUMPIFNOT                        R16 ; [+20]
       81 GETUPVAL                         R17 2
       82 GETTABLEKS                       R16 R17 K7 ["createElement"]
       84 GETUPVAL                         R17 7
       85 DUPTABLE                         R18 K22 [{"notes", "version", "onAccept", "onReject"}]
       86 SETTABLEKS                       R8 R18 K18 ["notes"]
       88 SETTABLEKS                       R6 R18 K19 ["version"]
       90 NEWCLOSURE                       R19 P3
       91 CAPTURE                          VAL R3
       92 CAPTURE                          UPVAL U4
       93 SETTABLEKS                       R19 R18 K20 ["onAccept"]
       95 NEWCLOSURE                       R19 P4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          UPVAL U4
       98 SETTABLEKS                       R19 R18 K21 ["onReject"]
      100 CALL                             R16 2 1
      101 SETTABLEKS                       R16 R15 K13 ["EditNotesDialog"]
      103 GETTABLEKS                       R16 R4 K17 ["enabled"]
      105 JUMPIFNOT                        R16 ; [+19]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R16 R17 K7 ["createElement"]
      109 GETUPVAL                         R17 8
      110 DUPTABLE                         R18 K24 [{"variant", "onAccept", "onReject"}]
      111 LOADK                            R19 K25 ["Save"]
      112 SETTABLEKS                       R19 R18 K23 ["variant"]
      114 NEWCLOSURE                       R19 P5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R19 R18 K20 ["onAccept"]
      119 NEWCLOSURE                       R19 P6
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R19 R18 K21 ["onReject"]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K14 ["SaveDialog"]
      127 GETTABLEKS                       R16 R5 K17 ["enabled"]
      129 JUMPIFNOT                        R16 ; [+19]
      130 GETUPVAL                         R17 2
      131 GETTABLEKS                       R16 R17 K7 ["createElement"]
      133 GETUPVAL                         R17 8
      134 DUPTABLE                         R18 K24 [{"variant", "onAccept", "onReject"}]
      135 LOADK                            R19 K26 ["Publish"]
      136 SETTABLEKS                       R19 R18 K23 ["variant"]
      138 NEWCLOSURE                       R19 P7
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R19 R18 K20 ["onAccept"]
      143 NEWCLOSURE                       R19 P8
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R19 R18 K21 ["onReject"]
      148 CALL                             R16 2 1
      149 SETTABLEKS                       R16 R15 K15 ["PublishDialog"]
      151 GETTABLEKS                       R16 R0 K27 ["children"]
      153 CALL                             R12 4 -1
      154 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Promise"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R6 K12 ["Plugin"]
       39 GETTABLEKS                       R7 R0 K13 ["Src"]
       41 GETTABLEKS                       R6 R7 K14 ["Contexts"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R6 K15 ["NetworkContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R6 K16 ["SettingContext"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R6 K17 ["DialogContext"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R2 K18 ["useToggleState"]
       60 GETTABLEKS                       R11 R2 K19 ["useEventConnection"]
       62 GETTABLEKS                       R13 R0 K13 ["Src"]
       64 GETTABLEKS                       R12 R13 K20 ["Components"]
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R12 K21 ["NotesDialog"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R16 R0 K13 ["Src"]
       75 GETTABLEKS                       R15 R16 K22 ["Types"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K25 [Instance.new]
       80 LOADK                            R16 K26 ["BindableEvent"]
       81 CALL                             R15 1 1
       82 DUPCLOSURE                       R16 K27 [PROTO_4]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R13
       87 DUPCLOSURE                       R17 K28 [PROTO_16]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R13
       97 RETURN                           R17 1
