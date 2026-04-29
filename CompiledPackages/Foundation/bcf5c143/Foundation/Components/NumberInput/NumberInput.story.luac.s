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
        2 LOADK                            R2 K2 ["newValue"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K18 [{"value", "controlsVariant", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision", "leadingIcon", "isScrubbable"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["value"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["controlsVariant"]
       11 SETTABLEKS                       R4 R3 K2 ["controlsVariant"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R4 R5 K3 ["hasError"]
       16 SETTABLEKS                       R4 R3 K3 ["hasError"]
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R4 R5 K4 ["isDisabled"]
       21 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R4 R5 K5 ["isRequired"]
       26 SETTABLEKS                       R4 R3 K5 ["isRequired"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       31 GETUPVAL                         R4 6
       32 SETTABLEKS                       R4 R3 K7 ["formatAsString"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R4 R5 K8 ["label"]
       37 SETTABLEKS                       R4 R3 K8 ["label"]
       39 SETTABLEKS                       R0 R3 K9 ["size"]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R5 R6 K10 ["width"]
       44 JUMPIFNOTEQKN                    R5 K19 [0] ; [+3]
       46 LOADNIL                          R4
       47 JUMP                             ; [+7]
       48 GETIMPORT                        R4 K22 [UDim.new]
       50 LOADN                            R5 0
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R6 R7 K10 ["width"]
       54 CALL                             R4 2 1
       55 SETTABLEKS                       R4 R3 K10 ["width"]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R4 R5 K11 ["maximum"]
       60 SETTABLEKS                       R4 R3 K11 ["maximum"]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R4 R5 K12 ["minimum"]
       65 SETTABLEKS                       R4 R3 K12 ["minimum"]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R4 R5 K13 ["step"]
       70 SETTABLEKS                       R4 R3 K13 ["step"]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R4 R5 K14 ["hint"]
       75 SETTABLEKS                       R4 R3 K14 ["hint"]
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R4 R5 K15 ["precision"]
       80 SETTABLEKS                       R4 R3 K15 ["precision"]
       82 GETUPVAL                         R6 4
       83 GETTABLEKS                       R5 R6 K16 ["leadingIcon"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R6 R7 K23 ["None"]
       88 JUMPIFNOTEQ                      R5 R6 ; [+3]
       90 LOADNIL                          R4
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R5 4
       93 GETTABLEKS                       R4 R5 K16 ["leadingIcon"]
       95 SETTABLEKS                       R4 R3 K16 ["leadingIcon"]
       97 GETUPVAL                         R5 4
       98 GETTABLEKS                       R4 R5 K17 ["isScrubbable"]
      100 SETTABLEKS                       R4 R3 K17 ["isScrubbable"]
      102 CALL                             R1 2 -1
      103 RETURN                           R1 -1

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
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R4
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K4 ["createElement"]
       21 GETUPVAL                         R7 3
       22 DUPTABLE                         R8 K6 [{"tag"}]
       23 LOADK                            R9 K7 ["row align-y-center gap-medium size-full-0 auto-y"]
       24 SETTABLEKS                       R9 R8 K5 ["tag"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K8 ["map"]
       29 NEWTABLE                         R10 0 4
       31 GETUPVAL                         R12 4
       32 GETTABLEKS                       R11 R12 K9 ["Large"]
       34 GETUPVAL                         R13 4
       35 GETTABLEKS                       R12 R13 K10 ["Medium"]
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R13 R14 K11 ["Small"]
       40 GETUPVAL                         R15 4
       41 GETTABLEKS                       R14 R15 K12 ["XSmall"]
       43 SETLIST                          R10 R11 4 [1]
       45 NEWCLOSURE                       R11 P2
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CALL                             R9 2 -1
       54 CALL                             R6 -1 -1
       55 RETURN                           R6 -1

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
       30 GETTABLEKS                       R6 R7 K11 ["NumberInputControlsVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R8 K12 ["OnChangeCallbackReason"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["Button"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K13 ["Components"]
       65 GETTABLEKS                       R11 R12 K17 ["NumberInput"]
       67 CALL                             R10 1 1
       68 NEWTABLE                         R11 0 4
       70 DUPTABLE                         R12 K20 [{"name", "callback"}]
       71 LOADK                            R13 K21 ["pixels"]
       72 SETTABLEKS                       R13 R12 K18 ["name"]
       74 DUPCLOSURE                       R13 K22 [PROTO_0]
       75 SETTABLEKS                       R13 R12 K19 ["callback"]
       77 DUPTABLE                         R13 K20 [{"name", "callback"}]
       78 LOADK                            R14 K23 ["none"]
       79 SETTABLEKS                       R14 R13 K18 ["name"]
       81 LOADNIL                          R14
       82 SETTABLEKS                       R14 R13 K19 ["callback"]
       84 DUPTABLE                         R14 K20 [{"name", "callback"}]
       85 LOADK                            R15 K24 ["stringified"]
       86 SETTABLEKS                       R15 R14 K18 ["name"]
       88 DUPCLOSURE                       R15 K25 [PROTO_1]
       89 SETTABLEKS                       R15 R14 K19 ["callback"]
       91 DUPTABLE                         R15 K20 [{"name", "callback"}]
       92 LOADK                            R16 K26 ["currency"]
       93 SETTABLEKS                       R16 R15 K18 ["name"]
       95 DUPCLOSURE                       R16 K27 [PROTO_2]
       96 SETTABLEKS                       R16 R15 K19 ["callback"]
       98 SETLIST                          R11 R12 4 [1]
      100 DUPCLOSURE                       R12 K28 [PROTO_6]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 DUPCLOSURE                       R13 K29 [PROTO_13]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R7
      114 GETTABLEKS                       R14 R2 K30 ["map"]
      116 GETTABLEKS                       R15 R2 K31 ["values"]
      118 MOVE                             R16 R5
      119 CALL                             R15 1 1
      120 DUPCLOSURE                       R16 K32 [PROTO_15]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R2
      124 CALL                             R14 2 1
      125 DUPTABLE                         R17 K34 [{"name", "story"}]
      126 LOADK                            R18 K35 ["UndoRedoStack"]
      127 SETTABLEKS                       R18 R17 K18 ["name"]
      129 SETTABLEKS                       R13 R17 K33 ["story"]
      131 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
      133 MOVE                             R16 R14
      134 GETIMPORT                        R15 K38 [table.insert]
      136 CALL                             R15 2 0
      137 DUPTABLE                         R15 K42 [{"summary", "stories", "controls"}]
      138 LOADK                            R16 K17 ["NumberInput"]
      139 SETTABLEKS                       R16 R15 K39 ["summary"]
      141 SETTABLEKS                       R14 R15 K40 ["stories"]
      143 DUPTABLE                         R16 K57 [{"label", "hint", "isRequired", "formatAsString", "hasError", "isDisabled", "maximum", "minimum", "step", "precision", "width", "controlsVariant", "isScrubbable", "leadingIcon"}]
      144 LOADK                            R17 K58 ["Label"]
      145 SETTABLEKS                       R17 R16 K43 ["label"]
      147 LOADK                            R17 K59 ["Number from -5 to 100"]
      148 SETTABLEKS                       R17 R16 K44 ["hint"]
      150 NEWTABLE                         R17 0 3
      152 GETTABLEKS                       R18 R3 K60 ["None"]
      154 LOADB                            R19 0
      155 LOADB                            R20 1
      156 SETLIST                          R17 R18 3 [1]
      158 SETTABLEKS                       R17 R16 K45 ["isRequired"]
      160 GETTABLEKS                       R17 R2 K31 ["values"]
      162 GETTABLEKS                       R18 R2 K30 ["map"]
      164 MOVE                             R19 R11
      165 DUPCLOSURE                       R20 K61 [PROTO_16]
      166 CALL                             R18 2 -1
      167 CALL                             R17 -1 1
      168 SETTABLEKS                       R17 R16 K46 ["formatAsString"]
      170 LOADB                            R17 0
      171 SETTABLEKS                       R17 R16 K47 ["hasError"]
      173 LOADB                            R17 0
      174 SETTABLEKS                       R17 R16 K48 ["isDisabled"]
      176 LOADN                            R17 100
      177 SETTABLEKS                       R17 R16 K49 ["maximum"]
      179 LOADN                            R17 251
      180 SETTABLEKS                       R17 R16 K50 ["minimum"]
      182 LOADK                            R17 K62 [0.2]
      183 SETTABLEKS                       R17 R16 K51 ["step"]
      185 LOADN                            R17 2
      186 SETTABLEKS                       R17 R16 K52 ["precision"]
      188 LOADN                            R17 0
      189 SETTABLEKS                       R17 R16 K53 ["width"]
      191 GETTABLEKS                       R17 R2 K31 ["values"]
      193 MOVE                             R18 R5
      194 CALL                             R17 1 1
      195 SETTABLEKS                       R17 R16 K54 ["controlsVariant"]
      197 LOADB                            R17 0
      198 SETTABLEKS                       R17 R16 K55 ["isScrubbable"]
      200 NEWTABLE                         R17 0 4
      202 LOADK                            R18 K63 ["icons/placeholder/placeholderOn_small"]
      203 LOADK                            R19 K64 ["icons/status/private_small"]
      204 LOADK                            R20 K65 ["icons/common/search_small"]
      205 GETTABLEKS                       R21 R3 K60 ["None"]
      207 SETLIST                          R17 R18 4 [1]
      209 SETTABLEKS                       R17 R16 K56 ["leadingIcon"]
      211 SETTABLEKS                       R16 R15 K41 ["controls"]
      213 RETURN                           R15 1
