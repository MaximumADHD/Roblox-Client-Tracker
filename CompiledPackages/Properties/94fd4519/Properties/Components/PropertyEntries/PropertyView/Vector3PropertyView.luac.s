PROTO_0:
        0 LOADN                            R3 10
        1 ORK                              R4 R1 K0 [0]
        2 POW                              R2 R3 R4
        3 MUL                              R6 R0 R2
        4 ADDK                             R5 R6 K1 [0.5]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.floor]
        8 CALL                             R4 1 1
        9 DIV                              R3 R4 R2
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["current"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["SelectionStart"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K1 ["current"]
       17 GETUPVAL                         R3 2
       18 LENGTH                           R2 R3
       19 ADDK                             R1 R2 K3 [1]
       20 SETTABLEKS                       R1 R0 K4 ["CursorPosition"]
       22 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [string.gmatch]
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K3 ["([^,%s]+)"]
        6 CALL                             R1 2 3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R4
       12 GETIMPORT                        R6 K6 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 1 ; [-8]
       17 LENGTH                           R1 R0
       18 JUMPIFEQKN                       R1 K7 [3] ; [+12]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K8 ["finishEditing"]
       23 GETIMPORT                        R2 K12 [Enum.FinishRecordingOperation.Cancel]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 2
       27 LOADB                            R2 0
       28 CALL                             R1 1 0
       29 LOADB                            R1 0
       30 RETURN                           R1 1
       31 GETTABLEN                        R2 R0 1
       32 FASTCALL1                        TONUMBER R2 ; [+2]
       33 GETIMPORT                        R1 K14 [tonumber]
       35 CALL                             R1 1 1
       36 GETTABLEN                        R3 R0 2
       37 FASTCALL1                        TONUMBER R3 ; [+2]
       38 GETIMPORT                        R2 K14 [tonumber]
       40 CALL                             R2 1 1
       41 GETTABLEN                        R4 R0 3
       42 FASTCALL1                        TONUMBER R4 ; [+2]
       43 GETIMPORT                        R3 K14 [tonumber]
       45 CALL                             R3 1 1
       46 JUMPIFNOT                        R1 ; [+2]
       47 JUMPIFNOT                        R2 ; [+1]
       48 JUMPIF                           R3 ; [+8]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R4 R5 K8 ["finishEditing"]
       52 GETIMPORT                        R5 K12 [Enum.FinishRecordingOperation.Cancel]
       54 CALL                             R4 1 0
       55 LOADB                            R4 0
       56 RETURN                           R4 1
       57 JUMPIFNOT                        R1 ; [+49]
       58 JUMPIFNOT                        R2 ; [+48]
       59 JUMPIFNOT                        R3 ; [+47]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R4 R5 K15 ["setPart"]
       63 LOADK                            R5 K16 ["x"]
       64 MULK                             R9 R1 K17 [100]
       65 ADDK                             R8 R9 K18 [0.5]
       66 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       67 GETIMPORT                        R7 K21 [math.floor]
       69 CALL                             R7 1 1
       70 DIVK                             R6 R7 K17 [100]
       71 CALL                             R4 2 0
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R4 R5 K15 ["setPart"]
       75 LOADK                            R5 K22 ["y"]
       76 MULK                             R9 R2 K17 [100]
       77 ADDK                             R8 R9 K18 [0.5]
       78 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       79 GETIMPORT                        R7 K21 [math.floor]
       81 CALL                             R7 1 1
       82 DIVK                             R6 R7 K17 [100]
       83 CALL                             R4 2 0
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R4 R5 K15 ["setPart"]
       87 LOADK                            R5 K23 ["z"]
       88 MULK                             R9 R3 K17 [100]
       89 ADDK                             R8 R9 K18 [0.5]
       90 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       91 GETIMPORT                        R7 K21 [math.floor]
       93 CALL                             R7 1 1
       94 DIVK                             R6 R7 K17 [100]
       95 CALL                             R4 2 0
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R4 R5 K8 ["finishEditing"]
       99 GETIMPORT                        R5 K25 [Enum.FinishRecordingOperation.Commit]
      101 CALL                             R4 1 0
      102 GETUPVAL                         R4 2
      103 LOADB                            R5 0
      104 CALL                             R4 1 0
      105 LOADB                            R4 1
      106 RETURN                           R4 1
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R4 R5 K8 ["finishEditing"]
      110 GETIMPORT                        R5 K12 [Enum.FinishRecordingOperation.Cancel]
      112 CALL                             R4 1 0
      113 GETUPVAL                         R4 2
      114 LOADB                            R5 0
      115 CALL                             R4 1 0
      116 LOADB                            R4 0
      117 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPart"]
        3 LOADK                            R2 K1 ["x"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPart"]
        3 LOADK                            R2 K1 ["y"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPart"]
        3 LOADK                            R2 K1 ["z"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K1 ["info"]
        7 GETTABLEKS                       R2 R3 K2 ["parts"]
        9 GETTABLEKS                       R5 R0 K1 ["info"]
       11 GETTABLEKS                       R4 R5 K3 ["readonly"]
       13 NOT                              R3 R4
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 GETTABLEKS                       R12 R2 K5 ["x"]
       21 GETTABLEKS                       R7 R12 K6 ["value"]
       23 LOADK                            R8 K7 [", "]
       24 GETTABLEKS                       R12 R2 K8 ["y"]
       26 GETTABLEKS                       R9 R12 K6 ["value"]
       28 LOADK                            R10 K7 [", "]
       29 GETTABLEKS                       R12 R2 K9 ["z"]
       31 GETTABLEKS                       R11 R12 K6 ["value"]
       33 CONCAT                           R6 R7 R11
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K10 ["useCallback"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          REF R6
       41 NEWTABLE                         R9 0 1
       43 GETTABLEKS                       R10 R0 K11 ["beginEditingAsync"]
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K10 ["useCallback"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          REF R6
       53 NEWTABLE                         R10 0 1
       55 MOVE                             R11 R6
       56 SETLIST                          R10 R11 1 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R9 R10 K10 ["useCallback"]
       62 NEWCLOSURE                       R10 P2
       63 CAPTURE                          REF R6
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R5
       66 NEWTABLE                         R11 0 3
       68 MOVE                             R12 R6
       69 GETTABLEKS                       R13 R0 K12 ["setPart"]
       71 GETTABLEKS                       R14 R0 K13 ["finishEditing"]
       73 SETLIST                          R11 R12 3 [1]
       75 CALL                             R9 2 1
       76 JUMPIFNOT                        R4 ; [+36]
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R10 R11 K14 ["createElement"]
       80 GETUPVAL                         R11 1
       81 DUPTABLE                         R12 K24 [{"text", "textBoxRef", "isDisabled", "width", "onFocusGained", "onChanged", "onFocusLost", "size", "label"}]
       82 SETTABLEKS                       R6 R12 K15 ["text"]
       84 SETTABLEKS                       R1 R12 K16 ["textBoxRef"]
       86 NOT                              R13 R3
       87 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
       89 GETIMPORT                        R13 K27 [UDim.new]
       91 LOADN                            R14 1
       92 LOADN                            R15 0
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K18 ["width"]
       96 SETTABLEKS                       R7 R12 K19 ["onFocusGained"]
       98 SETTABLEKS                       R8 R12 K20 ["onChanged"]
      100 SETTABLEKS                       R9 R12 K21 ["onFocusLost"]
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R13 R14 K28 ["XSmall"]
      105 SETTABLEKS                       R13 R12 K22 ["size"]
      107 LOADK                            R13 K29 [""]
      108 SETTABLEKS                       R13 R12 K23 ["label"]
      110 CALL                             R10 2 -1
      111 CLOSEUPVALS                      R6
      112 RETURN                           R10 -1
      113 GETUPVAL                         R10 3
      114 CALL                             R10 0 1
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R11 R12 K14 ["createElement"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R12 R13 K30 ["Fragment"]
      121 NEWTABLE                         R13 0 0
      123 DUPTABLE                         R14 K34 [{"X", "Y", "Z"}]
      124 GETUPVAL                         R16 0
      125 GETTABLEKS                       R15 R16 K14 ["createElement"]
      127 GETUPVAL                         R16 4
      128 DUPTABLE                         R17 K41 [{"layoutOrder", "size", "color", "editable", "value", "onFocusGained", "onChange", "onFocusLost", "step", "multiple"}]
      129 MOVE                             R18 R10
      130 CALL                             R18 0 1
      131 SETTABLEKS                       R18 R17 K35 ["layoutOrder"]
      133 GETIMPORT                        R18 K27 [UDim.new]
      135 LOADK                            R19 K42 [0.33]
      136 LOADN                            R20 0
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K22 ["size"]
      140 GETIMPORT                        R18 K45 [Color3.fromHex]
      142 LOADK                            R19 K46 ["#DF281F"]
      143 CALL                             R18 1 1
      144 SETTABLEKS                       R18 R17 K36 ["color"]
      146 SETTABLEKS                       R3 R17 K37 ["editable"]
      148 GETTABLEKS                       R19 R2 K5 ["x"]
      150 GETTABLEKS                       R18 R19 K6 ["value"]
      152 SETTABLEKS                       R18 R17 K6 ["value"]
      154 NEWCLOSURE                       R18 P3
      155 CAPTURE                          VAL R0
      156 SETTABLEKS                       R18 R17 K19 ["onFocusGained"]
      158 NEWCLOSURE                       R18 P4
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R18 R17 K38 ["onChange"]
      162 NEWCLOSURE                       R18 P5
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R18 R17 K21 ["onFocusLost"]
      166 LOADN                            R18 1
      167 SETTABLEKS                       R18 R17 K39 ["step"]
      169 GETTABLEKS                       R19 R2 K5 ["x"]
      171 GETTABLEKS                       R18 R19 K40 ["multiple"]
      173 SETTABLEKS                       R18 R17 K40 ["multiple"]
      175 CALL                             R15 2 1
      176 SETTABLEKS                       R15 R14 K31 ["X"]
      178 GETUPVAL                         R16 0
      179 GETTABLEKS                       R15 R16 K14 ["createElement"]
      181 GETUPVAL                         R16 4
      182 DUPTABLE                         R17 K41 [{"layoutOrder", "size", "color", "editable", "value", "onFocusGained", "onChange", "onFocusLost", "step", "multiple"}]
      183 MOVE                             R18 R10
      184 CALL                             R18 0 1
      185 SETTABLEKS                       R18 R17 K35 ["layoutOrder"]
      187 GETIMPORT                        R18 K27 [UDim.new]
      189 LOADK                            R19 K42 [0.33]
      190 LOADN                            R20 0
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K22 ["size"]
      194 GETIMPORT                        R18 K45 [Color3.fromHex]
      196 LOADK                            R19 K47 ["#39C582"]
      197 CALL                             R18 1 1
      198 SETTABLEKS                       R18 R17 K36 ["color"]
      200 SETTABLEKS                       R3 R17 K37 ["editable"]
      202 GETTABLEKS                       R19 R2 K8 ["y"]
      204 GETTABLEKS                       R18 R19 K6 ["value"]
      206 SETTABLEKS                       R18 R17 K6 ["value"]
      208 NEWCLOSURE                       R18 P6
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R18 R17 K19 ["onFocusGained"]
      212 NEWCLOSURE                       R18 P7
      213 CAPTURE                          VAL R0
      214 SETTABLEKS                       R18 R17 K38 ["onChange"]
      216 NEWCLOSURE                       R18 P8
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R18 R17 K21 ["onFocusLost"]
      220 LOADN                            R18 1
      221 SETTABLEKS                       R18 R17 K39 ["step"]
      223 GETTABLEKS                       R19 R2 K8 ["y"]
      225 GETTABLEKS                       R18 R19 K40 ["multiple"]
      227 SETTABLEKS                       R18 R17 K40 ["multiple"]
      229 CALL                             R15 2 1
      230 SETTABLEKS                       R15 R14 K32 ["Y"]
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R15 R16 K14 ["createElement"]
      235 GETUPVAL                         R16 4
      236 DUPTABLE                         R17 K41 [{"layoutOrder", "size", "color", "editable", "value", "onFocusGained", "onChange", "onFocusLost", "step", "multiple"}]
      237 MOVE                             R18 R10
      238 CALL                             R18 0 1
      239 SETTABLEKS                       R18 R17 K35 ["layoutOrder"]
      241 GETIMPORT                        R18 K27 [UDim.new]
      243 LOADK                            R19 K42 [0.33]
      244 LOADN                            R20 0
      245 CALL                             R18 2 1
      246 SETTABLEKS                       R18 R17 K22 ["size"]
      248 GETIMPORT                        R18 K45 [Color3.fromHex]
      250 LOADK                            R19 K48 ["#2F7AC6"]
      251 CALL                             R18 1 1
      252 SETTABLEKS                       R18 R17 K36 ["color"]
      254 SETTABLEKS                       R3 R17 K37 ["editable"]
      256 GETTABLEKS                       R19 R2 K9 ["z"]
      258 GETTABLEKS                       R18 R19 K6 ["value"]
      260 SETTABLEKS                       R18 R17 K6 ["value"]
      262 NEWCLOSURE                       R18 P9
      263 CAPTURE                          VAL R0
      264 SETTABLEKS                       R18 R17 K19 ["onFocusGained"]
      266 NEWCLOSURE                       R18 P10
      267 CAPTURE                          VAL R0
      268 SETTABLEKS                       R18 R17 K38 ["onChange"]
      270 NEWCLOSURE                       R18 P11
      271 CAPTURE                          VAL R0
      272 SETTABLEKS                       R18 R17 K21 ["onFocusLost"]
      274 LOADN                            R18 1
      275 SETTABLEKS                       R18 R17 K39 ["step"]
      277 GETTABLEKS                       R19 R2 K9 ["z"]
      279 GETTABLEKS                       R18 R19 K40 ["multiple"]
      281 SETTABLEKS                       R18 R17 K40 ["multiple"]
      283 CALL                             R15 2 1
      284 SETTABLEKS                       R15 R14 K33 ["Z"]
      286 CALL                             R11 3 -1
      287 CLOSEUPVALS                      R6
      288 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["TextInput"]
       23 GETTABLEKS                       R5 R1 K10 ["Enums"]
       25 GETTABLEKS                       R4 R5 K11 ["InputSize"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Components"]
       31 GETTABLEKS                       R6 R7 K13 ["NumberPartInput"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K14 ["PropertyEditorTypes"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R9 R0 K6 ["Parent"]
       43 GETTABLEKS                       R8 R9 K15 ["React"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R2 K16 ["createNextOrder"]
       48 DUPCLOSURE                       R9 K17 [PROTO_0]
       49 DUPCLOSURE                       R10 K18 [PROTO_13]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R5
       55 RETURN                           R10 1
