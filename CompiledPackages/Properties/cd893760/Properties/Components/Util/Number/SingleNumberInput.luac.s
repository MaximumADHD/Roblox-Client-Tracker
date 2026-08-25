PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["multiple"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["value"]
        8 CALL                             R1 1 1
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [tonumber]
       13 CALL                             R2 1 1
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R6 R2
       16 GETIMPORT                        R5 K5 [typeof]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["somehow we formatted a number, then converted it back to a number, but did not get back a number"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onEditStart"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onEditFinish"]
        7 GETIMPORT                        R1 K5 [Enum.FinishRecordingOperation.Commit]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getValue"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K1 ["current"]
       10 GETUPVAL                         R1 3
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K1 ["current"]
       14 GETUPVAL                         R1 4
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K1 ["current"]
       18 GETUPVAL                         R1 5
       19 GETUPVAL                         R2 6
       20 GETTABLEKS                       R2 R2 K2 ["propertyPart"]
       22 NAMECALL                         R2 R2 K0 ["getValue"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K3 ["multiple"]
       27 SETTABLEKS                       R2 R1 K1 ["current"]
       29 GETUPVAL                         R1 6
       30 GETTABLEKS                       R1 R1 K4 ["onEditStart"]
       32 CALL                             R1 0 0
       33 GETUPVAL                         R1 7
       34 JUMPIFNOT                        R1 ; [+9]
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R1 R1 K2 ["propertyPart"]
       38 NAMECALL                         R1 R1 K0 ["getValue"]
       40 CALL                             R1 1 1
       41 GETTABLEKS                       R1 R1 K3 ["multiple"]
       43 JUMPIF                           R1 ; [+8]
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K5 ["onChange"]
       47 GETUPVAL                         R2 2
       48 NAMECALL                         R2 R2 K0 ["getValue"]
       50 CALL                             R2 1 -1
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["Drag"] ; [+12]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOTEQKB                    R2 TRUE ; [+41]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["onChange"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R1 K3 ["Keyboard"] ; [+33]
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R2 R2 K4 ["getValue"]
       18 CALL                             R2 1 1
       19 JUMPIFNOT                        R2 ; [+27]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K1 ["current"]
       23 JUMPIFNOT                        R2 ; [+11]
       24 GETUPVAL                         R2 4
       25 NAMECALL                         R2 R2 K4 ["getValue"]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQ                      R0 R2 ; [+6]
       30 GETUPVAL                         R2 3
       31 LOADB                            R3 0
       32 SETTABLEKS                       R3 R2 K1 ["current"]
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 3
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K1 ["current"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K2 ["onChange"]
       42 MOVE                             R3 R0
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 5
       45 SETTABLEKS                       R0 R2 K1 ["current"]
       47 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["getValue"]
        7 CALL                             R2 1 -1
        8 FASTCALL                         TOSTRING ; [+2]
        9 GETIMPORT                        R1 K3 [tostring]
       11 CALL                             R1 -1 1
       12 JUMPIFNOTEQ                      R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K0 ["current"]
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R0 R1 K0 ["current"]
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEN                        R1 R0 1
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["ok"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["error"]
       17 DUPTABLE                         R3 K9 [{["type"] = "expressionWrongType", ["received"], ["expected"] = "number"}]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K1 [typeof]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K7 ["received"]
       25 CALL                             R2 1 1
       26 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        6 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        8 JUMPIFNOTEQ                      R1 R2 ; [+19]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K5 ["onChange"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["current"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       24 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Cancel]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 3
       29 JUMPIFNOT                        R1 ; [+82]
       30 GETUPVAL                         R1 4
       31 JUMPIFNOT                        R1 ; [+34]
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R1 R1 K4 ["current"]
       35 JUMPIFEQKNIL                     R1 ; [+88]
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R2 R2 K10 ["predictOrCreateExpression"]
       40 MOVE                             R3 R1
       41 DUPCLOSURE                       R4 K11 [PROTO_6]
       42 CAPTURE                          UPVAL U7
       43 CALL                             R2 2 1
       44 GETTABLEKS                       R3 R2 K12 ["type"]
       46 JUMPIFNOTEQKS                    R3 K13 ["error"] ; [+8]
       48 GETUPVAL                         R3 8
       49 GETTABLEKS                       R3 R3 K14 ["warn"]
       51 GETTABLEKS                       R4 R2 K15 ["warning"]
       53 CALL                             R3 1 0
       54 JUMP                             ; [+69]
       55 GETTABLEKS                       R3 R2 K16 ["value"]
       57 JUMPIFEQKNIL                     R3 ; [+66]
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R3 R3 K5 ["onChange"]
       62 GETTABLEKS                       R4 R2 K16 ["value"]
       64 CALL                             R3 1 0
       65 JUMP                             ; [+58]
       66 GETUPVAL                         R1 5
       67 GETTABLEKS                       R1 R1 K4 ["current"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETUPVAL                         R2 5
       71 GETTABLEKS                       R2 R2 K4 ["current"]
       73 FASTCALL1                        TONUMBER R2 ; [+2]
       74 GETIMPORT                        R1 K18 [tonumber]
       76 CALL                             R1 1 1
       77 GETUPVAL                         R2 9
       78 GETTABLEKS                       R2 R2 K4 ["current"]
       80 JUMPIFEQKNIL                     R2 ; [+14]
       82 GETUPVAL                         R2 9
       83 GETTABLEKS                       R2 R2 K4 ["current"]
       85 JUMPIFNOTEQ                      R1 R2 ; [+9]
       87 GETUPVAL                         R2 2
       88 GETTABLEKS                       R2 R2 K5 ["onChange"]
       90 GETUPVAL                         R3 9
       91 GETTABLEKS                       R3 R3 K4 ["current"]
       93 CALL                             R2 1 0
       94 JUMP                             ; [+29]
       95 GETUPVAL                         R2 5
       96 GETTABLEKS                       R2 R2 K4 ["current"]
       98 JUMPIFEQKNIL                     R2 ; [+25]
      100 GETUPVAL                         R2 2
      101 GETTABLEKS                       R2 R2 K5 ["onChange"]
      103 GETUPVAL                         R3 6
      104 GETTABLEKS                       R3 R3 K19 ["createExpressionFromText"]
      106 GETUPVAL                         R4 5
      107 GETTABLEKS                       R4 R4 K4 ["current"]
      109 CALL                             R3 1 -1
      110 CALL                             R2 -1 0
      111 JUMP                             ; [+12]
      112 GETUPVAL                         R1 9
      113 GETTABLEKS                       R1 R1 K4 ["current"]
      115 JUMPIFEQKNIL                     R1 ; [+8]
      117 GETUPVAL                         R1 2
      118 GETTABLEKS                       R1 R1 K5 ["onChange"]
      120 GETUPVAL                         R2 9
      121 GETTABLEKS                       R2 R2 K4 ["current"]
      123 CALL                             R1 1 0
      124 GETUPVAL                         R1 2
      125 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
      127 GETIMPORT                        R2 K21 [Enum.FinishRecordingOperation.Commit]
      129 CALL                             R1 1 0
      130 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["propertyPart"]
        3 NAMECALL                         R2 R2 K1 ["getValue"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K2 ["multiple"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADK                            R1 K3 ["-"]
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_9:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["useRef"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useRef"]
       20 LOADNIL                          R5
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["useRef"]
       25 LOADB                            R6 0
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K3 ["useBinding"]
       30 LOADB                            R7 0
       31 CALL                             R6 1 2
       32 GETTABLEKS                       R8 R0 K4 ["propertyPart"]
       34 DUPCLOSURE                       R10 K5 [PROTO_0]
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R8 R8 K6 ["map"]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K2 ["useRef"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R12 0 1
       52 GETTABLEKS                       R13 R0 K8 ["onEditStart"]
       54 SETLIST                          R12 R13 1 [1]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R13 0 1
       65 GETTABLEKS                       R14 R0 K9 ["onEditFinish"]
       67 SETLIST                          R13 R14 1 [1]
       69 CALL                             R11 2 1
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U3
       82 NEWTABLE                         R14 0 2
       84 GETTABLEKS                       R15 R0 K8 ["onEditStart"]
       86 GETTABLEKS                       R16 R0 K10 ["onChange"]
       88 SETLIST                          R14 R15 2 [1]
       90 CALL                             R12 2 1
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       94 NEWCLOSURE                       R14 P4
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 NEWTABLE                         R15 0 3
      103 GETTABLEKS                       R16 R0 K8 ["onEditStart"]
      105 GETTABLEKS                       R17 R0 K10 ["onChange"]
      107 GETTABLEKS                       R18 R0 K9 ["onEditFinish"]
      109 SETLIST                          R15 R16 3 [1]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 4
      113 GETTABLEKS                       R14 R14 K11 ["useEventCallback"]
      115 NEWCLOSURE                       R15 P5
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R4
      119 CALL                             R14 1 1
      120 GETUPVAL                         R15 4
      121 GETTABLEKS                       R15 R15 K11 ["useEventCallback"]
      123 NEWCLOSURE                       R16 P6
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          VAL R4
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R3
      134 CALL                             R15 1 1
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      138 NEWCLOSURE                       R17 P7
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U2
      141 NEWTABLE                         R18 0 0
      143 CALL                             R16 2 1
      144 GETTABLEKS                       R17 R0 K12 ["slider"]
      146 JUMPIFNOT                        R17 ; [+4]
      147 GETTABLEKS                       R17 R0 K12 ["slider"]
      149 GETTABLEKS                       R17 R17 K13 ["step"]
      151 ORK                              R18 R17 K14 [1]
      152 GETTABLEKS                       R19 R0 K12 ["slider"]
      154 JUMPIFNOT                        R19 ; [+4]
      155 GETTABLEKS                       R19 R0 K12 ["slider"]
      157 GETTABLEKS                       R19 R19 K15 ["bounds"]
      159 GETTABLEKS                       R21 R0 K16 ["Visible"]
      161 JUMPIFEQKNIL                     R21 ; [+4]
      163 GETTABLEKS                       R20 R0 K16 ["Visible"]
      165 JUMP                             ; [+1]
      166 LOADB                            R20 1
      167 GETUPVAL                         R21 7
      168 GETUPVAL                         R22 8
      169 DUPTABLE                         R23 K21 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      170 GETIMPORT                        R24 K24 [UDim2.fromScale]
      172 LOADN                            R25 1
      173 LOADN                            R26 0
      174 CALL                             R24 2 1
      175 SETTABLEKS                       R24 R23 K19 ["Size"]
      177 GETTABLEKS                       R24 R0 K20 ["LayoutOrder"]
      179 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      181 SETTABLEKS                       R20 R23 K16 ["Visible"]
      183 DUPTABLE                         R24 K27 [{"Input", "Chip"}]
      184 GETUPVAL                         R25 7
      185 GETUPVAL                         R26 9
      186 DUPTABLE                         R27 K49 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["onScrubStarted"], ["onScrubEnded"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      187 SETTABLEKS                       R8 R27 K28 ["value"]
      189 GETUPVAL                         R28 10
      190 GETTABLEKS                       R28 R28 K50 ["Highlight"]
      192 SETTABLEKS                       R28 R27 K31 ["focusBehavior"]
      194 SETTABLEKS                       R16 R27 K32 ["formatAsString"]
      196 GETUPVAL                         R28 11
      197 GETTABLEKS                       R28 R28 K51 ["Contrast"]
      199 SETTABLEKS                       R28 R27 K33 ["variant"]
      201 GETUPVAL                         R28 12
      202 GETTABLEKS                       R28 R28 K52 ["On"]
      204 SETTABLEKS                       R28 R27 K34 ["scrubBehavior"]
      206 SETTABLEKS                       R10 R27 K35 ["onScrubStarted"]
      208 SETTABLEKS                       R11 R27 K36 ["onScrubEnded"]
      210 GETTABLEKS                       R28 R0 K53 ["readonly"]
      212 SETTABLEKS                       R28 R27 K37 ["isDisabled"]
      214 SETTABLEKS                       R12 R27 K38 ["onFocusGained"]
      216 SETTABLEKS                       R13 R27 K39 ["onChanged"]
      218 SETTABLEKS                       R15 R27 K40 ["onFocusLost"]
      220 SETTABLEKS                       R14 R27 K41 ["onTextChanged"]
      222 SETTABLEKS                       R18 R27 K13 ["step"]
      224 MOVE                             R28 R19
      225 JUMPIFNOT                        R28 ; [+2]
      226 GETTABLEKS                       R28 R19 K54 ["max"]
      228 SETTABLEKS                       R28 R27 K42 ["maximum"]
      230 MOVE                             R28 R19
      231 JUMPIFNOT                        R28 ; [+2]
      232 GETTABLEKS                       R28 R19 K55 ["min"]
      234 SETTABLEKS                       R28 R27 K43 ["minimum"]
      236 GETUPVAL                         R28 13
      237 GETTABLEKS                       R28 R28 K56 ["None"]
      239 SETTABLEKS                       R28 R27 K44 ["controlsVariant"]
      241 GETUPVAL                         R28 14
      242 GETTABLEKS                       R28 R28 K57 ["XSmall"]
      244 SETTABLEKS                       R28 R27 K45 ["size"]
      246 GETIMPORT                        R28 K60 [UDim.new]
      248 LOADN                            R29 1
      249 LOADN                            R30 0
      250 CALL                             R28 2 1
      251 SETTABLEKS                       R28 R27 K46 ["width"]
      253 CALL                             R25 2 1
      254 SETTABLEKS                       R25 R24 K25 ["Input"]
      256 GETTABLEKS                       R25 R0 K61 ["chip"]
      258 JUMPIFNOT                        R25 ; [+39]
      259 GETUPVAL                         R25 7
      260 LOADK                            R26 K62 ["Frame"]
      261 DUPTABLE                         R27 K70 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      262 GETTABLEKS                       R28 R0 K61 ["chip"]
      264 GETTABLEKS                       R28 R28 K71 ["color"]
      266 SETTABLEKS                       R28 R27 K63 ["BackgroundColor3"]
      268 GETIMPORT                        R28 K72 [UDim2.new]
      270 LOADN                            R29 0
      271 LOADN                            R30 2
      272 LOADK                            R31 K73 [0.5]
      273 LOADN                            R32 0
      274 CALL                             R28 4 1
      275 SETTABLEKS                       R28 R27 K19 ["Size"]
      277 GETIMPORT                        R28 K24 [UDim2.fromScale]
      279 LOADN                            R29 0
      280 LOADK                            R30 K73 [0.5]
      281 CALL                             R28 2 1
      282 SETTABLEKS                       R28 R27 K64 ["Position"]
      284 GETIMPORT                        R28 K75 [Vector2.new]
      286 LOADN                            R29 0
      287 LOADK                            R30 K73 [0.5]
      288 CALL                             R28 2 1
      289 SETTABLEKS                       R28 R27 K65 ["AnchorPoint"]
      291 DUPCLOSURE                       R30 K76 [PROTO_9]
      292 NAMECALL                         R28 R6 K6 ["map"]
      294 CALL                             R28 2 1
      295 SETTABLEKS                       R28 R27 K16 ["Visible"]
      297 CALL                             R25 2 1
      298 SETTABLEKS                       R25 R24 K26 ["Chip"]
      300 CALL                             R21 3 -1
      301 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["CapturableWarnings"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["EngineFeatureLuauExpressionReferencesMethod"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Expressions"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Flags"]
       39 GETTABLEKS                       R6 R6 K14 ["LuauExpressionsEnabled"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["PropertyTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Parent"]
       51 GETTABLEKS                       R8 R8 K16 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Parent"]
       58 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Util"]
       65 GETTABLEKS                       R10 R10 K18 ["NumberDisplay"]
       67 GETTABLEKS                       R10 R10 K19 ["Formatting"]
       69 GETTABLEKS                       R10 R10 K20 ["formatForSingleInput"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R4 K21 ["Enums"]
       74 GETTABLEKS                       R10 R10 K22 ["ScrubBehavior"]
       76 GETTABLEKS                       R11 R7 K23 ["createElement"]
       78 GETTABLEKS                       R12 R4 K24 ["NumberInput"]
       80 GETTABLEKS                       R13 R4 K25 ["View"]
       82 GETTABLEKS                       R14 R4 K21 ["Enums"]
       84 GETTABLEKS                       R14 R14 K26 ["InputFocusBehavior"]
       86 GETTABLEKS                       R15 R4 K21 ["Enums"]
       88 GETTABLEKS                       R15 R15 K27 ["InputSize"]
       90 GETTABLEKS                       R16 R4 K21 ["Enums"]
       92 GETTABLEKS                       R16 R16 K28 ["InputVariant"]
       94 GETTABLEKS                       R17 R4 K21 ["Enums"]
       96 GETTABLEKS                       R17 R17 K29 ["NumberInputControlsVariant"]
       98 DUPCLOSURE                       R18 K30 [PROTO_10]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R15
      114 RETURN                           R18 1
