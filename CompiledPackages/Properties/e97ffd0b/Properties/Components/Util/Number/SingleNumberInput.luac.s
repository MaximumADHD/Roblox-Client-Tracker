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

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["Drag"] ; [+17]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["onEditStart"]
        5 CALL                             R2 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["onChange"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["onEditFinish"]
       14 GETIMPORT                        R3 K7 [Enum.FinishRecordingOperation.Commit]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOTEQKS                    R1 K8 ["Keyboard"] ; [+33]
       20 GETUPVAL                         R2 1
       21 NAMECALL                         R2 R2 K9 ["getValue"]
       23 CALL                             R2 1 1
       24 JUMPIFNOT                        R2 ; [+27]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K10 ["current"]
       28 JUMPIFNOT                        R2 ; [+11]
       29 GETUPVAL                         R2 3
       30 NAMECALL                         R2 R2 K9 ["getValue"]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQ                      R0 R2 ; [+6]
       35 GETUPVAL                         R2 2
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K10 ["current"]
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 2
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K10 ["current"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K2 ["onChange"]
       47 MOVE                             R3 R0
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 4
       50 SETTABLEKS                       R0 R2 K10 ["current"]
       52 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       29 JUMPIFNOT                        R1 ; [+46]
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R1 R1 K4 ["current"]
       33 JUMPIFNOT                        R1 ; [+7]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K4 ["current"]
       37 FASTCALL1                        TONUMBER R2 ; [+2]
       38 GETIMPORT                        R1 K11 [tonumber]
       40 CALL                             R1 1 1
       41 GETUPVAL                         R2 5
       42 GETTABLEKS                       R2 R2 K4 ["current"]
       44 JUMPIFEQKNIL                     R2 ; [+14]
       46 GETUPVAL                         R2 5
       47 GETTABLEKS                       R2 R2 K4 ["current"]
       49 JUMPIFNOTEQ                      R1 R2 ; [+9]
       51 GETUPVAL                         R2 2
       52 GETTABLEKS                       R2 R2 K5 ["onChange"]
       54 GETUPVAL                         R3 5
       55 GETTABLEKS                       R3 R3 K4 ["current"]
       57 CALL                             R2 1 0
       58 JUMP                             ; [+29]
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R2 R2 K4 ["current"]
       62 JUMPIFEQKNIL                     R2 ; [+25]
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R2 R2 K5 ["onChange"]
       67 GETUPVAL                         R3 6
       68 GETTABLEKS                       R3 R3 K12 ["createExpressionFromText"]
       70 GETUPVAL                         R4 4
       71 GETTABLEKS                       R4 R4 K4 ["current"]
       73 CALL                             R3 1 -1
       74 CALL                             R2 -1 0
       75 JUMP                             ; [+12]
       76 GETUPVAL                         R1 5
       77 GETTABLEKS                       R1 R1 K4 ["current"]
       79 JUMPIFEQKNIL                     R1 ; [+8]
       81 GETUPVAL                         R1 2
       82 GETTABLEKS                       R1 R1 K5 ["onChange"]
       84 GETUPVAL                         R2 5
       85 GETTABLEKS                       R2 R2 K4 ["current"]
       87 CALL                             R1 1 0
       88 GETUPVAL                         R1 2
       89 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       91 GETIMPORT                        R2 K14 [Enum.FinishRecordingOperation.Commit]
       93 CALL                             R1 1 0
       94 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["useRef"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K1 ["useBinding"]
       23 LOADB                            R6 0
       24 CALL                             R5 1 2
       25 GETTABLEKS                       R7 R0 K2 ["propertyPart"]
       27 DUPCLOSURE                       R9 K3 [PROTO_0]
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R7 R7 K4 ["map"]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U2
       44 NEWTABLE                         R10 0 2
       46 GETTABLEKS                       R11 R0 K6 ["onEditStart"]
       48 GETTABLEKS                       R12 R0 K7 ["onChange"]
       50 SETLIST                          R10 R11 2 [1]
       52 CALL                             R8 2 1
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R11 0 3
       64 GETTABLEKS                       R12 R0 K6 ["onEditStart"]
       66 GETTABLEKS                       R13 R0 K7 ["onChange"]
       68 GETTABLEKS                       R14 R0 K8 ["onEditFinish"]
       70 SETLIST                          R11 R12 3 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K9 ["useEventCallback"]
       76 NEWCLOSURE                       R11 P3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R3
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       84 NEWCLOSURE                       R12 P4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U4
       92 NEWTABLE                         R13 0 2
       94 GETTABLEKS                       R14 R0 K7 ["onChange"]
       96 GETTABLEKS                       R15 R0 K8 ["onEditFinish"]
       98 SETLIST                          R13 R14 2 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K5 ["useCallback"]
      104 NEWCLOSURE                       R13 P5
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U1
      107 NEWTABLE                         R14 0 0
      109 CALL                             R12 2 1
      110 GETTABLEKS                       R13 R0 K10 ["slider"]
      112 JUMPIFNOT                        R13 ; [+4]
      113 GETTABLEKS                       R13 R0 K10 ["slider"]
      115 GETTABLEKS                       R13 R13 K11 ["step"]
      117 ORK                              R14 R13 K12 [1]
      118 GETTABLEKS                       R15 R0 K10 ["slider"]
      120 JUMPIFNOT                        R15 ; [+4]
      121 GETTABLEKS                       R15 R0 K10 ["slider"]
      123 GETTABLEKS                       R15 R15 K13 ["bounds"]
      125 GETTABLEKS                       R17 R0 K14 ["Visible"]
      127 JUMPIFEQKNIL                     R17 ; [+4]
      129 GETTABLEKS                       R16 R0 K14 ["Visible"]
      131 JUMP                             ; [+1]
      132 LOADB                            R16 1
      133 GETUPVAL                         R17 5
      134 GETUPVAL                         R18 6
      135 DUPTABLE                         R19 K19 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      136 GETIMPORT                        R20 K22 [UDim2.fromScale]
      138 LOADN                            R21 1
      139 LOADN                            R22 0
      140 CALL                             R20 2 1
      141 SETTABLEKS                       R20 R19 K17 ["Size"]
      143 GETTABLEKS                       R20 R0 K18 ["LayoutOrder"]
      145 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      147 SETTABLEKS                       R16 R19 K14 ["Visible"]
      149 DUPTABLE                         R20 K25 [{"Input", "Chip"}]
      150 GETUPVAL                         R21 5
      151 GETUPVAL                         R22 7
      152 DUPTABLE                         R23 K45 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      153 SETTABLEKS                       R7 R23 K26 ["value"]
      155 GETUPVAL                         R24 8
      156 GETTABLEKS                       R24 R24 K46 ["Highlight"]
      158 SETTABLEKS                       R24 R23 K29 ["focusBehavior"]
      160 SETTABLEKS                       R12 R23 K30 ["formatAsString"]
      162 GETUPVAL                         R24 9
      163 GETTABLEKS                       R24 R24 K47 ["Contrast"]
      165 SETTABLEKS                       R24 R23 K31 ["variant"]
      167 GETUPVAL                         R24 10
      168 GETTABLEKS                       R24 R24 K48 ["On"]
      170 SETTABLEKS                       R24 R23 K32 ["scrubBehavior"]
      172 GETTABLEKS                       R24 R0 K49 ["readonly"]
      174 SETTABLEKS                       R24 R23 K33 ["isDisabled"]
      176 SETTABLEKS                       R8 R23 K34 ["onFocusGained"]
      178 SETTABLEKS                       R9 R23 K35 ["onChanged"]
      180 SETTABLEKS                       R11 R23 K36 ["onFocusLost"]
      182 SETTABLEKS                       R10 R23 K37 ["onTextChanged"]
      184 SETTABLEKS                       R14 R23 K11 ["step"]
      186 MOVE                             R24 R15
      187 JUMPIFNOT                        R24 ; [+2]
      188 GETTABLEKS                       R24 R15 K50 ["max"]
      190 SETTABLEKS                       R24 R23 K38 ["maximum"]
      192 MOVE                             R24 R15
      193 JUMPIFNOT                        R24 ; [+2]
      194 GETTABLEKS                       R24 R15 K51 ["min"]
      196 SETTABLEKS                       R24 R23 K39 ["minimum"]
      198 GETUPVAL                         R24 11
      199 GETTABLEKS                       R24 R24 K52 ["None"]
      201 SETTABLEKS                       R24 R23 K40 ["controlsVariant"]
      203 GETUPVAL                         R24 12
      204 GETTABLEKS                       R24 R24 K53 ["XSmall"]
      206 SETTABLEKS                       R24 R23 K41 ["size"]
      208 GETIMPORT                        R24 K56 [UDim.new]
      210 LOADN                            R25 1
      211 LOADN                            R26 0
      212 CALL                             R24 2 1
      213 SETTABLEKS                       R24 R23 K42 ["width"]
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K23 ["Input"]
      218 GETTABLEKS                       R21 R0 K57 ["chip"]
      220 JUMPIFNOT                        R21 ; [+39]
      221 GETUPVAL                         R21 5
      222 LOADK                            R22 K58 ["Frame"]
      223 DUPTABLE                         R23 K66 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      224 GETTABLEKS                       R24 R0 K57 ["chip"]
      226 GETTABLEKS                       R24 R24 K67 ["color"]
      228 SETTABLEKS                       R24 R23 K59 ["BackgroundColor3"]
      230 GETIMPORT                        R24 K68 [UDim2.new]
      232 LOADN                            R25 0
      233 LOADN                            R26 2
      234 LOADK                            R27 K69 [0.5]
      235 LOADN                            R28 0
      236 CALL                             R24 4 1
      237 SETTABLEKS                       R24 R23 K17 ["Size"]
      239 GETIMPORT                        R24 K22 [UDim2.fromScale]
      241 LOADN                            R25 0
      242 LOADK                            R26 K69 [0.5]
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K60 ["Position"]
      246 GETIMPORT                        R24 K71 [Vector2.new]
      248 LOADN                            R25 0
      249 LOADK                            R26 K69 [0.5]
      250 CALL                             R24 2 1
      251 SETTABLEKS                       R24 R23 K61 ["AnchorPoint"]
      253 DUPCLOSURE                       R26 K72 [PROTO_6]
      254 NAMECALL                         R24 R5 K4 ["map"]
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K14 ["Visible"]
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K24 ["Chip"]
      262 CALL                             R17 3 -1
      263 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Expressions"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["LuauExpressionsEnabled"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K15 ["NumberDisplay"]
       53 GETTABLEKS                       R8 R8 K16 ["Formatting"]
       55 GETTABLEKS                       R8 R8 K17 ["formatForSingleInput"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K18 ["Enums"]
       60 GETTABLEKS                       R8 R8 K19 ["ScrubBehavior"]
       62 GETTABLEKS                       R9 R5 K20 ["createElement"]
       64 GETTABLEKS                       R10 R2 K21 ["NumberInput"]
       66 GETTABLEKS                       R11 R2 K22 ["View"]
       68 GETTABLEKS                       R12 R2 K18 ["Enums"]
       70 GETTABLEKS                       R12 R12 K23 ["InputFocusBehavior"]
       72 GETTABLEKS                       R13 R2 K18 ["Enums"]
       74 GETTABLEKS                       R13 R13 K24 ["InputSize"]
       76 GETTABLEKS                       R14 R2 K18 ["Enums"]
       78 GETTABLEKS                       R14 R14 K25 ["InputVariant"]
       80 GETTABLEKS                       R15 R2 K18 ["Enums"]
       82 GETTABLEKS                       R15 R15 K26 ["NumberInputControlsVariant"]
       84 DUPCLOSURE                       R16 K27 [PROTO_7]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R13
       98 RETURN                           R16 1
