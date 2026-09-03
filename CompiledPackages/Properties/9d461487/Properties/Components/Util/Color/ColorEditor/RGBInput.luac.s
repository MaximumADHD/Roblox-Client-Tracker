PROTO_0:
        0 MULK                             R3 R0 K0 [255]
        1 FASTCALL1                        MATH_ROUND R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.round]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K5 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["multiple"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["-"]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K2 ["value"]
        7 MULK                             R5 R2 K3 [255]
        8 FASTCALL1                        MATH_ROUND R5 ; [+2]
        9 GETIMPORT                        R4 K6 [math.round]
       11 CALL                             R4 1 1
       12 FASTCALL1                        TOSTRING R4 ; [+2]
       13 GETIMPORT                        R3 K8 [tostring]
       15 CALL                             R3 1 1
       16 MOVE                             R1 R3
       17 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 LOADK                            R4 K2 ["%."]
       10 NAMECALL                         R2 R0 K3 ["find"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 DIVK                             R1 R1 K4 [255]
       16 LOADN                            R4 0
       17 LOADN                            R5 1
       18 FASTCALL3                        MATH_CLAMP R1 R4 R5
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K7 [math.clamp]
       23 CALL                             R2 3 1
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 LOADK                            R1 K1 [","]
        9 LOADK                            R4 K2 ["%."]
       10 LOADK                            R5 K0 [""]
       11 NAMECALL                         R2 R0 K3 ["gsub"]
       13 CALL                             R2 3 2
       14 LOADK                            R6 K1 [","]
       15 NAMECALL                         R4 R0 K4 ["find"]
       17 CALL                             R4 2 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+5]
       20 LOADN                            R4 1
       21 JUMPIFNOTLT                      R4 R3 ; [+2]
       23 LOADK                            R1 K2 ["%."]
       24 NEWTABLE                         R4 0 0
       26 GETIMPORT                        R5 K7 [string.gmatch]
       28 MOVE                             R6 R0
       29 LOADK                            R8 K8 ["([^"]
       30 MOVE                             R9 R1
       31 LOADK                            R10 K9 ["]+)"]
       32 CONCAT                           R7 R8 R10
       33 CALL                             R5 2 3
       34 FORGPREP                         R5
       35 LOADK                            R15 K10 ["^%s*(.-)%s*$"]
       36 NAMECALL                         R13 R8 K11 ["match"]
       38 CALL                             R13 2 1
       39 ORK                              R12 R13 K0 [""]
       40 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       42 MOVE                             R11 R4
       43 GETIMPORT                        R10 K14 [table.insert]
       45 CALL                             R10 2 0
       46 FORGLOOP                         R5 1 ; [-12]
       48 LENGTH                           R5 R4
       49 JUMPIFNOTEQKN                    R5 K15 [1] ; [+37]
       51 GETTABLEN                        R7 R4 1
       52 FASTCALL1                        TONUMBER R7 ; [+3]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K17 [tonumber]
       56 CALL                             R8 1 1
       57 JUMPIFNOTEQKNIL                  R8 ; [+3]
       59 LOADNIL                          R6
       60 JUMP                             ; [+16]
       61 LOADK                            R11 K2 ["%."]
       62 NAMECALL                         R9 R7 K4 ["find"]
       64 CALL                             R9 2 1
       65 JUMPIFNOTEQKNIL                  R9 ; [+2]
       67 DIVK                             R8 R8 K18 [255]
       68 LOADN                            R11 0
       69 LOADN                            R12 1
       70 FASTCALL3                        MATH_CLAMP R8 R11 R12
       72 MOVE                             R10 R8
       73 GETIMPORT                        R9 K21 [math.clamp]
       75 CALL                             R9 3 1
       76 MOVE                             R6 R9
       77 JUMPIFEQKNIL                     R6 ; [+103]
       79 GETIMPORT                        R7 K24 [Color3.new]
       81 MOVE                             R8 R6
       82 MOVE                             R9 R6
       83 MOVE                             R10 R6
       84 CALL                             R7 3 -1
       85 RETURN                           R7 -1
       86 JUMP                             ; [+94]
       87 LOADN                            R6 3
       88 JUMPIFNOTLE                      R6 R5 ; [+92]
       90 GETTABLEN                        R7 R4 1
       91 FASTCALL1                        TONUMBER R7 ; [+3]
       92 MOVE                             R9 R7
       93 GETIMPORT                        R8 K17 [tonumber]
       95 CALL                             R8 1 1
       96 JUMPIFNOTEQKNIL                  R8 ; [+3]
       98 LOADNIL                          R6
       99 JUMP                             ; [+16]
      100 LOADK                            R11 K2 ["%."]
      101 NAMECALL                         R9 R7 K4 ["find"]
      103 CALL                             R9 2 1
      104 JUMPIFNOTEQKNIL                  R9 ; [+2]
      106 DIVK                             R8 R8 K18 [255]
      107 LOADN                            R11 0
      108 LOADN                            R12 1
      109 FASTCALL3                        MATH_CLAMP R8 R11 R12
      111 MOVE                             R10 R8
      112 GETIMPORT                        R9 K21 [math.clamp]
      114 CALL                             R9 3 1
      115 MOVE                             R6 R9
      116 GETTABLEN                        R8 R4 2
      117 FASTCALL1                        TONUMBER R8 ; [+3]
      118 MOVE                             R10 R8
      119 GETIMPORT                        R9 K17 [tonumber]
      121 CALL                             R9 1 1
      122 JUMPIFNOTEQKNIL                  R9 ; [+3]
      124 LOADNIL                          R7
      125 JUMP                             ; [+16]
      126 LOADK                            R12 K2 ["%."]
      127 NAMECALL                         R10 R8 K4 ["find"]
      129 CALL                             R10 2 1
      130 JUMPIFNOTEQKNIL                  R10 ; [+2]
      132 DIVK                             R9 R9 K18 [255]
      133 LOADN                            R12 0
      134 LOADN                            R13 1
      135 FASTCALL3                        MATH_CLAMP R9 R12 R13
      137 MOVE                             R11 R9
      138 GETIMPORT                        R10 K21 [math.clamp]
      140 CALL                             R10 3 1
      141 MOVE                             R7 R10
      142 GETTABLEN                        R9 R4 3
      143 FASTCALL1                        TONUMBER R9 ; [+3]
      144 MOVE                             R11 R9
      145 GETIMPORT                        R10 K17 [tonumber]
      147 CALL                             R10 1 1
      148 JUMPIFNOTEQKNIL                  R10 ; [+3]
      150 LOADNIL                          R8
      151 JUMP                             ; [+16]
      152 LOADK                            R13 K2 ["%."]
      153 NAMECALL                         R11 R9 K4 ["find"]
      155 CALL                             R11 2 1
      156 JUMPIFNOTEQKNIL                  R11 ; [+2]
      158 DIVK                             R10 R10 K18 [255]
      159 LOADN                            R13 0
      160 LOADN                            R14 1
      161 FASTCALL3                        MATH_CLAMP R10 R13 R14
      163 MOVE                             R12 R10
      164 GETIMPORT                        R11 K21 [math.clamp]
      166 CALL                             R11 3 1
      167 MOVE                             R8 R11
      168 JUMPIFEQKNIL                     R6 ; [+12]
      170 JUMPIFEQKNIL                     R7 ; [+10]
      172 JUMPIFEQKNIL                     R8 ; [+8]
      174 GETIMPORT                        R9 K24 [Color3.new]
      176 MOVE                             R10 R6
      177 MOVE                             R11 R7
      178 MOVE                             R12 R8
      179 CALL                             R9 3 -1
      180 RETURN                           R9 -1
      181 GETIMPORT                        R6 K26 [warn]
      183 LOADK                            R7 K27 ["Couldn't convert input to a color"]
      184 CALL                             R6 1 0
      185 LOADNIL                          R6
      186 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["rPart"]
        4 GETTABLEKS                       R3 R2 K1 ["multiple"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R1 K2 ["-"]
        8 JUMP                             ; [+12]
        9 GETTABLEKS                       R3 R2 K3 ["value"]
       11 MULK                             R6 R3 K4 [255]
       12 FASTCALL1                        MATH_ROUND R6 ; [+2]
       13 GETIMPORT                        R5 K7 [math.round]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K9 [tostring]
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gPart"]
        4 GETTABLEKS                       R3 R2 K1 ["multiple"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R1 K2 ["-"]
        8 JUMP                             ; [+12]
        9 GETTABLEKS                       R3 R2 K3 ["value"]
       11 MULK                             R6 R3 K4 [255]
       12 FASTCALL1                        MATH_ROUND R6 ; [+2]
       13 GETIMPORT                        R5 K7 [math.round]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K9 [tostring]
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["bPart"]
        4 GETTABLEKS                       R3 R2 K1 ["multiple"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R1 K2 ["-"]
        8 JUMP                             ; [+12]
        9 GETTABLEKS                       R3 R2 K3 ["value"]
       11 MULK                             R6 R3 K4 [255]
       12 FASTCALL1                        MATH_ROUND R6 ; [+2]
       13 GETIMPORT                        R5 K7 [math.round]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K9 [tostring]
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["rPart"]
        7 GETTABLEKS                       R1 R1 K2 ["multiple"]
        9 JUMPIF                           R1 ; [+12]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["gPart"]
       13 GETTABLEKS                       R1 R1 K2 ["multiple"]
       15 JUMPIF                           R1 ; [+6]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K4 ["bPart"]
       19 GETTABLEKS                       R1 R1 K2 ["multiple"]
       21 JUMPIFNOT                        R1 ; [+4]
       22 LOADK                            R1 K5 [""]
       23 SETTABLEKS                       R1 R0 K6 ["Text"]
       25 JUMP                             ; [+19]
       26 LOADK                            R2 K7 ["%*, %*, %*"]
       27 GETUPVAL                         R4 2
       28 NAMECALL                         R4 R4 K8 ["getValue"]
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 3
       32 NAMECALL                         R5 R5 K8 ["getValue"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 4
       36 NAMECALL                         R6 R6 K8 ["getValue"]
       38 CALL                             R6 1 1
       39 NAMECALL                         R2 R2 K9 ["format"]
       41 CALL                             R2 4 1
       42 MOVE                             R1 R2
       43 SETTABLEKS                       R1 R0 K6 ["Text"]
       45 GETTABLEKS                       R3 R0 K6 ["Text"]
       47 LENGTH                           R2 R3
       48 ADDK                             R1 R2 K10 [1]
       49 SETTABLEKS                       R1 R0 K11 ["CursorPosition"]
       51 LOADN                            R1 1
       52 SETTABLEKS                       R1 R0 K12 ["SelectionStart"]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K13 ["onFocused"]
       57 JUMPIFEQKNIL                     R1 ; [+6]
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K13 ["onFocused"]
       62 MOVE                             R2 R0
       63 CALL                             R1 1 0
       64 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["disable"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R0 K1 ["Text"]
        7 CALL                             R3 1 1
        8 JUMPIFEQKNIL                     R3 ; [+59]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R6 R3 K2 ["R"]
       13 MULK                             R9 R6 K3 [255]
       14 FASTCALL1                        MATH_ROUND R9 ; [+2]
       15 GETIMPORT                        R8 K6 [math.round]
       17 CALL                             R8 1 1
       18 FASTCALL1                        TOSTRING R8 ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 1 1
       22 MOVE                             R5 R7
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R6 R3 K9 ["G"]
       27 MULK                             R9 R6 K3 [255]
       28 FASTCALL1                        MATH_ROUND R9 ; [+2]
       29 GETIMPORT                        R8 K6 [math.round]
       31 CALL                             R8 1 1
       32 FASTCALL1                        TOSTRING R8 ; [+2]
       33 GETIMPORT                        R7 K8 [tostring]
       35 CALL                             R7 1 1
       36 MOVE                             R5 R7
       37 CALL                             R4 1 0
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R6 R3 K10 ["B"]
       41 MULK                             R9 R6 K3 [255]
       42 FASTCALL1                        MATH_ROUND R9 ; [+2]
       43 GETIMPORT                        R8 K6 [math.round]
       45 CALL                             R8 1 1
       46 FASTCALL1                        TOSTRING R8 ; [+2]
       47 GETIMPORT                        R7 K8 [tostring]
       49 CALL                             R7 1 1
       50 MOVE                             R5 R7
       51 CALL                             R4 1 0
       52 GETUPVAL                         R4 5
       53 GETTABLEKS                       R4 R4 K11 ["beginEditingAsync"]
       55 CALL                             R4 0 0
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K12 ["setPart"]
       59 LOADK                            R5 K13 ["color3"]
       60 MOVE                             R6 R3
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 5
       63 GETTABLEKS                       R4 R4 K14 ["finishEditing"]
       65 GETIMPORT                        R5 K18 [Enum.FinishRecordingOperation.Commit]
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 5
       69 GETTABLEKS                       R4 R4 K19 ["onFocusLost"]
       71 JUMPIFEQKNIL                     R4 ; [+8]
       73 GETUPVAL                         R4 5
       74 GETTABLEKS                       R4 R4 K19 ["onFocusLost"]
       76 MOVE                             R5 R0
       77 MOVE                             R6 R1
       78 MOVE                             R7 R2
       79 CALL                             R4 3 0
       80 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onFocused"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["onFocused"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R0 K1 ["Text"]
       13 SETTABLEKS                       R2 R1 K2 ["current"]
       15 GETTABLEKS                       R1 R0 K1 ["Text"]
       17 JUMPIFNOTEQKS                    R1 K3 ["-"] ; [+4]
       19 LOADK                            R1 K4 [""]
       20 SETTABLEKS                       R1 R0 K1 ["Text"]
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
        3 JUMPIFEQKNIL                     R3 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 0
       12 GETTABLEKS                       R4 R0 K1 ["Text"]
       14 FASTCALL1                        TONUMBER R4 ; [+3]
       15 MOVE                             R6 R4
       16 GETIMPORT                        R5 K3 [tonumber]
       18 CALL                             R5 1 1
       19 JUMPIFNOTEQKNIL                  R5 ; [+3]
       21 LOADNIL                          R3
       22 JUMP                             ; [+16]
       23 LOADK                            R8 K4 ["%."]
       24 NAMECALL                         R6 R4 K5 ["find"]
       26 CALL                             R6 2 1
       27 JUMPIFNOTEQKNIL                  R6 ; [+2]
       29 DIVK                             R5 R5 K6 [255]
       30 LOADN                            R8 0
       31 LOADN                            R9 1
       32 FASTCALL3                        MATH_CLAMP R5 R8 R9
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K9 [math.clamp]
       37 CALL                             R6 3 1
       38 MOVE                             R3 R6
       39 JUMPIFNOTEQKNIL                  R3 ; [+11]
       41 GETIMPORT                        R4 K11 [warn]
       43 LOADK                            R5 K12 ["Couldn't convert input to a color"]
       44 CALL                             R4 1 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K13 ["current"]
       48 SETTABLEKS                       R4 R0 K1 ["Text"]
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 2
       52 MULK                             R7 R3 K6 [255]
       53 FASTCALL1                        MATH_ROUND R7 ; [+2]
       54 GETIMPORT                        R6 K15 [math.round]
       56 CALL                             R6 1 1
       57 FASTCALL1                        TOSTRING R6 ; [+2]
       58 GETIMPORT                        R5 K17 [tostring]
       60 CALL                             R5 1 1
       61 CALL                             R4 1 0
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K18 ["beginEditingAsync"]
       65 CALL                             R4 0 0
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K19 ["setPart"]
       69 GETUPVAL                         R5 3
       70 MOVE                             R6 R3
       71 CALL                             R4 2 0
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K20 ["finishEditing"]
       75 GETIMPORT                        R5 K24 [Enum.FinishRecordingOperation.Commit]
       77 CALL                             R4 1 0
       78 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Somehow combinedBox is nil"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["enabled"]
       16 JUMPIFNOT                        R1 ; [+4]
       17 NAMECALL                         R1 R0 K5 ["ReleaseFocus"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 NAMECALL                         R1 R0 K6 ["CaptureFocus"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADK                            R3 K1 [""]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["useBinding"]
       10 GETTABLEKS                       R5 R0 K3 ["rPart"]
       12 GETTABLEKS                       R6 R5 K4 ["multiple"]
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADK                            R4 K5 ["-"]
       16 JUMP                             ; [+12]
       17 GETTABLEKS                       R6 R5 K6 ["value"]
       19 MULK                             R9 R6 K7 [255]
       20 FASTCALL1                        MATH_ROUND R9 ; [+2]
       21 GETIMPORT                        R8 K10 [math.round]
       23 CALL                             R8 1 1
       24 FASTCALL1                        TOSTRING R8 ; [+2]
       25 GETIMPORT                        R7 K12 [tostring]
       27 CALL                             R7 1 1
       28 MOVE                             R4 R7
       29 CALL                             R3 1 2
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K13 ["useEffect"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 2
       38 GETTABLEKS                       R8 R0 K3 ["rPart"]
       40 GETTABLEKS                       R8 R8 K4 ["multiple"]
       42 GETTABLEKS                       R9 R0 K3 ["rPart"]
       44 GETTABLEKS                       R9 R9 K6 ["value"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 0
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K2 ["useBinding"]
       52 GETTABLEKS                       R7 R0 K14 ["gPart"]
       54 GETTABLEKS                       R8 R7 K4 ["multiple"]
       56 JUMPIFNOT                        R8 ; [+2]
       57 LOADK                            R6 K5 ["-"]
       58 JUMP                             ; [+12]
       59 GETTABLEKS                       R8 R7 K6 ["value"]
       61 MULK                             R11 R8 K7 [255]
       62 FASTCALL1                        MATH_ROUND R11 ; [+2]
       63 GETIMPORT                        R10 K10 [math.round]
       65 CALL                             R10 1 1
       66 FASTCALL1                        TOSTRING R10 ; [+2]
       67 GETIMPORT                        R9 K12 [tostring]
       69 CALL                             R9 1 1
       70 MOVE                             R6 R9
       71 CALL                             R5 1 2
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R9 0 2
       80 GETTABLEKS                       R10 R0 K3 ["rPart"]
       82 GETTABLEKS                       R10 R10 K4 ["multiple"]
       84 GETTABLEKS                       R11 R0 K14 ["gPart"]
       86 GETTABLEKS                       R11 R11 K6 ["value"]
       88 SETLIST                          R9 R10 2 [1]
       90 CALL                             R7 2 0
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K2 ["useBinding"]
       94 GETTABLEKS                       R9 R0 K15 ["bPart"]
       96 GETTABLEKS                       R10 R9 K4 ["multiple"]
       98 JUMPIFNOT                        R10 ; [+2]
       99 LOADK                            R8 K5 ["-"]
      100 JUMP                             ; [+12]
      101 GETTABLEKS                       R10 R9 K6 ["value"]
      103 MULK                             R13 R10 K7 [255]
      104 FASTCALL1                        MATH_ROUND R13 ; [+2]
      105 GETIMPORT                        R12 K10 [math.round]
      107 CALL                             R12 1 1
      108 FASTCALL1                        TOSTRING R12 ; [+2]
      109 GETIMPORT                        R11 K12 [tostring]
      111 CALL                             R11 1 1
      112 MOVE                             R8 R11
      113 CALL                             R7 1 2
      114 GETUPVAL                         R9 1
      115 GETTABLEKS                       R9 R9 K13 ["useEffect"]
      117 NEWCLOSURE                       R10 P2
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R0
      120 NEWTABLE                         R11 0 2
      122 GETTABLEKS                       R12 R0 K3 ["rPart"]
      124 GETTABLEKS                       R12 R12 K4 ["multiple"]
      126 GETTABLEKS                       R13 R0 K15 ["bPart"]
      128 GETTABLEKS                       R13 R13 K6 ["value"]
      130 SETLIST                          R11 R12 2 [1]
      132 CALL                             R9 2 0
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K0 ["useRef"]
      136 LOADNIL                          R10
      137 CALL                             R9 1 1
      138 GETUPVAL                         R10 1
      139 GETTABLEKS                       R10 R10 K16 ["useCallback"]
      141 NEWCLOSURE                       R11 P3
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R7
      147 NEWTABLE                         R12 0 5
      149 GETTABLEKS                       R13 R1 K17 ["enable"]
      151 GETTABLEKS                       R14 R0 K3 ["rPart"]
      153 GETTABLEKS                       R14 R14 K4 ["multiple"]
      155 GETTABLEKS                       R15 R0 K14 ["gPart"]
      157 GETTABLEKS                       R15 R15 K4 ["multiple"]
      159 GETTABLEKS                       R16 R0 K15 ["bPart"]
      161 GETTABLEKS                       R16 R16 K4 ["multiple"]
      163 GETTABLEKS                       R17 R0 K18 ["onFocused"]
      165 SETLIST                          R12 R13 5 [1]
      167 CALL                             R10 2 1
      168 GETUPVAL                         R11 1
      169 GETTABLEKS                       R11 R11 K16 ["useCallback"]
      171 NEWCLOSURE                       R12 P4
      172 CAPTURE                          VAL R1
      173 CAPTURE                          UPVAL U2
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R0
      178 NEWTABLE                         R13 0 5
      180 GETTABLEKS                       R14 R1 K19 ["disable"]
      182 GETTABLEKS                       R15 R0 K20 ["beginEditingAsync"]
      184 GETTABLEKS                       R16 R0 K21 ["setPart"]
      186 GETTABLEKS                       R17 R0 K22 ["finishEditing"]
      188 GETTABLEKS                       R18 R0 K23 ["onFocusLost"]
      190 SETLIST                          R13 R14 5 [1]
      192 CALL                             R11 2 1
      193 GETUPVAL                         R12 1
      194 GETTABLEKS                       R12 R12 K16 ["useCallback"]
      196 NEWCLOSURE                       R13 P5
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R2
      199 NEWTABLE                         R14 0 1
      201 GETTABLEKS                       R15 R0 K18 ["onFocused"]
      203 SETLIST                          R14 R15 1 [1]
      205 CALL                             R12 2 1
      206 GETUPVAL                         R13 1
      207 GETTABLEKS                       R13 R13 K16 ["useCallback"]
      209 NEWCLOSURE                       R14 P6
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R2
      212 NEWTABLE                         R15 0 5
      214 GETUPVAL                         R16 3
      215 GETTABLEKS                       R17 R0 K20 ["beginEditingAsync"]
      217 GETTABLEKS                       R18 R0 K21 ["setPart"]
      219 GETTABLEKS                       R19 R0 K22 ["finishEditing"]
      221 GETTABLEKS                       R20 R0 K23 ["onFocusLost"]
      223 SETLIST                          R15 R16 5 [1]
      225 CALL                             R13 2 1
      226 GETTABLEKS                       R14 R0 K24 ["activateCombinedInputSignal"]
      228 JUMPIFEQKNIL                     R14 ; [+14]
      230 GETUPVAL                         R14 4
      231 GETTABLEKS                       R15 R0 K24 ["activateCombinedInputSignal"]
      233 NEWCLOSURE                       R16 P7
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R1
      236 NEWTABLE                         R17 0 1
      238 GETTABLEKS                       R18 R1 K25 ["enabled"]
      240 SETLIST                          R17 R18 1 [1]
      242 CALL                             R14 3 0
      243 GETUPVAL                         R14 5
      244 CALL                             R14 0 1
      245 GETUPVAL                         R15 6
      246 GETUPVAL                         R16 7
      247 DUPTABLE                         R17 K29 [{["LayoutOrder"], ["tag"] = "row size-full-full"}]
      248 GETTABLEKS                       R18 R0 K30 ["layoutOrder"]
      250 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      252 DUPTABLE                         R18 K35 [{"CombinedBox", "RBox", "GBox", "BBox"}]
      253 GETUPVAL                         R19 6
      254 GETUPVAL                         R20 8
      255 DUPTABLE                         R21 K40 [{["visible"], ["layoutOrder"], ["size"], ["text"] = "", ["textBoxRef"], ["onFocused"], ["onFocusLost"]}]
      256 GETTABLEKS                       R22 R1 K25 ["enabled"]
      258 SETTABLEKS                       R22 R21 K36 ["visible"]
      260 MOVE                             R22 R14
      261 CALL                             R22 0 1
      262 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      264 GETIMPORT                        R22 K43 [UDim2.fromScale]
      266 LOADN                            R23 1
      267 LOADN                            R24 1
      268 CALL                             R22 2 1
      269 SETTABLEKS                       R22 R21 K37 ["size"]
      271 SETTABLEKS                       R9 R21 K39 ["textBoxRef"]
      273 SETTABLEKS                       R10 R21 K18 ["onFocused"]
      275 SETTABLEKS                       R11 R21 K23 ["onFocusLost"]
      277 CALL                             R19 2 1
      278 SETTABLEKS                       R19 R18 K31 ["CombinedBox"]
      280 GETUPVAL                         R19 6
      281 GETUPVAL                         R20 9
      282 DUPTABLE                         R21 K44 [{"visible", "layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
      283 GETTABLEKS                       R23 R1 K25 ["enabled"]
      285 NOT                              R22 R23
      286 SETTABLEKS                       R22 R21 K36 ["visible"]
      288 MOVE                             R22 R14
      289 CALL                             R22 0 1
      290 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      292 GETIMPORT                        R22 K43 [UDim2.fromScale]
      294 LOADK                            R23 K45 [0.333333333333333]
      295 LOADN                            R24 1
      296 CALL                             R22 2 1
      297 SETTABLEKS                       R22 R21 K37 ["size"]
      299 SETTABLEKS                       R3 R21 K38 ["text"]
      301 SETTABLEKS                       R12 R21 K18 ["onFocused"]
      303 MOVE                             R22 R13
      304 LOADK                            R23 K46 ["r"]
      305 MOVE                             R24 R4
      306 CALL                             R22 2 1
      307 SETTABLEKS                       R22 R21 K23 ["onFocusLost"]
      309 CALL                             R19 2 1
      310 SETTABLEKS                       R19 R18 K32 ["RBox"]
      312 GETUPVAL                         R19 6
      313 GETUPVAL                         R20 9
      314 DUPTABLE                         R21 K44 [{"visible", "layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
      315 GETTABLEKS                       R23 R1 K25 ["enabled"]
      317 NOT                              R22 R23
      318 SETTABLEKS                       R22 R21 K36 ["visible"]
      320 MOVE                             R22 R14
      321 CALL                             R22 0 1
      322 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      324 GETIMPORT                        R22 K43 [UDim2.fromScale]
      326 LOADK                            R23 K45 [0.333333333333333]
      327 LOADN                            R24 1
      328 CALL                             R22 2 1
      329 SETTABLEKS                       R22 R21 K37 ["size"]
      331 SETTABLEKS                       R5 R21 K38 ["text"]
      333 SETTABLEKS                       R12 R21 K18 ["onFocused"]
      335 MOVE                             R22 R13
      336 LOADK                            R23 K47 ["g"]
      337 MOVE                             R24 R6
      338 CALL                             R22 2 1
      339 SETTABLEKS                       R22 R21 K23 ["onFocusLost"]
      341 CALL                             R19 2 1
      342 SETTABLEKS                       R19 R18 K33 ["GBox"]
      344 GETUPVAL                         R19 6
      345 GETUPVAL                         R20 9
      346 DUPTABLE                         R21 K44 [{"visible", "layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
      347 GETTABLEKS                       R23 R1 K25 ["enabled"]
      349 NOT                              R22 R23
      350 SETTABLEKS                       R22 R21 K36 ["visible"]
      352 MOVE                             R22 R14
      353 CALL                             R22 0 1
      354 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      356 GETIMPORT                        R22 K43 [UDim2.fromScale]
      358 LOADK                            R23 K45 [0.333333333333333]
      359 LOADN                            R24 1
      360 CALL                             R22 2 1
      361 SETTABLEKS                       R22 R21 K37 ["size"]
      363 SETTABLEKS                       R7 R21 K38 ["text"]
      365 SETTABLEKS                       R12 R21 K18 ["onFocused"]
      367 MOVE                             R22 R13
      368 LOADK                            R23 K48 ["b"]
      369 MOVE                             R24 R8
      370 CALL                             R22 2 1
      371 SETTABLEKS                       R22 R21 K23 ["onFocusLost"]
      373 CALL                             R19 2 1
      374 SETTABLEKS                       R19 R18 K34 ["BBox"]
      376 CALL                             R15 3 -1
      377 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["Color"]
       17 GETTABLEKS                       R3 R3 K10 ["ColorEditor"]
       19 GETTABLEKS                       R3 R3 K11 ["ChannelInput"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K4 ["Parent"]
       26 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K7 ["Components"]
       33 GETTABLEKS                       R5 R5 K8 ["Util"]
       35 GETTABLEKS                       R5 R5 K13 ["PlaceholderTextBox"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R0 K14 ["PropertyTypes"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K15 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R1 K17 ["Signal"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K8 ["Util"]
       66 GETTABLEKS                       R10 R10 K18 ["trimWhitespace"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       73 GETTABLEKS                       R11 R11 K20 ["useEventConnection"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R11 R3 K21 ["View"]
       78 GETTABLEKS                       R12 R6 K22 ["createElement"]
       80 GETTABLEKS                       R13 R7 K23 ["createNextOrder"]
       82 GETTABLEKS                       R14 R7 K24 ["useToggleState"]
       84 DUPCLOSURE                       R15 K25 [PROTO_0]
       85 DUPCLOSURE                       R16 K26 [PROTO_1]
       86 DUPCLOSURE                       R17 K27 [PROTO_2]
       87 DUPCLOSURE                       R18 K28 [PROTO_3]
       88 CAPTURE                          VAL R9
       89 DUPCLOSURE                       R19 K29 [PROTO_13]
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 RETURN                           R19 1
