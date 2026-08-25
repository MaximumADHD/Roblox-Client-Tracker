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

PROTO_7:
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

PROTO_8:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_9:
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
       33 GETTABLEKS                       R8 R8 K0 ["useRef"]
       35 LOADB                            R9 0
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R11 0 1
       45 GETTABLEKS                       R12 R0 K6 ["onEditStart"]
       47 SETLIST                          R11 R12 1 [1]
       49 CALL                             R9 2 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R12 0 1
       58 GETTABLEKS                       R13 R0 K7 ["onEditFinish"]
       60 SETLIST                          R12 R13 1 [1]
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       66 NEWCLOSURE                       R12 P3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U2
       75 NEWTABLE                         R13 0 2
       77 GETTABLEKS                       R14 R0 K6 ["onEditStart"]
       79 GETTABLEKS                       R15 R0 K8 ["onChange"]
       81 SETLIST                          R13 R14 2 [1]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       87 NEWCLOSURE                       R13 P4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 NEWTABLE                         R14 0 3
       96 GETTABLEKS                       R15 R0 K6 ["onEditStart"]
       98 GETTABLEKS                       R16 R0 K8 ["onChange"]
      100 GETTABLEKS                       R17 R0 K7 ["onEditFinish"]
      102 SETLIST                          R14 R15 3 [1]
      104 CALL                             R12 2 1
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K9 ["useEventCallback"]
      108 NEWCLOSURE                       R14 P5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 CALL                             R13 1 1
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K5 ["useCallback"]
      116 NEWCLOSURE                       R15 P6
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U4
      124 NEWTABLE                         R16 0 2
      126 GETTABLEKS                       R17 R0 K8 ["onChange"]
      128 GETTABLEKS                       R18 R0 K7 ["onEditFinish"]
      130 SETLIST                          R16 R17 2 [1]
      132 CALL                             R14 2 1
      133 GETUPVAL                         R15 0
      134 GETTABLEKS                       R15 R15 K5 ["useCallback"]
      136 NEWCLOSURE                       R16 P7
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U1
      139 NEWTABLE                         R17 0 0
      141 CALL                             R15 2 1
      142 GETTABLEKS                       R16 R0 K10 ["slider"]
      144 JUMPIFNOT                        R16 ; [+4]
      145 GETTABLEKS                       R16 R0 K10 ["slider"]
      147 GETTABLEKS                       R16 R16 K11 ["step"]
      149 ORK                              R17 R16 K12 [1]
      150 GETTABLEKS                       R18 R0 K10 ["slider"]
      152 JUMPIFNOT                        R18 ; [+4]
      153 GETTABLEKS                       R18 R0 K10 ["slider"]
      155 GETTABLEKS                       R18 R18 K13 ["bounds"]
      157 GETTABLEKS                       R20 R0 K14 ["Visible"]
      159 JUMPIFEQKNIL                     R20 ; [+4]
      161 GETTABLEKS                       R19 R0 K14 ["Visible"]
      163 JUMP                             ; [+1]
      164 LOADB                            R19 1
      165 GETUPVAL                         R20 5
      166 GETUPVAL                         R21 6
      167 DUPTABLE                         R22 K19 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      168 GETIMPORT                        R23 K22 [UDim2.fromScale]
      170 LOADN                            R24 1
      171 LOADN                            R25 0
      172 CALL                             R23 2 1
      173 SETTABLEKS                       R23 R22 K17 ["Size"]
      175 GETTABLEKS                       R23 R0 K18 ["LayoutOrder"]
      177 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      179 SETTABLEKS                       R19 R22 K14 ["Visible"]
      181 DUPTABLE                         R23 K25 [{"Input", "Chip"}]
      182 GETUPVAL                         R24 5
      183 GETUPVAL                         R25 7
      184 DUPTABLE                         R26 K47 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["scrubBehavior"], ["onScrubStarted"], ["onScrubEnded"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["onTextChanged"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      185 SETTABLEKS                       R7 R26 K26 ["value"]
      187 GETUPVAL                         R27 8
      188 GETTABLEKS                       R27 R27 K48 ["Highlight"]
      190 SETTABLEKS                       R27 R26 K29 ["focusBehavior"]
      192 SETTABLEKS                       R15 R26 K30 ["formatAsString"]
      194 GETUPVAL                         R27 9
      195 GETTABLEKS                       R27 R27 K49 ["Contrast"]
      197 SETTABLEKS                       R27 R26 K31 ["variant"]
      199 GETUPVAL                         R27 10
      200 GETTABLEKS                       R27 R27 K50 ["On"]
      202 SETTABLEKS                       R27 R26 K32 ["scrubBehavior"]
      204 SETTABLEKS                       R9 R26 K33 ["onScrubStarted"]
      206 SETTABLEKS                       R10 R26 K34 ["onScrubEnded"]
      208 GETTABLEKS                       R27 R0 K51 ["readonly"]
      210 SETTABLEKS                       R27 R26 K35 ["isDisabled"]
      212 SETTABLEKS                       R11 R26 K36 ["onFocusGained"]
      214 SETTABLEKS                       R12 R26 K37 ["onChanged"]
      216 SETTABLEKS                       R14 R26 K38 ["onFocusLost"]
      218 SETTABLEKS                       R13 R26 K39 ["onTextChanged"]
      220 SETTABLEKS                       R17 R26 K11 ["step"]
      222 MOVE                             R27 R18
      223 JUMPIFNOT                        R27 ; [+2]
      224 GETTABLEKS                       R27 R18 K52 ["max"]
      226 SETTABLEKS                       R27 R26 K40 ["maximum"]
      228 MOVE                             R27 R18
      229 JUMPIFNOT                        R27 ; [+2]
      230 GETTABLEKS                       R27 R18 K53 ["min"]
      232 SETTABLEKS                       R27 R26 K41 ["minimum"]
      234 GETUPVAL                         R27 11
      235 GETTABLEKS                       R27 R27 K54 ["None"]
      237 SETTABLEKS                       R27 R26 K42 ["controlsVariant"]
      239 GETUPVAL                         R27 12
      240 GETTABLEKS                       R27 R27 K55 ["XSmall"]
      242 SETTABLEKS                       R27 R26 K43 ["size"]
      244 GETIMPORT                        R27 K58 [UDim.new]
      246 LOADN                            R28 1
      247 LOADN                            R29 0
      248 CALL                             R27 2 1
      249 SETTABLEKS                       R27 R26 K44 ["width"]
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K23 ["Input"]
      254 GETTABLEKS                       R24 R0 K59 ["chip"]
      256 JUMPIFNOT                        R24 ; [+39]
      257 GETUPVAL                         R24 5
      258 LOADK                            R25 K60 ["Frame"]
      259 DUPTABLE                         R26 K68 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      260 GETTABLEKS                       R27 R0 K59 ["chip"]
      262 GETTABLEKS                       R27 R27 K69 ["color"]
      264 SETTABLEKS                       R27 R26 K61 ["BackgroundColor3"]
      266 GETIMPORT                        R27 K70 [UDim2.new]
      268 LOADN                            R28 0
      269 LOADN                            R29 2
      270 LOADK                            R30 K71 [0.5]
      271 LOADN                            R31 0
      272 CALL                             R27 4 1
      273 SETTABLEKS                       R27 R26 K17 ["Size"]
      275 GETIMPORT                        R27 K22 [UDim2.fromScale]
      277 LOADN                            R28 0
      278 LOADK                            R29 K71 [0.5]
      279 CALL                             R27 2 1
      280 SETTABLEKS                       R27 R26 K62 ["Position"]
      282 GETIMPORT                        R27 K73 [Vector2.new]
      284 LOADN                            R28 0
      285 LOADK                            R29 K71 [0.5]
      286 CALL                             R27 2 1
      287 SETTABLEKS                       R27 R26 K63 ["AnchorPoint"]
      289 DUPCLOSURE                       R29 K74 [PROTO_8]
      290 NAMECALL                         R27 R5 K4 ["map"]
      292 CALL                             R27 2 1
      293 SETTABLEKS                       R27 R26 K14 ["Visible"]
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K24 ["Chip"]
      298 CALL                             R20 3 -1
      299 RETURN                           R20 -1

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
       84 DUPCLOSURE                       R16 K27 [PROTO_9]
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
