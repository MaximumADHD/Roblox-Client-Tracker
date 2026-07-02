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
       22 JUMPIFNOTLE                      R3 R7 ; [+172]
       24 GETTABLE                         R7 R4 R3
       25 LOADB                            R8 0
       26 GETTABLEKS                       R9 R7 K1 ["name"]
       28 JUMPIFNOTEQKS                    R9 K2 ["TAG"] ; [+6]
       30 GETTABLEKS                       R9 R1 K3 ["inlineTags"]
       32 GETTABLEKS                       R10 R7 K4 ["text"]
       34 GETTABLE                         R8 R9 R10
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R12 R7 K1 ["name"]
       38 GETTABLE                         R10 R11 R12
       39 OR                               R9 R10 R8
       40 JUMPIFNOT                        R9 ; [+33]
       41 JUMPIFNOT                        R6 ; [+32]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K5 ["buildParagraph"]
       45 MOVE                             R11 R4
       46 MOVE                             R12 R3
       47 MOVE                             R13 R1
       48 CALL                             R10 3 2
       49 LOADN                            R14 0
       50 JUMPIFLT                         R14 R10 ; [+2]
       52 LOADB                            R13 0 +1
       53 LOADB                            R13 1
       54 FASTCALL2K                       ASSERT R13 K6 ; [+4]
       56 LOADK                            R14 K6 ["Did not find an inline node when expected"]
       57 GETIMPORT                        R12 K8 [assert]
       59 CALL                             R12 2 0
       60 GETTABLEKS                       R13 R11 K0 ["children"]
       62 LENGTH                           R12 R13
       63 LOADN                            R13 0
       64 JUMPIFNOTLT                      R13 R12 ; [+7]
       66 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       68 MOVE                             R13 R2
       69 MOVE                             R14 R11
       70 GETUPVAL                         R12 3
       71 CALL                             R12 2 0
       72 ADD                              R3 R3 R10
       73 JUMP                             ; [+120]
       74 GETUPVAL                         R11 4
       75 GETTABLEKS                       R12 R7 K1 ["name"]
       77 GETTABLE                         R10 R11 R12
       78 JUMPIFNOT                        R10 ; [+34]
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K9 ["mergeTextNodes"]
       82 MOVE                             R11 R4
       83 MOVE                             R12 R3
       84 CALL                             R10 2 2
       85 LOADN                            R14 0
       86 JUMPIFLT                         R14 R10 ; [+2]
       88 LOADB                            R13 0 +1
       89 LOADB                            R13 1
       90 FASTCALL2K                       ASSERT R13 K10 ; [+4]
       92 LOADK                            R14 K10 ["Did not find a text node when expected"]
       93 GETIMPORT                        R12 K8 [assert]
       95 CALL                             R12 2 0
       96 GETTABLEKS                       R12 R11 K4 ["text"]
       98 JUMPIFNOT                        R12 ; [+12]
       99 GETTABLEKS                       R13 R11 K4 ["text"]
      101 LENGTH                           R12 R13
      102 LOADN                            R13 0
      103 JUMPIFNOTLT                      R13 R12 ; [+7]
      105 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      107 MOVE                             R13 R2
      108 MOVE                             R14 R11
      109 GETUPVAL                         R12 3
      110 CALL                             R12 2 0
      111 ADD                              R3 R3 R10
      112 JUMP                             ; [+81]
      113 GETTABLEKS                       R10 R7 K1 ["name"]
      115 JUMPIFNOTEQKS                    R10 K11 ["LIST_ITEM"] ; [+27]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R10 R10 K12 ["buildList"]
      120 MOVE                             R11 R4
      121 MOVE                             R12 R3
      122 MOVE                             R13 R1
      123 CALL                             R10 3 2
      124 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      126 MOVE                             R13 R2
      127 MOVE                             R14 R11
      128 GETUPVAL                         R12 3
      129 CALL                             R12 2 0
      130 LOADN                            R14 0
      131 JUMPIFLT                         R14 R10 ; [+2]
      133 LOADB                            R13 0 +1
      134 LOADB                            R13 1
      135 FASTCALL2K                       ASSERT R13 K13 ; [+4]
      137 LOADK                            R14 K13 ["Did not find a list node when expected"]
      138 GETIMPORT                        R12 K8 [assert]
      140 CALL                             R12 2 0
      141 ADD                              R3 R3 R10
      142 JUMP                             ; [+51]
      143 GETTABLEKS                       R10 R7 K1 ["name"]
      145 JUMPIFNOTEQKS                    R10 K14 ["TABLE_ROW"] ; [+27]
      147 GETUPVAL                         R10 2
      148 GETTABLEKS                       R10 R10 K15 ["buildTable"]
      150 MOVE                             R11 R4
      151 MOVE                             R12 R3
      152 MOVE                             R13 R1
      153 CALL                             R10 3 2
      154 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      156 MOVE                             R13 R2
      157 MOVE                             R14 R11
      158 GETUPVAL                         R12 3
      159 CALL                             R12 2 0
      160 LOADN                            R14 0
      161 JUMPIFLT                         R14 R10 ; [+2]
      163 LOADB                            R13 0 +1
      164 LOADB                            R13 1
      165 FASTCALL2K                       ASSERT R13 K16 ; [+4]
      167 LOADK                            R14 K16 ["Did not find a table row node when expected"]
      168 GETIMPORT                        R12 K8 [assert]
      170 CALL                             R12 2 0
      171 ADD                              R3 R3 R10
      172 JUMP                             ; [+21]
      173 GETTABLEKS                       R10 R7 K1 ["name"]
      175 JUMPIFNOTEQKS                    R10 K17 ["LINE_BREAK"] ; [+3]
      177 ADDK                             R3 R3 K18 [1]
      178 JUMP                             ; [+15]
      179 GETUPVAL                         R10 2
      180 GETTABLEKS                       R10 R10 K19 ["postProcessTree"]
      182 MOVE                             R11 R7
      183 MOVE                             R12 R1
      184 CALL                             R10 2 1
      185 SETTABLEKS                       R10 R7 K0 ["children"]
      187 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      189 MOVE                             R11 R2
      190 MOVE                             R12 R7
      191 GETUPVAL                         R10 3
      192 CALL                             R10 2 0
      193 ADDK                             R3 R3 K18 [1]
      194 JUMPBACK                         ; [-174]
      195 GETTABLEKS                       R7 R0 K20 ["isBlock"]
      197 JUMPIFNOT                        R7 ; [+29]
      198 GETTABLEN                        R7 R2 1
      199 JUMPIFNOT                        R7 ; [+12]
      200 GETTABLEKS                       R8 R7 K4 ["text"]
      202 JUMPIFNOT                        R8 ; [+9]
      203 GETTABLEKS                       R8 R7 K4 ["text"]
      205 LOADK                            R10 K21 ["^%s+"]
      206 LOADK                            R11 K22 [""]
      207 NAMECALL                         R8 R8 K23 ["gsub"]
      209 CALL                             R8 3 1
      210 SETTABLEKS                       R8 R7 K4 ["text"]
      212 LENGTH                           R9 R2
      213 GETTABLE                         R8 R2 R9
      214 JUMPIFNOT                        R8 ; [+12]
      215 GETTABLEKS                       R9 R8 K4 ["text"]
      217 JUMPIFNOT                        R9 ; [+9]
      218 GETTABLEKS                       R9 R8 K4 ["text"]
      220 LOADK                            R11 K24 ["%s+$"]
      221 LOADK                            R12 K22 [""]
      222 NAMECALL                         R9 R9 K23 ["gsub"]
      224 CALL                             R9 3 1
      225 SETTABLEKS                       R9 R8 K4 ["text"]
      227 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 MOVE                             R5 R1
        4 LENGTH                           R6 R0
        5 JUMPIFNOTLE                      R5 R6 ; [+69]
        7 GETTABLE                         R6 R0 R5
        8 LOADB                            R7 0
        9 GETTABLEKS                       R8 R6 K0 ["name"]
       11 JUMPIFNOTEQKS                    R8 K1 ["TAG"] ; [+6]
       13 GETTABLEKS                       R8 R2 K2 ["inlineTags"]
       15 GETTABLEKS                       R9 R6 K3 ["text"]
       17 GETTABLE                         R7 R8 R9
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R11 R6 K0 ["name"]
       21 GETTABLE                         R9 R10 R11
       22 OR                               R8 R9 R7
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R11 R6 K0 ["name"]
       26 GETTABLE                         R9 R10 R11
       27 JUMPIFNOT                        R9 ; [+35]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K4 ["mergeTextNodes"]
       31 MOVE                             R10 R0
       32 MOVE                             R11 R5
       33 CALL                             R9 2 2
       34 GETTABLEKS                       R11 R10 K3 ["text"]
       36 JUMPIFNOT                        R11 ; [+12]
       37 GETTABLEKS                       R12 R10 K3 ["text"]
       39 LENGTH                           R11 R12
       40 LOADN                            R12 0
       41 JUMPIFNOTLT                      R12 R11 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       45 MOVE                             R12 R3
       46 MOVE                             R13 R10
       47 GETUPVAL                         R11 3
       48 CALL                             R11 2 0
       49 LOADN                            R13 0
       50 JUMPIFLT                         R13 R9 ; [+2]
       52 LOADB                            R12 0 +1
       53 LOADB                            R12 1
       54 FASTCALL2K                       ASSERT R12 K5 ; [+4]
       56 LOADK                            R13 K5 ["Did not find a rich text node when expected"]
       57 GETIMPORT                        R11 K7 [assert]
       59 CALL                             R11 2 0
       60 ADD                              R4 R4 R9
       61 ADD                              R5 R5 R9
       62 JUMP                             ; [+11]
       63 JUMPIFNOT                        R8 ; [+11]
       64 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       66 MOVE                             R10 R3
       67 MOVE                             R11 R6
       68 GETUPVAL                         R9 3
       69 CALL                             R9 2 0
       70 ADDK                             R4 R4 K8 [1]
       71 ADDK                             R5 R5 K8 [1]
       72 JUMP                             ; [+1]
       73 JUMP                             ; [+1]
       74 JUMPBACK                         ; [-71]
       75 MOVE                             R6 R4
       76 DUPTABLE                         R7 K12 [{[1] = "PARAGRAPH", ["children"], ["offset"]}]
       77 SETTABLEKS                       R3 R7 K10 ["children"]
       79 GETTABLE                         R8 R0 R1
       80 GETTABLEKS                       R8 R8 K11 ["offset"]
       82 SETTABLEKS                       R8 R7 K11 ["offset"]
       84 RETURN                           R6 2

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
        0 LOADK                            R2 K0 [""]
        1 LOADN                            R3 0
        2 MOVE                             R6 R1
        3 LENGTH                           R4 R0
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 GETTABLE                         R7 R0 R6
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R10 R7 K1 ["name"]
       10 GETTABLE                         R8 R9 R10
       11 JUMPIFNOT                        R8 ; [+8]
       12 MOVE                             R8 R2
       13 GETTABLEKS                       R9 R7 K2 ["text"]
       15 CONCAT                           R2 R8 R9
       16 ADDK                             R3 R3 K3 [1]
       17 JUMP                             ; [+1]
       18 JUMP                             ; [+1]
       19 FORNLOOP                         R4
       20 LOADK                            R6 K4 ["^\n*(.-)\n*$"]
       21 LOADK                            R7 K5 ["%1"]
       22 NAMECALL                         R4 R2 K6 ["gsub"]
       24 CALL                             R4 3 1
       25 MOVE                             R2 R4
       26 MOVE                             R4 R3
       27 DUPTABLE                         R5 K10 [{["name"] = "TEXT", ["text"], ["children"], ["offset"]}]
       28 SETTABLEKS                       R2 R5 K2 ["text"]
       30 NEWTABLE                         R6 0 0
       32 SETTABLEKS                       R6 R5 K8 ["children"]
       34 GETTABLE                         R6 R0 R1
       35 GETTABLEKS                       R6 R6 K9 ["offset"]
       37 SETTABLEKS                       R6 R5 K9 ["offset"]
       39 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K8 [table.insert]
       12 GETIMPORT                        R2 K1 [require]
       14 GETIMPORT                        R3 K3 [script]
       16 GETTABLEKS                       R3 R3 K4 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["CONTAINERS"]
       23 GETTABLEKS                       R4 R2 K11 ["INLINE_TEXT"]
       25 GETTABLEKS                       R5 R2 K12 ["PLAIN_TEXT"]
       27 GETTABLEKS                       R6 R2 K13 ["STYLED_TEXT"]
       29 NEWTABLE                         R7 8 0
       31 DUPCLOSURE                       R8 K14 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R8 R7 K15 ["postProcessTree"]
       39 DUPCLOSURE                       R8 K16 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R8 R7 K17 ["buildParagraph"]
       46 DUPCLOSURE                       R8 K18 [PROTO_2]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 SETTABLEKS                       R8 R7 K19 ["outputRichText"]
       51 DUPCLOSURE                       R8 K20 [PROTO_3]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R8 R7 K21 ["buildList"]
       56 DUPCLOSURE                       R8 K22 [PROTO_4]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R8 R7 K23 ["buildTable"]
       61 DUPCLOSURE                       R8 K24 [PROTO_5]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R8 R7 K25 ["buildTableCells"]
       66 DUPCLOSURE                       R8 K26 [PROTO_6]
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R8 R7 K27 ["mergeTextNodes"]
       70 GETTABLEKS                       R8 R7 K15 ["postProcessTree"]
       72 RETURN                           R8 1
