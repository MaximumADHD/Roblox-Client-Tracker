PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["multiple"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["toDisplayValue"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["unit"]
       11 GETTABLEKS                       R3 R0 K3 ["value"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 FASTCALL1                        TONUMBER R2 ; [+3]
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K5 [tonumber]
       21 CALL                             R3 1 1
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R7 R3
       24 GETIMPORT                        R6 K7 [typeof]
       26 CALL                             R6 1 1
       27 JUMPIFEQKS                       R6 K8 ["number"] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       33 LOADK                            R6 K9 ["somehow we formatted a number, then converted it back to a number, but did not get back a number"]
       34 GETIMPORT                        R4 K11 [assert]
       36 CALL                             R4 2 0
       37 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEditStart"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEditFinish"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 NAMECALL                         R1 R1 K0 ["getValue"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 6
       20 GETTABLEKS                       R1 R1 K2 ["propertyPart"]
       22 NAMECALL                         R1 R1 K0 ["getValue"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R1 R1 K3 ["multiple"]
       27 SETTABLEKS                       R1 R0 K1 ["current"]
       29 GETUPVAL                         R0 6
       30 GETTABLEKS                       R0 R0 K4 ["onEditStart"]
       32 CALL                             R0 0 0
       33 GETUPVAL                         R0 7
       34 JUMPIFNOT                        R0 ; [+9]
       35 GETUPVAL                         R0 6
       36 GETTABLEKS                       R0 R0 K2 ["propertyPart"]
       38 NAMECALL                         R0 R0 K0 ["getValue"]
       40 CALL                             R0 1 1
       41 GETTABLEKS                       R0 R0 K3 ["multiple"]
       43 JUMPIF                           R0 ; [+8]
       44 GETUPVAL                         R0 6
       45 GETTABLEKS                       R0 R0 K5 ["onChange"]
       47 GETUPVAL                         R1 2
       48 NAMECALL                         R1 R1 K0 ["getValue"]
       50 CALL                             R1 1 -1
       51 CALL                             R0 -1 0
       52 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["Drag"] ; [+15]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Utility"]
        5 GETTABLEKS                       R2 R2 K2 ["Flags"]
        7 GETTABLEKS                       R2 R2 K3 ["FoundationNumberInputScrubCallbackProps"]
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["onChange"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R1 K5 ["Keyboard"] ; [+33]
       18 GETUPVAL                         R2 2
       19 NAMECALL                         R2 R2 K6 ["getValue"]
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+27]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K7 ["current"]
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETUPVAL                         R2 4
       28 NAMECALL                         R2 R2 K6 ["getValue"]
       30 CALL                             R2 1 1
       31 JUMPIFNOTEQ                      R0 R2 ; [+6]
       33 GETUPVAL                         R2 3
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K7 ["current"]
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 3
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K7 ["current"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K4 ["onChange"]
       45 MOVE                             R3 R0
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 5
       48 SETTABLEKS                       R0 R2 K7 ["current"]
       50 RETURN                           R0 0

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
        1 GETTABLEKS                       R2 R2 K0 ["unit"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getSuffix"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["unit"]
       10 CALL                             R1 1 1
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K2 [""]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["propertyPart"]
       16 NAMECALL                         R3 R3 K4 ["getValue"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K5 ["multiple"]
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADK                            R2 K6 ["-"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R0
       26 CALL                             R5 1 1
       27 MOVE                             R3 R5
       28 MOVE                             R4 R1
       29 CONCAT                           R2 R3 R4
       30 RETURN                           R2 1

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
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U3
       38 NAMECALL                         R8 R8 K5 ["map"]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R0
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          VAL R0
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R11 R11 K6 ["useEventCallback"]
       56 NEWCLOSURE                       R12 P3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U5
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       69 NEWCLOSURE                       R13 P4
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R3
       76 NEWTABLE                         R14 0 3
       78 GETTABLEKS                       R15 R0 K8 ["onEditStart"]
       80 GETTABLEKS                       R16 R0 K9 ["onChange"]
       82 GETTABLEKS                       R17 R0 K10 ["onEditFinish"]
       84 SETLIST                          R14 R15 3 [1]
       86 CALL                             R12 2 1
       87 GETUPVAL                         R13 4
       88 GETTABLEKS                       R13 R13 K6 ["useEventCallback"]
       90 NEWCLOSURE                       R14 P5
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R4
       94 CALL                             R13 1 1
       95 GETUPVAL                         R14 4
       96 GETTABLEKS                       R14 R14 K6 ["useEventCallback"]
       98 NEWCLOSURE                       R15 P6
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R4
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R3
      109 CALL                             R14 1 1
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      113 NEWCLOSURE                       R16 P7
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          UPVAL U3
      117 NEWTABLE                         R17 0 1
      119 GETTABLEKS                       R18 R0 K11 ["unit"]
      121 SETLIST                          R17 R18 1 [1]
      123 CALL                             R15 2 1
      124 GETTABLEKS                       R16 R0 K12 ["slider"]
      126 JUMPIFNOT                        R16 ; [+4]
      127 GETTABLEKS                       R16 R0 K12 ["slider"]
      129 GETTABLEKS                       R16 R16 K13 ["step"]
      131 ORK                              R17 R16 K14 [1]
      132 GETTABLEKS                       R18 R0 K12 ["slider"]
      134 JUMPIFNOT                        R18 ; [+4]
      135 GETTABLEKS                       R18 R0 K12 ["slider"]
      137 GETTABLEKS                       R18 R18 K15 ["bounds"]
      139 GETTABLEKS                       R20 R0 K16 ["Visible"]
      141 JUMPIFEQKNIL                     R20 ; [+4]
      143 GETTABLEKS                       R19 R0 K16 ["Visible"]
      145 JUMP                             ; [+1]
      146 LOADB                            R19 1
      147 GETUPVAL                         R20 9
      148 GETUPVAL                         R21 10
      149 DUPTABLE                         R22 K21 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      150 GETIMPORT                        R23 K24 [UDim2.fromScale]
      152 LOADN                            R24 1
      153 LOADN                            R25 0
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K19 ["Size"]
      157 GETTABLEKS                       R23 R0 K20 ["LayoutOrder"]
      159 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      161 SETTABLEKS                       R19 R22 K16 ["Visible"]
      163 DUPTABLE                         R23 K27 [{"Input", "Chip"}]
      164 GETUPVAL                         R24 9
      165 GETUPVAL                         R25 11
      166 DUPTABLE                         R26 K49 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["onScrubStarted"], ["onScrubEnded"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      167 SETTABLEKS                       R8 R26 K28 ["value"]
      169 GETUPVAL                         R27 12
      170 GETTABLEKS                       R27 R27 K50 ["Highlight"]
      172 SETTABLEKS                       R27 R26 K31 ["focusBehavior"]
      174 SETTABLEKS                       R15 R26 K32 ["formatAsString"]
      176 GETUPVAL                         R27 13
      177 GETTABLEKS                       R27 R27 K51 ["Contrast"]
      179 SETTABLEKS                       R27 R26 K33 ["variant"]
      181 GETUPVAL                         R27 14
      182 GETTABLEKS                       R27 R27 K52 ["On"]
      184 SETTABLEKS                       R27 R26 K34 ["scrubBehavior"]
      186 SETTABLEKS                       R9 R26 K35 ["onScrubStarted"]
      188 SETTABLEKS                       R10 R26 K36 ["onScrubEnded"]
      190 GETTABLEKS                       R27 R0 K53 ["readonly"]
      192 SETTABLEKS                       R27 R26 K37 ["isDisabled"]
      194 SETTABLEKS                       R11 R26 K38 ["onFocusGained"]
      196 SETTABLEKS                       R12 R26 K39 ["onChanged"]
      198 SETTABLEKS                       R14 R26 K40 ["onFocusLost"]
      200 SETTABLEKS                       R13 R26 K41 ["onTextChanged"]
      202 SETTABLEKS                       R17 R26 K13 ["step"]
      204 MOVE                             R27 R18
      205 JUMPIFNOT                        R27 ; [+2]
      206 GETTABLEKS                       R27 R18 K54 ["max"]
      208 SETTABLEKS                       R27 R26 K42 ["maximum"]
      210 MOVE                             R27 R18
      211 JUMPIFNOT                        R27 ; [+2]
      212 GETTABLEKS                       R27 R18 K55 ["min"]
      214 SETTABLEKS                       R27 R26 K43 ["minimum"]
      216 GETUPVAL                         R27 15
      217 GETTABLEKS                       R27 R27 K56 ["None"]
      219 SETTABLEKS                       R27 R26 K44 ["controlsVariant"]
      221 GETUPVAL                         R27 16
      222 GETTABLEKS                       R27 R27 K57 ["XSmall"]
      224 SETTABLEKS                       R27 R26 K45 ["size"]
      226 GETIMPORT                        R27 K60 [UDim.new]
      228 LOADN                            R28 1
      229 LOADN                            R29 0
      230 CALL                             R27 2 1
      231 SETTABLEKS                       R27 R26 K46 ["width"]
      233 CALL                             R24 2 1
      234 SETTABLEKS                       R24 R23 K25 ["Input"]
      236 GETTABLEKS                       R24 R0 K61 ["chip"]
      238 JUMPIFNOT                        R24 ; [+39]
      239 GETUPVAL                         R24 9
      240 LOADK                            R25 K62 ["Frame"]
      241 DUPTABLE                         R26 K70 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      242 GETTABLEKS                       R27 R0 K61 ["chip"]
      244 GETTABLEKS                       R27 R27 K71 ["color"]
      246 SETTABLEKS                       R27 R26 K63 ["BackgroundColor3"]
      248 GETIMPORT                        R27 K72 [UDim2.new]
      250 LOADN                            R28 0
      251 LOADN                            R29 2
      252 LOADK                            R30 K73 [0.5]
      253 LOADN                            R31 0
      254 CALL                             R27 4 1
      255 SETTABLEKS                       R27 R26 K19 ["Size"]
      257 GETIMPORT                        R27 K24 [UDim2.fromScale]
      259 LOADN                            R28 0
      260 LOADK                            R29 K73 [0.5]
      261 CALL                             R27 2 1
      262 SETTABLEKS                       R27 R26 K64 ["Position"]
      264 GETIMPORT                        R27 K75 [Vector2.new]
      266 LOADN                            R28 0
      267 LOADK                            R29 K73 [0.5]
      268 CALL                             R27 2 1
      269 SETTABLEKS                       R27 R26 K65 ["AnchorPoint"]
      271 DUPCLOSURE                       R29 K76 [PROTO_9]
      272 NAMECALL                         R27 R6 K5 ["map"]
      274 CALL                             R27 2 1
      275 SETTABLEKS                       R27 R26 K16 ["Visible"]
      277 CALL                             R24 2 1
      278 SETTABLEKS                       R24 R23 K26 ["Chip"]
      280 CALL                             R20 3 -1
      281 RETURN                           R20 -1

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
       63 GETTABLEKS                       R10 R0 K18 ["Components"]
       65 GETTABLEKS                       R10 R10 K10 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["Units"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K10 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["NumberDisplay"]
       76 GETTABLEKS                       R11 R11 K21 ["Formatting"]
       78 GETTABLEKS                       R11 R11 K22 ["formatForSingleInput"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R4 K23 ["Enums"]
       83 GETTABLEKS                       R11 R11 K24 ["ScrubBehavior"]
       85 GETTABLEKS                       R12 R7 K25 ["createElement"]
       87 GETTABLEKS                       R13 R4 K26 ["NumberInput"]
       89 GETTABLEKS                       R14 R4 K27 ["View"]
       91 GETTABLEKS                       R15 R4 K23 ["Enums"]
       93 GETTABLEKS                       R15 R15 K28 ["InputFocusBehavior"]
       95 GETTABLEKS                       R16 R4 K23 ["Enums"]
       97 GETTABLEKS                       R16 R16 K29 ["InputSize"]
       99 GETTABLEKS                       R17 R4 K23 ["Enums"]
      101 GETTABLEKS                       R17 R17 K30 ["InputVariant"]
      103 GETTABLEKS                       R18 R4 K23 ["Enums"]
      105 GETTABLEKS                       R18 R18 K31 ["NumberInputControlsVariant"]
      107 DUPCLOSURE                       R19 K32 [PROTO_10]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R16
      125 RETURN                           R19 1
