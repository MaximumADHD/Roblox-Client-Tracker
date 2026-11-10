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
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEdit"]
        3 DUPTABLE                         R1 K3 [{["type"] = "Commit"}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       30 GETTABLEKS                       R0 R0 K4 ["onEdit"]
       32 DUPTABLE                         R1 K7 [{["type"] = "Capture"}]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 GETTABLEKS                       R0 R0 K8 ["onFocusGained"]
       37 JUMPIFNOT                        R0 ; [+4]
       38 GETUPVAL                         R0 6
       39 GETTABLEKS                       R0 R0 K8 ["onFocusGained"]
       41 CALL                             R0 0 0
       42 GETUPVAL                         R0 7
       43 JUMPIFNOT                        R0 ; [+9]
       44 GETUPVAL                         R0 6
       45 GETTABLEKS                       R0 R0 K2 ["propertyPart"]
       47 NAMECALL                         R0 R0 K0 ["getValue"]
       49 CALL                             R0 1 1
       50 GETTABLEKS                       R0 R0 K3 ["multiple"]
       52 JUMPIF                           R0 ; [+11]
       53 GETUPVAL                         R0 6
       54 GETTABLEKS                       R0 R0 K4 ["onEdit"]
       56 DUPTABLE                         R1 K11 [{["type"] = "Stage", ["value"]}]
       57 GETUPVAL                         R2 2
       58 NAMECALL                         R2 R2 K0 ["getValue"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K10 ["value"]
       63 CALL                             R0 1 0
       64 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["Drag"] ; [+17]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Utility"]
        5 GETTABLEKS                       R2 R2 K2 ["Flags"]
        7 GETTABLEKS                       R2 R2 K3 ["FoundationNumberInputScrubCallbackProps"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["onEdit"]
       13 DUPTABLE                         R3 K8 [{["type"] = "Stage", ["value"]}]
       14 SETTABLEKS                       R0 R3 K7 ["value"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOTEQKS                    R1 K9 ["Keyboard"] ; [+35]
       20 GETUPVAL                         R2 2
       21 NAMECALL                         R2 R2 K10 ["getValue"]
       23 CALL                             R2 1 1
       24 JUMPIFNOT                        R2 ; [+29]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K11 ["current"]
       28 JUMPIFNOT                        R2 ; [+11]
       29 GETUPVAL                         R2 4
       30 NAMECALL                         R2 R2 K10 ["getValue"]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQ                      R0 R2 ; [+6]
       35 GETUPVAL                         R2 3
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K11 ["current"]
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 3
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K11 ["current"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K4 ["onEdit"]
       47 DUPTABLE                         R3 K8 [{["type"] = "Stage", ["value"]}]
       48 SETTABLEKS                       R0 R3 K7 ["value"]
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 5
       52 SETTABLEKS                       R0 R2 K11 ["current"]
       54 RETURN                           R0 0

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
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        6 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        8 JUMPIFNOTEQ                      R1 R2 ; [+17]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K5 ["onEdit"]
       17 DUPTABLE                         R2 K8 [{["type"] = "Cancel"}]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K5 ["onEdit"]
       23 DUPTABLE                         R2 K10 [{["type"] = "Commit"}]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+91]
       28 GETUPVAL                         R1 4
       29 JUMPIFNOT                        R1 ; [+37]
       30 GETUPVAL                         R1 5
       31 GETTABLEKS                       R1 R1 K4 ["current"]
       33 JUMPIFEQKNIL                     R1 ; [+100]
       35 GETUPVAL                         R2 6
       36 GETTABLEKS                       R2 R2 K11 ["predictOrCreateExpression"]
       38 MOVE                             R3 R1
       39 DUPCLOSURE                       R4 K12 [PROTO_6]
       40 CAPTURE                          UPVAL U7
       41 CALL                             R2 2 1
       42 GETTABLEKS                       R3 R2 K6 ["type"]
       44 JUMPIFNOTEQKS                    R3 K13 ["error"] ; [+8]
       46 GETUPVAL                         R3 8
       47 GETTABLEKS                       R3 R3 K14 ["warn"]
       49 GETTABLEKS                       R4 R2 K15 ["warning"]
       51 CALL                             R3 1 0
       52 JUMP                             ; [+81]
       53 GETTABLEKS                       R3 R2 K16 ["value"]
       55 JUMPIFEQKNIL                     R3 ; [+78]
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R3 R3 K5 ["onEdit"]
       60 DUPTABLE                         R4 K18 [{["type"] = "Stage", ["value"]}]
       61 GETTABLEKS                       R5 R2 K16 ["value"]
       63 SETTABLEKS                       R5 R4 K16 ["value"]
       65 CALL                             R3 1 0
       66 JUMP                             ; [+67]
       67 GETUPVAL                         R1 5
       68 GETTABLEKS                       R1 R1 K4 ["current"]
       70 JUMPIFNOT                        R1 ; [+7]
       71 GETUPVAL                         R2 5
       72 GETTABLEKS                       R2 R2 K4 ["current"]
       74 FASTCALL1                        TONUMBER R2 ; [+2]
       75 GETIMPORT                        R1 K20 [tonumber]
       77 CALL                             R1 1 1
       78 GETUPVAL                         R2 9
       79 GETTABLEKS                       R2 R2 K4 ["current"]
       81 JUMPIFEQKNIL                     R2 ; [+17]
       83 GETUPVAL                         R2 9
       84 GETTABLEKS                       R2 R2 K4 ["current"]
       86 JUMPIFNOTEQ                      R1 R2 ; [+12]
       88 GETUPVAL                         R2 2
       89 GETTABLEKS                       R2 R2 K5 ["onEdit"]
       91 DUPTABLE                         R3 K18 [{["type"] = "Stage", ["value"]}]
       92 GETUPVAL                         R4 9
       93 GETTABLEKS                       R4 R4 K4 ["current"]
       95 SETTABLEKS                       R4 R3 K16 ["value"]
       97 CALL                             R2 1 0
       98 JUMP                             ; [+35]
       99 GETUPVAL                         R2 5
      100 GETTABLEKS                       R2 R2 K4 ["current"]
      102 JUMPIFEQKNIL                     R2 ; [+31]
      104 GETUPVAL                         R2 2
      105 GETTABLEKS                       R2 R2 K5 ["onEdit"]
      107 DUPTABLE                         R3 K18 [{["type"] = "Stage", ["value"]}]
      108 GETUPVAL                         R4 6
      109 GETTABLEKS                       R4 R4 K21 ["createExpressionFromText"]
      111 GETUPVAL                         R5 5
      112 GETTABLEKS                       R5 R5 K4 ["current"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K16 ["value"]
      117 CALL                             R2 1 0
      118 JUMP                             ; [+15]
      119 GETUPVAL                         R1 9
      120 GETTABLEKS                       R1 R1 K4 ["current"]
      122 JUMPIFEQKNIL                     R1 ; [+11]
      124 GETUPVAL                         R1 2
      125 GETTABLEKS                       R1 R1 K5 ["onEdit"]
      127 DUPTABLE                         R2 K18 [{["type"] = "Stage", ["value"]}]
      128 GETUPVAL                         R3 9
      129 GETTABLEKS                       R3 R3 K4 ["current"]
      131 SETTABLEKS                       R3 R2 K16 ["value"]
      133 CALL                             R1 1 0
      134 GETUPVAL                         R1 2
      135 GETTABLEKS                       R1 R1 K5 ["onEdit"]
      137 DUPTABLE                         R2 K10 [{["type"] = "Commit"}]
      138 CALL                             R1 1 0
      139 RETURN                           R0 0

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
       44 DUPCLOSURE                       R10 K7 [PROTO_1]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       49 NEWCLOSURE                       R11 P2
       50 CAPTURE                          VAL R0
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K6 ["useEventCallback"]
       55 NEWCLOSURE                       R12 P3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U5
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K8 ["useCallback"]
       68 NEWCLOSURE                       R13 P4
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 NEWTABLE                         R14 0 1
       77 GETTABLEKS                       R15 R0 K9 ["onEdit"]
       79 SETLIST                          R14 R15 1 [1]
       81 CALL                             R12 2 1
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R13 R13 K6 ["useEventCallback"]
       85 NEWCLOSURE                       R14 P5
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CALL                             R13 1 1
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K6 ["useEventCallback"]
       93 NEWCLOSURE                       R15 P6
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          VAL R4
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U1
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R3
      104 CALL                             R14 1 1
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      108 NEWCLOSURE                       R16 P7
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U3
      112 NEWTABLE                         R17 0 1
      114 GETTABLEKS                       R18 R0 K10 ["unit"]
      116 SETLIST                          R17 R18 1 [1]
      118 CALL                             R15 2 1
      119 GETTABLEKS                       R16 R0 K11 ["slider"]
      121 JUMPIFNOT                        R16 ; [+4]
      122 GETTABLEKS                       R16 R0 K11 ["slider"]
      124 GETTABLEKS                       R16 R16 K12 ["step"]
      126 GETTABLEKS                       R18 R0 K10 ["unit"]
      128 JUMPIFNOT                        R18 ; [+7]
      129 GETUPVAL                         R17 2
      130 GETTABLEKS                       R17 R17 K13 ["toStepSize"]
      132 GETTABLEKS                       R18 R0 K10 ["unit"]
      134 CALL                             R17 1 1
      135 JUMP                             ; [+1]
      136 LOADN                            R17 1
      137 OR                               R18 R16 R17
      138 GETTABLEKS                       R19 R0 K11 ["slider"]
      140 JUMPIFNOT                        R19 ; [+4]
      141 GETTABLEKS                       R19 R0 K11 ["slider"]
      143 GETTABLEKS                       R19 R19 K14 ["bounds"]
      145 GETTABLEKS                       R21 R0 K15 ["Visible"]
      147 JUMPIFEQKNIL                     R21 ; [+4]
      149 GETTABLEKS                       R20 R0 K15 ["Visible"]
      151 JUMP                             ; [+1]
      152 LOADB                            R20 1
      153 GETUPVAL                         R21 9
      154 GETUPVAL                         R22 10
      155 DUPTABLE                         R23 K20 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      156 GETIMPORT                        R24 K23 [UDim2.fromScale]
      158 LOADN                            R25 1
      159 LOADN                            R26 0
      160 CALL                             R24 2 1
      161 SETTABLEKS                       R24 R23 K18 ["Size"]
      163 GETTABLEKS                       R24 R0 K19 ["LayoutOrder"]
      165 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      167 SETTABLEKS                       R20 R23 K15 ["Visible"]
      169 DUPTABLE                         R24 K26 [{"Input", "Chip"}]
      170 GETUPVAL                         R25 9
      171 GETUPVAL                         R26 11
      172 DUPTABLE                         R27 K48 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["onScrubStarted"], ["onScrubEnded"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      173 SETTABLEKS                       R8 R27 K27 ["value"]
      175 GETUPVAL                         R28 12
      176 GETTABLEKS                       R28 R28 K49 ["Highlight"]
      178 SETTABLEKS                       R28 R27 K30 ["focusBehavior"]
      180 SETTABLEKS                       R15 R27 K31 ["formatAsString"]
      182 GETUPVAL                         R28 13
      183 GETTABLEKS                       R28 R28 K50 ["Contrast"]
      185 SETTABLEKS                       R28 R27 K32 ["variant"]
      187 GETUPVAL                         R28 14
      188 GETTABLEKS                       R28 R28 K51 ["On"]
      190 SETTABLEKS                       R28 R27 K33 ["scrubBehavior"]
      192 SETTABLEKS                       R9 R27 K34 ["onScrubStarted"]
      194 SETTABLEKS                       R10 R27 K35 ["onScrubEnded"]
      196 GETTABLEKS                       R28 R0 K52 ["readonly"]
      198 SETTABLEKS                       R28 R27 K36 ["isDisabled"]
      200 SETTABLEKS                       R11 R27 K37 ["onFocusGained"]
      202 SETTABLEKS                       R12 R27 K38 ["onChanged"]
      204 SETTABLEKS                       R14 R27 K39 ["onFocusLost"]
      206 SETTABLEKS                       R13 R27 K40 ["onTextChanged"]
      208 SETTABLEKS                       R18 R27 K12 ["step"]
      210 MOVE                             R28 R19
      211 JUMPIFNOT                        R28 ; [+2]
      212 GETTABLEKS                       R28 R19 K53 ["max"]
      214 SETTABLEKS                       R28 R27 K41 ["maximum"]
      216 MOVE                             R28 R19
      217 JUMPIFNOT                        R28 ; [+2]
      218 GETTABLEKS                       R28 R19 K54 ["min"]
      220 SETTABLEKS                       R28 R27 K42 ["minimum"]
      222 GETUPVAL                         R28 15
      223 GETTABLEKS                       R28 R28 K55 ["None"]
      225 SETTABLEKS                       R28 R27 K43 ["controlsVariant"]
      227 GETUPVAL                         R28 16
      228 GETTABLEKS                       R28 R28 K56 ["XSmall"]
      230 SETTABLEKS                       R28 R27 K44 ["size"]
      232 GETIMPORT                        R28 K59 [UDim.new]
      234 LOADN                            R29 1
      235 LOADN                            R30 0
      236 CALL                             R28 2 1
      237 SETTABLEKS                       R28 R27 K45 ["width"]
      239 CALL                             R25 2 1
      240 SETTABLEKS                       R25 R24 K24 ["Input"]
      242 GETTABLEKS                       R25 R0 K60 ["chip"]
      244 JUMPIFNOT                        R25 ; [+39]
      245 GETUPVAL                         R25 9
      246 LOADK                            R26 K61 ["Frame"]
      247 DUPTABLE                         R27 K69 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      248 GETTABLEKS                       R28 R0 K60 ["chip"]
      250 GETTABLEKS                       R28 R28 K70 ["color"]
      252 SETTABLEKS                       R28 R27 K62 ["BackgroundColor3"]
      254 GETIMPORT                        R28 K71 [UDim2.new]
      256 LOADN                            R29 0
      257 LOADN                            R30 2
      258 LOADK                            R31 K72 [0.5]
      259 LOADN                            R32 0
      260 CALL                             R28 4 1
      261 SETTABLEKS                       R28 R27 K18 ["Size"]
      263 GETIMPORT                        R28 K23 [UDim2.fromScale]
      265 LOADN                            R29 0
      266 LOADK                            R30 K72 [0.5]
      267 CALL                             R28 2 1
      268 SETTABLEKS                       R28 R27 K63 ["Position"]
      270 GETIMPORT                        R28 K74 [Vector2.new]
      272 LOADN                            R29 0
      273 LOADK                            R30 K72 [0.5]
      274 CALL                             R28 2 1
      275 SETTABLEKS                       R28 R27 K64 ["AnchorPoint"]
      277 DUPCLOSURE                       R30 K75 [PROTO_9]
      278 NAMECALL                         R28 R6 K5 ["map"]
      280 CALL                             R28 2 1
      281 SETTABLEKS                       R28 R27 K15 ["Visible"]
      283 CALL                             R25 2 1
      284 SETTABLEKS                       R25 R24 K25 ["Chip"]
      286 CALL                             R21 3 -1
      287 RETURN                           R21 -1

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
       63 GETTABLEKS                       R10 R0 K18 ["RpcTypes"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K19 ["Components"]
       70 GETTABLEKS                       R11 R11 K10 ["Util"]
       72 GETTABLEKS                       R11 R11 K20 ["Units"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Util"]
       79 GETTABLEKS                       R12 R12 K21 ["NumberDisplay"]
       81 GETTABLEKS                       R12 R12 K22 ["Formatting"]
       83 GETTABLEKS                       R12 R12 K23 ["formatForSingleInput"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R4 K24 ["Enums"]
       88 GETTABLEKS                       R12 R12 K25 ["ScrubBehavior"]
       90 GETTABLEKS                       R13 R7 K26 ["createElement"]
       92 GETTABLEKS                       R14 R4 K27 ["NumberInput"]
       94 GETTABLEKS                       R15 R4 K28 ["View"]
       96 GETTABLEKS                       R16 R4 K24 ["Enums"]
       98 GETTABLEKS                       R16 R16 K29 ["InputFocusBehavior"]
      100 GETTABLEKS                       R17 R4 K24 ["Enums"]
      102 GETTABLEKS                       R17 R17 K30 ["InputSize"]
      104 GETTABLEKS                       R18 R4 K24 ["Enums"]
      106 GETTABLEKS                       R18 R18 K31 ["InputVariant"]
      108 GETTABLEKS                       R19 R4 K24 ["Enums"]
      110 GETTABLEKS                       R19 R19 K32 ["NumberInputControlsVariant"]
      112 DUPCLOSURE                       R20 K33 [PROTO_10]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R17
      130 GETTABLEKS                       R21 R7 K34 ["memo"]
      132 MOVE                             R22 R20
      133 CALL                             R21 1 -1
      134 RETURN                           R21 -1
