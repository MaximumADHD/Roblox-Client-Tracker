PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 GETIMPORT                        R2 K4 [table.sort]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K1 [next]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADK                            R1 K2 [""]
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R0
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       19 MOVE                             R12 R5
       20 MOVE                             R13 R9
       21 GETIMPORT                        R11 K5 [table.insert]
       23 CALL                             R11 2 0
       24 FORGLOOP                         R6 1 ; [-8]
       26 GETIMPORT                        R6 K7 [table.sort]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 0
       30 MOVE                             R2 R5
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLE                         R7 R0 R6
       35 JUMPIFNOTEQKB                    R7 TRUE ; [+9]
       37 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       39 MOVE                             R9 R1
       40 MOVE                             R10 R6
       41 GETIMPORT                        R8 K5 [table.insert]
       43 CALL                             R8 2 0
       44 JUMP                             ; [+119]
       45 FASTCALL1                        TYPEOF R7 ; [+3]
       46 MOVE                             R9 R7
       47 GETIMPORT                        R8 K9 [typeof]
       49 CALL                             R8 1 1
       50 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+18]
       52 GETTABLEKS                       R8 R7 K10 ["type"]
       54 JUMPIFNOTEQKS                    R8 K11 ["Expr"] ; [+14]
       56 MOVE                             R11 R6
       57 LOADK                            R12 K12 ["={"]
       58 GETTABLEKS                       R13 R7 K13 ["expr"]
       60 LOADK                            R14 K14 ["}"]
       61 CONCAT                           R10 R11 R14
       62 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       64 MOVE                             R9 R1
       65 GETIMPORT                        R8 K5 [table.insert]
       67 CALL                             R8 2 0
       68 JUMP                             ; [+95]
       69 FASTCALL1                        TYPEOF R7 ; [+3]
       70 MOVE                             R9 R7
       71 GETIMPORT                        R8 K9 [typeof]
       73 CALL                             R8 1 1
       74 JUMPIFNOTEQKS                    R8 K15 ["string"] ; [+25]
       76 LOADK                            R10 K16 ["\\"]
       77 LOADK                            R11 K17 ["\\\\"]
       78 NAMECALL                         R8 R7 K18 ["gsub"]
       80 CALL                             R8 3 1
       81 LOADK                            R10 K19 ["\""]
       82 LOADK                            R11 K20 ["\\\""]
       83 NAMECALL                         R8 R8 K18 ["gsub"]
       85 CALL                             R8 3 1
       86 LOADK                            R12 K21 ["%*=\"%*\""]
       87 MOVE                             R14 R6
       88 MOVE                             R15 R8
       89 NAMECALL                         R12 R12 K22 ["format"]
       91 CALL                             R12 3 1
       92 MOVE                             R11 R12
       93 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       95 MOVE                             R10 R1
       96 GETIMPORT                        R9 K5 [table.insert]
       98 CALL                             R9 2 0
       99 JUMP                             ; [+64]
      100 FASTCALL1                        TYPEOF R7 ; [+3]
      101 MOVE                             R9 R7
      102 GETIMPORT                        R8 K9 [typeof]
      104 CALL                             R8 1 1
      105 JUMPIFNOTEQKS                    R8 K23 ["number"] ; [+18]
      107 MOVE                             R11 R6
      108 LOADK                            R12 K12 ["={"]
      109 FASTCALL1                        TOSTRING R7 ; [+3]
      110 MOVE                             R16 R7
      111 GETIMPORT                        R15 K25 [tostring]
      113 CALL                             R15 1 1
      114 MOVE                             R13 R15
      115 LOADK                            R14 K14 ["}"]
      116 CONCAT                           R10 R11 R14
      117 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      119 MOVE                             R9 R1
      120 GETIMPORT                        R8 K5 [table.insert]
      122 CALL                             R8 2 0
      123 JUMP                             ; [+40]
      124 JUMPIFNOTEQKB                    R7 FALSE ; [+11]
      126 MOVE                             R11 R6
      127 LOADK                            R12 K26 ["={false}"]
      128 CONCAT                           R10 R11 R12
      129 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      131 MOVE                             R9 R1
      132 GETIMPORT                        R8 K5 [table.insert]
      134 CALL                             R8 2 0
      135 JUMP                             ; [+28]
      136 FASTCALL1                        TOSTRING R7 ; [+3]
      137 MOVE                             R9 R7
      138 GETIMPORT                        R8 K25 [tostring]
      140 CALL                             R8 1 1
      141 LOADK                            R10 K16 ["\\"]
      142 LOADK                            R11 K17 ["\\\\"]
      143 NAMECALL                         R8 R8 K18 ["gsub"]
      145 CALL                             R8 3 1
      146 LOADK                            R10 K19 ["\""]
      147 LOADK                            R11 K20 ["\\\""]
      148 NAMECALL                         R8 R8 K18 ["gsub"]
      150 CALL                             R8 3 1
      151 LOADK                            R12 K21 ["%*=\"%*\""]
      152 MOVE                             R14 R6
      153 MOVE                             R15 R8
      154 NAMECALL                         R12 R12 K22 ["format"]
      156 CALL                             R12 3 1
      157 MOVE                             R11 R12
      158 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      160 MOVE                             R10 R1
      161 GETIMPORT                        R9 K5 [table.insert]
      163 CALL                             R9 2 0
      164 FORGLOOP                         R2 2 ; [-131]
      166 LENGTH                           R2 R1
      167 JUMPIFNOTEQKN                    R2 K27 [0] ; [+3]
      169 LOADK                            R2 K2 [""]
      170 RETURN                           R2 1
      171 LOADK                            R3 K28 [" "]
      172 GETIMPORT                        R4 K30 [table.concat]
      174 MOVE                             R5 R1
      175 LOADK                            R6 K28 [" "]
      176 CALL                             R4 2 1
      177 CONCAT                           R2 R3 R4
      178 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFNOTEQKS                    R7 K1 ["INLINE_TEXT"] ; [+11]
       10 GETTABLEKS                       R10 R6 K3 ["text"]
       12 ORK                              R9 R10 K2 [""]
       13 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K6 [table.insert]
       18 CALL                             R7 2 0
       19 JUMP                             ; [+12]
       20 GETTABLEKS                       R7 R6 K0 ["name"]
       22 JUMPIFNOTEQKS                    R7 K7 ["COMPONENT"] ; [+9]
       24 MOVE                             R8 R1
       25 GETUPVAL                         R9 0
       26 MOVE                             R10 R6
       27 CALL                             R9 1 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R7 K6 [table.insert]
       31 CALL                             R7 -1 0
       32 FORGLOOP                         R2 2 ; [-27]
       34 GETIMPORT                        R2 K9 [table.concat]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K10 ["\n"]
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["attributes"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETTABLEKS                       R3 R1 K2 ["tagName"]
        7 ORK                              R2 R3 K1 ["Component"]
        8 GETTABLEKS                       R3 R1 K3 ["props"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R0 K4 ["children"]
       15 JUMPIF                           R4 ; [+2]
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R5 0
       19 MOVE                             R6 R3
       20 CALL                             R5 1 1
       21 LENGTH                           R6 R4
       22 JUMPIFNOTEQKN                    R6 K5 [0] ; [+9]
       24 LOADK                            R7 K6 ["<%*%* />"]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R5
       27 NAMECALL                         R7 R7 K7 ["format"]
       29 CALL                             R7 3 1
       30 MOVE                             R6 R7
       31 RETURN                           R6 1
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 LOADK                            R8 K8 ["<%*%*>\n%*\n</%*>"]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R5
       38 MOVE                             R12 R6
       39 MOVE                             R13 R2
       40 NAMECALL                         R8 R8 K7 ["format"]
       42 CALL                             R8 5 1
       43 MOVE                             R7 R8
       44 RETURN                           R7 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFNOTEQKS                    R7 K1 ["TEXT"] ; [+11]
       10 GETTABLEKS                       R10 R6 K3 ["text"]
       12 ORK                              R9 R10 K2 [""]
       13 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K6 [table.insert]
       18 CALL                             R7 2 0
       19 JUMP                             ; [+183]
       20 GETTABLEKS                       R7 R6 K0 ["name"]
       22 JUMPIFNOTEQKS                    R7 K7 ["INLINE_TEXT"] ; [+11]
       24 GETTABLEKS                       R10 R6 K3 ["text"]
       26 ORK                              R9 R10 K2 [""]
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K6 [table.insert]
       32 CALL                             R7 2 0
       33 JUMP                             ; [+169]
       34 GETTABLEKS                       R7 R6 K0 ["name"]
       36 JUMPIFNOTEQKS                    R7 K8 ["STYLED_TEXT"] ; [+81]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R8 R6 K9 ["children"]
       41 JUMPIF                           R8 ; [+2]
       42 NEWTABLE                         R8 0 0
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R6 K10 ["attributes"]
       47 JUMPIFNOT                        R8 ; [+4]
       48 GETTABLEKS                       R8 R6 K10 ["attributes"]
       50 GETTABLEKS                       R8 R8 K11 ["style"]
       52 JUMPIFNOTEQKS                    R8 K12 ["BOLD"] ; [+14]
       54 LOADK                            R12 K13 ["**%***"]
       55 MOVE                             R14 R7
       56 NAMECALL                         R12 R12 K14 ["format"]
       58 CALL                             R12 2 1
       59 MOVE                             R11 R12
       60 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       62 MOVE                             R10 R1
       63 GETIMPORT                        R9 K6 [table.insert]
       65 CALL                             R9 2 0
       66 JUMP                             ; [+136]
       67 JUMPIFNOTEQKS                    R8 K15 ["ITALIC"] ; [+14]
       69 LOADK                            R12 K16 ["*%**"]
       70 MOVE                             R14 R7
       71 NAMECALL                         R12 R12 K14 ["format"]
       73 CALL                             R12 2 1
       74 MOVE                             R11 R12
       75 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       77 MOVE                             R10 R1
       78 GETIMPORT                        R9 K6 [table.insert]
       80 CALL                             R9 2 0
       81 JUMP                             ; [+121]
       82 JUMPIFNOTEQKS                    R8 K17 ["STRIKE"] ; [+14]
       84 LOADK                            R12 K18 ["~~%*~~"]
       85 MOVE                             R14 R7
       86 NAMECALL                         R12 R12 K14 ["format"]
       88 CALL                             R12 2 1
       89 MOVE                             R11 R12
       90 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       92 MOVE                             R10 R1
       93 GETIMPORT                        R9 K6 [table.insert]
       95 CALL                             R9 2 0
       96 JUMP                             ; [+106]
       97 JUMPIFNOTEQKS                    R8 K19 ["INLINE_CODE"] ; [+12]
       99 LOADK                            R12 K20 ["`"]
      100 MOVE                             R13 R7
      101 LOADK                            R14 K20 ["`"]
      102 CONCAT                           R11 R12 R14
      103 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      105 MOVE                             R10 R1
      106 GETIMPORT                        R9 K6 [table.insert]
      108 CALL                             R9 2 0
      109 JUMP                             ; [+93]
      110 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      112 MOVE                             R10 R1
      113 MOVE                             R11 R7
      114 GETIMPORT                        R9 K6 [table.insert]
      116 CALL                             R9 2 0
      117 JUMP                             ; [+85]
      118 GETTABLEKS                       R7 R6 K0 ["name"]
      120 JUMPIFNOTEQKS                    R7 K21 ["LINK"] ; [+41]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R8 R6 K9 ["children"]
      125 JUMPIF                           R8 ; [+2]
      126 NEWTABLE                         R8 0 0
      128 CALL                             R7 1 1
      129 JUMPIFNOTEQKS                    R7 K2 [""] ; [+6]
      131 GETTABLEKS                       R8 R6 K3 ["text"]
      133 JUMPIFNOT                        R8 ; [+2]
      134 GETTABLEKS                       R7 R6 K3 ["text"]
      136 GETTABLEKS                       R9 R6 K10 ["attributes"]
      138 JUMPIFNOT                        R9 ; [+5]
      139 GETTABLEKS                       R8 R6 K10 ["attributes"]
      141 GETTABLEKS                       R8 R8 K22 ["url"]
      143 JUMPIF                           R8 ; [+4]
      144 GETTABLEKS                       R8 R6 K22 ["url"]
      146 JUMPIF                           R8 ; [+1]
      147 LOADK                            R8 K2 [""]
      148 LOADK                            R12 K23 ["[%*](%*)"]
      149 MOVE                             R14 R7
      150 MOVE                             R15 R8
      151 NAMECALL                         R12 R12 K14 ["format"]
      153 CALL                             R12 3 1
      154 MOVE                             R11 R12
      155 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      157 MOVE                             R10 R1
      158 GETIMPORT                        R9 K6 [table.insert]
      160 CALL                             R9 2 0
      161 JUMP                             ; [+41]
      162 GETTABLEKS                       R7 R6 K0 ["name"]
      164 JUMPIFNOTEQKS                    R7 K24 ["IMAGE"] ; [+27]
      166 GETTABLEKS                       R8 R6 K3 ["text"]
      168 ORK                              R7 R8 K2 [""]
      169 GETTABLEKS                       R9 R6 K10 ["attributes"]
      171 JUMPIFNOT                        R9 ; [+5]
      172 GETTABLEKS                       R8 R6 K10 ["attributes"]
      174 GETTABLEKS                       R8 R8 K22 ["url"]
      176 JUMPIF                           R8 ; [+1]
      177 LOADK                            R8 K2 [""]
      178 LOADK                            R12 K25 ["![%*](%*)"]
      179 MOVE                             R14 R7
      180 MOVE                             R15 R8
      181 NAMECALL                         R12 R12 K14 ["format"]
      183 CALL                             R12 3 1
      184 MOVE                             R11 R12
      185 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      187 MOVE                             R10 R1
      188 GETIMPORT                        R9 K6 [table.insert]
      190 CALL                             R9 2 0
      191 JUMP                             ; [+11]
      192 GETTABLEKS                       R7 R6 K0 ["name"]
      194 JUMPIFNOTEQKS                    R7 K26 ["BREAK"] ; [+8]
      196 FASTCALL2K                       TABLE_INSERT R1 K27 ; [+5]
      198 MOVE                             R8 R1
      199 LOADK                            R9 K27 ["<br>"]
      200 GETIMPORT                        R7 K6 [table.insert]
      202 CALL                             R7 2 0
      203 FORGLOOP                         R2 2 ; [-198]
      205 GETIMPORT                        R2 K29 [table.concat]
      207 MOVE                             R3 R1
      208 CALL                             R2 1 -1
      209 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["HEADING"] ; [+30]
        4 GETTABLEKS                       R3 R0 K2 ["attributes"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R2 R0 K2 ["attributes"]
        9 GETTABLEKS                       R2 R2 K3 ["depth"]
       11 JUMPIF                           R2 ; [+1]
       12 LOADN                            R2 1
       13 GETIMPORT                        R3 K6 [string.rep]
       15 LOADK                            R4 K7 ["#"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R5 R0 K8 ["children"]
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R4 1 1
       25 LOADK                            R6 K9 ["%* %*"]
       26 MOVE                             R8 R3
       27 MOVE                             R9 R4
       28 NAMECALL                         R6 R6 K10 ["format"]
       30 CALL                             R6 3 1
       31 MOVE                             R5 R6
       32 RETURN                           R5 1
       33 JUMPIFNOTEQKS                    R1 K11 ["PARAGRAPH"] ; [+9]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R3 R0 K8 ["children"]
       38 JUMPIF                           R3 ; [+2]
       39 NEWTABLE                         R3 0 0
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1
       43 JUMPIFNOTEQKS                    R1 K12 ["CODE_BLOCK"] ; [+20]
       45 GETTABLEKS                       R3 R0 K2 ["attributes"]
       47 JUMPIFNOT                        R3 ; [+5]
       48 GETTABLEKS                       R2 R0 K2 ["attributes"]
       50 GETTABLEKS                       R2 R2 K13 ["language"]
       52 JUMPIF                           R2 ; [+1]
       53 LOADK                            R2 K14 [""]
       54 GETTABLEKS                       R4 R0 K15 ["text"]
       56 ORK                              R3 R4 K14 [""]
       57 LOADK                            R5 K16 ["```"]
       58 MOVE                             R6 R2
       59 LOADK                            R7 K17 ["\n"]
       60 MOVE                             R8 R3
       61 LOADK                            R9 K18 ["\n```"]
       62 CONCAT                           R4 R5 R9
       63 RETURN                           R4 1
       64 JUMPIFNOTEQKS                    R1 K19 ["DIVIDER"] ; [+3]
       66 LOADK                            R2 K20 ["---"]
       67 RETURN                           R2 1
       68 JUMPIFNOTEQKS                    R1 K21 ["QUOTE"] ; [+35]
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R3 R0 K8 ["children"]
       73 JUMPIF                           R3 ; [+2]
       74 NEWTABLE                         R3 0 0
       76 CALL                             R2 1 1
       77 NEWTABLE                         R3 0 0
       79 MOVE                             R5 R2
       80 LOADK                            R6 K17 ["\n"]
       81 CONCAT                           R4 R5 R6
       82 LOADK                            R6 K22 ["([^\n]*)\n"]
       83 NAMECALL                         R4 R4 K23 ["gmatch"]
       85 CALL                             R4 2 3
       86 FORGPREP                         R4
       87 LOADK                            R12 K24 ["> "]
       88 MOVE                             R13 R7
       89 CONCAT                           R11 R12 R13
       90 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       92 MOVE                             R10 R3
       93 GETIMPORT                        R9 K27 [table.insert]
       95 CALL                             R9 2 0
       96 FORGLOOP                         R4 1 ; [-10]
       98 GETIMPORT                        R4 K29 [table.concat]
      100 MOVE                             R5 R3
      101 LOADK                            R6 K17 ["\n"]
      102 CALL                             R4 2 -1
      103 RETURN                           R4 -1
      104 JUMPIFNOTEQKS                    R1 K30 ["LIST"] ; [+103]
      106 NEWTABLE                         R2 0 0
      108 GETTABLEKS                       R3 R0 K2 ["attributes"]
      110 JUMPIFNOT                        R3 ; [+4]
      111 GETTABLEKS                       R3 R0 K2 ["attributes"]
      113 GETTABLEKS                       R3 R3 K31 ["ordered"]
      115 GETTABLEKS                       R4 R0 K8 ["children"]
      117 JUMPIF                           R4 ; [+2]
      118 NEWTABLE                         R4 0 0
      120 LOADNIL                          R5
      121 LOADNIL                          R6
      122 FORGPREP                         R4
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R10 R8 K8 ["children"]
      126 JUMPIF                           R10 ; [+2]
      127 NEWTABLE                         R10 0 0
      129 CALL                             R9 1 1
      130 GETTABLEKS                       R10 R8 K2 ["attributes"]
      132 JUMPIFNOT                        R10 ; [+37]
      133 GETTABLEKS                       R10 R8 K2 ["attributes"]
      135 GETTABLEKS                       R10 R10 K32 ["checkbox"]
      137 JUMPIFNOT                        R10 ; [+32]
      138 GETTABLEKS                       R11 R8 K2 ["attributes"]
      140 GETTABLEKS                       R11 R11 K33 ["checked"]
      142 JUMPIFNOT                        R11 ; [+2]
      143 LOADK                            R10 K34 ["x"]
      144 JUMP                             ; [+1]
      145 LOADK                            R10 K35 [" "]
      146 JUMPIFNOT                        R3 ; [+7]
      147 LOADK                            R12 K36 ["%*."]
      148 MOVE                             R14 R7
      149 NAMECALL                         R12 R12 K10 ["format"]
      151 CALL                             R12 2 1
      152 MOVE                             R11 R12
      153 JUMP                             ; [+1]
      154 LOADK                            R11 K37 ["-"]
      155 LOADK                            R15 K38 ["%* [%*] %*"]
      156 MOVE                             R17 R11
      157 MOVE                             R18 R10
      158 MOVE                             R19 R9
      159 NAMECALL                         R15 R15 K10 ["format"]
      161 CALL                             R15 4 1
      162 MOVE                             R14 R15
      163 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
      165 MOVE                             R13 R2
      166 GETIMPORT                        R12 K27 [table.insert]
      168 CALL                             R12 2 0
      169 JUMP                             ; [+30]
      170 GETTABLEKS                       R10 R8 K2 ["attributes"]
      172 JUMPIFNOT                        R10 ; [+4]
      173 GETTABLEKS                       R10 R8 K2 ["attributes"]
      175 GETTABLEKS                       R10 R10 K39 ["prefix"]
      177 JUMPIF                           R10 ; [+9]
      178 JUMPIFNOT                        R3 ; [+7]
      179 LOADK                            R11 K36 ["%*."]
      180 MOVE                             R13 R7
      181 NAMECALL                         R11 R11 K10 ["format"]
      183 CALL                             R11 2 1
      184 MOVE                             R10 R11
      185 JUMP                             ; [+1]
      186 LOADK                            R10 K37 ["-"]
      187 LOADK                            R14 K9 ["%* %*"]
      188 MOVE                             R16 R10
      189 MOVE                             R17 R9
      190 NAMECALL                         R14 R14 K10 ["format"]
      192 CALL                             R14 3 1
      193 MOVE                             R13 R14
      194 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      196 MOVE                             R12 R2
      197 GETIMPORT                        R11 K27 [table.insert]
      199 CALL                             R11 2 0
      200 FORGLOOP                         R4 2 ; [-78]
      202 GETIMPORT                        R4 K29 [table.concat]
      204 MOVE                             R5 R2
      205 LOADK                            R6 K17 ["\n"]
      206 CALL                             R4 2 -1
      207 RETURN                           R4 -1
      208 JUMPIFNOTEQKS                    R1 K40 ["TABLE"] ; [+99]
      210 NEWTABLE                         R2 0 0
      212 GETTABLEKS                       R3 R0 K8 ["children"]
      214 JUMPIF                           R3 ; [+2]
      215 NEWTABLE                         R3 0 0
      217 LOADNIL                          R4
      218 LOADNIL                          R5
      219 FORGPREP                         R3
      220 GETTABLEKS                       R8 R7 K0 ["name"]
      222 JUMPIFEQKS                       R8 K41 ["TABLE_HEADER"] ; [+5]
      224 GETTABLEKS                       R8 R7 K0 ["name"]
      226 JUMPIFNOTEQKS                    R8 K42 ["TABLE_ROW"] ; [+73]
      228 NEWTABLE                         R8 0 0
      230 GETTABLEKS                       R9 R7 K8 ["children"]
      232 JUMPIF                           R9 ; [+2]
      233 NEWTABLE                         R9 0 0
      235 LOADNIL                          R10
      236 LOADNIL                          R11
      237 FORGPREP                         R9
      238 MOVE                             R15 R8
      239 GETUPVAL                         R16 0
      240 GETTABLEKS                       R17 R13 K8 ["children"]
      242 JUMPIF                           R17 ; [+2]
      243 NEWTABLE                         R17 0 0
      245 CALL                             R16 1 -1
      246 FASTCALL                         TABLE_INSERT ; [+2]
      247 GETIMPORT                        R14 K27 [table.insert]
      249 CALL                             R14 -1 0
      250 FORGLOOP                         R9 2 ; [-13]
      252 LOADK                            R12 K43 ["| "]
      253 GETIMPORT                        R15 K29 [table.concat]
      255 MOVE                             R16 R8
      256 LOADK                            R17 K44 [" | "]
      257 CALL                             R15 2 1
      258 MOVE                             R13 R15
      259 LOADK                            R14 K45 [" |"]
      260 CONCAT                           R11 R12 R14
      261 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      263 MOVE                             R10 R2
      264 GETIMPORT                        R9 K27 [table.insert]
      266 CALL                             R9 2 0
      267 GETTABLEKS                       R9 R7 K0 ["name"]
      269 JUMPIFNOTEQKS                    R9 K41 ["TABLE_HEADER"] ; [+30]
      271 NEWTABLE                         R9 0 0
      273 LOADN                            R12 1
      274 LENGTH                           R10 R8
      275 LOADN                            R11 1
      276 FORNPREP                         R10
      277 FASTCALL2K                       TABLE_INSERT R9 K46 ; [+5]
      279 MOVE                             R14 R9
      280 LOADK                            R15 K46 ["-------"]
      281 GETIMPORT                        R13 K27 [table.insert]
      283 CALL                             R13 2 0
      284 FORNLOOP                         R10
      285 LOADK                            R13 K43 ["| "]
      286 GETIMPORT                        R16 K29 [table.concat]
      288 MOVE                             R17 R9
      289 LOADK                            R18 K44 [" | "]
      290 CALL                             R16 2 1
      291 MOVE                             R14 R16
      292 LOADK                            R15 K45 [" |"]
      293 CONCAT                           R12 R13 R15
      294 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      296 MOVE                             R11 R2
      297 GETIMPORT                        R10 K27 [table.insert]
      299 CALL                             R10 2 0
      300 FORGLOOP                         R3 2 ; [-81]
      302 GETIMPORT                        R3 K29 [table.concat]
      304 MOVE                             R4 R2
      305 LOADK                            R5 K17 ["\n"]
      306 CALL                             R3 2 -1
      307 RETURN                           R3 -1
      308 JUMPIFNOTEQKS                    R1 K47 ["IMAGE"] ; [+49]
      310 GETTABLEKS                       R3 R0 K15 ["text"]
      312 ORK                              R2 R3 K14 [""]
      313 GETTABLEKS                       R4 R0 K2 ["attributes"]
      315 JUMPIFNOT                        R4 ; [+5]
      316 GETTABLEKS                       R3 R0 K2 ["attributes"]
      318 GETTABLEKS                       R3 R3 K48 ["url"]
      320 JUMPIF                           R3 ; [+1]
      321 LOADK                            R3 K14 [""]
      322 JUMPIFNOTEQKS                    R3 K14 [""] ; [+27]
      324 GETTABLEKS                       R4 R0 K8 ["children"]
      326 JUMPIFNOT                        R4 ; [+23]
      327 GETTABLEKS                       R4 R0 K8 ["children"]
      329 LOADNIL                          R5
      330 LOADNIL                          R6
      331 FORGPREP                         R4
      332 GETTABLEKS                       R9 R8 K0 ["name"]
      334 JUMPIFNOTEQKS                    R9 K47 ["IMAGE"] ; [+13]
      336 GETTABLEKS                       R9 R8 K2 ["attributes"]
      338 JUMPIFNOT                        R9 ; [+9]
      339 GETTABLEKS                       R9 R8 K2 ["attributes"]
      341 GETTABLEKS                       R9 R9 K48 ["url"]
      343 ORK                              R3 R9 K14 [""]
      344 GETTABLEKS                       R9 R8 K15 ["text"]
      346 OR                               R2 R9 R2
      347 JUMP                             ; [+2]
      348 FORGLOOP                         R4 2 ; [-17]
      350 LOADK                            R5 K49 ["![%*](%*)"]
      351 MOVE                             R7 R2
      352 MOVE                             R8 R3
      353 NAMECALL                         R5 R5 K10 ["format"]
      355 CALL                             R5 3 1
      356 MOVE                             R4 R5
      357 RETURN                           R4 1
      358 JUMPIFNOTEQKS                    R1 K50 ["COMPONENT"] ; [+5]
      360 GETUPVAL                         R2 1
      361 MOVE                             R3 R0
      362 CALL                             R2 1 -1
      363 RETURN                           R2 -1
      364 GETUPVAL                         R2 0
      365 GETTABLEKS                       R3 R0 K8 ["children"]
      367 JUMPIF                           R3 ; [+2]
      368 NEWTABLE                         R3 0 0
      370 CALL                             R2 1 -1
      371 RETURN                           R2 -1

PROTO_6:
        0 MOVE                             R1 R0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        8 GETTABLEKS                       R2 R0 K3 ["name"]
       10 JUMPIFNOTEQKS                    R2 K4 ["ROOT"] ; [+7]
       12 GETTABLEKS                       R2 R0 K5 ["children"]
       14 JUMPIF                           R2 ; [+2]
       15 NEWTABLE                         R2 0 0
       17 MOVE                             R1 R2
       18 NEWTABLE                         R2 0 0
       20 MOVE                             R3 R1
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 MOVE                             R9 R2
       25 GETUPVAL                         R10 0
       26 MOVE                             R11 R7
       27 CALL                             R10 1 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R8 K7 [table.insert]
       31 CALL                             R8 -1 0
       32 FORGLOOP                         R3 2 ; [-9]
       34 GETIMPORT                        R3 K9 [table.concat]
       36 MOVE                             R4 R2
       37 LOADK                            R5 K10 ["\n\n"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 LOADNIL                          R1
        4 DUPCLOSURE                       R2 K0 [PROTO_0]
        5 DUPCLOSURE                       R3 K1 [PROTO_1]
        6 NEWCLOSURE                       R4 P2
        7 CAPTURE                          REF R1
        8 DUPCLOSURE                       R1 K2 [PROTO_3]
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 DUPCLOSURE                       R5 K3 [PROTO_4]
       12 CAPTURE                          VAL R5
       13 NEWCLOSURE                       R6 P5
       14 CAPTURE                          VAL R5
       15 CAPTURE                          REF R1
       16 DUPCLOSURE                       R7 K4 [PROTO_6]
       17 CAPTURE                          VAL R6
       18 SETTABLEKS                       R7 R0 K5 ["serialize"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 1
