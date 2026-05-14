PROTO_0:
        0 LOADK                            R2 K0 ["%*px"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["$%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["formatAsString"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Value changed:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["useBindingValue"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K20 [{"value", "variant", "controlsVariant", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision", "leadingIcon", "isScrubbable", "focusBehavior"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K21 ["useBindingValue"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K22 ["FoundationNumberInputBindableValue"]
       12 JUMPIFNOT                        R5 ; [+2]
       13 GETUPVAL                         R4 4
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R4 5
       16 SETTABLEKS                       R4 R3 K1 ["value"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K23 ["FoundationNumberInputVariant"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["variant"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K2 ["variant"]
       29 GETUPVAL                         R4 6
       30 GETTABLEKS                       R4 R4 K3 ["controlsVariant"]
       32 SETTABLEKS                       R4 R3 K3 ["controlsVariant"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K4 ["hasError"]
       37 SETTABLEKS                       R4 R3 K4 ["hasError"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       42 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K6 ["isRequired"]
       47 SETTABLEKS                       R4 R3 K6 ["isRequired"]
       49 GETUPVAL                         R4 7
       50 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       52 GETUPVAL                         R4 8
       53 SETTABLEKS                       R4 R3 K8 ["formatAsString"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K9 ["label"]
       58 SETTABLEKS                       R4 R3 K9 ["label"]
       60 SETTABLEKS                       R0 R3 K10 ["size"]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K11 ["width"]
       65 JUMPIFNOTEQKN                    R5 K24 [0] ; [+3]
       67 LOADNIL                          R4
       68 JUMP                             ; [+7]
       69 GETIMPORT                        R4 K27 [UDim.new]
       71 LOADN                            R5 0
       72 GETUPVAL                         R6 2
       73 GETTABLEKS                       R6 R6 K11 ["width"]
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R3 K11 ["width"]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R4 R4 K12 ["maximum"]
       81 SETTABLEKS                       R4 R3 K12 ["maximum"]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R4 R4 K13 ["minimum"]
       86 SETTABLEKS                       R4 R3 K13 ["minimum"]
       88 GETUPVAL                         R4 2
       89 GETTABLEKS                       R4 R4 K14 ["step"]
       91 SETTABLEKS                       R4 R3 K14 ["step"]
       93 GETUPVAL                         R4 2
       94 GETTABLEKS                       R4 R4 K15 ["hint"]
       96 SETTABLEKS                       R4 R3 K15 ["hint"]
       98 GETUPVAL                         R4 2
       99 GETTABLEKS                       R4 R4 K16 ["precision"]
      101 SETTABLEKS                       R4 R3 K16 ["precision"]
      103 GETUPVAL                         R5 2
      104 GETTABLEKS                       R5 R5 K17 ["leadingIcon"]
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K28 ["None"]
      109 JUMPIFNOTEQ                      R5 R6 ; [+3]
      111 LOADNIL                          R4
      112 JUMP                             ; [+3]
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R4 R4 K17 ["leadingIcon"]
      116 SETTABLEKS                       R4 R3 K17 ["leadingIcon"]
      118 GETUPVAL                         R4 2
      119 GETTABLEKS                       R4 R4 K18 ["isScrubbable"]
      121 SETTABLEKS                       R4 R3 K18 ["isScrubbable"]
      123 GETUPVAL                         R4 2
      124 GETTABLEKS                       R4 R4 K19 ["focusBehavior"]
      126 SETTABLEKS                       R4 R3 K19 ["focusBehavior"]
      128 CALL                             R1 2 -1
      129 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["find"]
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K2 ["callback"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 LOADN                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["useBinding"]
       19 LOADN                            R6 0
       20 CALL                             R5 1 2
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R4
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K5 ["createElement"]
       28 GETUPVAL                         R9 3
       29 DUPTABLE                         R10 K7 [{"tag"}]
       30 LOADK                            R11 K8 ["row align-y-center gap-medium size-full-0 auto-y"]
       31 SETTABLEKS                       R11 R10 K6 ["tag"]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K9 ["map"]
       36 NEWTABLE                         R12 0 4
       38 GETUPVAL                         R13 4
       39 GETTABLEKS                       R13 R13 K10 ["Large"]
       41 GETUPVAL                         R14 4
       42 GETTABLEKS                       R14 R14 K11 ["Medium"]
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R15 R15 K12 ["Small"]
       47 GETUPVAL                         R16 4
       48 GETTABLEKS                       R16 R16 K13 ["XSmall"]
       50 SETLIST                          R12 R13 4 [1]
       52 NEWCLOSURE                       R13 P2
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CALL                             R11 2 -1
       63 CALL                             R8 -1 -1
       64 RETURN                           R8 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K5 [{"value", "reason"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K3 ["value"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K4 ["reason"]
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETUPVAL                         R2 0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETTABLE                         R7 R0 R4
        7 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
        9 MOVE                             R6 R1
       10 GETIMPORT                        R5 K2 [table.insert]
       12 CALL                             R5 2 0
       13 FORNLOOP                         R2
       14 DUPTABLE                         R4 K5 [{"value", "reason"}]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K3 ["value"]
       18 GETUPVAL                         R5 2
       19 SETTABLEKS                       R5 R4 K4 ["reason"]
       21 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K2 [table.insert]
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_9:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Keyboard"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["Drag"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+16]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K2 ["current"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["Drag"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+8]
       22 GETUPVAL                         R2 3
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 0
       28 JUMP                             ; [+9]
       29 GETUPVAL                         R2 3
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 5
       36 DUPCLOSURE                       R3 K3 [PROTO_9]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 2
       39 SETTABLEKS                       R1 R2 K2 ["current"]
       41 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R1 1
        3 SUBK                             R0 R1 K0 [1]
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETTABLE                         R2 R3 R0
       10 GETTABLEKS                       R2 R2 K1 ["value"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 5
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["current"]
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R1 1
        3 ADDK                             R0 R1 K0 [1]
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETTABLE                         R2 R3 R0
       10 GETTABLEKS                       R2 R2 K1 ["value"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 5
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["current"]
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 50
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K3 [{"value", "reason"}]
       11 LOADN                            R5 50
       12 SETTABLEKS                       R5 R4 K1 ["value"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["FocusLost"]
       17 SETTABLEKS                       R5 R4 K2 ["reason"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R2 1 2
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["useState"]
       25 LOADN                            R5 1
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["useRef"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 1
       32 LOADN                            R8 1
       33 JUMPIFLT                         R8 R4 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 LENGTH                           R9 R2
       38 JUMPIFLT                         R4 R9 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 NEWCLOSURE                       R11 P2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 NEWTABLE                         R12 0 0
       65 MOVE                             R13 R2
       66 LOADNIL                          R14
       67 LOADNIL                          R15
       68 FORGPREP                         R13
       69 JUMPIFEQ                         R16 R4 ; [+2]
       71 LOADB                            R18 0 +1
       72 LOADB                            R18 1
       73 MOVE                             R20 R12
       74 GETUPVAL                         R21 0
       75 GETTABLEKS                       R21 R21 K6 ["createElement"]
       77 GETUPVAL                         R22 2
       78 DUPTABLE                         R23 K10 [{"key", "tag", "Text"}]
       79 FASTCALL1                        TOSTRING R16 ; [+3]
       80 MOVE                             R25 R16
       81 GETIMPORT                        R24 K12 [tostring]
       83 CALL                             R24 1 1
       84 SETTABLEKS                       R24 R23 K7 ["key"]
       86 NEWTABLE                         R24 2 0
       88 SETTABLEKS                       R18 R24 K13 ["auto-xy text-body-medium content-emphasis"]
       90 NOT                              R25 R18
       91 SETTABLEKS                       R25 R24 K14 ["auto-xy text-body-medium content-default"]
       93 SETTABLEKS                       R24 R23 K8 ["tag"]
       95 LOADK                            R25 K15 ["%*. %* (%*)%*"]
       96 MOVE                             R27 R16
       97 GETTABLEKS                       R28 R17 K1 ["value"]
       99 GETTABLEKS                       R29 R17 K2 ["reason"]
      101 JUMPIFNOT                        R18 ; [+2]
      102 LOADK                            R30 K16 [" ←"]
      103 JUMP                             ; [+1]
      104 LOADK                            R30 K17 [""]
      105 NAMECALL                         R25 R25 K18 ["format"]
      107 CALL                             R25 5 1
      108 MOVE                             R24 R25
      109 SETTABLEKS                       R24 R23 K9 ["Text"]
      111 CALL                             R21 2 -1
      112 FASTCALL                         TABLE_INSERT ; [+2]
      113 GETIMPORT                        R19 K21 [table.insert]
      115 CALL                             R19 -1 0
      116 FORGLOOP                         R13 2 ; [-48]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K6 ["createElement"]
      121 GETUPVAL                         R14 3
      122 DUPTABLE                         R15 K22 [{"tag"}]
      123 LOADK                            R16 K23 ["col gap-large size-full-0 auto-y padding-large"]
      124 SETTABLEKS                       R16 R15 K8 ["tag"]
      126 DUPTABLE                         R16 K28 [{"Input", "Controls", "HistoryLabel", "History"}]
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K6 ["createElement"]
      130 GETUPVAL                         R18 4
      131 DUPTABLE                         R19 K38 [{"value", "onChanged", "label", "hint", "minimum", "maximum", "step", "isScrubbable", "width", "LayoutOrder"}]
      132 SETTABLEKS                       R0 R19 K1 ["value"]
      134 SETTABLEKS                       R9 R19 K29 ["onChanged"]
      136 LOADK                            R20 K39 ["Value with Undo/Redo"]
      137 SETTABLEKS                       R20 R19 K30 ["label"]
      139 LOADK                            R20 K40 ["Drag consolidates, buttons/keyboard create entries"]
      140 SETTABLEKS                       R20 R19 K31 ["hint"]
      142 LOADN                            R20 0
      143 SETTABLEKS                       R20 R19 K32 ["minimum"]
      145 LOADN                            R20 100
      146 SETTABLEKS                       R20 R19 K33 ["maximum"]
      148 LOADN                            R20 1
      149 SETTABLEKS                       R20 R19 K34 ["step"]
      151 LOADB                            R20 1
      152 SETTABLEKS                       R20 R19 K35 ["isScrubbable"]
      154 GETIMPORT                        R20 K43 [UDim.new]
      156 LOADN                            R21 0
      157 LOADN                            R22 44
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K36 ["width"]
      161 LOADN                            R20 1
      162 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K24 ["Input"]
      167 GETUPVAL                         R17 0
      168 GETTABLEKS                       R17 R17 K6 ["createElement"]
      170 GETUPVAL                         R18 3
      171 DUPTABLE                         R19 K44 [{"tag", "LayoutOrder"}]
      172 LOADK                            R20 K45 ["row gap-small auto-xy"]
      173 SETTABLEKS                       R20 R19 K8 ["tag"]
      175 LOADN                            R20 2
      176 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      178 DUPTABLE                         R20 K48 [{"UndoButton", "RedoButton"}]
      179 GETUPVAL                         R21 0
      180 GETTABLEKS                       R21 R21 K6 ["createElement"]
      182 GETUPVAL                         R22 5
      183 DUPTABLE                         R23 K52 [{"text", "onActivated", "isDisabled", "LayoutOrder"}]
      184 LOADK                            R24 K53 ["Undo"]
      185 SETTABLEKS                       R24 R23 K49 ["text"]
      187 SETTABLEKS                       R10 R23 K50 ["onActivated"]
      189 NOT                              R24 R7
      190 SETTABLEKS                       R24 R23 K51 ["isDisabled"]
      192 LOADN                            R24 1
      193 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K46 ["UndoButton"]
      198 GETUPVAL                         R21 0
      199 GETTABLEKS                       R21 R21 K6 ["createElement"]
      201 GETUPVAL                         R22 5
      202 DUPTABLE                         R23 K52 [{"text", "onActivated", "isDisabled", "LayoutOrder"}]
      203 LOADK                            R24 K54 ["Redo"]
      204 SETTABLEKS                       R24 R23 K49 ["text"]
      206 SETTABLEKS                       R11 R23 K50 ["onActivated"]
      208 NOT                              R24 R8
      209 SETTABLEKS                       R24 R23 K51 ["isDisabled"]
      211 LOADN                            R24 2
      212 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      214 CALL                             R21 2 1
      215 SETTABLEKS                       R21 R20 K47 ["RedoButton"]
      217 CALL                             R17 3 1
      218 SETTABLEKS                       R17 R16 K25 ["Controls"]
      220 GETUPVAL                         R17 0
      221 GETTABLEKS                       R17 R17 K6 ["createElement"]
      223 GETUPVAL                         R18 2
      224 DUPTABLE                         R19 K55 [{"tag", "Text", "LayoutOrder"}]
      225 LOADK                            R20 K56 ["auto-xy text-title-medium content-emphasis"]
      226 SETTABLEKS                       R20 R19 K8 ["tag"]
      228 LOADK                            R20 K57 ["History Stack:"]
      229 SETTABLEKS                       R20 R19 K9 ["Text"]
      231 LOADN                            R20 3
      232 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      234 CALL                             R17 2 1
      235 SETTABLEKS                       R17 R16 K26 ["HistoryLabel"]
      237 GETUPVAL                         R17 0
      238 GETTABLEKS                       R17 R17 K6 ["createElement"]
      240 GETUPVAL                         R18 3
      241 DUPTABLE                         R19 K44 [{"tag", "LayoutOrder"}]
      242 LOADK                            R20 K58 ["col gap-xsmall auto-y"]
      243 SETTABLEKS                       R20 R19 K8 ["tag"]
      245 LOADN                            R20 4
      246 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      248 MOVE                             R20 R12
      249 CALL                             R17 3 1
      250 SETTABLEKS                       R17 R16 K27 ["History"]
      252 CALL                             R13 3 -1
      253 RETURN                           R13 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controlsVariant"}]
        9 GETUPVAL                         R6 3
       10 SETTABLEKS                       R6 R5 K2 ["controlsVariant"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["InputFocusBehavior"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K8 ["Enums"]
       37 GETTABLEKS                       R7 R7 K12 ["InputVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Enums"]
       44 GETTABLEKS                       R8 R8 K13 ["NumberInputControlsVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Enums"]
       51 GETTABLEKS                       R9 R9 K14 ["OnChangeCallbackReason"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["Button"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["Text"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["View"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Utility"]
       79 GETTABLEKS                       R13 R13 K20 ["Flags"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K15 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["NumberInput"]
       88 CALL                             R13 1 1
       89 NEWTABLE                         R14 0 4
       91 DUPTABLE                         R15 K24 [{"name", "callback"}]
       92 LOADK                            R16 K25 ["pixels"]
       93 SETTABLEKS                       R16 R15 K22 ["name"]
       95 DUPCLOSURE                       R16 K26 [PROTO_0]
       96 SETTABLEKS                       R16 R15 K23 ["callback"]
       98 DUPTABLE                         R16 K24 [{"name", "callback"}]
       99 LOADK                            R17 K27 ["none"]
      100 SETTABLEKS                       R17 R16 K22 ["name"]
      102 LOADNIL                          R17
      103 SETTABLEKS                       R17 R16 K23 ["callback"]
      105 DUPTABLE                         R17 K24 [{"name", "callback"}]
      106 LOADK                            R18 K28 ["stringified"]
      107 SETTABLEKS                       R18 R17 K22 ["name"]
      109 DUPCLOSURE                       R18 K29 [PROTO_1]
      110 SETTABLEKS                       R18 R17 K23 ["callback"]
      112 DUPTABLE                         R18 K24 [{"name", "callback"}]
      113 LOADK                            R19 K30 ["currency"]
      114 SETTABLEKS                       R19 R18 K22 ["name"]
      116 DUPCLOSURE                       R19 K31 [PROTO_2]
      117 SETTABLEKS                       R19 R18 K23 ["callback"]
      119 SETLIST                          R14 R15 4 [1]
      121 DUPCLOSURE                       R15 K32 [PROTO_6]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 DUPCLOSURE                       R16 K33 [PROTO_13]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R9
      136 GETTABLEKS                       R17 R2 K34 ["map"]
      138 GETTABLEKS                       R18 R2 K35 ["values"]
      140 MOVE                             R19 R7
      141 CALL                             R18 1 1
      142 DUPCLOSURE                       R19 K36 [PROTO_15]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R2
      146 CALL                             R17 2 1
      147 DUPTABLE                         R20 K38 [{"name", "story"}]
      148 LOADK                            R21 K39 ["UndoRedoStack"]
      149 SETTABLEKS                       R21 R20 K22 ["name"]
      151 SETTABLEKS                       R16 R20 K37 ["story"]
      153 FASTCALL2                        TABLE_INSERT R17 R20 ; [+4]
      155 MOVE                             R19 R17
      156 GETIMPORT                        R18 K42 [table.insert]
      158 CALL                             R18 2 0
      159 DUPTABLE                         R18 K46 [{"summary", "stories", "controls"}]
      160 LOADK                            R19 K21 ["NumberInput"]
      161 SETTABLEKS                       R19 R18 K43 ["summary"]
      163 SETTABLEKS                       R17 R18 K44 ["stories"]
      165 DUPTABLE                         R19 K63 [{"label", "hint", "isRequired", "variant", "formatAsString", "hasError", "isDisabled", "useBindingValue", "maximum", "minimum", "step", "precision", "width", "isScrubbable", "leadingIcon", "focusBehavior"}]
      166 LOADK                            R20 K64 ["Label"]
      167 SETTABLEKS                       R20 R19 K47 ["label"]
      169 LOADK                            R20 K65 ["Number from -5 to 100"]
      170 SETTABLEKS                       R20 R19 K48 ["hint"]
      172 NEWTABLE                         R20 0 3
      174 GETTABLEKS                       R21 R4 K66 ["None"]
      176 LOADB                            R22 0
      177 LOADB                            R23 1
      178 SETLIST                          R20 R21 3 [1]
      180 SETTABLEKS                       R20 R19 K49 ["isRequired"]
      182 GETTABLEKS                       R21 R12 K67 ["FoundationNumberInputVariant"]
      184 JUMPIFNOT                        R21 ; [+5]
      185 GETTABLEKS                       R20 R2 K35 ["values"]
      187 MOVE                             R21 R6
      188 CALL                             R20 1 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R20
      191 SETTABLEKS                       R20 R19 K50 ["variant"]
      193 GETTABLEKS                       R20 R2 K35 ["values"]
      195 GETTABLEKS                       R21 R2 K34 ["map"]
      197 MOVE                             R22 R14
      198 DUPCLOSURE                       R23 K68 [PROTO_16]
      199 CALL                             R21 2 -1
      200 CALL                             R20 -1 1
      201 SETTABLEKS                       R20 R19 K51 ["formatAsString"]
      203 LOADB                            R20 0
      204 SETTABLEKS                       R20 R19 K52 ["hasError"]
      206 LOADB                            R20 0
      207 SETTABLEKS                       R20 R19 K53 ["isDisabled"]
      209 GETTABLEKS                       R21 R12 K69 ["FoundationNumberInputBindableValue"]
      211 JUMPIFNOT                        R21 ; [+2]
      212 LOADB                            R20 0
      213 JUMP                             ; [+1]
      214 LOADNIL                          R20
      215 SETTABLEKS                       R20 R19 K54 ["useBindingValue"]
      217 LOADN                            R20 100
      218 SETTABLEKS                       R20 R19 K55 ["maximum"]
      220 LOADN                            R20 251
      221 SETTABLEKS                       R20 R19 K56 ["minimum"]
      223 LOADK                            R20 K70 [0.2]
      224 SETTABLEKS                       R20 R19 K57 ["step"]
      226 LOADN                            R20 2
      227 SETTABLEKS                       R20 R19 K58 ["precision"]
      229 LOADN                            R20 0
      230 SETTABLEKS                       R20 R19 K59 ["width"]
      232 LOADB                            R20 0
      233 SETTABLEKS                       R20 R19 K60 ["isScrubbable"]
      235 NEWTABLE                         R20 0 4
      237 LOADK                            R21 K71 ["icons/placeholder/placeholderOn_small"]
      238 LOADK                            R22 K72 ["icons/status/private_small"]
      239 LOADK                            R23 K73 ["icons/common/search_small"]
      240 GETTABLEKS                       R24 R4 K66 ["None"]
      242 SETLIST                          R20 R21 4 [1]
      244 SETTABLEKS                       R20 R19 K61 ["leadingIcon"]
      246 GETTABLEKS                       R21 R12 K74 ["FoundationTextInputFocusBehavior"]
      248 JUMPIFNOT                        R21 ; [+18]
      249 GETTABLEKS                       R21 R12 K75 ["FoundationTextInputHighlightFix"]
      251 JUMPIFNOT                        R21 ; [+15]
      252 NEWTABLE                         R20 0 2
      254 GETTABLEKS                       R21 R4 K66 ["None"]
      256 GETTABLEKS                       R23 R2 K35 ["values"]
      258 MOVE                             R24 R3
      259 CALL                             R23 1 -1
      260 FASTCALL                         TABLE_UNPACK ; [+2]
      261 GETIMPORT                        R22 K77 [unpack]
      263 CALL                             R22 -1 -1
      264 SETLIST                          R20 R21 -1 [1]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R20
      268 SETTABLEKS                       R20 R19 K62 ["focusBehavior"]
      270 SETTABLEKS                       R19 R18 K45 ["controls"]
      272 RETURN                           R18 1
