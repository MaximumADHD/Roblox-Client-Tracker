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
        1 GETTABLEKS                       R0 R0 K0 ["onEdit"]
        3 DUPTABLE                         R1 K3 [{["type"] = "Commit"}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       39 DUPCLOSURE                       R4 K12 [PROTO_5]
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

PROTO_7:
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

PROTO_8:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_9:
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
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U5
       59 CALL                             R10 1 1
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       63 NEWCLOSURE                       R12 P3
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R13 0 1
       72 GETTABLEKS                       R14 R0 K8 ["onEdit"]
       74 SETLIST                          R13 R14 1 [1]
       76 CALL                             R11 2 1
       77 GETUPVAL                         R12 4
       78 GETTABLEKS                       R12 R12 K6 ["useEventCallback"]
       80 NEWCLOSURE                       R13 P4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 CALL                             R12 1 1
       85 GETUPVAL                         R13 4
       86 GETTABLEKS                       R13 R13 K6 ["useEventCallback"]
       88 NEWCLOSURE                       R14 P5
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 CALL                             R13 1 1
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      103 NEWCLOSURE                       R15 P6
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          UPVAL U3
      107 NEWTABLE                         R16 0 1
      109 GETTABLEKS                       R17 R0 K9 ["unit"]
      111 SETLIST                          R16 R17 1 [1]
      113 CALL                             R14 2 1
      114 GETTABLEKS                       R15 R0 K10 ["slider"]
      116 JUMPIFNOT                        R15 ; [+4]
      117 GETTABLEKS                       R15 R0 K10 ["slider"]
      119 GETTABLEKS                       R15 R15 K11 ["step"]
      121 ORK                              R16 R15 K12 [1]
      122 GETTABLEKS                       R17 R0 K10 ["slider"]
      124 JUMPIFNOT                        R17 ; [+4]
      125 GETTABLEKS                       R17 R0 K10 ["slider"]
      127 GETTABLEKS                       R17 R17 K13 ["bounds"]
      129 GETTABLEKS                       R19 R0 K14 ["Visible"]
      131 JUMPIFEQKNIL                     R19 ; [+4]
      133 GETTABLEKS                       R18 R0 K14 ["Visible"]
      135 JUMP                             ; [+1]
      136 LOADB                            R18 1
      137 GETUPVAL                         R19 9
      138 GETUPVAL                         R20 10
      139 DUPTABLE                         R21 K19 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      140 GETIMPORT                        R22 K22 [UDim2.fromScale]
      142 LOADN                            R23 1
      143 LOADN                            R24 0
      144 CALL                             R22 2 1
      145 SETTABLEKS                       R22 R21 K17 ["Size"]
      147 GETTABLEKS                       R22 R0 K18 ["LayoutOrder"]
      149 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      151 SETTABLEKS                       R18 R21 K14 ["Visible"]
      153 DUPTABLE                         R22 K25 [{"Input", "Chip"}]
      154 GETUPVAL                         R23 9
      155 GETUPVAL                         R24 11
      156 DUPTABLE                         R25 K46 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["onScrubEnded"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      157 SETTABLEKS                       R8 R25 K26 ["value"]
      159 GETUPVAL                         R26 12
      160 GETTABLEKS                       R26 R26 K47 ["Highlight"]
      162 SETTABLEKS                       R26 R25 K29 ["focusBehavior"]
      164 SETTABLEKS                       R14 R25 K30 ["formatAsString"]
      166 GETUPVAL                         R26 13
      167 GETTABLEKS                       R26 R26 K48 ["Contrast"]
      169 SETTABLEKS                       R26 R25 K31 ["variant"]
      171 GETUPVAL                         R26 14
      172 GETTABLEKS                       R26 R26 K49 ["On"]
      174 SETTABLEKS                       R26 R25 K32 ["scrubBehavior"]
      176 SETTABLEKS                       R9 R25 K33 ["onScrubEnded"]
      178 GETTABLEKS                       R26 R0 K50 ["readonly"]
      180 SETTABLEKS                       R26 R25 K34 ["isDisabled"]
      182 SETTABLEKS                       R10 R25 K35 ["onFocusGained"]
      184 SETTABLEKS                       R11 R25 K36 ["onChanged"]
      186 SETTABLEKS                       R13 R25 K37 ["onFocusLost"]
      188 SETTABLEKS                       R12 R25 K38 ["onTextChanged"]
      190 SETTABLEKS                       R16 R25 K11 ["step"]
      192 MOVE                             R26 R17
      193 JUMPIFNOT                        R26 ; [+2]
      194 GETTABLEKS                       R26 R17 K51 ["max"]
      196 SETTABLEKS                       R26 R25 K39 ["maximum"]
      198 MOVE                             R26 R17
      199 JUMPIFNOT                        R26 ; [+2]
      200 GETTABLEKS                       R26 R17 K52 ["min"]
      202 SETTABLEKS                       R26 R25 K40 ["minimum"]
      204 GETUPVAL                         R26 15
      205 GETTABLEKS                       R26 R26 K53 ["None"]
      207 SETTABLEKS                       R26 R25 K41 ["controlsVariant"]
      209 GETUPVAL                         R26 16
      210 GETTABLEKS                       R26 R26 K54 ["XSmall"]
      212 SETTABLEKS                       R26 R25 K42 ["size"]
      214 GETIMPORT                        R26 K57 [UDim.new]
      216 LOADN                            R27 1
      217 LOADN                            R28 0
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K43 ["width"]
      221 CALL                             R23 2 1
      222 SETTABLEKS                       R23 R22 K23 ["Input"]
      224 GETTABLEKS                       R23 R0 K58 ["chip"]
      226 JUMPIFNOT                        R23 ; [+39]
      227 GETUPVAL                         R23 9
      228 LOADK                            R24 K59 ["Frame"]
      229 DUPTABLE                         R25 K67 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      230 GETTABLEKS                       R26 R0 K58 ["chip"]
      232 GETTABLEKS                       R26 R26 K68 ["color"]
      234 SETTABLEKS                       R26 R25 K60 ["BackgroundColor3"]
      236 GETIMPORT                        R26 K69 [UDim2.new]
      238 LOADN                            R27 0
      239 LOADN                            R28 2
      240 LOADK                            R29 K70 [0.5]
      241 LOADN                            R30 0
      242 CALL                             R26 4 1
      243 SETTABLEKS                       R26 R25 K17 ["Size"]
      245 GETIMPORT                        R26 K22 [UDim2.fromScale]
      247 LOADN                            R27 0
      248 LOADK                            R28 K70 [0.5]
      249 CALL                             R26 2 1
      250 SETTABLEKS                       R26 R25 K61 ["Position"]
      252 GETIMPORT                        R26 K72 [Vector2.new]
      254 LOADN                            R27 0
      255 LOADK                            R28 K70 [0.5]
      256 CALL                             R26 2 1
      257 SETTABLEKS                       R26 R25 K62 ["AnchorPoint"]
      259 DUPCLOSURE                       R28 K73 [PROTO_8]
      260 NAMECALL                         R26 R6 K5 ["map"]
      262 CALL                             R26 2 1
      263 SETTABLEKS                       R26 R25 K14 ["Visible"]
      265 CALL                             R23 2 1
      266 SETTABLEKS                       R23 R22 K24 ["Chip"]
      268 CALL                             R19 3 -1
      269 RETURN                           R19 -1

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
      112 DUPCLOSURE                       R20 K33 [PROTO_9]
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
      130 RETURN                           R20 1
