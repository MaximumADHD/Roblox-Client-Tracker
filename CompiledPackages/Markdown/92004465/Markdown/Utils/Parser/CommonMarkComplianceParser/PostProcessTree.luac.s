PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 GETTABLEKS                       R4 R0 K0 ["children"]
        5 LOADB                            R5 0
        6 GETTABLEKS                       R6 R0 K1 ["name"]
        8 JUMPIFNOTEQKS                    R6 K2 ["TAG"] ; [+6]
       10 GETTABLEKS                       R6 R1 K3 ["inlineTags"]
       12 GETTABLEKS                       R7 R0 K4 ["text"]
       14 GETTABLE                         R5 R6 R7
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R8 R0 K1 ["name"]
       18 GETTABLE                         R6 R7 R8
       19 JUMPIFNOT                        R6 ; [+1]
       20 NOT                              R6 R5
       21 LENGTH                           R7 R4
       22 JUMPIFNOTLE                      R3 R7 ; [+175]
       24 GETTABLE                         R7 R4 R3
       25 LOADB                            R8 0
       26 GETTABLEKS                       R9 R7 K1 ["name"]
       28 JUMPIFNOTEQKS                    R9 K2 ["TAG"] ; [+9]
       30 GETTABLEKS                       R8 R7 K4 ["text"]
       32 JUMPIFNOT                        R8 ; [+5]
       33 GETTABLEKS                       R9 R1 K3 ["inlineTags"]
       35 GETTABLEKS                       R10 R7 K4 ["text"]
       37 GETTABLE                         R8 R9 R10
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R12 R7 K1 ["name"]
       41 GETTABLE                         R10 R11 R12
       42 OR                               R9 R10 R8
       43 JUMPIFNOT                        R9 ; [+33]
       44 JUMPIFNOT                        R6 ; [+32]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K5 ["buildParagraph"]
       48 MOVE                             R11 R4
       49 MOVE                             R12 R3
       50 MOVE                             R13 R1
       51 CALL                             R10 3 2
       52 LOADN                            R14 0
       53 JUMPIFLT                         R14 R10 ; [+2]
       55 LOADB                            R13 0 +1
       56 LOADB                            R13 1
       57 FASTCALL2K                       ASSERT R13 K6 ; [+4]
       59 LOADK                            R14 K6 ["Did not find an inline node when expected"]
       60 GETIMPORT                        R12 K8 [assert]
       62 CALL                             R12 2 0
       63 GETTABLEKS                       R13 R11 K0 ["children"]
       65 LENGTH                           R12 R13
       66 LOADN                            R13 0
       67 JUMPIFNOTLT                      R13 R12 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       71 MOVE                             R13 R2
       72 MOVE                             R14 R11
       73 GETUPVAL                         R12 3
       74 CALL                             R12 2 0
       75 ADD                              R3 R3 R10
       76 JUMP                             ; [+120]
       77 GETUPVAL                         R11 4
       78 GETTABLEKS                       R12 R7 K1 ["name"]
       80 GETTABLE                         R10 R11 R12
       81 JUMPIFNOT                        R10 ; [+34]
       82 GETUPVAL                         R10 2
       83 GETTABLEKS                       R10 R10 K9 ["mergeTextNodes"]
       85 MOVE                             R11 R4
       86 MOVE                             R12 R3
       87 CALL                             R10 2 2
       88 LOADN                            R14 0
       89 JUMPIFLT                         R14 R10 ; [+2]
       91 LOADB                            R13 0 +1
       92 LOADB                            R13 1
       93 FASTCALL2K                       ASSERT R13 K10 ; [+4]
       95 LOADK                            R14 K10 ["Did not find a text node when expected"]
       96 GETIMPORT                        R12 K8 [assert]
       98 CALL                             R12 2 0
       99 GETTABLEKS                       R12 R11 K4 ["text"]
      101 JUMPIFNOT                        R12 ; [+12]
      102 GETTABLEKS                       R13 R11 K4 ["text"]
      104 LENGTH                           R12 R13
      105 LOADN                            R13 0
      106 JUMPIFNOTLT                      R13 R12 ; [+7]
      108 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      110 MOVE                             R13 R2
      111 MOVE                             R14 R11
      112 GETUPVAL                         R12 3
      113 CALL                             R12 2 0
      114 ADD                              R3 R3 R10
      115 JUMP                             ; [+81]
      116 GETTABLEKS                       R10 R7 K1 ["name"]
      118 JUMPIFNOTEQKS                    R10 K11 ["LIST_ITEM"] ; [+27]
      120 GETUPVAL                         R10 2
      121 GETTABLEKS                       R10 R10 K12 ["buildList"]
      123 MOVE                             R11 R4
      124 MOVE                             R12 R3
      125 MOVE                             R13 R1
      126 CALL                             R10 3 2
      127 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      129 MOVE                             R13 R2
      130 MOVE                             R14 R11
      131 GETUPVAL                         R12 3
      132 CALL                             R12 2 0
      133 LOADN                            R14 0
      134 JUMPIFLT                         R14 R10 ; [+2]
      136 LOADB                            R13 0 +1
      137 LOADB                            R13 1
      138 FASTCALL2K                       ASSERT R13 K13 ; [+4]
      140 LOADK                            R14 K13 ["Did not find a list node when expected"]
      141 GETIMPORT                        R12 K8 [assert]
      143 CALL                             R12 2 0
      144 ADD                              R3 R3 R10
      145 JUMP                             ; [+51]
      146 GETTABLEKS                       R10 R7 K1 ["name"]
      148 JUMPIFNOTEQKS                    R10 K14 ["TABLE_ROW"] ; [+27]
      150 GETUPVAL                         R10 2
      151 GETTABLEKS                       R10 R10 K15 ["buildTable"]
      153 MOVE                             R11 R4
      154 MOVE                             R12 R3
      155 MOVE                             R13 R1
      156 CALL                             R10 3 2
      157 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      159 MOVE                             R13 R2
      160 MOVE                             R14 R11
      161 GETUPVAL                         R12 3
      162 CALL                             R12 2 0
      163 LOADN                            R14 0
      164 JUMPIFLT                         R14 R10 ; [+2]
      166 LOADB                            R13 0 +1
      167 LOADB                            R13 1
      168 FASTCALL2K                       ASSERT R13 K16 ; [+4]
      170 LOADK                            R14 K16 ["Did not find a table row node when expected"]
      171 GETIMPORT                        R12 K8 [assert]
      173 CALL                             R12 2 0
      174 ADD                              R3 R3 R10
      175 JUMP                             ; [+21]
      176 GETTABLEKS                       R10 R7 K1 ["name"]
      178 JUMPIFNOTEQKS                    R10 K17 ["LINE_BREAK"] ; [+3]
      180 ADDK                             R3 R3 K18 [1]
      181 JUMP                             ; [+15]
      182 GETUPVAL                         R10 2
      183 GETTABLEKS                       R10 R10 K19 ["postProcessTree"]
      185 MOVE                             R11 R7
      186 MOVE                             R12 R1
      187 CALL                             R10 2 1
      188 SETTABLEKS                       R10 R7 K0 ["children"]
      190 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      192 MOVE                             R11 R2
      193 MOVE                             R12 R7
      194 GETUPVAL                         R10 3
      195 CALL                             R10 2 0
      196 ADDK                             R3 R3 K18 [1]
      197 JUMPBACK                         ; [-177]
      198 GETTABLEKS                       R7 R0 K20 ["isBlock"]
      200 JUMPIFNOT                        R7 ; [+29]
      201 GETTABLEN                        R7 R2 1
      202 JUMPIFNOT                        R7 ; [+12]
      203 GETTABLEKS                       R8 R7 K4 ["text"]
      205 JUMPIFNOT                        R8 ; [+9]
      206 GETTABLEKS                       R8 R7 K4 ["text"]
      208 LOADK                            R10 K21 ["^%s+"]
      209 LOADK                            R11 K22 [""]
      210 NAMECALL                         R8 R8 K23 ["gsub"]
      212 CALL                             R8 3 1
      213 SETTABLEKS                       R8 R7 K4 ["text"]
      215 LENGTH                           R9 R2
      216 GETTABLE                         R8 R2 R9
      217 JUMPIFNOT                        R8 ; [+12]
      218 GETTABLEKS                       R9 R8 K4 ["text"]
      220 JUMPIFNOT                        R9 ; [+9]
      221 GETTABLEKS                       R9 R8 K4 ["text"]
      223 LOADK                            R11 K24 ["%s+$"]
      224 LOADK                            R12 K22 [""]
      225 NAMECALL                         R9 R9 K23 ["gsub"]
      227 CALL                             R9 3 1
      228 SETTABLEKS                       R9 R8 K4 ["text"]
      230 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 0
        3 MOVE                             R6 R1
        4 LENGTH                           R7 R0
        5 JUMPIFNOTLE                      R6 R7 ; [+117]
        7 GETTABLE                         R7 R0 R6
        8 LOADB                            R8 0
        9 GETTABLEKS                       R9 R7 K0 ["name"]
       11 JUMPIFNOTEQKS                    R9 K1 ["TAG"] ; [+9]
       13 GETTABLEKS                       R8 R7 K2 ["text"]
       15 JUMPIFNOT                        R8 ; [+5]
       16 GETTABLEKS                       R9 R2 K3 ["inlineTags"]
       18 GETTABLEKS                       R10 R7 K2 ["text"]
       20 GETTABLE                         R8 R9 R10
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R12 R7 K0 ["name"]
       24 GETTABLE                         R10 R11 R12
       25 OR                               R9 R10 R8
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R12 R7 K0 ["name"]
       29 GETTABLE                         R10 R11 R12
       30 JUMPIFNOT                        R10 ; [+36]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K4 ["mergeTextNodes"]
       34 MOVE                             R11 R0
       35 MOVE                             R12 R6
       36 MOVE                             R13 R3
       37 CALL                             R10 3 2
       38 GETTABLEKS                       R12 R11 K2 ["text"]
       40 JUMPIFNOT                        R12 ; [+12]
       41 GETTABLEKS                       R13 R11 K2 ["text"]
       43 LENGTH                           R12 R13
       44 LOADN                            R13 0
       45 JUMPIFNOTLT                      R13 R12 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
       49 MOVE                             R13 R4
       50 MOVE                             R14 R11
       51 GETUPVAL                         R12 3
       52 CALL                             R12 2 0
       53 LOADN                            R14 0
       54 JUMPIFLT                         R14 R10 ; [+2]
       56 LOADB                            R13 0 +1
       57 LOADB                            R13 1
       58 FASTCALL2K                       ASSERT R13 K5 ; [+4]
       60 LOADK                            R14 K5 ["Did not find a rich text node when expected"]
       61 GETIMPORT                        R12 K7 [assert]
       63 CALL                             R12 2 0
       64 ADD                              R5 R5 R10
       65 ADD                              R6 R6 R10
       66 JUMP                             ; [+55]
       67 GETTABLEKS                       R10 R7 K0 ["name"]
       69 JUMPIFNOTEQKS                    R10 K8 ["STYLED_TEXT"] ; [+41]
       71 GETUPVAL                         R10 2
       72 GETTABLEKS                       R10 R10 K9 ["buildParagraph"]
       74 GETTABLEKS                       R11 R7 K10 ["children"]
       76 LOADN                            R12 1
       77 MOVE                             R13 R2
       78 LOADB                            R14 1
       79 CALL                             R10 4 2
       80 GETTABLEKS                       R12 R7 K11 ["attributes"]
       82 JUMPIFNOT                        R12 ; [+15]
       83 GETTABLEKS                       R12 R7 K11 ["attributes"]
       85 GETTABLEKS                       R12 R12 K12 ["style"]
       87 JUMPIFNOTEQKS                    R12 K13 ["INLINE_CODE"] ; [+10]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K14 ["applyCodeSpanRules"]
       92 GETTABLEKS                       R13 R11 K10 ["children"]
       94 CALL                             R12 1 1
       95 SETTABLEKS                       R12 R7 K10 ["children"]
       97 JUMP                             ; [+4]
       98 GETTABLEKS                       R12 R11 K10 ["children"]
      100 SETTABLEKS                       R12 R7 K10 ["children"]
      102 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      104 MOVE                             R13 R4
      105 MOVE                             R14 R7
      106 GETUPVAL                         R12 3
      107 CALL                             R12 2 0
      108 ADDK                             R5 R5 K15 [1]
      109 ADDK                             R6 R6 K15 [1]
      110 JUMP                             ; [+11]
      111 JUMPIFNOT                        R9 ; [+11]
      112 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      114 MOVE                             R11 R4
      115 MOVE                             R12 R7
      116 GETUPVAL                         R10 3
      117 CALL                             R10 2 0
      118 ADDK                             R5 R5 K15 [1]
      119 ADDK                             R6 R6 K15 [1]
      120 JUMP                             ; [+1]
      121 JUMP                             ; [+1]
      122 JUMPBACK                         ; [-119]
      123 MOVE                             R7 R5
      124 DUPTABLE                         R8 K18 [{[1] = "PARAGRAPH", ["children"], ["offset"]}]
      125 SETTABLEKS                       R4 R8 K10 ["children"]
      127 GETTABLE                         R9 R0 R1
      128 GETTABLEKS                       R9 R9 K17 ["offset"]
      130 SETTABLEKS                       R9 R8 K17 ["offset"]
      132 RETURN                           R7 2

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K0 ["attributes"]
        6 GETTABLEKS                       R3 R3 K1 ["style"]
        8 GETTABLE                         R1 R2 R3
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 JUMPIFNOT                        R1 ; [+36]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["mergeTextNodes"]
       15 GETTABLEKS                       R3 R0 K3 ["children"]
       17 LOADN                            R4 1
       18 CALL                             R2 2 2
       19 GETTABLEKS                       R7 R0 K3 ["children"]
       21 LENGTH                           R6 R7
       22 JUMPIFEQ                         R2 R6 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 LOADK                            R7 K4 ["Found non-inline content inside inline element at %*"]
       27 GETTABLEKS                       R9 R0 K5 ["offset"]
       29 NAMECALL                         R7 R7 K6 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 FASTCALL2                        ASSERT R5 R6 ; [+3]
       35 GETIMPORT                        R4 K8 [assert]
       37 CALL                             R4 2 0
       38 LOADK                            R5 K9 ["<%*>%*</%*>"]
       39 MOVE                             R7 R1
       40 GETTABLEKS                       R8 R3 K10 ["text"]
       42 MOVE                             R9 R1
       43 NAMECALL                         R5 R5 K6 ["format"]
       45 CALL                             R5 4 1
       46 MOVE                             R4 R5
       47 RETURN                           R4 1
       48 GETTABLEKS                       R2 R0 K10 ["text"]
       50 JUMPIFNOT                        R2 ; [+3]
       51 GETTABLEKS                       R2 R0 K10 ["text"]
       53 RETURN                           R2 1
       54 LOADB                            R3 0
       55 LOADK                            R5 K11 ["No text for node at %*"]
       56 GETTABLEKS                       R7 R0 K5 ["offset"]
       58 NAMECALL                         R5 R5 K6 ["format"]
       60 CALL                             R5 2 1
       61 MOVE                             R4 R5
       62 FASTCALL2                        ASSERT R3 R4 ; [+3]
       64 GETIMPORT                        R2 K8 [assert]
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R3 0
        1 GETTABLE                         R4 R0 R1
        2 GETTABLEKS                       R5 R4 K0 ["attributes"]
        4 GETTABLEKS                       R5 R5 K1 ["depth"]
        6 NEWTABLE                         R6 0 0
        8 MOVE                             R7 R1
        9 LENGTH                           R8 R0
       10 JUMPIFNOTLE                      R7 R8 ; [+66]
       12 GETTABLE                         R8 R0 R7
       13 GETTABLEKS                       R9 R8 K2 ["name"]
       15 JUMPIFNOTEQKS                    R9 K3 ["LIST_ITEM"] ; [+61]
       17 GETTABLEKS                       R9 R8 K0 ["attributes"]
       19 GETTABLEKS                       R9 R9 K1 ["depth"]
       21 JUMPIFNOTEQ                      R9 R5 ; [+18]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K4 ["postProcessTree"]
       26 MOVE                             R10 R8
       27 MOVE                             R11 R2
       28 CALL                             R9 2 1
       29 SETTABLEKS                       R9 R8 K5 ["children"]
       31 FASTCALL2                        TABLE_INSERT R6 R8 ; [+4]
       33 MOVE                             R10 R6
       34 MOVE                             R11 R8
       35 GETUPVAL                         R9 1
       36 CALL                             R9 2 0
       37 ADDK                             R3 R3 K6 [1]
       38 ADDK                             R7 R7 K6 [1]
       39 JUMP                             ; [+36]
       40 GETTABLEKS                       R9 R8 K0 ["attributes"]
       42 GETTABLEKS                       R9 R9 K1 ["depth"]
       44 JUMPIFNOTLT                      R5 R9 ; [+32]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K7 ["buildList"]
       49 MOVE                             R10 R0
       50 MOVE                             R11 R7
       51 MOVE                             R12 R2
       52 CALL                             R9 3 2
       53 FASTCALL2                        TABLE_INSERT R6 R10 ; [+4]
       55 MOVE                             R12 R6
       56 MOVE                             R13 R10
       57 GETUPVAL                         R11 1
       58 CALL                             R11 2 0
       59 LOADN                            R13 0
       60 JUMPIFLT                         R13 R9 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 FASTCALL2K                       ASSERT R12 K8 ; [+4]
       66 LOADK                            R13 K8 ["Did not find a list node when expected"]
       67 GETIMPORT                        R11 K10 [assert]
       69 CALL                             R11 2 0
       70 ADD                              R7 R7 R9
       71 ADD                              R3 R3 R9
       72 JUMP                             ; [+3]
       73 JUMP                             ; [+3]
       74 JUMP                             ; [+1]
       75 JUMP                             ; [+1]
       76 JUMPBACK                         ; [-68]
       77 MOVE                             R8 R3
       78 DUPTABLE                         R9 K13 [{["name"] = "LIST", [2], ["children"], ["offset"]}]
       79 DUPTABLE                         R10 K14 [{"depth"}]
       80 SETTABLEKS                       R5 R10 K1 ["depth"]
       82 SETTABLEKS                       R10 R9 K0 ["attributes"]
       84 SETTABLEKS                       R6 R9 K5 ["children"]
       86 GETTABLE                         R10 R0 R1
       87 GETTABLEKS                       R10 R10 K12 ["offset"]
       89 SETTABLEKS                       R10 R9 K12 ["offset"]
       91 RETURN                           R8 2

