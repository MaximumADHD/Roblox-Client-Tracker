PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K0 ["current"]
       11 JUMPIFNOT                        R0 ; [+25]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K0 ["current"]
       15 GETTABLEKS                       R0 R1 K1 ["Text"]
       17 JUMPIFEQKS                       R0 K2 [""] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["current"]
       23 NAMECALL                         R1 R1 K3 ["CaptureFocus"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K0 ["current"]
       29 SETTABLEKS                       R0 R1 K1 ["Text"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R1 R2 K0 ["current"]
       34 LOADN                            R2 1
       35 SETTABLEKS                       R2 R1 K4 ["CursorPosition"]
       37 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

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
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 LOADK                            R3 K1 ["TextBounds"]
        9 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R1 R1 K3 ["Connect"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          REF R0
       20 CLOSEUPVALS                      R0
       21 RETURN                           R1 1

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
       31 NEWTABLE                         R10 0 2
       33 MOVE                             R11 R1
       34 GETTABLEKS                       R12 R2 K6 ["Key"]
       36 SETLIST                          R10 R11 2 [1]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R10 0 1
       46 GETTABLEKS                       R11 R3 K7 ["current"]
       48 SETLIST                          R10 R11 1 [1]
       50 CALL                             R8 2 0
       51 NEWCLOSURE                       R8 P2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       58 NEWCLOSURE                       R10 P3
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R11 0 3
       62 GETTABLEKS                       R12 R3 K7 ["current"]
       64 MOVE                             R13 R7
       65 MOVE                             R14 R5
       66 SETLIST                          R11 R12 3 [1]
       68 CALL                             R9 2 0
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       72 NEWCLOSURE                       R10 P4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 NEWTABLE                         R11 0 1
       77 GETTABLEKS                       R12 R3 K7 ["current"]
       79 SETLIST                          R11 R12 1 [1]
       81 CALL                             R9 2 0
       82 GETUPVAL                         R10 2
       83 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       85 NEWCLOSURE                       R10 P5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R11 0 3
       91 GETTABLEKS                       R12 R3 K7 ["current"]
       93 GETTABLEKS                       R13 R4 K7 ["current"]
       95 MOVE                             R14 R5
       96 SETLIST                          R11 R12 3 [1]
       98 CALL                             R9 2 0
       99 GETUPVAL                         R10 2
      100 GETTABLEKS                       R9 R10 K8 ["createElement"]
      102 LOADK                            R10 K9 ["CanvasGroup"]
      103 NEWTABLE                         R11 4 0
      105 GETTABLEKS                       R12 R2 K10 ["LayoutOrder"]
      107 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      109 GETTABLEKS                       R12 R2 K11 ["Size"]
      111 SETTABLEKS                       R12 R11 K11 ["Size"]
      113 GETUPVAL                         R13 2
      114 GETTABLEKS                       R12 R13 K12 ["Tag"]
      116 GETUPVAL                         R13 3
      117 LOADK                            R14 K13 ["Component-TextInput"]
      118 FASTCALL1                        STRING_LEN R7 ; [+3]
      119 MOVE                             R17 R7
      120 GETIMPORT                        R16 K16 [string.len]
      122 CALL                             R16 1 1
      123 GETUPVAL                         R17 4
      124 JUMPIFNOTLT                      R17 R16 ; [+3]
      126 LOADK                            R15 K17 ["Error"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R15
      129 CALL                             R13 2 1
      130 SETTABLE                         R13 R11 R12
      131 DUPTABLE                         R12 K20 [{"ScrollingFrame", "TaggingDropdown"}]
      132 GETUPVAL                         R14 2
      133 GETTABLEKS                       R13 R14 K8 ["createElement"]
      135 LOADK                            R14 K18 ["ScrollingFrame"]
      136 DUPTABLE                         R15 K23 [{"ref", "Size", "CanvasSize"}]
      137 SETTABLEKS                       R4 R15 K21 ["ref"]
      139 GETIMPORT                        R16 K26 [UDim2.new]
      141 LOADN                            R17 1
      142 LOADN                            R18 0
      143 LOADN                            R19 0
      144 GETTABLEKS                       R21 R2 K27 ["MaxHeight"]
      146 JUMPIFNOTEQKN                    R21 K28 [-1] ; [+3]
      148 MOVE                             R20 R5
      149 JUMP                             ; [+8]
      150 GETTABLEKS                       R22 R2 K27 ["MaxHeight"]
      152 FASTCALL2                        MATH_MIN R5 R22 ; [+4]
      154 MOVE                             R21 R5
      155 GETIMPORT                        R20 K31 [math.min]
      157 CALL                             R20 2 1
      158 CALL                             R16 4 1
      159 SETTABLEKS                       R16 R15 K11 ["Size"]
      161 GETIMPORT                        R16 K26 [UDim2.new]
      163 LOADN                            R17 1
      164 LOADN                            R18 0
      165 LOADN                            R19 0
      166 MOVE                             R20 R5
      167 CALL                             R16 4 1
      168 SETTABLEKS                       R16 R15 K22 ["CanvasSize"]
      170 DUPTABLE                         R16 K33 [{"InputBox"}]
      171 GETUPVAL                         R18 2
      172 GETTABLEKS                       R17 R18 K8 ["createElement"]
      174 LOADK                            R18 K34 ["TextBox"]
      175 NEWTABLE                         R19 16 0
      177 SETTABLEKS                       R3 R19 K21 ["ref"]
      179 SETTABLEKS                       R7 R19 K4 ["Text"]
      181 GETTABLEKS                       R20 R2 K35 ["PlaceholderText"]
      183 SETTABLEKS                       R20 R19 K35 ["PlaceholderText"]
      185 GETIMPORT                        R20 K26 [UDim2.new]
      187 LOADN                            R21 1
      188 LOADN                            R22 0
      189 LOADN                            R23 0
      190 MOVE                             R24 R5
      191 CALL                             R20 4 1
      192 SETTABLEKS                       R20 R19 K11 ["Size"]
      194 GETTABLEKS                       R21 R2 K36 ["Disabled"]
      196 NOT                              R20 R21
      197 SETTABLEKS                       R20 R19 K37 ["TextEditable"]
      199 GETUPVAL                         R22 2
      200 GETTABLEKS                       R21 R22 K38 ["Change"]
      202 GETTABLEKS                       R20 R21 K4 ["Text"]
      204 NEWCLOSURE                       R21 P6
      205 CAPTURE                          UPVAL U4
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R2
      208 SETTABLE                         R21 R19 R20
      209 GETUPVAL                         R22 2
      210 GETTABLEKS                       R21 R22 K39 ["Event"]
      212 GETTABLEKS                       R20 R21 K40 ["Focused"]
      214 NEWCLOSURE                       R21 P7
      215 CAPTURE                          VAL R2
      216 SETTABLE                         R21 R19 R20
      217 GETUPVAL                         R22 2
      218 GETTABLEKS                       R21 R22 K39 ["Event"]
      220 GETTABLEKS                       R20 R21 K41 ["FocusLost"]
      222 NEWCLOSURE                       R21 P8
      223 CAPTURE                          VAL R2
      224 SETTABLE                         R21 R19 R20
      225 GETUPVAL                         R21 2
      226 GETTABLEKS                       R20 R21 K12 ["Tag"]
      228 GETTABLEKS                       R22 R2 K36 ["Disabled"]
      230 JUMPIFNOT                        R22 ; [+2]
      231 LOADK                            R21 K36 ["Disabled"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R21
      234 SETTABLE                         R21 R19 R20
      235 CALL                             R17 2 1
      236 SETTABLEKS                       R17 R16 K32 ["InputBox"]
      238 CALL                             R13 3 1
      239 SETTABLEKS                       R13 R12 K18 ["ScrollingFrame"]
      241 GETUPVAL                         R14 2
      242 GETTABLEKS                       R13 R14 K8 ["createElement"]
      244 GETUPVAL                         R14 5
      245 DUPTABLE                         R15 K43 [{"InputBoxRef", "Text"}]
      246 SETTABLEKS                       R3 R15 K42 ["InputBoxRef"]
      248 SETTABLEKS                       R7 R15 K4 ["Text"]
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K19 ["TaggingDropdown"]
      253 CALL                             R9 3 -1
      254 RETURN                           R9 -1

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
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 GETTABLEKS                       R10 R1 K27 ["forwardRef"]
       75 MOVE                             R11 R9
       76 CALL                             R10 1 -1
       77 RETURN                           R10 -1
