PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 DUPTABLE                         R3 K3 [{"Title", "Description"}]
        5 GETTABLEKS                       R4 R0 K4 ["title"]
        7 SETTABLEKS                       R4 R3 K1 ["Title"]
        9 GETTABLEKS                       R4 R0 K5 ["description"]
       11 SETTABLEKS                       R4 R3 K2 ["Description"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 NAMECALL                         R1 R1 K6 ["RespondVersionNotesAsync"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R3 1 0
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K0 ["enable"]
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["Fire"]
        6 CALL                             R1 4 0
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["disable"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K4 ["useState"]
        7 LOADN                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K4 ["useState"]
       12 LOADN                            R5 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K4 ["useState"]
       17 LOADNIL                          R7
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 1
       20 CALL                             R8 0 1
       21 GETUPVAL                         R9 1
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 1
       24 CALL                             R10 0 1
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R11 R12 K5 ["useCallback"]
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R13 0 0
       32 CALL                             R11 2 1
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R12 R13 K5 ["useCallback"]
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R8
       41 NEWTABLE                         R14 0 0
       43 CALL                             R12 2 1
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R15 R0 K6 ["bridge"]
       47 GETTABLEKS                       R14 R15 K7 ["OnVersionNotesRequest"]
       49 NEWCLOSURE                       R15 P2
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R10
       52 NEWTABLE                         R16 0 0
       54 CALL                             R13 3 0
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R13 R14 K8 ["FFlagPublishActionToast"]
       58 JUMPIFNOT                        R13 ; [+9]
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R15 R0 K6 ["bridge"]
       62 GETTABLEKS                       R14 R15 K9 ["OnEditNotes"]
       64 MOVE                             R15 R12
       65 NEWTABLE                         R16 0 0
       67 CALL                             R13 3 0
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K10 ["createElement"]
       71 GETUPVAL                         R15 4
       72 GETTABLEKS                       R14 R15 K11 ["Provider"]
       74 DUPTABLE                         R15 K13 [{"value"}]
       75 DUPTABLE                         R16 K16 [{"openEditNotesDialog", "onNotesEdited"}]
       76 SETTABLEKS                       R12 R16 K14 ["openEditNotesDialog"]
       78 GETTABLEKS                       R17 R1 K17 ["Event"]
       80 SETTABLEKS                       R17 R16 K15 ["onNotesEdited"]
       82 SETTABLEKS                       R16 R15 K12 ["value"]
       84 DUPTABLE                         R16 K21 [{"EditDialog", "SaveDialog", "PublishDialog"}]
       85 GETTABLEKS                       R17 R8 K22 ["enabled"]
       87 JUMPIFNOT                        R17 ; [+23]
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R17 R18 K10 ["createElement"]
       91 GETUPVAL                         R18 5
       92 DUPTABLE                         R19 K28 [{"placeId", "version", "notes", "onAccept", "onReject"}]
       93 SETTABLEKS                       R2 R19 K23 ["placeId"]
       95 SETTABLEKS                       R4 R19 K24 ["version"]
       97 SETTABLEKS                       R6 R19 K25 ["notes"]
       99 NEWCLOSURE                       R20 P3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R20 R19 K26 ["onAccept"]
      106 NEWCLOSURE                       R20 P4
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R20 R19 K27 ["onReject"]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K18 ["EditDialog"]
      113 GETTABLEKS                       R17 R9 K22 ["enabled"]
      115 JUMPIFNOT                        R17 ; [+19]
      116 GETUPVAL                         R18 0
      117 GETTABLEKS                       R17 R18 K10 ["createElement"]
      119 GETUPVAL                         R18 6
      120 DUPTABLE                         R19 K30 [{"variant", "onAccept", "onReject"}]
      121 LOADK                            R20 K31 ["Save"]
      122 SETTABLEKS                       R20 R19 K29 ["variant"]
      124 NEWCLOSURE                       R20 P5
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R20 R19 K26 ["onAccept"]
      129 NEWCLOSURE                       R20 P6
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R9
      132 SETTABLEKS                       R20 R19 K27 ["onReject"]
      134 CALL                             R17 2 1
      135 SETTABLEKS                       R17 R16 K19 ["SaveDialog"]
      137 GETTABLEKS                       R17 R10 K22 ["enabled"]
      139 JUMPIFNOT                        R17 ; [+19]
      140 GETUPVAL                         R18 0
      141 GETTABLEKS                       R17 R18 K10 ["createElement"]
      143 GETUPVAL                         R18 6
      144 DUPTABLE                         R19 K30 [{"variant", "onAccept", "onReject"}]
      145 LOADK                            R20 K32 ["Publish"]
      146 SETTABLEKS                       R20 R19 K29 ["variant"]
      148 NEWCLOSURE                       R20 P7
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R20 R19 K26 ["onAccept"]
      153 NEWCLOSURE                       R20 P8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 SETTABLEKS                       R20 R19 K27 ["onReject"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K20 ["PublishDialog"]
      161 GETTABLEKS                       R17 R0 K33 ["children"]
      163 CALL                             R13 4 -1
      164 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K12 ["Src"]
       32 GETTABLEKS                       R4 R5 K13 ["Contexts"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K14 ["DialogContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K15 ["NetworkContext"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K16 ["useToggleState"]
       46 GETTABLEKS                       R8 R3 K17 ["useEventConnection"]
       48 GETTABLEKS                       R10 R0 K12 ["Src"]
       50 GETTABLEKS                       R9 R10 K18 ["Components"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R9 K19 ["NotesDialog"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R9 K20 ["EditNotesDialog"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R14 R0 K12 ["Src"]
       66 GETTABLEKS                       R13 R14 K21 ["Types"]
       68 CALL                             R12 1 1
       69 DUPCLOSURE                       R13 K22 [PROTO_9]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R10
       77 RETURN                           R13 1
