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
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R11 R2
       20 MOVE                             R12 R8
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R5 1 ; [-8]
       26 GETIMPORT                        R5 K7 [table.sort]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 0
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETTABLE                         R7 R0 R6
       34 JUMPIFNOTEQKB                    R7 TRUE ; [+9]
       36 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R6
       40 GETIMPORT                        R8 K5 [table.insert]
       42 CALL                             R8 2 0
       43 JUMP                             ; [+116]
       44 FASTCALL1                        TYPEOF R7 ; [+3]
       45 MOVE                             R9 R7
       46 GETIMPORT                        R8 K9 [typeof]
       48 CALL                             R8 1 1
       49 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+18]
       51 GETTABLEKS                       R8 R7 K10 ["type"]
       53 JUMPIFNOTEQKS                    R8 K11 ["Expr"] ; [+14]
       55 MOVE                             R11 R6
       56 LOADK                            R12 K12 ["={"]
       57 GETTABLEKS                       R13 R7 K13 ["expr"]
       59 LOADK                            R14 K14 ["}"]
       60 CONCAT                           R10 R11 R14
       61 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       63 MOVE                             R9 R1
       64 GETIMPORT                        R8 K5 [table.insert]
       66 CALL                             R8 2 0
       67 JUMP                             ; [+92]
       68 FASTCALL1                        TYPEOF R7 ; [+3]
       69 MOVE                             R9 R7
       70 GETIMPORT                        R8 K9 [typeof]
       72 CALL                             R8 1 1
       73 JUMPIFNOTEQKS                    R8 K15 ["string"] ; [+24]
       75 LOADK                            R10 K16 ["\\"]
       76 LOADK                            R11 K17 ["\\\\"]
       77 NAMECALL                         R8 R7 K18 ["gsub"]
       79 CALL                             R8 3 1
       80 LOADK                            R10 K19 ["\""]
       81 LOADK                            R11 K20 ["\\\""]
       82 NAMECALL                         R8 R8 K18 ["gsub"]
       84 CALL                             R8 3 1
       85 LOADK                            R11 K21 ["%*=\"%*\""]
       86 MOVE                             R13 R6
       87 MOVE                             R14 R8
       88 NAMECALL                         R11 R11 K22 ["format"]
       90 CALL                             R11 3 1
       91 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       93 MOVE                             R10 R1
       94 GETIMPORT                        R9 K5 [table.insert]
       96 CALL                             R9 2 0
       97 JUMP                             ; [+62]
       98 FASTCALL1                        TYPEOF R7 ; [+3]
       99 MOVE                             R9 R7
      100 GETIMPORT                        R8 K9 [typeof]
      102 CALL                             R8 1 1
      103 JUMPIFNOTEQKS                    R8 K23 ["number"] ; [+17]
      105 MOVE                             R11 R6
      106 LOADK                            R12 K12 ["={"]
      107 FASTCALL1                        TOSTRING R7 ; [+3]
      108 MOVE                             R14 R7
      109 GETIMPORT                        R13 K25 [tostring]
      111 CALL                             R13 1 1
      112 LOADK                            R14 K14 ["}"]
      113 CONCAT                           R10 R11 R14
      114 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      116 MOVE                             R9 R1
      117 GETIMPORT                        R8 K5 [table.insert]
      119 CALL                             R8 2 0
      120 JUMP                             ; [+39]
      121 JUMPIFNOTEQKB                    R7 FALSE ; [+11]
      123 MOVE                             R11 R6
      124 LOADK                            R12 K26 ["={false}"]
      125 CONCAT                           R10 R11 R12
      126 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      128 MOVE                             R9 R1
      129 GETIMPORT                        R8 K5 [table.insert]
      131 CALL                             R8 2 0
      132 JUMP                             ; [+27]
      133 FASTCALL1                        TOSTRING R7 ; [+3]
      134 MOVE                             R9 R7
      135 GETIMPORT                        R8 K25 [tostring]
      137 CALL                             R8 1 1
      138 LOADK                            R10 K16 ["\\"]
      139 LOADK                            R11 K17 ["\\\\"]
      140 NAMECALL                         R8 R8 K18 ["gsub"]
      142 CALL                             R8 3 1
      143 LOADK                            R10 K19 ["\""]
      144 LOADK                            R11 K20 ["\\\""]
      145 NAMECALL                         R8 R8 K18 ["gsub"]
      147 CALL                             R8 3 1
      148 LOADK                            R11 K21 ["%*=\"%*\""]
      149 MOVE                             R13 R6
      150 MOVE                             R14 R8
      151 NAMECALL                         R11 R11 K22 ["format"]
      153 CALL                             R11 3 1
      154 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      156 MOVE                             R10 R1
      157 GETIMPORT                        R9 K5 [table.insert]
      159 CALL                             R9 2 0
      160 FORGLOOP                         R2 2 ; [-128]
      162 LENGTH                           R2 R1
      163 JUMPIFNOTEQKN                    R2 K27 [0] ; [+3]
      165 LOADK                            R2 K2 [""]
      166 RETURN                           R2 1
      167 LOADK                            R3 K28 [" "]
      168 GETIMPORT                        R4 K30 [table.concat]
      170 MOVE                             R5 R1
      171 LOADK                            R6 K28 [" "]
      172 CALL                             R4 2 1
      173 CONCAT                           R2 R3 R4
      174 RETURN                           R2 1

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
       22 JUMPIFNOTEQKN                    R6 K5 [0] ; [+8]
       24 LOADK                            R6 K6 ["<%*%* />"]
       25 MOVE                             R8 R2
       26 MOVE                             R9 R5
       27 NAMECALL                         R6 R6 K7 ["format"]
       29 CALL                             R6 3 1
       30 RETURN                           R6 1
       31 GETUPVAL                         R6 1
       32 MOVE                             R7 R4
       33 CALL                             R6 1 1
       34 LOADK                            R7 K8 ["<%*%*>\n%*\n</%*>"]
       35 MOVE                             R9 R2
       36 MOVE                             R10 R5
       37 MOVE                             R11 R6
       38 MOVE                             R12 R2
       39 NAMECALL                         R7 R7 K7 ["format"]
       41 CALL                             R7 5 1
       42 RETURN                           R7 1

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
       19 JUMP                             ; [+178]
       20 GETTABLEKS                       R7 R6 K0 ["name"]
       22 JUMPIFNOTEQKS                    R7 K7 ["INLINE_TEXT"] ; [+11]
       24 GETTABLEKS                       R10 R6 K3 ["text"]
       26 ORK                              R9 R10 K2 [""]
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K6 [table.insert]
       32 CALL                             R7 2 0
       33 JUMP                             ; [+164]
       34 GETTABLEKS                       R7 R6 K0 ["name"]
       36 JUMPIFNOTEQKS                    R7 K8 ["STYLED_TEXT"] ; [+78]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R8 R6 K9 ["children"]
       41 JUMPIF                           R8 ; [+2]
       42 NEWTABLE                         R8 0 0
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R6 K10 ["attributes"]
       47 JUMPIFNOT                        R8 ; [+4]
       48 GETTABLEKS                       R8 R6 K10 ["attributes"]
       50 GETTABLEKS                       R8 R8 K11 ["style"]
       52 JUMPIFNOTEQKS                    R8 K12 ["BOLD"] ; [+13]
       54 LOADK                            R11 K13 ["**%***"]
       55 MOVE                             R13 R7
       56 NAMECALL                         R11 R11 K14 ["format"]
       58 CALL                             R11 2 1
       59 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       61 MOVE                             R10 R1
       62 GETIMPORT                        R9 K6 [table.insert]
       64 CALL                             R9 2 0
       65 JUMP                             ; [+132]
       66 JUMPIFNOTEQKS                    R8 K15 ["ITALIC"] ; [+13]
       68 LOADK                            R11 K16 ["*%**"]
       69 MOVE                             R13 R7
       70 NAMECALL                         R11 R11 K14 ["format"]
       72 CALL                             R11 2 1
       73 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       75 MOVE                             R10 R1
       76 GETIMPORT                        R9 K6 [table.insert]
       78 CALL                             R9 2 0
       79 JUMP                             ; [+118]
       80 JUMPIFNOTEQKS                    R8 K17 ["STRIKE"] ; [+13]
       82 LOADK                            R11 K18 ["~~%*~~"]
       83 MOVE                             R13 R7
       84 NAMECALL                         R11 R11 K14 ["format"]
       86 CALL                             R11 2 1
       87 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       89 MOVE                             R10 R1
       90 GETIMPORT                        R9 K6 [table.insert]
       92 CALL                             R9 2 0
       93 JUMP                             ; [+104]
       94 JUMPIFNOTEQKS                    R8 K19 ["INLINE_CODE"] ; [+12]
       96 LOADK                            R12 K20 ["`"]
       97 MOVE                             R13 R7
       98 LOADK                            R14 K20 ["`"]
       99 CONCAT                           R11 R12 R14
      100 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      102 MOVE                             R10 R1
      103 GETIMPORT                        R9 K6 [table.insert]
      105 CALL                             R9 2 0
      106 JUMP                             ; [+91]
      107 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      109 MOVE                             R10 R1
      110 MOVE                             R11 R7
      111 GETIMPORT                        R9 K6 [table.insert]
      113 CALL                             R9 2 0
      114 JUMP                             ; [+83]
      115 GETTABLEKS                       R7 R6 K0 ["name"]
      117 JUMPIFNOTEQKS                    R7 K21 ["LINK"] ; [+40]
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R8 R6 K9 ["children"]
      122 JUMPIF                           R8 ; [+2]
      123 NEWTABLE                         R8 0 0
      125 CALL                             R7 1 1
      126 JUMPIFNOTEQKS                    R7 K2 [""] ; [+6]
      128 GETTABLEKS                       R8 R6 K3 ["text"]
      130 JUMPIFNOT                        R8 ; [+2]
      131 GETTABLEKS                       R7 R6 K3 ["text"]
      133 GETTABLEKS                       R9 R6 K10 ["attributes"]
      135 JUMPIFNOT                        R9 ; [+5]
      136 GETTABLEKS                       R8 R6 K10 ["attributes"]
      138 GETTABLEKS                       R8 R8 K22 ["url"]
      140 JUMPIF                           R8 ; [+4]
      141 GETTABLEKS                       R8 R6 K22 ["url"]
      143 JUMPIF                           R8 ; [+1]
      144 LOADK                            R8 K2 [""]
      145 LOADK                            R11 K23 ["[%*](%*)"]
      146 MOVE                             R13 R7
      147 MOVE                             R14 R8
      148 NAMECALL                         R11 R11 K14 ["format"]
      150 CALL                             R11 3 1
      151 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      153 MOVE                             R10 R1
      154 GETIMPORT                        R9 K6 [table.insert]
      156 CALL                             R9 2 0
      157 JUMP                             ; [+40]
      158 GETTABLEKS                       R7 R6 K0 ["name"]
      160 JUMPIFNOTEQKS                    R7 K24 ["IMAGE"] ; [+26]
      162 GETTABLEKS                       R8 R6 K3 ["text"]
      164 ORK                              R7 R8 K2 [""]
      165 GETTABLEKS                       R9 R6 K10 ["attributes"]
      167 JUMPIFNOT                        R9 ; [+5]
      168 GETTABLEKS                       R8 R6 K10 ["attributes"]
      170 GETTABLEKS                       R8 R8 K22 ["url"]
      172 JUMPIF                           R8 ; [+1]
      173 LOADK                            R8 K2 [""]
      174 LOADK                            R11 K25 ["![%*](%*)"]
      175 MOVE                             R13 R7
      176 MOVE                             R14 R8
      177 NAMECALL                         R11 R11 K14 ["format"]
      179 CALL                             R11 3 1
      180 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      182 MOVE                             R10 R1
      183 GETIMPORT                        R9 K6 [table.insert]
      185 CALL                             R9 2 0
      186 JUMP                             ; [+11]
      187 GETTABLEKS                       R7 R6 K0 ["name"]
      189 JUMPIFNOTEQKS                    R7 K26 ["BREAK"] ; [+8]
      191 FASTCALL2K                       TABLE_INSERT R1 K27 ; [+5]
      193 MOVE                             R8 R1
      194 LOADK                            R9 K27 ["<br>"]
      195 GETIMPORT                        R7 K6 [table.insert]
      197 CALL                             R7 2 0
      198 FORGLOOP                         R2 2 ; [-193]
      200 GETIMPORT                        R2 K29 [table.concat]
      202 MOVE                             R3 R1
      203 CALL                             R2 1 -1
      204 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["HEADING"] ; [+29]
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
       25 LOADK                            R5 K9 ["%* %*"]
       26 MOVE                             R7 R3
       27 MOVE                             R8 R4
       28 NAMECALL                         R5 R5 K10 ["format"]
       30 CALL                             R5 3 1
       31 RETURN                           R5 1
       32 JUMPIFNOTEQKS                    R1 K11 ["PARAGRAPH"] ; [+9]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R3 R0 K8 ["children"]
       37 JUMPIF                           R3 ; [+2]
       38 NEWTABLE                         R3 0 0
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1
       42 JUMPIFNOTEQKS                    R1 K12 ["CODE_BLOCK"] ; [+20]
       44 GETTABLEKS                       R3 R0 K2 ["attributes"]
       46 JUMPIFNOT                        R3 ; [+5]
       47 GETTABLEKS                       R2 R0 K2 ["attributes"]
       49 GETTABLEKS                       R2 R2 K13 ["language"]
       51 JUMPIF                           R2 ; [+1]
       52 LOADK                            R2 K14 [""]
       53 GETTABLEKS                       R4 R0 K15 ["text"]
       55 ORK                              R3 R4 K14 [""]
       56 LOADK                            R5 K16 ["```"]
       57 MOVE                             R6 R2
       58 LOADK                            R7 K17 ["\n"]
       59 MOVE                             R8 R3
       60 LOADK                            R9 K18 ["\n```"]
       61 CONCAT                           R4 R5 R9
       62 RETURN                           R4 1
       63 JUMPIFNOTEQKS                    R1 K19 ["DIVIDER"] ; [+3]
       65 LOADK                            R2 K20 ["---"]
       66 RETURN                           R2 1
       67 JUMPIFNOTEQKS                    R1 K21 ["QUOTE"] ; [+35]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R3 R0 K8 ["children"]
       72 JUMPIF                           R3 ; [+2]
       73 NEWTABLE                         R3 0 0
       75 CALL                             R2 1 1
       76 NEWTABLE                         R3 0 0
       78 MOVE                             R5 R2
       79 LOADK                            R6 K17 ["\n"]
       80 CONCAT                           R4 R5 R6
       81 LOADK                            R6 K22 ["([^\n]*)\n"]
       82 NAMECALL                         R4 R4 K23 ["gmatch"]
       84 CALL                             R4 2 3
       85 FORGPREP                         R4
       86 LOADK                            R12 K24 ["> "]
       87 MOVE                             R13 R7
       88 CONCAT                           R11 R12 R13
       89 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       91 MOVE                             R10 R3
       92 GETIMPORT                        R9 K27 [table.insert]
       94 CALL                             R9 2 0
       95 FORGLOOP                         R4 1 ; [-10]
       97 GETIMPORT                        R4 K29 [table.concat]
       99 MOVE                             R5 R3
      100 LOADK                            R6 K17 ["\n"]
      101 CALL                             R4 2 -1
      102 RETURN                           R4 -1
      103 JUMPIFNOTEQKS                    R1 K30 ["LIST"] ; [+100]
      105 NEWTABLE                         R2 0 0
      107 GETTABLEKS                       R3 R0 K2 ["attributes"]
      109 JUMPIFNOT                        R3 ; [+4]
      110 GETTABLEKS                       R3 R0 K2 ["attributes"]
      112 GETTABLEKS                       R3 R3 K31 ["ordered"]
      114 GETTABLEKS                       R4 R0 K8 ["children"]
      116 JUMPIF                           R4 ; [+2]
      117 NEWTABLE                         R4 0 0
      119 LOADNIL                          R5
      120 LOADNIL                          R6
      121 FORGPREP                         R4
      122 GETUPVAL                         R9 0
      123 GETTABLEKS                       R10 R8 K8 ["children"]
      125 JUMPIF                           R10 ; [+2]
      126 NEWTABLE                         R10 0 0
      128 CALL                             R9 1 1
      129 GETTABLEKS                       R10 R8 K2 ["attributes"]
      131 JUMPIFNOT                        R10 ; [+35]
      132 GETTABLEKS                       R10 R8 K2 ["attributes"]
      134 GETTABLEKS                       R10 R10 K32 ["checkbox"]
      136 JUMPIFNOT                        R10 ; [+30]
      137 GETTABLEKS                       R11 R8 K2 ["attributes"]
      139 GETTABLEKS                       R11 R11 K33 ["checked"]
      141 JUMPIFNOT                        R11 ; [+2]
      142 LOADK                            R10 K34 ["x"]
      143 JUMP                             ; [+1]
      144 LOADK                            R10 K35 [" "]
      145 JUMPIFNOT                        R3 ; [+6]
      146 LOADK                            R11 K36 ["%*."]
      147 MOVE                             R13 R7
      148 NAMECALL                         R11 R11 K10 ["format"]
      150 CALL                             R11 2 1
      151 JUMP                             ; [+1]
      152 LOADK                            R11 K37 ["-"]
      153 LOADK                            R14 K38 ["%* [%*] %*"]
      154 MOVE                             R16 R11
      155 MOVE                             R17 R10
      156 MOVE                             R18 R9
      157 NAMECALL                         R14 R14 K10 ["format"]
      159 CALL                             R14 4 1
      160 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
      162 MOVE                             R13 R2
      163 GETIMPORT                        R12 K27 [table.insert]
      165 CALL                             R12 2 0
      166 JUMP                             ; [+29]
      167 GETTABLEKS                       R10 R8 K2 ["attributes"]
      169 JUMPIFNOT                        R10 ; [+4]
      170 GETTABLEKS                       R10 R8 K2 ["attributes"]
      172 GETTABLEKS                       R10 R10 K39 ["prefix"]
      174 JUMPIF                           R10 ; [+9]
      175 JUMPIFNOT                        R3 ; [+7]
      176 LOADK                            R11 K36 ["%*."]
      177 MOVE                             R13 R7
      178 NAMECALL                         R11 R11 K10 ["format"]
      180 CALL                             R11 2 1
      181 MOVE                             R10 R11
      182 JUMP                             ; [+1]
      183 LOADK                            R10 K37 ["-"]
      184 LOADK                            R13 K9 ["%* %*"]
      185 MOVE                             R15 R10
      186 MOVE                             R16 R9
      187 NAMECALL                         R13 R13 K10 ["format"]
      189 CALL                             R13 3 1
      190 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      192 MOVE                             R12 R2
      193 GETIMPORT                        R11 K27 [table.insert]
      195 CALL                             R11 2 0
      196 FORGLOOP                         R4 2 ; [-75]
      198 GETIMPORT                        R4 K29 [table.concat]
      200 MOVE                             R5 R2
      201 LOADK                            R6 K17 ["\n"]
      202 CALL                             R4 2 -1
      203 RETURN                           R4 -1
      204 JUMPIFNOTEQKS                    R1 K40 ["TABLE"] ; [+97]
      206 NEWTABLE                         R2 0 0
      208 GETTABLEKS                       R3 R0 K8 ["children"]
      210 JUMPIF                           R3 ; [+2]
      211 NEWTABLE                         R3 0 0
      213 LOADNIL                          R4
      214 LOADNIL                          R5
      215 FORGPREP                         R3
      216 GETTABLEKS                       R8 R7 K0 ["name"]
      218 JUMPIFEQKS                       R8 K41 ["TABLE_HEADER"] ; [+5]
      220 GETTABLEKS                       R8 R7 K0 ["name"]
      222 JUMPIFNOTEQKS                    R8 K42 ["TABLE_ROW"] ; [+71]
      224 NEWTABLE                         R8 0 0
      226 GETTABLEKS                       R9 R7 K8 ["children"]
      228 JUMPIF                           R9 ; [+2]
      229 NEWTABLE                         R9 0 0
      231 LOADNIL                          R10
      232 LOADNIL                          R11
      233 FORGPREP                         R9
      234 MOVE                             R15 R8
      235 GETUPVAL                         R16 0
      236 GETTABLEKS                       R17 R13 K8 ["children"]
      238 JUMPIF                           R17 ; [+2]
      239 NEWTABLE                         R17 0 0
      241 CALL                             R16 1 -1
      242 FASTCALL                         TABLE_INSERT ; [+2]
      243 GETIMPORT                        R14 K27 [table.insert]
      245 CALL                             R14 -1 0
      246 FORGLOOP                         R9 2 ; [-13]
      248 LOADK                            R12 K43 ["| "]
      249 GETIMPORT                        R13 K29 [table.concat]
      251 MOVE                             R14 R8
      252 LOADK                            R15 K44 [" | "]
      253 CALL                             R13 2 1
      254 LOADK                            R14 K45 [" |"]
      255 CONCAT                           R11 R12 R14
      256 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      258 MOVE                             R10 R2
      259 GETIMPORT                        R9 K27 [table.insert]
      261 CALL                             R9 2 0
      262 GETTABLEKS                       R9 R7 K0 ["name"]
      264 JUMPIFNOTEQKS                    R9 K41 ["TABLE_HEADER"] ; [+29]
      266 NEWTABLE                         R9 0 0
      268 LOADN                            R12 1
      269 LENGTH                           R10 R8
      270 LOADN                            R11 1
      271 FORNPREP                         R10
      272 FASTCALL2K                       TABLE_INSERT R9 K46 ; [+5]
      274 MOVE                             R14 R9
      275 LOADK                            R15 K46 ["-------"]
      276 GETIMPORT                        R13 K27 [table.insert]
      278 CALL                             R13 2 0
      279 FORNLOOP                         R10
      280 LOADK                            R13 K43 ["| "]
      281 GETIMPORT                        R14 K29 [table.concat]
      283 MOVE                             R15 R9
      284 LOADK                            R16 K44 [" | "]
      285 CALL                             R14 2 1
      286 LOADK                            R15 K45 [" |"]
      287 CONCAT                           R12 R13 R15
      288 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      290 MOVE                             R11 R2
      291 GETIMPORT                        R10 K27 [table.insert]
      293 CALL                             R10 2 0
      294 FORGLOOP                         R3 2 ; [-79]
      296 GETIMPORT                        R3 K29 [table.concat]
      298 MOVE                             R4 R2
      299 LOADK                            R5 K17 ["\n"]
      300 CALL                             R3 2 -1
      301 RETURN                           R3 -1
      302 JUMPIFNOTEQKS                    R1 K47 ["IMAGE"] ; [+48]
      304 GETTABLEKS                       R3 R0 K15 ["text"]
      306 ORK                              R2 R3 K14 [""]
      307 GETTABLEKS                       R4 R0 K2 ["attributes"]
      309 JUMPIFNOT                        R4 ; [+5]
      310 GETTABLEKS                       R3 R0 K2 ["attributes"]
      312 GETTABLEKS                       R3 R3 K48 ["url"]
      314 JUMPIF                           R3 ; [+1]
      315 LOADK                            R3 K14 [""]
      316 JUMPIFNOTEQKS                    R3 K14 [""] ; [+27]
      318 GETTABLEKS                       R4 R0 K8 ["children"]
      320 JUMPIFNOT                        R4 ; [+23]
      321 GETTABLEKS                       R4 R0 K8 ["children"]
      323 LOADNIL                          R5
      324 LOADNIL                          R6
      325 FORGPREP                         R4
      326 GETTABLEKS                       R9 R8 K0 ["name"]
      328 JUMPIFNOTEQKS                    R9 K47 ["IMAGE"] ; [+13]
      330 GETTABLEKS                       R9 R8 K2 ["attributes"]
      332 JUMPIFNOT                        R9 ; [+9]
      333 GETTABLEKS                       R9 R8 K2 ["attributes"]
      335 GETTABLEKS                       R9 R9 K48 ["url"]
      337 ORK                              R3 R9 K14 [""]
      338 GETTABLEKS                       R9 R8 K15 ["text"]
      340 OR                               R2 R9 R2
      341 JUMP                             ; [+2]
      342 FORGLOOP                         R4 2 ; [-17]
      344 LOADK                            R4 K49 ["![%*](%*)"]
      345 MOVE                             R6 R2
      346 MOVE                             R7 R3
      347 NAMECALL                         R4 R4 K10 ["format"]
      349 CALL                             R4 3 1
      350 RETURN                           R4 1
      351 JUMPIFNOTEQKS                    R1 K50 ["COMPONENT"] ; [+5]
      353 GETUPVAL                         R2 1
      354 MOVE                             R3 R0
      355 CALL                             R2 1 -1
      356 RETURN                           R2 -1
      357 GETUPVAL                         R2 0
      358 GETTABLEKS                       R3 R0 K8 ["children"]
      360 JUMPIF                           R3 ; [+2]
      361 NEWTABLE                         R3 0 0
      363 CALL                             R2 1 -1
      364 RETURN                           R2 -1

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
