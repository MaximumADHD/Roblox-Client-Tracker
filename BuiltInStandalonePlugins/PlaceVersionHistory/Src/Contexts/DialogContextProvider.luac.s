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
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 CALL                             R5 1 0
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 CALL                             R5 1 0
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R2
        8 CALL                             R5 1 0
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R3
       11 CALL                             R5 1 0
       12 GETUPVAL                         R5 4
       13 MOVE                             R6 R4
       14 CALL                             R5 1 0
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R5 R5 K0 ["enable"]
       18 CALL                             R5 0 0
       19 RETURN                           R0 0

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
        0 GETIMPORT                        R6 K3 [Enum.PlacePublishType.Publish]
        2 JUMPIFEQ                         R2 R6 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 GETUPVAL                         R6 0
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 MOVE                             R9 R3
       10 MOVE                             R10 R5
       11 MOVE                             R11 R4
       12 CALL                             R6 5 0
       13 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_12:
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
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K4 ["useState"]
       22 LOADNIL                          R9
       23 CALL                             R8 1 2
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K4 ["useState"]
       27 LOADNIL                          R11
       28 CALL                             R10 1 2
       29 GETUPVAL                         R12 1
       30 CALL                             R12 0 1
       31 GETUPVAL                         R13 1
       32 CALL                             R13 0 1
       33 GETUPVAL                         R14 1
       34 CALL                             R14 0 1
       35 GETUPVAL                         R15 0
       36 GETTABLEKS                       R15 R15 K5 ["useCallback"]
       38 NEWCLOSURE                       R16 P0
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R17 0 0
       42 CALL                             R15 2 1
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R16 R16 K5 ["useCallback"]
       46 NEWCLOSURE                       R17 P1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R12
       53 NEWTABLE                         R18 0 0
       55 CALL                             R16 2 1
       56 GETUPVAL                         R17 2
       57 GETTABLEKS                       R18 R0 K6 ["bridge"]
       59 GETTABLEKS                       R18 R18 K7 ["OnVersionNotesRequest"]
       61 NEWCLOSURE                       R19 P2
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R14
       64 NEWTABLE                         R20 0 0
       66 CALL                             R17 3 0
       67 GETUPVAL                         R17 3
       68 GETTABLEKS                       R17 R17 K8 ["EngineFeaturePVHGenerateNotes"]
       70 JUMPIFNOT                        R17 ; [+24]
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R17 R17 K5 ["useCallback"]
       74 NEWCLOSURE                       R18 P3
       75 CAPTURE                          VAL R16
       76 NEWTABLE                         R19 0 1
       78 MOVE                             R20 R16
       79 SETLIST                          R19 R20 1 [1]
       81 CALL                             R17 2 1
       82 GETUPVAL                         R18 2
       83 GETTABLEKS                       R19 R0 K6 ["bridge"]
       85 GETTABLEKS                       R19 R19 K9 ["OpenVersionNotesDialog"]
       87 MOVE                             R20 R17
       88 NEWTABLE                         R21 0 1
       90 MOVE                             R22 R17
       91 SETLIST                          R21 R22 1 [1]
       93 CALL                             R18 3 0
       94 JUMP                             ; [+9]
       95 GETUPVAL                         R17 2
       96 GETTABLEKS                       R18 R0 K6 ["bridge"]
       98 GETTABLEKS                       R18 R18 K10 ["OnEditNotes"]
      100 MOVE                             R19 R16
      101 NEWTABLE                         R20 0 0
      103 CALL                             R17 3 0
      104 GETUPVAL                         R17 0
      105 GETTABLEKS                       R17 R17 K11 ["createElement"]
      107 GETUPVAL                         R18 4
      108 GETTABLEKS                       R18 R18 K12 ["Provider"]
      110 DUPTABLE                         R19 K14 [{"value"}]
      111 DUPTABLE                         R20 K17 [{"openEditNotesDialog", "onNotesEdited"}]
      112 SETTABLEKS                       R16 R20 K15 ["openEditNotesDialog"]
      114 GETTABLEKS                       R21 R1 K18 ["Event"]
      116 SETTABLEKS                       R21 R20 K16 ["onNotesEdited"]
      118 SETTABLEKS                       R20 R19 K13 ["value"]
      120 DUPTABLE                         R20 K22 [{"EditDialog", "SaveDialog", "PublishDialog"}]
      121 GETTABLEKS                       R21 R12 K23 ["enabled"]
      123 JUMPIFNOT                        R21 ; [+67]
      124 GETUPVAL                         R22 3
      125 GETTABLEKS                       R22 R22 K8 ["EngineFeaturePVHGenerateNotes"]
      127 JUMPIFNOT                        R22 ; [+34]
      128 GETUPVAL                         R21 0
      129 GETTABLEKS                       R21 R21 K11 ["createElement"]
      131 GETUPVAL                         R22 5
      132 DUPTABLE                         R23 K32 [{"placeId", "version", "notes", "isPublished", "date", "variant", "onAccept", "onReject"}]
      133 SETTABLEKS                       R2 R23 K24 ["placeId"]
      135 SETTABLEKS                       R4 R23 K25 ["version"]
      137 SETTABLEKS                       R6 R23 K26 ["notes"]
      139 SETTABLEKS                       R8 R23 K27 ["isPublished"]
      141 SETTABLEKS                       R10 R23 K28 ["date"]
      143 JUMPIFNOT                        R6 ; [+2]
      144 LOADK                            R24 K33 ["Edit"]
      145 JUMP                             ; [+1]
      146 LOADK                            R24 K34 ["Add"]
      147 SETTABLEKS                       R24 R23 K29 ["variant"]
      149 NEWCLOSURE                       R24 P4
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R12
      154 SETTABLEKS                       R24 R23 K30 ["onAccept"]
      156 NEWCLOSURE                       R24 P5
      157 CAPTURE                          VAL R12
      158 SETTABLEKS                       R24 R23 K31 ["onReject"]
      160 CALL                             R21 2 1
      161 JUMP                             ; [+29]
      162 GETUPVAL                         R21 0
      163 GETTABLEKS                       R21 R21 K11 ["createElement"]
      165 GETUPVAL                         R22 5
      166 DUPTABLE                         R23 K35 [{"placeId", "version", "notes", "variant", "onAccept", "onReject"}]
      167 SETTABLEKS                       R2 R23 K24 ["placeId"]
      169 SETTABLEKS                       R4 R23 K25 ["version"]
      171 SETTABLEKS                       R6 R23 K26 ["notes"]
      173 JUMPIFNOT                        R6 ; [+2]
      174 LOADK                            R24 K33 ["Edit"]
      175 JUMP                             ; [+1]
      176 LOADK                            R24 K34 ["Add"]
      177 SETTABLEKS                       R24 R23 K29 ["variant"]
      179 NEWCLOSURE                       R24 P6
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R24 R23 K30 ["onAccept"]
      186 NEWCLOSURE                       R24 P7
      187 CAPTURE                          VAL R12
      188 SETTABLEKS                       R24 R23 K31 ["onReject"]
      190 CALL                             R21 2 1
      191 SETTABLEKS                       R21 R20 K19 ["EditDialog"]
      193 GETTABLEKS                       R21 R13 K23 ["enabled"]
      195 JUMPIFNOT                        R21 ; [+16]
      196 GETUPVAL                         R21 0
      197 GETTABLEKS                       R21 R21 K11 ["createElement"]
      199 GETUPVAL                         R22 5
      200 DUPTABLE                         R23 K37 [{["variant"] = "Save", ["onAccept"], ["onReject"]}]
      201 NEWCLOSURE                       R24 P8
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R13
      204 SETTABLEKS                       R24 R23 K30 ["onAccept"]
      206 NEWCLOSURE                       R24 P9
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R13
      209 SETTABLEKS                       R24 R23 K31 ["onReject"]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K20 ["SaveDialog"]
      214 GETTABLEKS                       R21 R14 K23 ["enabled"]
      216 JUMPIFNOT                        R21 ; [+16]
      217 GETUPVAL                         R21 0
      218 GETTABLEKS                       R21 R21 K11 ["createElement"]
      220 GETUPVAL                         R22 5
      221 DUPTABLE                         R23 K39 [{["variant"] = "Publish", ["onAccept"], ["onReject"]}]
      222 NEWCLOSURE                       R24 P10
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R14
      225 SETTABLEKS                       R24 R23 K30 ["onAccept"]
      227 NEWCLOSURE                       R24 P11
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R14
      230 SETTABLEKS                       R24 R23 K31 ["onReject"]
      232 CALL                             R21 2 1
      233 SETTABLEKS                       R21 R20 K21 ["PublishDialog"]
      235 GETTABLEKS                       R21 R0 K40 ["children"]
      237 CALL                             R17 4 -1
      238 RETURN                           R17 -1

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
       59 GETTABLEKS                       R12 R0 K12 ["Src"]
       61 GETTABLEKS                       R12 R12 K20 ["Types"]
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K21 [PROTO_12]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R10
       71 RETURN                           R12 1
