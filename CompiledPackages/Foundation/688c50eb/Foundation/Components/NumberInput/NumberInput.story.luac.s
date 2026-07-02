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
        8 JUMPIFNOT                        R5 ; [+2]
        9 GETUPVAL                         R4 3
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R4 4
       12 SETTABLEKS                       R4 R3 K1 ["value"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["variant"]
       17 SETTABLEKS                       R4 R3 K2 ["variant"]
       19 GETUPVAL                         R4 5
       20 GETTABLEKS                       R4 R4 K3 ["controlsVariant"]
       22 SETTABLEKS                       R4 R3 K3 ["controlsVariant"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K4 ["hasError"]
       27 SETTABLEKS                       R4 R3 K4 ["hasError"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       32 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K6 ["isRequired"]
       37 SETTABLEKS                       R4 R3 K6 ["isRequired"]
       39 GETUPVAL                         R4 6
       40 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       42 GETUPVAL                         R4 7
       43 SETTABLEKS                       R4 R3 K8 ["formatAsString"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K9 ["label"]
       48 SETTABLEKS                       R4 R3 K9 ["label"]
       50 SETTABLEKS                       R0 R3 K10 ["size"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K11 ["width"]
       55 JUMPIFNOTEQKN                    R5 K22 [0] ; [+3]
       57 LOADNIL                          R4
       58 JUMP                             ; [+7]
       59 GETIMPORT                        R4 K25 [UDim.new]
       61 LOADN                            R5 0
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K11 ["width"]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K11 ["width"]
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K12 ["maximum"]
       71 SETTABLEKS                       R4 R3 K12 ["maximum"]
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K13 ["minimum"]
       76 SETTABLEKS                       R4 R3 K13 ["minimum"]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R4 R4 K14 ["step"]
       81 SETTABLEKS                       R4 R3 K14 ["step"]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R4 R4 K15 ["hint"]
       86 SETTABLEKS                       R4 R3 K15 ["hint"]
       88 GETUPVAL                         R4 2
       89 GETTABLEKS                       R4 R4 K16 ["precision"]
       91 SETTABLEKS                       R4 R3 K16 ["precision"]
       93 GETUPVAL                         R5 2
       94 GETTABLEKS                       R5 R5 K17 ["leadingIcon"]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K26 ["None"]
       99 JUMPIFNOTEQ                      R5 R6 ; [+3]
      101 LOADNIL                          R4
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R4 2
      104 GETTABLEKS                       R4 R4 K17 ["leadingIcon"]
      106 SETTABLEKS                       R4 R3 K17 ["leadingIcon"]
      108 GETUPVAL                         R4 2
      109 GETTABLEKS                       R4 R4 K18 ["isScrubbable"]
      111 SETTABLEKS                       R4 R3 K18 ["isScrubbable"]
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R4 R4 K19 ["focusBehavior"]
      116 SETTABLEKS                       R4 R3 K19 ["focusBehavior"]
      118 CALL                             R1 2 -1
      119 RETURN                           R1 -1

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
       29 DUPTABLE                         R10 K8 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y"}]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K9 ["map"]
       33 NEWTABLE                         R12 0 4
       35 GETUPVAL                         R13 4
       36 GETTABLEKS                       R13 R13 K10 ["Large"]
       38 GETUPVAL                         R14 4
       39 GETTABLEKS                       R14 R14 K11 ["Medium"]
       41 GETUPVAL                         R15 4
       42 GETTABLEKS                       R15 R15 K12 ["Small"]
       44 GETUPVAL                         R16 4
       45 GETTABLEKS                       R16 R16 K13 ["XSmall"]
       47 SETLIST                          R12 R13 4 [1]
       49 NEWCLOSURE                       R13 P2
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CALL                             R11 2 -1
       59 CALL                             R8 -1 -1
       60 RETURN                           R8 -1

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
       10 DUPTABLE                         R4 K4 [{["value"] = 50, ["reason"]}]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["FocusLost"]
       14 SETTABLEKS                       R5 R4 K3 ["reason"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R2 1 2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["useState"]
       22 LOADN                            R5 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 LOADN                            R8 1
       30 JUMPIFLT                         R8 R4 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 LENGTH                           R9 R2
       35 JUMPIFLT                         R4 R9 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R12 0 0
       62 MOVE                             R13 R2
       63 LOADNIL                          R14
       64 LOADNIL                          R15
       65 FORGPREP                         R13
       66 JUMPIFEQ                         R16 R4 ; [+2]
       68 LOADB                            R18 0 +1
       69 LOADB                            R18 1
       70 MOVE                             R20 R12
       71 GETUPVAL                         R21 0
       72 GETTABLEKS                       R21 R21 K7 ["createElement"]
       74 GETUPVAL                         R22 2
       75 DUPTABLE                         R23 K11 [{"key", "tag", "Text"}]
       76 FASTCALL1                        TOSTRING R16 ; [+3]
       77 MOVE                             R25 R16
       78 GETIMPORT                        R24 K13 [tostring]
       80 CALL                             R24 1 1
       81 SETTABLEKS                       R24 R23 K8 ["key"]
       83 NEWTABLE                         R24 2 0
       85 SETTABLEKS                       R18 R24 K14 ["auto-xy text-body-medium content-emphasis"]
       87 NOT                              R25 R18
       88 SETTABLEKS                       R25 R24 K15 ["auto-xy text-body-medium content-default"]
       90 SETTABLEKS                       R24 R23 K9 ["tag"]
       92 LOADK                            R25 K16 ["%*. %* (%*)%*"]
       93 MOVE                             R27 R16
       94 GETTABLEKS                       R28 R17 K1 ["value"]
       96 GETTABLEKS                       R29 R17 K3 ["reason"]
       98 JUMPIFNOT                        R18 ; [+2]
       99 LOADK                            R30 K17 [" ←"]
      100 JUMP                             ; [+1]
      101 LOADK                            R30 K18 [""]
      102 NAMECALL                         R25 R25 K19 ["format"]
      104 CALL                             R25 5 1
      105 MOVE                             R24 R25
      106 SETTABLEKS                       R24 R23 K10 ["Text"]
      108 CALL                             R21 2 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R19 K22 [table.insert]
      112 CALL                             R19 -1 0
      113 FORGLOOP                         R13 2 ; [-48]
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K7 ["createElement"]
      118 GETUPVAL                         R14 3
      119 DUPTABLE                         R15 K24 [{["tag"] = "col gap-large size-full-0 auto-y padding-large"}]
      120 DUPTABLE                         R16 K29 [{"Input", "Controls", "HistoryLabel", "History"}]
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K7 ["createElement"]
      124 GETUPVAL                         R18 4
      125 DUPTABLE                         R19 K45 [{["value"], ["onChanged"], ["label"] = "Value with Undo/Redo", ["hint"] = "Drag consolidates, buttons/keyboard create entries", ["minimum"] = 0, ["maximum"] = 100, ["step"] = 1, ["isScrubbable"] = True, ["width"], ["LayoutOrder"] = 1}]
      126 SETTABLEKS                       R0 R19 K1 ["value"]
      128 SETTABLEKS                       R9 R19 K30 ["onChanged"]
      130 GETIMPORT                        R20 K48 [UDim.new]
      132 LOADN                            R21 0
      133 LOADN                            R22 300
      134 CALL                             R20 2 1
      135 SETTABLEKS                       R20 R19 K43 ["width"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K25 ["Input"]
      140 GETUPVAL                         R17 0
      141 GETTABLEKS                       R17 R17 K7 ["createElement"]
      143 GETUPVAL                         R18 3
      144 DUPTABLE                         R19 K51 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"] = 2}]
      145 DUPTABLE                         R20 K54 [{"UndoButton", "RedoButton"}]
      146 GETUPVAL                         R21 0
      147 GETTABLEKS                       R21 R21 K7 ["createElement"]
      149 GETUPVAL                         R22 5
      150 DUPTABLE                         R23 K59 [{["text"] = "Undo", ["onActivated"], ["isDisabled"], ["LayoutOrder"] = 1}]
      151 SETTABLEKS                       R10 R23 K57 ["onActivated"]
      153 NOT                              R24 R7
      154 SETTABLEKS                       R24 R23 K58 ["isDisabled"]
      156 CALL                             R21 2 1
      157 SETTABLEKS                       R21 R20 K52 ["UndoButton"]
      159 GETUPVAL                         R21 0
      160 GETTABLEKS                       R21 R21 K7 ["createElement"]
      162 GETUPVAL                         R22 5
      163 DUPTABLE                         R23 K61 [{["text"] = "Redo", ["onActivated"], ["isDisabled"], ["LayoutOrder"] = 2}]
      164 SETTABLEKS                       R11 R23 K57 ["onActivated"]
      166 NOT                              R24 R8
      167 SETTABLEKS                       R24 R23 K58 ["isDisabled"]
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K53 ["RedoButton"]
      172 CALL                             R17 3 1
      173 SETTABLEKS                       R17 R16 K26 ["Controls"]
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K7 ["createElement"]
      178 GETUPVAL                         R18 2
      179 DUPTABLE                         R19 K65 [{["tag"] = "auto-xy text-title-medium content-emphasis", ["Text"] = "History Stack:", ["LayoutOrder"] = 3}]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K27 ["HistoryLabel"]
      183 GETUPVAL                         R17 0
      184 GETTABLEKS                       R17 R17 K7 ["createElement"]
      186 GETUPVAL                         R18 3
      187 DUPTABLE                         R19 K68 [{["tag"] = "col gap-xsmall auto-y", ["LayoutOrder"] = 4}]
      188 MOVE                             R20 R12
      189 CALL                             R17 3 1
      190 SETTABLEKS                       R17 R16 K28 ["History"]
      192 CALL                             R13 3 -1
      193 RETURN                           R13 -1

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
       91 DUPTABLE                         R15 K25 [{["name"] = "pixels", ["callback"]}]
       92 DUPCLOSURE                       R16 K26 [PROTO_0]
       93 SETTABLEKS                       R16 R15 K24 ["callback"]
       95 DUPTABLE                         R16 K29 [{["name"] = "none", ["callback"] = }]
       96 DUPTABLE                         R17 K31 [{["name"] = "stringified", ["callback"]}]
       97 DUPCLOSURE                       R18 K32 [PROTO_1]
       98 SETTABLEKS                       R18 R17 K24 ["callback"]
      100 DUPTABLE                         R18 K34 [{["name"] = "currency", ["callback"]}]
      101 DUPCLOSURE                       R19 K35 [PROTO_2]
      102 SETTABLEKS                       R19 R18 K24 ["callback"]
      104 SETLIST                          R14 R15 4 [1]
      106 DUPCLOSURE                       R15 K36 [PROTO_6]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R13
      113 DUPCLOSURE                       R16 K37 [PROTO_13]
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R9
      120 GETTABLEKS                       R17 R2 K38 ["map"]
      122 GETTABLEKS                       R18 R2 K39 ["values"]
      124 MOVE                             R19 R7
      125 CALL                             R18 1 1
      126 DUPCLOSURE                       R19 K40 [PROTO_15]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R2
      130 CALL                             R17 2 1
      131 DUPTABLE                         R20 K43 [{["name"] = "UndoRedoStack", ["story"]}]
      132 SETTABLEKS                       R16 R20 K42 ["story"]
      134 FASTCALL2                        TABLE_INSERT R17 R20 ; [+4]
      136 MOVE                             R19 R17
      137 GETIMPORT                        R18 K46 [table.insert]
      139 CALL                             R18 2 0
      140 DUPTABLE                         R18 K50 [{["summary"] = "NumberInput", ["stories"], ["controls"]}]
      141 SETTABLEKS                       R17 R18 K48 ["stories"]
      143 DUPTABLE                         R19 K75 [{["label"] = "Label", ["hint"] = "Number from -5 to 100", ["isRequired"], ["variant"], ["formatAsString"], ["hasError"] = False, ["isDisabled"] = False, ["useBindingValue"] = False, ["maximum"] = 100, ["minimum"] = -5, ["step"] = 0.2, ["precision"] = 2, ["width"] = 0, ["isScrubbable"] = False, ["leadingIcon"], ["focusBehavior"]}]
      144 NEWTABLE                         R20 0 3
      146 GETTABLEKS                       R21 R4 K76 ["None"]
      148 LOADB                            R22 0
      149 LOADB                            R23 1
      150 SETLIST                          R20 R21 3 [1]
      152 SETTABLEKS                       R20 R19 K55 ["isRequired"]
      154 GETTABLEKS                       R20 R2 K39 ["values"]
      156 MOVE                             R21 R6
      157 CALL                             R20 1 1
      158 SETTABLEKS                       R20 R19 K56 ["variant"]
      160 GETTABLEKS                       R20 R2 K39 ["values"]
      162 GETTABLEKS                       R21 R2 K38 ["map"]
      164 MOVE                             R22 R14
      165 DUPCLOSURE                       R23 K77 [PROTO_16]
      166 CALL                             R21 2 -1
      167 CALL                             R20 -1 1
      168 SETTABLEKS                       R20 R19 K57 ["formatAsString"]
      170 NEWTABLE                         R20 0 4
      172 LOADK                            R21 K78 ["icons/placeholder/placeholderOn_small"]
      173 LOADK                            R22 K79 ["icons/status/private_small"]
      174 LOADK                            R23 K80 ["icons/common/search_small"]
      175 GETTABLEKS                       R24 R4 K76 ["None"]
      177 SETLIST                          R20 R21 4 [1]
      179 SETTABLEKS                       R20 R19 K73 ["leadingIcon"]
      181 GETTABLEKS                       R21 R12 K81 ["FoundationTextInputHighlightFix"]
      183 JUMPIFNOT                        R21 ; [+15]
      184 NEWTABLE                         R20 0 2
      186 GETTABLEKS                       R21 R4 K76 ["None"]
      188 GETTABLEKS                       R23 R2 K39 ["values"]
      190 MOVE                             R24 R3
      191 CALL                             R23 1 -1
      192 FASTCALL                         TABLE_UNPACK ; [+2]
      193 GETIMPORT                        R22 K83 [unpack]
      195 CALL                             R22 -1 -1
      196 SETLIST                          R20 R21 -1 [1]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R20
      200 SETTABLEKS                       R20 R19 K74 ["focusBehavior"]
      202 SETTABLEKS                       R19 R18 K49 ["controls"]
      204 RETURN                           R18 1
