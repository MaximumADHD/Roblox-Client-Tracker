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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["formatAsString"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Value changed:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["useBindingValue"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K19 [{"value", "variant", "controlsVariant", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision", "leadingIcon", "isScrubbable"}]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K20 ["useBindingValue"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K21 ["FoundationNumberInputBindableValue"]
       12 JUMPIFNOT                        R5 ; [+2]
       13 GETUPVAL                         R4 4
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R4 5
       16 SETTABLEKS                       R4 R3 K1 ["value"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K22 ["FoundationNumberInputVariant"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K2 ["variant"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K2 ["variant"]
       29 GETUPVAL                         R5 6
       30 GETTABLEKS                       R4 R5 K3 ["controlsVariant"]
       32 SETTABLEKS                       R4 R3 K3 ["controlsVariant"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K4 ["hasError"]
       37 SETTABLEKS                       R4 R3 K4 ["hasError"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R4 R5 K5 ["isDisabled"]
       42 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R4 R5 K6 ["isRequired"]
       47 SETTABLEKS                       R4 R3 K6 ["isRequired"]
       49 GETUPVAL                         R4 7
       50 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       52 GETUPVAL                         R4 8
       53 SETTABLEKS                       R4 R3 K8 ["formatAsString"]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K9 ["label"]
       58 SETTABLEKS                       R4 R3 K9 ["label"]
       60 SETTABLEKS                       R0 R3 K10 ["size"]
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R5 R6 K11 ["width"]
       65 JUMPIFNOTEQKN                    R5 K23 [0] ; [+3]
       67 LOADNIL                          R4
       68 JUMP                             ; [+7]
       69 GETIMPORT                        R4 K26 [UDim.new]
       71 LOADN                            R5 0
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R6 R7 K11 ["width"]
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R3 K11 ["width"]
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R4 R5 K12 ["maximum"]
       81 SETTABLEKS                       R4 R3 K12 ["maximum"]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R4 R5 K13 ["minimum"]
       86 SETTABLEKS                       R4 R3 K13 ["minimum"]
       88 GETUPVAL                         R5 2
       89 GETTABLEKS                       R4 R5 K14 ["step"]
       91 SETTABLEKS                       R4 R3 K14 ["step"]
       93 GETUPVAL                         R5 2
       94 GETTABLEKS                       R4 R5 K15 ["hint"]
       96 SETTABLEKS                       R4 R3 K15 ["hint"]
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R4 R5 K16 ["precision"]
      101 SETTABLEKS                       R4 R3 K16 ["precision"]
      103 GETUPVAL                         R6 2
      104 GETTABLEKS                       R5 R6 K17 ["leadingIcon"]
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R6 R7 K27 ["None"]
      109 JUMPIFNOTEQ                      R5 R6 ; [+3]
      111 LOADNIL                          R4
      112 JUMP                             ; [+3]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R4 R5 K17 ["leadingIcon"]
      116 SETTABLEKS                       R4 R3 K17 ["leadingIcon"]
      118 GETUPVAL                         R5 2
      119 GETTABLEKS                       R4 R5 K18 ["isScrubbable"]
      121 SETTABLEKS                       R4 R3 K18 ["isScrubbable"]
      123 CALL                             R1 2 -1
      124 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["find"]
        5 GETUPVAL                         R4 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R2 R3 K2 ["callback"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["useState"]
       14 LOADN                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["useBinding"]
       19 LOADN                            R6 0
       20 CALL                             R5 1 2
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R4
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K5 ["createElement"]
       28 GETUPVAL                         R9 3
       29 DUPTABLE                         R10 K7 [{"tag"}]
       30 LOADK                            R11 K8 ["row align-y-center gap-medium size-full-0 auto-y"]
       31 SETTABLEKS                       R11 R10 K6 ["tag"]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R11 R12 K9 ["map"]
       36 NEWTABLE                         R12 0 4
       38 GETUPVAL                         R14 4
       39 GETTABLEKS                       R13 R14 K10 ["Large"]
       41 GETUPVAL                         R15 4
       42 GETTABLEKS                       R14 R15 K11 ["Medium"]
       44 GETUPVAL                         R16 4
       45 GETTABLEKS                       R15 R16 K12 ["Small"]
       47 GETUPVAL                         R17 4
       48 GETTABLEKS                       R16 R17 K13 ["XSmall"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["Keyboard"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["Drag"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+16]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["current"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["Drag"]
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
        8 GETUPVAL                         R4 4
        9 GETTABLE                         R3 R4 R0
       10 GETTABLEKS                       R2 R3 K1 ["value"]
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
        8 GETUPVAL                         R4 4
        9 GETTABLE                         R3 R4 R0
       10 GETTABLEKS                       R2 R3 K1 ["value"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 5
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["current"]
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADN                            R1 50
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K3 [{"value", "reason"}]
       11 LOADN                            R5 50
       12 SETTABLEKS                       R5 R4 K1 ["value"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K4 ["FocusLost"]
       17 SETTABLEKS                       R5 R4 K2 ["reason"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R2 1 2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["useState"]
       25 LOADN                            R5 1
       26 CALL                             R4 1 2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K5 ["useRef"]
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
       74 GETUPVAL                         R22 0
       75 GETTABLEKS                       R21 R22 K6 ["createElement"]
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
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R13 R14 K6 ["createElement"]
      121 GETUPVAL                         R14 3
      122 DUPTABLE                         R15 K22 [{"tag"}]
      123 LOADK                            R16 K23 ["col gap-large size-full-0 auto-y padding-large"]
      124 SETTABLEKS                       R16 R15 K8 ["tag"]
      126 DUPTABLE                         R16 K28 [{"Input", "Controls", "HistoryLabel", "History"}]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R17 R18 K6 ["createElement"]
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
      167 GETUPVAL                         R18 0
      168 GETTABLEKS                       R17 R18 K6 ["createElement"]
      170 GETUPVAL                         R18 3
      171 DUPTABLE                         R19 K44 [{"tag", "LayoutOrder"}]
      172 LOADK                            R20 K45 ["row gap-small auto-xy"]
      173 SETTABLEKS                       R20 R19 K8 ["tag"]
      175 LOADN                            R20 2
      176 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      178 DUPTABLE                         R20 K48 [{"UndoButton", "RedoButton"}]
      179 GETUPVAL                         R22 0
      180 GETTABLEKS                       R21 R22 K6 ["createElement"]
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
      198 GETUPVAL                         R22 0
      199 GETTABLEKS                       R21 R22 K6 ["createElement"]
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
      220 GETUPVAL                         R18 0
      221 GETTABLEKS                       R17 R18 K6 ["createElement"]
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
      237 GETUPVAL                         R18 0
      238 GETTABLEKS                       R17 R18 K6 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["join"]
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
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["InputVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R8 K12 ["NumberInputControlsVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Enums"]
       44 GETTABLEKS                       R8 R9 K13 ["OnChangeCallbackReason"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Button"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K14 ["Components"]
       65 GETTABLEKS                       R11 R12 K17 ["View"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K18 ["Utility"]
       72 GETTABLEKS                       R12 R13 K19 ["Flags"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K14 ["Components"]
       79 GETTABLEKS                       R13 R14 K20 ["NumberInput"]
       81 CALL                             R12 1 1
       82 NEWTABLE                         R13 0 4
       84 DUPTABLE                         R14 K23 [{"name", "callback"}]
       85 LOADK                            R15 K24 ["pixels"]
       86 SETTABLEKS                       R15 R14 K21 ["name"]
       88 DUPCLOSURE                       R15 K25 [PROTO_0]
       89 SETTABLEKS                       R15 R14 K22 ["callback"]
       91 DUPTABLE                         R15 K23 [{"name", "callback"}]
       92 LOADK                            R16 K26 ["none"]
       93 SETTABLEKS                       R16 R15 K21 ["name"]
       95 LOADNIL                          R16
       96 SETTABLEKS                       R16 R15 K22 ["callback"]
       98 DUPTABLE                         R16 K23 [{"name", "callback"}]
       99 LOADK                            R17 K27 ["stringified"]
      100 SETTABLEKS                       R17 R16 K21 ["name"]
      102 DUPCLOSURE                       R17 K28 [PROTO_1]
      103 SETTABLEKS                       R17 R16 K22 ["callback"]
      105 DUPTABLE                         R17 K23 [{"name", "callback"}]
      106 LOADK                            R18 K29 ["currency"]
      107 SETTABLEKS                       R18 R17 K21 ["name"]
      109 DUPCLOSURE                       R18 K30 [PROTO_2]
      110 SETTABLEKS                       R18 R17 K22 ["callback"]
      112 SETLIST                          R13 R14 4 [1]
      114 DUPCLOSURE                       R14 K31 [PROTO_6]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R11
      122 DUPCLOSURE                       R15 K32 [PROTO_13]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R8
      129 GETTABLEKS                       R16 R2 K33 ["map"]
      131 GETTABLEKS                       R17 R2 K34 ["values"]
      133 MOVE                             R18 R6
      134 CALL                             R17 1 1
      135 DUPCLOSURE                       R18 K35 [PROTO_15]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R2
      139 CALL                             R16 2 1
      140 DUPTABLE                         R19 K37 [{"name", "story"}]
      141 LOADK                            R20 K38 ["UndoRedoStack"]
      142 SETTABLEKS                       R20 R19 K21 ["name"]
      144 SETTABLEKS                       R15 R19 K36 ["story"]
      146 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      148 MOVE                             R18 R16
      149 GETIMPORT                        R17 K41 [table.insert]
      151 CALL                             R17 2 0
      152 DUPTABLE                         R17 K45 [{"summary", "stories", "controls"}]
      153 LOADK                            R18 K20 ["NumberInput"]
      154 SETTABLEKS                       R18 R17 K42 ["summary"]
      156 SETTABLEKS                       R16 R17 K43 ["stories"]
      158 DUPTABLE                         R18 K61 [{"label", "hint", "isRequired", "variant", "formatAsString", "hasError", "isDisabled", "useBindingValue", "maximum", "minimum", "step", "precision", "width", "isScrubbable", "leadingIcon"}]
      159 LOADK                            R19 K62 ["Label"]
      160 SETTABLEKS                       R19 R18 K46 ["label"]
      162 LOADK                            R19 K63 ["Number from -5 to 100"]
      163 SETTABLEKS                       R19 R18 K47 ["hint"]
      165 NEWTABLE                         R19 0 3
      167 GETTABLEKS                       R20 R3 K64 ["None"]
      169 LOADB                            R21 0
      170 LOADB                            R22 1
      171 SETLIST                          R19 R20 3 [1]
      173 SETTABLEKS                       R19 R18 K48 ["isRequired"]
      175 GETTABLEKS                       R20 R11 K65 ["FoundationNumberInputVariant"]
      177 JUMPIFNOT                        R20 ; [+5]
      178 GETTABLEKS                       R19 R2 K34 ["values"]
      180 MOVE                             R20 R5
      181 CALL                             R19 1 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R19
      184 SETTABLEKS                       R19 R18 K49 ["variant"]
      186 GETTABLEKS                       R19 R2 K34 ["values"]
      188 GETTABLEKS                       R20 R2 K33 ["map"]
      190 MOVE                             R21 R13
      191 DUPCLOSURE                       R22 K66 [PROTO_16]
      192 CALL                             R20 2 -1
      193 CALL                             R19 -1 1
      194 SETTABLEKS                       R19 R18 K50 ["formatAsString"]
      196 LOADB                            R19 0
      197 SETTABLEKS                       R19 R18 K51 ["hasError"]
      199 LOADB                            R19 0
      200 SETTABLEKS                       R19 R18 K52 ["isDisabled"]
      202 GETTABLEKS                       R20 R11 K67 ["FoundationNumberInputBindableValue"]
      204 JUMPIFNOT                        R20 ; [+2]
      205 LOADB                            R19 0
      206 JUMP                             ; [+1]
      207 LOADNIL                          R19
      208 SETTABLEKS                       R19 R18 K53 ["useBindingValue"]
      210 LOADN                            R19 100
      211 SETTABLEKS                       R19 R18 K54 ["maximum"]
      213 LOADN                            R19 251
      214 SETTABLEKS                       R19 R18 K55 ["minimum"]
      216 LOADK                            R19 K68 [0.2]
      217 SETTABLEKS                       R19 R18 K56 ["step"]
      219 LOADN                            R19 2
      220 SETTABLEKS                       R19 R18 K57 ["precision"]
      222 LOADN                            R19 0
      223 SETTABLEKS                       R19 R18 K58 ["width"]
      225 LOADB                            R19 0
      226 SETTABLEKS                       R19 R18 K59 ["isScrubbable"]
      228 NEWTABLE                         R19 0 4
      230 LOADK                            R20 K69 ["icons/placeholder/placeholderOn_small"]
      231 LOADK                            R21 K70 ["icons/status/private_small"]
      232 LOADK                            R22 K71 ["icons/common/search_small"]
      233 GETTABLEKS                       R23 R3 K64 ["None"]
      235 SETLIST                          R19 R20 4 [1]
      237 SETTABLEKS                       R19 R18 K60 ["leadingIcon"]
      239 SETTABLEKS                       R18 R17 K44 ["controls"]
      241 RETURN                           R17 1
