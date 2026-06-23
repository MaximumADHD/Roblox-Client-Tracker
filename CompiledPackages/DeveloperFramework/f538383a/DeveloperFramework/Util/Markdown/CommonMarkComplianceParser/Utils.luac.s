PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 JUMPIFNOTEQKS                    R2 K1 ["TEXT"] ; [+13]
        5 GETIMPORT                        R2 K4 [string.find]
        7 GETTABLEKS                       R3 R0 K5 ["text"]
        9 LOADK                            R4 K6 ["\n"]
       10 LOADN                            R5 0
       11 LOADB                            R6 1
       12 CALL                             R2 4 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["`"] ; [+3]
        2 LOADK                            R2 K1 ["INLINE_CODE"]
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKN                    R1 K2 [2] ; [+7]
        6 JUMPIFNOTEQKS                    R0 K3 ["*"] ; [+3]
        8 LOADK                            R2 K4 ["BOLD_2"]
        9 RETURN                           R2 1
       10 LOADK                            R2 K5 ["ITALIC_2"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R0 K3 ["*"] ; [+3]
       14 LOADK                            R2 K6 ["BOLD"]
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R0 K7 ["~"] ; [+3]
       18 LOADK                            R2 K8 ["STRIKE"]
       19 RETURN                           R2 1
       20 LOADK                            R2 K9 ["ITALIC"]
       21 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["runLength"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["runLength"]
        6 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 GETTABLEKS                       R3 R0 K2 ["canOpen"]
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R2 R0 K3 ["canClose"]
       15 JUMPIF                           R2 ; [+5]
       16 GETTABLEKS                       R2 R1 K2 ["canOpen"]
       18 JUMPIFNOT                        R2 ; [+2]
       19 GETTABLEKS                       R2 R1 K3 ["canClose"]
       21 JUMPIF                           R2 ; [+2]
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 GETTABLEKS                       R4 R0 K0 ["runLength"]
       26 MODK                             R3 R4 K4 [3]
       27 JUMPIFNOTEQKN                    R3 K1 [0] ; [+8]
       29 GETTABLEKS                       R4 R1 K0 ["runLength"]
       31 MODK                             R3 R4 K4 [3]
       32 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       34 LOADB                            R3 1
       35 RETURN                           R3 1
       36 GETTABLEKS                       R5 R0 K0 ["runLength"]
       38 GETTABLEKS                       R6 R1 K0 ["runLength"]
       40 ADD                              R4 R5 R6
       41 MODK                             R3 R4 K4 [3]
       42 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       44 LOADB                            R3 0
       45 RETURN                           R3 1
       46 LOADB                            R3 1
       47 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["matches"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R0 K0 ["matches"]
        7 LOADN                            R3 1
        8 LENGTH                           R4 R2
        9 ADDK                             R5 R4 K1 [1]
       10 GETTABLEKS                       R6 R1 K2 ["with"]
       12 GETTABLEKS                       R6 R6 K3 ["startIdx"]
       14 JUMPIFNOTLE                      R3 R4 ; [+19]
       16 ADD                              R9 R3 R4
       17 DIVK                             R8 R9 K4 [2]
       18 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       19 GETIMPORT                        R7 K7 [math.floor]
       21 CALL                             R7 1 1
       22 GETTABLE                         R8 R2 R7
       23 GETTABLEKS                       R8 R8 K2 ["with"]
       25 GETTABLEKS                       R8 R8 K3 ["startIdx"]
       27 JUMPIFNOTLT                      R6 R8 ; [+4]
       29 MOVE                             R5 R7
       30 SUBK                             R4 R7 K1 [1]
       31 JUMP                             ; [+1]
       32 ADDK                             R3 R7 K1 [1]
       33 JUMPBACK                         ; [-20]
       34 FASTCALL3                        TABLE_INSERT R2 R5 R1
       36 MOVE                             R8 R2
       37 MOVE                             R9 R5
       38 MOVE                             R10 R1
       39 GETIMPORT                        R7 K10 [table.insert]
       41 CALL                             R7 3 0
       42 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["ASCII"]
        9 GETTABLEKS                       R3 R3 K2 ["WHITESPACE_PATTERN"]
       11 NAMECALL                         R1 R0 K3 ["match"]
       13 CALL                             R1 2 1
       14 JUMPIFEQKNIL                     R1 ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["UNICODE"]
       21 GETTABLEKS                       R2 R2 K5 ["WHITESPACE"]
       23 GETIMPORT                        R3 K8 [utf8.codepoint]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 GETTABLE                         R1 R2 R3
       28 JUMPIFNOT                        R1 ; [+2]
       29 LOADB                            R1 1
       30 RETURN                           R1 1
       31 LOADB                            R1 0
       32 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["ASCII"]
        9 GETTABLEKS                       R3 R3 K2 ["PUNCTUATION_PATTERN"]
       11 NAMECALL                         R1 R0 K3 ["match"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K6 [utf8.codepoint]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["UNICODE"]
       24 GETTABLEKS                       R3 R3 K8 ["PUNCTUATION"]
       26 GETTABLE                         R2 R3 R1
       27 JUMPIFNOT                        R2 ; [+2]
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 LOADB                            R2 0
       31 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isWhitespace"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["isPunctuation"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["isWhitespace"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+5]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K1 ["isPunctuation"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isWhitespace"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["isPunctuation"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["isWhitespace"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+5]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K1 ["isPunctuation"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["char"]
        2 JUMPIFNOTEQKS                    R1 K1 ["`"] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["isLeftFlanking"]
        9 GETTABLEKS                       R2 R0 K3 ["prevChar"]
       11 GETTABLEKS                       R3 R0 K4 ["nextChar"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R2 0
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R0 K0 ["char"]
       19 JUMPIFEQKS                       R2 K5 ["_"] ; [+3]
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["isRightFlanking"]
       26 GETTABLEKS                       R3 R0 K3 ["prevChar"]
       28 GETTABLEKS                       R4 R0 K4 ["nextChar"]
       30 CALL                             R2 2 1
       31 NOT                              R3 R2
       32 JUMPIF                           R3 ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K7 ["isPunctuation"]
       36 GETTABLEKS                       R4 R0 K3 ["prevChar"]
       38 CALL                             R3 1 1
       39 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["char"]
        2 JUMPIFNOTEQKS                    R1 K1 ["`"] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["isRightFlanking"]
        9 GETTABLEKS                       R2 R0 K3 ["prevChar"]
       11 GETTABLEKS                       R3 R0 K4 ["nextChar"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R2 0
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R0 K0 ["char"]
       19 JUMPIFEQKS                       R2 K5 ["_"] ; [+3]
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["isLeftFlanking"]
       26 GETTABLEKS                       R3 R0 K3 ["prevChar"]
       28 GETTABLEKS                       R4 R0 K4 ["nextChar"]
       30 CALL                             R2 2 1
       31 NOT                              R3 R2
       32 JUMPIF                           R3 ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K7 ["isPunctuation"]
       36 GETTABLEKS                       R4 R0 K4 ["nextChar"]
       38 CALL                             R3 1 1
       39 RETURN                           R3 1

PROTO_11:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+4]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADN                            R5 1
        9 JUMPIFNOTLT                      R5 R1 ; [+17]
       11 GETIMPORT                        R5 K3 [utf8.offset]
       13 MOVE                             R6 R0
       14 LOADN                            R7 255
       15 MOVE                             R8 R1
       16 CALL                             R5 3 1
       17 JUMPIFNOT                        R5 ; [+9]
       18 GETIMPORT                        R6 K5 [utf8.char]
       20 GETIMPORT                        R7 K7 [utf8.codepoint]
       22 MOVE                             R8 R0
       23 MOVE                             R9 R5
       24 CALL                             R7 2 -1
       25 CALL                             R6 -1 1
       26 MOVE                             R3 R6
       27 ADD                              R5 R1 R2
       28 LENGTH                           R6 R0
       29 JUMPIFNOTLE                      R5 R6 ; [+17]
       31 GETIMPORT                        R6 K3 [utf8.offset]
       33 MOVE                             R7 R0
       34 LOADN                            R8 1
       35 MOVE                             R9 R5
       36 CALL                             R6 3 1
       37 JUMPIFNOT                        R6 ; [+9]
       38 GETIMPORT                        R7 K5 [utf8.char]
       40 GETIMPORT                        R8 K7 [utf8.codepoint]
       42 MOVE                             R9 R0
       43 MOVE                             R10 R6
       44 CALL                             R8 2 -1
       45 CALL                             R7 -1 1
       46 MOVE                             R4 R7
       47 DUPTABLE                         R6 K10 [{"prevChar", "nextChar"}]
       48 SETTABLEKS                       R3 R6 K8 ["prevChar"]
       50 SETTABLEKS                       R4 R6 K9 ["nextChar"]
       52 RETURN                           R6 1

PROTO_12:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 MOVE                             R7 R2
        4 JUMPIF                           R7 ; [+1]
        5 LENGTH                           R7 R0
        6 LOADN                            R5 1
        7 LOADN                            R6 255
        8 FORNPREP                         R5
        9 GETTABLE                         R8 R0 R7
       10 GETTABLEKS                       R9 R8 K0 ["offset"]
       12 JUMPIFLE                         R9 R1 ; [+44]
       14 GETTABLEKS                       R9 R8 K1 ["name"]
       16 JUMPIFNOTEQKS                    R9 K2 ["INLINE_CODE"] ; [+39]
       18 JUMPIFNOT                        R4 ; [+18]
       19 GETTABLEKS                       R10 R4 K0 ["offset"]
       21 SUBK                             R9 R10 K3 [1]
       22 GETTABLEKS                       R10 R8 K0 ["offset"]
       24 JUMPIFNOTEQ                      R9 R10 ; [+12]
       26 GETTABLEKS                       R9 R4 K4 ["length"]
       28 ADDK                             R9 R9 K3 [1]
       29 SETTABLEKS                       R9 R4 K4 ["length"]
       31 GETTABLEKS                       R9 R4 K0 ["offset"]
       33 SUBK                             R9 R9 K3 [1]
       34 SETTABLEKS                       R9 R4 K0 ["offset"]
       36 JUMP                             ; [+19]
       37 DUPTABLE                         R9 K5 [{"offset", "length"}]
       38 GETTABLEKS                       R10 R8 K0 ["offset"]
       40 SETTABLEKS                       R10 R9 K0 ["offset"]
       42 GETTABLEKS                       R11 R8 K6 ["text"]
       44 LENGTH                           R10 R11
       45 SETTABLEKS                       R10 R9 K4 ["length"]
       47 MOVE                             R4 R9
       48 LOADN                            R11 1
       49 FASTCALL3                        TABLE_INSERT R3 R11 R4
       51 MOVE                             R10 R3
       52 MOVE                             R12 R4
       53 GETIMPORT                        R9 K9 [table.insert]
       55 CALL                             R9 3 0
       56 FORNLOOP                         R5
       57 LOADB                            R5 0
       58 LOADN                            R6 1
       59 LENGTH                           R7 R3
       60 JUMPIFNOTLE                      R6 R7 ; [+23]
       62 GETTABLE                         R7 R3 R6
       63 GETTABLEKS                       R7 R7 K4 ["length"]
       65 LOADNIL                          R8
       66 ADDK                             R11 R6 K3 [1]
       67 LENGTH                           R9 R3
       68 LOADN                            R10 1
       69 FORNPREP                         R9
       70 GETTABLE                         R12 R3 R11
       71 GETTABLEKS                       R12 R12 K4 ["length"]
       73 JUMPIFNOTEQ                      R12 R7 ; [+3]
       75 MOVE                             R8 R11
       76 JUMP                             ; [+1]
       77 FORNLOOP                         R9
       78 JUMPIFNOT                        R8 ; [+2]
       79 ADDK                             R6 R8 K3 [1]
       80 JUMP                             ; [+2]
       81 LOADB                            R5 1
       82 RETURN                           R5 1
       83 JUMPBACK                         ; [-25]
       84 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Constants"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["Types"]
       22 CALL                             R1 1 1
       23 DUPTABLE                         R2 K13 [{"BOLD", "BOLD_2", "ITALIC", "ITALIC_2", "STRIKE", "INLINE_CODE"}]
       24 DUPTABLE                         R3 K16 [{"char", "length"}]
       25 LOADK                            R4 K17 ["*"]
       26 SETTABLEKS                       R4 R3 K14 ["char"]
       28 LOADN                            R4 1
       29 SETTABLEKS                       R4 R3 K15 ["length"]
       31 SETTABLEKS                       R3 R2 K7 ["BOLD"]
       33 DUPTABLE                         R3 K16 [{"char", "length"}]
       34 LOADK                            R4 K17 ["*"]
       35 SETTABLEKS                       R4 R3 K14 ["char"]
       37 LOADN                            R4 2
       38 SETTABLEKS                       R4 R3 K15 ["length"]
       40 SETTABLEKS                       R3 R2 K8 ["BOLD_2"]
       42 DUPTABLE                         R3 K16 [{"char", "length"}]
       43 LOADK                            R4 K18 ["_"]
       44 SETTABLEKS                       R4 R3 K14 ["char"]
       46 LOADN                            R4 1
       47 SETTABLEKS                       R4 R3 K15 ["length"]
       49 SETTABLEKS                       R3 R2 K9 ["ITALIC"]
       51 DUPTABLE                         R3 K16 [{"char", "length"}]
       52 LOADK                            R4 K18 ["_"]
       53 SETTABLEKS                       R4 R3 K14 ["char"]
       55 LOADN                            R4 2
       56 SETTABLEKS                       R4 R3 K15 ["length"]
       58 SETTABLEKS                       R3 R2 K10 ["ITALIC_2"]
       60 DUPTABLE                         R3 K16 [{"char", "length"}]
       61 LOADK                            R4 K19 ["~"]
       62 SETTABLEKS                       R4 R3 K14 ["char"]
       64 LOADN                            R4 1
       65 SETTABLEKS                       R4 R3 K15 ["length"]
       67 SETTABLEKS                       R3 R2 K11 ["STRIKE"]
       69 DUPTABLE                         R3 K16 [{"char", "length"}]
       70 LOADK                            R4 K20 ["`"]
       71 SETTABLEKS                       R4 R3 K14 ["char"]
       73 LOADN                            R4 1
       74 SETTABLEKS                       R4 R3 K15 ["length"]
       76 SETTABLEKS                       R3 R2 K12 ["INLINE_CODE"]
       78 NEWTABLE                         R3 16 0
       80 DUPCLOSURE                       R4 K21 [PROTO_0]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R4 R3 K22 ["getDelimiterInfo"]
       84 DUPCLOSURE                       R4 K23 [PROTO_1]
       85 SETTABLEKS                       R4 R3 K24 ["causesLineBreak"]
       87 DUPCLOSURE                       R4 K25 [PROTO_2]
       88 SETTABLEKS                       R4 R3 K26 ["getTokenNameFromCharAndLength"]
       90 DUPCLOSURE                       R4 K27 [PROTO_3]
       91 SETTABLEKS                       R4 R3 K28 ["canDelimitersMatch"]
       93 DUPCLOSURE                       R4 K29 [PROTO_4]
       94 SETTABLEKS                       R4 R3 K30 ["addDelimiterMatch"]
       96 DUPCLOSURE                       R4 K31 [PROTO_5]
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R4 R3 K32 ["isWhitespace"]
      100 DUPCLOSURE                       R4 K33 [PROTO_6]
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R4 R3 K34 ["isPunctuation"]
      104 DUPCLOSURE                       R4 K35 [PROTO_7]
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R4 R3 K36 ["isLeftFlanking"]
      108 DUPCLOSURE                       R4 K37 [PROTO_8]
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R4 R3 K38 ["isRightFlanking"]
      112 DUPCLOSURE                       R4 K39 [PROTO_9]
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R4 R3 K40 ["canOpenEmphasis"]
      116 DUPCLOSURE                       R4 K41 [PROTO_10]
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R4 R3 K42 ["canCloseEmphasis"]
      120 DUPCLOSURE                       R4 K43 [PROTO_11]
      121 SETTABLEKS                       R4 R3 K44 ["getCharacterContext"]
      123 DUPCLOSURE                       R4 K45 [PROTO_12]
      124 SETTABLEKS                       R4 R3 K46 ["isInsideInlineCode"]
      126 RETURN                           R3 1
