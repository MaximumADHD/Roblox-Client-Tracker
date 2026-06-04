PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridge"]
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
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K0 ["enable"]
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K3 [Enum.PlacePublishType.Save]
        2 JUMPIFNOTEQ                      R0 R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["enable"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K6 [Enum.PlacePublishType.Publish]
       11 JUMPIFNOTEQ                      R0 R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["enable"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["Fire"]
        6 CALL                             R1 4 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["disable"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["Fire"]
        6 CALL                             R1 4 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["disable"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["useState"]
        7 LOADN                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["useState"]
       12 LOADN                            R5 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K4 ["useState"]
       17 LOADNIL                          R7
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 1
       20 CALL                             R8 0 1
       21 GETUPVAL                         R9 1
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 1
       24 CALL                             R10 0 1
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R13 0 0
       32 CALL                             R11 2 1
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R8
       41 NEWTABLE                         R14 0 0
       43 CALL                             R12 2 1
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R14 R0 K6 ["bridge"]
       47 GETTABLEKS                       R14 R14 K7 ["OnVersionNotesRequest"]
       49 NEWCLOSURE                       R15 P2
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R10
       52 NEWTABLE                         R16 0 0
       54 CALL                             R13 3 0
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R14 R0 K6 ["bridge"]
       58 GETTABLEKS                       R14 R14 K8 ["OnEditNotes"]
       60 MOVE                             R15 R12
       61 NEWTABLE                         R16 0 0
       63 CALL                             R13 3 0
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R13 R13 K9 ["createElement"]
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K10 ["Provider"]
       70 DUPTABLE                         R15 K12 [{"value"}]
       71 DUPTABLE                         R16 K15 [{"openEditNotesDialog", "onNotesEdited"}]
       72 SETTABLEKS                       R12 R16 K13 ["openEditNotesDialog"]
       74 GETTABLEKS                       R17 R1 K16 ["Event"]
       76 SETTABLEKS                       R17 R16 K14 ["onNotesEdited"]
       78 SETTABLEKS                       R16 R15 K11 ["value"]
       80 DUPTABLE                         R16 K20 [{"EditDialog", "SaveDialog", "PublishDialog"}]
       81 GETTABLEKS                       R17 R8 K21 ["enabled"]
       83 JUMPIFNOT                        R17 ; [+57]
       84 GETUPVAL                         R18 4
       85 GETTABLEKS                       R18 R18 K22 ["FFlagPluginQWidgetModalFocusKeyboard"]
       87 JUMPIFNOT                        R18 ; [+30]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R17 R17 K9 ["createElement"]
       91 GETUPVAL                         R18 5
       92 DUPTABLE                         R19 K29 [{"placeId", "version", "notes", "variant", "onAccept", "onReject"}]
       93 SETTABLEKS                       R2 R19 K23 ["placeId"]
       95 SETTABLEKS                       R4 R19 K24 ["version"]
       97 SETTABLEKS                       R6 R19 K25 ["notes"]
       99 JUMPIFNOT                        R6 ; [+2]
      100 LOADK                            R20 K30 ["Edit"]
      101 JUMP                             ; [+1]
      102 LOADK                            R20 K31 ["Add"]
      103 SETTABLEKS                       R20 R19 K26 ["variant"]
      105 NEWCLOSURE                       R20 P3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 SETTABLEKS                       R20 R19 K27 ["onAccept"]
      112 NEWCLOSURE                       R20 P4
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R20 R19 K28 ["onReject"]
      116 CALL                             R17 2 1
      117 JUMP                             ; [+23]
      118 GETUPVAL                         R17 0
      119 GETTABLEKS                       R17 R17 K9 ["createElement"]
      121 GETUPVAL                         R18 6
      122 DUPTABLE                         R19 K32 [{"placeId", "version", "notes", "onAccept", "onReject"}]
      123 SETTABLEKS                       R2 R19 K23 ["placeId"]
      125 SETTABLEKS                       R4 R19 K24 ["version"]
      127 SETTABLEKS                       R6 R19 K25 ["notes"]
      129 NEWCLOSURE                       R20 P5
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R20 R19 K27 ["onAccept"]
      136 NEWCLOSURE                       R20 P6
      137 CAPTURE                          VAL R8
      138 SETTABLEKS                       R20 R19 K28 ["onReject"]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K17 ["EditDialog"]
      143 GETTABLEKS                       R17 R9 K21 ["enabled"]
      145 JUMPIFNOT                        R17 ; [+19]
      146 GETUPVAL                         R17 0
      147 GETTABLEKS                       R17 R17 K9 ["createElement"]
      149 GETUPVAL                         R18 5
      150 DUPTABLE                         R19 K33 [{"variant", "onAccept", "onReject"}]
      151 LOADK                            R20 K34 ["Save"]
      152 SETTABLEKS                       R20 R19 K26 ["variant"]
      154 NEWCLOSURE                       R20 P7
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R9
      157 SETTABLEKS                       R20 R19 K27 ["onAccept"]
      159 NEWCLOSURE                       R20 P8
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R9
      162 SETTABLEKS                       R20 R19 K28 ["onReject"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K18 ["SaveDialog"]
      167 GETTABLEKS                       R17 R10 K21 ["enabled"]
      169 JUMPIFNOT                        R17 ; [+19]
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R17 R17 K9 ["createElement"]
      173 GETUPVAL                         R18 5
      174 DUPTABLE                         R19 K33 [{"variant", "onAccept", "onReject"}]
      175 LOADK                            R20 K35 ["Publish"]
      176 SETTABLEKS                       R20 R19 K26 ["variant"]
      178 NEWCLOSURE                       R20 P9
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R10
      181 SETTABLEKS                       R20 R19 K27 ["onAccept"]
      183 NEWCLOSURE                       R20 P10
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R10
      186 SETTABLEKS                       R20 R19 K28 ["onReject"]
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K19 ["PublishDialog"]
      191 GETTABLEKS                       R17 R0 K36 ["children"]
      193 CALL                             R13 4 -1
      194 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K12 ["Src"]
       32 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K14 ["DialogContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K15 ["NetworkContext"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K16 ["useToggleState"]
       46 GETTABLEKS                       R8 R3 K17 ["useEventConnection"]
       48 GETTABLEKS                       R9 R0 K12 ["Src"]
       50 GETTABLEKS                       R9 R9 K18 ["Components"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R9 K19 ["NotesDialog"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R9 K20 ["EditNotesDialog"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K12 ["Src"]
       66 GETTABLEKS                       R13 R13 K21 ["Types"]
       68 CALL                             R12 1 1
       69 DUPCLOSURE                       R13 K22 [PROTO_11]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R11
       77 RETURN                           R13 1
