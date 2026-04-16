PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K0 ["current"]
       11 JUMPIFNOT                        R0 ; [+29]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K0 ["current"]
       15 GETTABLEKS                       R0 R1 K1 ["Text"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K2 ["fflagAnnotationsFixEditHeightAndCursor"]
       20 JUMPIFNOT                        R1 ; [+3]
       21 JUMPIFEQKS                       R0 K3 [""] ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K0 ["current"]
       27 NAMECALL                         R1 R1 K4 ["CaptureFocus"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K0 ["current"]
       33 SETTABLEKS                       R0 R1 K1 ["Text"]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K0 ["current"]
       38 LOADN                            R2 1
       39 SETTABLEKS                       R2 R1 K5 ["CursorPosition"]
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["Text"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 LENGTH                           R3 R0
       13 ADDK                             R2 R3 K2 [1]
       14 SETTABLEKS                       R2 R1 K3 ["CursorPosition"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+53]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+49]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETTABLEKS                       R0 R1 K1 ["TextFits"]
       11 JUMPIF                           R0 ; [+27]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["current"]
       15 GETTABLEKS                       R1 R2 K2 ["TextBounds"]
       17 GETTABLEKS                       R0 R1 K3 ["X"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["current"]
       22 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       24 GETTABLEKS                       R1 R2 K3 ["X"]
       26 JUMPIFNOTLE                      R0 R1 ; [+12]
       28 GETUPVAL                         R0 1
       29 LOADN                            R2 244
       30 GETUPVAL                         R4 2
       31 ADDK                             R3 R4 K5 [27]
       32 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       34 GETIMPORT                        R1 K8 [math.min]
       36 CALL                             R1 2 1
       37 CALL                             R0 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 1
       40 LOADN                            R3 18
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K0 ["current"]
       44 GETTABLEKS                       R5 R6 K2 ["TextBounds"]
       46 GETTABLEKS                       R4 R5 K10 ["Y"]
       48 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       50 GETIMPORT                        R2 K12 [math.max]
       52 CALL                             R2 2 1
       53 ADDK                             R1 R2 K9 [20]
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagAnnotationsFixEditHeightAndCursor"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 JUMPIFNOT                        R0 ; [+49]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["current"]
       14 GETTABLEKS                       R0 R1 K2 ["TextFits"]
       16 JUMPIF                           R0 ; [+27]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K1 ["current"]
       20 GETTABLEKS                       R1 R2 K3 ["TextBounds"]
       22 GETTABLEKS                       R0 R1 K4 ["X"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K1 ["current"]
       27 GETTABLEKS                       R2 R3 K5 ["AbsoluteSize"]
       29 GETTABLEKS                       R1 R2 K4 ["X"]
       31 JUMPIFNOTLE                      R0 R1 ; [+12]
       33 GETUPVAL                         R0 3
       34 LOADN                            R2 244
       35 GETUPVAL                         R4 4
       36 ADDK                             R3 R4 K6 [27]
       37 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       39 GETIMPORT                        R1 K9 [math.min]
       41 CALL                             R1 2 1
       42 CALL                             R0 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R0 3
       45 LOADN                            R3 18
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R6 R7 K1 ["current"]
       49 GETTABLEKS                       R5 R6 K3 ["TextBounds"]
       51 GETTABLEKS                       R4 R5 K11 ["Y"]
       53 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       55 GETIMPORT                        R2 K13 [math.max]
       57 CALL                             R2 2 1
       58 ADDK                             R1 R2 K10 [20]
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagAnnotationsFixEditHeightAndCursor"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["current"]
        9 JUMPIFNOT                        R1 ; [+13]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["current"]
       13 LOADK                            R3 K2 ["TextBounds"]
       14 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       16 CALL                             R1 2 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R1 R1 K4 ["Connect"]
       21 CALL                             R1 2 1
       22 MOVE                             R0 R1
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          REF R0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+26]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["current"]
       11 GETTABLEKS                       R0 R1 K1 ["CursorPosition"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K0 ["current"]
       16 GETTABLEKS                       R2 R3 K2 ["Text"]
       18 FASTCALL1                        STRING_LEN R2 ; [+2]
       19 GETIMPORT                        R1 K5 [string.len]
       21 CALL                             R1 1 1
       22 JUMPIFNOTLE                      R1 R0 ; [+11]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K0 ["current"]
       27 GETIMPORT                        R1 K8 [Vector2.new]
       29 LOADN                            R2 0
       30 GETUPVAL                         R3 2
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K9 ["CanvasPosition"]
       34 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 LOADK                            R3 K1 ["%c"]
        3 LOADK                            R4 K2 [""]
        4 NAMECALL                         R1 R1 K3 ["gsub"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Text"]
        9 GETTABLEKS                       R2 R0 K0 ["Text"]
       11 FASTCALL1                        STRING_LEN R2 ; [+2]
       12 GETIMPORT                        R1 K6 [string.len]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R3 0
       16 ADDK                             R2 R3 K7 [50]
       17 JUMPIFNOTLE                      R2 R1 ; [+5]
       19 GETUPVAL                         R1 1
       20 SETTABLEKS                       R1 R0 K0 ["Text"]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K8 ["OnTextChanged"]
       26 GETTABLEKS                       R2 R0 K0 ["Text"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnFocusChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnFocusChanged"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnFocusChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnFocusChanged"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K2 ["useRef"]
       16 LOADNIL                          R5
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K3 ["useState"]
       21 LOADN                            R6 38
       22 CALL                             R5 1 2
       23 GETTABLEKS                       R7 R2 K4 ["Text"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R10 0 2
       34 MOVE                             R11 R1
       35 GETTABLEKS                       R12 R2 K6 ["Key"]
       37 SETLIST                          R10 R11 2 [1]
       39 CALL                             R8 2 0
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R10 0 1
       47 GETTABLEKS                       R11 R3 K7 ["current"]
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 0
       52 NEWCLOSURE                       R8 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       59 NEWCLOSURE                       R10 P3
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R11 0 3
       67 GETTABLEKS                       R12 R3 K7 ["current"]
       69 MOVE                             R13 R7
       70 MOVE                             R14 R5
       71 SETLIST                          R11 R12 3 [1]
       73 CALL                             R9 2 0
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       77 NEWCLOSURE                       R10 P4
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 NEWTABLE                         R11 0 1
       83 GETTABLEKS                       R12 R3 K7 ["current"]
       85 SETLIST                          R11 R12 1 [1]
       87 CALL                             R9 2 0
       88 GETUPVAL                         R10 2
       89 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       91 NEWCLOSURE                       R10 P5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 NEWTABLE                         R11 0 3
       97 GETTABLEKS                       R12 R3 K7 ["current"]
       99 GETTABLEKS                       R13 R4 K7 ["current"]
      101 MOVE                             R14 R5
      102 SETLIST                          R11 R12 3 [1]
      104 CALL                             R9 2 0
      105 GETUPVAL                         R10 2
      106 GETTABLEKS                       R9 R10 K8 ["createElement"]
      108 LOADK                            R10 K9 ["CanvasGroup"]
      109 NEWTABLE                         R11 4 0
      111 GETTABLEKS                       R12 R2 K10 ["LayoutOrder"]
      113 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      115 GETTABLEKS                       R12 R2 K11 ["Size"]
      117 SETTABLEKS                       R12 R11 K11 ["Size"]
      119 GETUPVAL                         R13 2
      120 GETTABLEKS                       R12 R13 K12 ["Tag"]
      122 GETUPVAL                         R13 4
      123 LOADK                            R14 K13 ["Component-TextInput"]
      124 FASTCALL1                        STRING_LEN R7 ; [+3]
      125 MOVE                             R17 R7
      126 GETIMPORT                        R16 K16 [string.len]
      128 CALL                             R16 1 1
      129 GETUPVAL                         R17 5
      130 JUMPIFNOTLT                      R17 R16 ; [+3]
      132 LOADK                            R15 K17 ["Error"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R15
      135 CALL                             R13 2 1
      136 SETTABLE                         R13 R11 R12
      137 DUPTABLE                         R12 K20 [{"ScrollingFrame", "TaggingDropdown"}]
      138 GETUPVAL                         R14 2
      139 GETTABLEKS                       R13 R14 K8 ["createElement"]
      141 LOADK                            R14 K18 ["ScrollingFrame"]
      142 DUPTABLE                         R15 K23 [{"ref", "Size", "CanvasSize"}]
      143 SETTABLEKS                       R4 R15 K21 ["ref"]
      145 GETIMPORT                        R16 K26 [UDim2.new]
      147 LOADN                            R17 1
      148 LOADN                            R18 0
      149 LOADN                            R19 0
      150 GETTABLEKS                       R21 R2 K27 ["MaxHeight"]
      152 JUMPIFNOTEQKN                    R21 K28 [-1] ; [+3]
      154 MOVE                             R20 R5
      155 JUMP                             ; [+8]
      156 GETTABLEKS                       R22 R2 K27 ["MaxHeight"]
      158 FASTCALL2                        MATH_MIN R5 R22 ; [+4]
      160 MOVE                             R21 R5
      161 GETIMPORT                        R20 K31 [math.min]
      163 CALL                             R20 2 1
      164 CALL                             R16 4 1
      165 SETTABLEKS                       R16 R15 K11 ["Size"]
      167 GETIMPORT                        R16 K26 [UDim2.new]
      169 LOADN                            R17 1
      170 LOADN                            R18 0
      171 LOADN                            R19 0
      172 MOVE                             R20 R5
      173 CALL                             R16 4 1
      174 SETTABLEKS                       R16 R15 K22 ["CanvasSize"]
      176 DUPTABLE                         R16 K33 [{"InputBox"}]
      177 GETUPVAL                         R18 2
      178 GETTABLEKS                       R17 R18 K8 ["createElement"]
      180 LOADK                            R18 K34 ["TextBox"]
      181 NEWTABLE                         R19 16 0
      183 SETTABLEKS                       R3 R19 K21 ["ref"]
      185 SETTABLEKS                       R7 R19 K4 ["Text"]
      187 GETTABLEKS                       R20 R2 K35 ["PlaceholderText"]
      189 SETTABLEKS                       R20 R19 K35 ["PlaceholderText"]
      191 GETIMPORT                        R20 K26 [UDim2.new]
      193 LOADN                            R21 1
      194 LOADN                            R22 0
      195 LOADN                            R23 0
      196 MOVE                             R24 R5
      197 CALL                             R20 4 1
      198 SETTABLEKS                       R20 R19 K11 ["Size"]
      200 GETTABLEKS                       R21 R2 K36 ["Disabled"]
      202 NOT                              R20 R21
      203 SETTABLEKS                       R20 R19 K37 ["TextEditable"]
      205 GETUPVAL                         R22 2
      206 GETTABLEKS                       R21 R22 K38 ["Change"]
      208 GETTABLEKS                       R20 R21 K4 ["Text"]
      210 NEWCLOSURE                       R21 P6
      211 CAPTURE                          UPVAL U5
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R2
      214 SETTABLE                         R21 R19 R20
      215 GETUPVAL                         R22 2
      216 GETTABLEKS                       R21 R22 K39 ["Event"]
      218 GETTABLEKS                       R20 R21 K40 ["Focused"]
      220 NEWCLOSURE                       R21 P7
      221 CAPTURE                          VAL R2
      222 SETTABLE                         R21 R19 R20
      223 GETUPVAL                         R22 2
      224 GETTABLEKS                       R21 R22 K39 ["Event"]
      226 GETTABLEKS                       R20 R21 K41 ["FocusLost"]
      228 NEWCLOSURE                       R21 P8
      229 CAPTURE                          VAL R2
      230 SETTABLE                         R21 R19 R20
      231 GETUPVAL                         R21 2
      232 GETTABLEKS                       R20 R21 K12 ["Tag"]
      234 GETTABLEKS                       R22 R2 K36 ["Disabled"]
      236 JUMPIFNOT                        R22 ; [+2]
      237 LOADK                            R21 K36 ["Disabled"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R21
      240 SETTABLE                         R21 R19 R20
      241 CALL                             R17 2 1
      242 SETTABLEKS                       R17 R16 K32 ["InputBox"]
      244 CALL                             R13 3 1
      245 SETTABLEKS                       R13 R12 K18 ["ScrollingFrame"]
      247 GETUPVAL                         R14 2
      248 GETTABLEKS                       R13 R14 K8 ["createElement"]
      250 GETUPVAL                         R14 6
      251 DUPTABLE                         R15 K43 [{"InputBoxRef", "Text"}]
      252 SETTABLEKS                       R3 R15 K42 ["InputBoxRef"]
      254 SETTABLEKS                       R7 R15 K4 ["Text"]
      256 CALL                             R13 2 1
      257 SETTABLEKS                       R13 R12 K19 ["TaggingDropdown"]
      259 CALL                             R9 3 -1
      260 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Bin"]
       32 GETTABLEKS                       R6 R7 K11 ["Common"]
       34 GETTABLEKS                       R5 R6 K12 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R8 K14 ["Components"]
       43 GETTABLEKS                       R6 R7 K15 ["TaggingDropdown"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R2 K16 ["Styling"]
       48 GETTABLEKS                       R6 R7 K17 ["joinTags"]
       50 DUPTABLE                         R7 K21 [{"Size", "MaxHeight", "Disabled"}]
       51 GETIMPORT                        R8 K24 [UDim2.fromScale]
       53 LOADN                            R9 0
       54 LOADN                            R10 0
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K18 ["Size"]
       58 LOADN                            R8 250
       59 SETTABLEKS                       R8 R7 K19 ["MaxHeight"]
       61 LOADB                            R8 0
       62 SETTABLEKS                       R8 R7 K20 ["Disabled"]
       64 GETTABLEKS                       R8 R4 K25 ["fflagAnnotationsMaxTextLength"]
       66 DUPCLOSURE                       R9 K26 [PROTO_11]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 GETTABLEKS                       R10 R1 K27 ["forwardRef"]
       76 MOVE                             R11 R9
       77 CALL                             R10 1 -1
       78 RETURN                           R10 -1