PROTO_4:
        0 LOADN                            R3 0
        1 NEWTABLE                         R4 0 0
        3 MOVE                             R7 R1
        4 LENGTH                           R5 R0
        5 LOADN                            R6 1
        6 FORNPREP                         R5
        7 GETTABLE                         R8 R0 R7
        8 GETTABLEKS                       R9 R8 K0 ["name"]
       10 JUMPIFNOTEQKS                    R9 K1 ["TABLE_ROW"] ; [+30]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K2 ["buildTableCells"]
       15 MOVE                             R10 R8
       16 MOVE                             R11 R2
       17 CALL                             R9 2 1
       18 JUMPIFNOT                        R9 ; [+9]
       19 SETTABLEKS                       R9 R8 K3 ["children"]
       21 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       23 MOVE                             R11 R4
       24 MOVE                             R12 R8
       25 GETUPVAL                         R10 1
       26 CALL                             R10 2 0
       27 JUMP                             ; [+9]
       28 LENGTH                           R10 R4
       29 LOADN                            R11 0
       30 JUMPIFNOTLT                      R11 R10 ; [+6]
       32 LENGTH                           R11 R4
       33 GETTABLE                         R10 R4 R11
       34 LOADK                            R11 K4 ["TABLE_HEADER"]
       35 SETTABLEKS                       R11 R10 K0 ["name"]
       37 ADDK                             R3 R3 K5 [1]
       38 JUMP                             ; [+1]
       39 JUMP                             ; [+1]
       40 FORNLOOP                         R5
       41 MOVE                             R5 R3
       42 DUPTABLE                         R6 K8 [{[1] = "TABLE", ["children"], ["offset"]}]
       43 SETTABLEKS                       R4 R6 K3 ["children"]
       45 GETTABLE                         R7 R0 R1
       46 GETTABLEKS                       R7 R7 K7 ["offset"]
       48 SETTABLEKS                       R7 R6 K7 ["offset"]
       50 RETURN                           R5 2

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADB                            R4 1
        5 GETTABLEKS                       R6 R0 K0 ["children"]
        7 GETTABLEN                        R5 R6 1
        8 LOADN                            R8 1
        9 GETTABLEKS                       R9 R0 K0 ["children"]
       11 LENGTH                           R6 R9
       12 LOADN                            R7 1
       13 FORNPREP                         R6
       14 GETTABLEKS                       R10 R0 K0 ["children"]
       16 GETTABLE                         R9 R10 R8
       17 GETTABLEKS                       R10 R9 K1 ["name"]
       19 JUMPIFNOTEQKS                    R10 K2 ["TABLE_DIVIDER"] ; [+49]
       21 DUPTABLE                         R10 K7 [{["name"] = "TABLE_CELL", ["isBlock"] = True, [3], ["offset"]}]
       22 SETTABLEKS                       R3 R10 K0 ["children"]
       24 GETTABLEN                        R12 R3 1
       25 JUMPIFNOT                        R12 ; [+4]
       26 GETTABLEN                        R11 R3 1
       27 GETTABLEKS                       R11 R11 K6 ["offset"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R11 R0 K6 ["offset"]
       32 SETTABLEKS                       R11 R10 K6 ["offset"]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K8 ["postProcessTree"]
       37 MOVE                             R12 R10
       38 MOVE                             R13 R1
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K0 ["children"]
       42 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       44 MOVE                             R12 R2
       45 MOVE                             R13 R10
       46 GETUPVAL                         R11 1
       47 CALL                             R11 2 0
       48 GETTABLEKS                       R11 R5 K9 ["text"]
       50 JUMPIFNOT                        R11 ; [+10]
       51 GETTABLEKS                       R12 R5 K9 ["text"]
       53 LOADK                            R14 K10 ["^[ \t-=]+$"]
       54 NAMECALL                         R12 R12 K11 ["match"]
       56 CALL                             R12 2 1
       57 JUMPIFNOTEQKNIL                  R12 ; [+2]
       59 LOADB                            R11 0 +1
       60 LOADB                            R11 1
       61 JUMPIFNOT                        R4 ; [+2]
       62 MOVE                             R12 R11
       63 JUMPIF                           R12 ; [+1]
       64 LOADB                            R12 0
       65 MOVE                             R4 R12
       66 NEWTABLE                         R3 0 0
       68 JUMP                             ; [+6]
       69 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       71 MOVE                             R11 R3
       72 MOVE                             R12 R9
       73 GETUPVAL                         R10 1
       74 CALL                             R10 2 0
       75 FORNLOOP                         R6
       76 JUMPIFNOT                        R4 ; [+2]
       77 LOADNIL                          R6
       78 RETURN                           R6 1
       79 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R3 K0 [""]
        1 LOADN                            R4 0
        2 MOVE                             R7 R1
        3 LENGTH                           R5 R0
        4 LOADN                            R6 1
        5 FORNPREP                         R5
        6 GETTABLE                         R8 R0 R7
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R11 R8 K1 ["name"]
       10 GETTABLE                         R9 R10 R11
       11 JUMPIFNOT                        R9 ; [+8]
       12 MOVE                             R9 R3
       13 GETTABLEKS                       R10 R8 K2 ["text"]
       15 CONCAT                           R3 R9 R10
       16 ADDK                             R4 R4 K3 [1]
       17 JUMP                             ; [+1]
       18 JUMP                             ; [+1]
       19 FORNLOOP                         R5
       20 JUMPIF                           R2 ; [+6]
       21 LOADK                            R7 K4 ["^\n*(.-)\n*$"]
       22 LOADK                            R8 K5 ["%1"]
       23 NAMECALL                         R5 R3 K6 ["gsub"]
       25 CALL                             R5 3 1
       26 MOVE                             R3 R5
       27 MOVE                             R5 R4
       28 DUPTABLE                         R6 K10 [{["name"] = "TEXT", ["text"], ["children"], ["offset"]}]
       29 SETTABLEKS                       R3 R6 K2 ["text"]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K8 ["children"]
       35 GETTABLE                         R7 R0 R1
       36 GETTABLEKS                       R7 R7 K9 ["offset"]
       38 SETTABLEKS                       R7 R6 K9 ["offset"]
       40 RETURN                           R5 2

PROTO_7:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADB                            R3 0
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K0 ["text"]
        9 JUMPIFNOT                        R9 ; [+18]
       10 GETTABLEKS                       R10 R8 K0 ["text"]
       12 LENGTH                           R9 R10
       13 LOADN                            R10 0
       14 JUMPIFNOTLT                      R10 R9 ; [+13]
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 MOVE                             R1 R8
       19 MOVE                             R2 R8
       20 GETTABLEKS                       R9 R8 K0 ["text"]
       22 LOADK                            R11 K1 ["[^\n ]"]
       23 NAMECALL                         R9 R9 K2 ["find"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+1]
       27 LOADB                            R3 1
       28 FORGLOOP                         R4 2 ; [-22]
       30 JUMPIFEQKNIL                     R1 ; [+3]
       32 JUMPIFNOTEQKNIL                  R2 ; [+2]
       34 RETURN                           R0 1
       35 GETTABLEKS                       R5 R1 K0 ["text"]
       37 ORK                              R4 R5 K3 [""]
       38 LOADK                            R6 K4 ["\n"]
       39 LOADK                            R7 K5 [" "]
       40 NAMECALL                         R4 R4 K6 ["gsub"]
       42 CALL                             R4 3 1
       43 GETTABLEKS                       R6 R2 K0 ["text"]
       45 ORK                              R5 R6 K3 [""]
       46 LOADK                            R7 K4 ["\n"]
       47 LOADK                            R8 K5 [" "]
       48 NAMECALL                         R5 R5 K6 ["gsub"]
       50 CALL                             R5 3 1
       51 LOADN                            R8 1
       52 LOADN                            R9 1
       53 NAMECALL                         R6 R4 K7 ["sub"]
       55 CALL                             R6 3 1
       56 JUMPIFNOTEQKS                    R6 K5 [" "] ; [+30]
       58 LOADN                            R8 -1
       59 LOADN                            R9 -1
       60 NAMECALL                         R6 R5 K7 ["sub"]
       62 CALL                             R6 3 1
       63 JUMPIFNOTEQKS                    R6 K5 [" "] ; [+23]
       65 JUMPIFNOT                        R3 ; [+21]
       66 JUMPIFNOTEQ                      R1 R2 ; [+9]
       68 LOADN                            R8 2
       69 LOADN                            R9 -2
       70 NAMECALL                         R6 R4 K7 ["sub"]
       72 CALL                             R6 3 1
       73 MOVE                             R4 R6
       74 MOVE                             R5 R4
       75 JUMP                             ; [+11]
       76 LOADN                            R8 2
       77 NAMECALL                         R6 R4 K7 ["sub"]
       79 CALL                             R6 2 1
       80 MOVE                             R4 R6
       81 LOADN                            R8 1
       82 LOADN                            R9 -2
       83 NAMECALL                         R6 R5 K7 ["sub"]
       85 CALL                             R6 3 1
       86 MOVE                             R5 R6
       87 SETTABLEKS                       R4 R1 K0 ["text"]
       89 SETTABLEKS                       R5 R2 K0 ["text"]
       91 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K10 [table.insert]
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K4 ["Parent"]
       24 GETTABLEKS                       R4 R4 K11 ["Constants"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K12 ["CONTAINERS"]
       29 GETTABLEKS                       R5 R3 K13 ["INLINE_TEXT"]
       31 GETTABLEKS                       R6 R3 K14 ["PLAIN_TEXT"]
       33 GETTABLEKS                       R7 R3 K15 ["STYLED_TEXT"]
       35 NEWTABLE                         R8 8 0
       37 DUPCLOSURE                       R9 K16 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R9 R8 K17 ["postProcessTree"]
       45 DUPCLOSURE                       R9 K18 [PROTO_1]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R9 R8 K19 ["buildParagraph"]
       52 DUPCLOSURE                       R9 K20 [PROTO_2]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R9 R8 K21 ["outputRichText"]
       57 DUPCLOSURE                       R9 K22 [PROTO_3]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R9 R8 K23 ["buildList"]
       62 DUPCLOSURE                       R9 K24 [PROTO_4]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R9 R8 K25 ["buildTable"]
       67 DUPCLOSURE                       R9 K26 [PROTO_5]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R9 R8 K27 ["buildTableCells"]
       72 DUPCLOSURE                       R9 K28 [PROTO_6]
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R9 R8 K29 ["mergeTextNodes"]
       76 DUPCLOSURE                       R9 K30 [PROTO_7]
       77 SETTABLEKS                       R9 R8 K31 ["applyCodeSpanRules"]
       79 GETTABLEKS                       R9 R8 K17 ["postProcessTree"]
       81 RETURN                           R9 1
