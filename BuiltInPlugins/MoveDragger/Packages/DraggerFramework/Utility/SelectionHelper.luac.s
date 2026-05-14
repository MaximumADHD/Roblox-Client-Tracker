PROTO_0:
        0 JUMPIF                           R0 ; [+14]
        1 JUMPIFNOT                        R3 ; [+3]
        2 LOADB                            R4 0
        3 MOVE                             R5 R1
        4 RETURN                           R4 2
        5 LENGTH                           R5 R1
        6 LOADN                            R6 0
        7 JUMPIFLT                         R6 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 MOVE                             R5 R4
       12 NEWTABLE                         R6 0 0
       14 RETURN                           R5 2
       15 JUMPIFNOT                        R3 ; [+57]
       16 JUMPIF                           R2 ; [+56]
       17 NEWTABLE                         R4 0 0
       19 NEWTABLE                         R5 0 0
       21 NEWTABLE                         R6 0 0
       23 LOADB                            R7 0
       24 GETIMPORT                        R8 K1 [ipairs]
       26 MOVE                             R9 R1
       27 CALL                             R8 1 3
       28 FORGPREP_INEXT                   R8
       29 JUMPIFNOTEQ                      R12 R0 ; [+3]
       31 LOADB                            R7 1
       32 JUMP                             ; [+7]
       33 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       35 MOVE                             R14 R4
       36 MOVE                             R15 R12
       37 GETIMPORT                        R13 K4 [table.insert]
       39 CALL                             R13 2 0
       40 FORGLOOP                         R8 2 [inext] ; [-12]
       42 JUMPIFNOT                        R7 ; [+8]
       43 FASTCALL2                        TABLE_INSERT R6 R0 ; [+5]
       45 MOVE                             R9 R6
       46 MOVE                             R10 R0
       47 GETIMPORT                        R8 K4 [table.insert]
       49 CALL                             R8 2 0
       50 JUMP                             ; [+14]
       51 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       53 MOVE                             R9 R4
       54 MOVE                             R10 R0
       55 GETIMPORT                        R8 K4 [table.insert]
       57 CALL                             R8 2 0
       58 FASTCALL2                        TABLE_INSERT R5 R0 ; [+5]
       60 MOVE                             R9 R5
       61 MOVE                             R10 R0
       62 GETIMPORT                        R8 K4 [table.insert]
       64 CALL                             R8 2 0
       65 LOADB                            R8 1
       66 MOVE                             R9 R4
       67 DUPTABLE                         R10 K7 [{"Added", "Removed"}]
       68 SETTABLEKS                       R5 R10 K5 ["Added"]
       70 SETTABLEKS                       R6 R10 K6 ["Removed"]
       72 RETURN                           R8 3
       73 GETIMPORT                        R4 K9 [table.find]
       75 MOVE                             R5 R1
       76 MOVE                             R6 R0
       77 CALL                             R4 2 1
       78 JUMPIFNOT                        R4 ; [+45]
       79 JUMPIF                           R2 ; [+44]
       80 LENGTH                           R5 R1
       81 JUMPIFNOTLT                      R4 R5 ; [+39]
       83 NEWTABLE                         R6 0 0
       85 GETIMPORT                        R7 K11 [table.move]
       87 MOVE                             R8 R1
       88 LOADN                            R9 1
       89 MOVE                             R10 R4
       90 LOADN                            R11 1
       91 MOVE                             R12 R6
       92 CALL                             R7 5 0
       93 GETIMPORT                        R7 K11 [table.move]
       95 MOVE                             R8 R1
       96 ADDK                             R9 R4 K12 [1]
       97 MOVE                             R10 R5
       98 MOVE                             R11 R4
       99 MOVE                             R12 R6
      100 CALL                             R7 5 0
      101 SETTABLE                         R0 R6 R5
      102 DUPTABLE                         R7 K7 [{"Added", "Removed"}]
      103 NEWTABLE                         R8 0 1
      105 MOVE                             R9 R0
      106 SETLIST                          R8 R9 1 [1]
      108 SETTABLEKS                       R8 R7 K5 ["Added"]
      110 NEWTABLE                         R8 0 1
      112 MOVE                             R9 R0
      113 SETLIST                          R8 R9 1 [1]
      115 SETTABLEKS                       R8 R7 K6 ["Removed"]
      117 LOADB                            R8 1
      118 MOVE                             R9 R6
      119 MOVE                             R10 R7
      120 RETURN                           R8 3
      121 LOADB                            R6 0
      122 MOVE                             R7 R1
      123 RETURN                           R6 2
      124 LOADB                            R5 1
      125 NEWTABLE                         R6 0 1
      127 MOVE                             R7 R0
      128 SETLIST                          R6 R7 1 [1]
      130 RETURN                           R5 2

PROTO_1:
        0 LENGTH                           R4 R0
        1 JUMPIFNOTEQKN                    R4 K0 [0] ; [+8]
        3 JUMPIF                           R2 ; [+1]
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R4 R1
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 RETURN                           R4 1
       10 LOADNIL                          R4
       11 NEWTABLE                         R5 0 0
       13 NEWTABLE                         R6 0 0
       15 JUMPIF                           R2 ; [+1]
       16 JUMPIFNOT                        R3 ; [+134]
       17 NEWTABLE                         R4 0 0
       19 NEWTABLE                         R7 0 0
       21 GETIMPORT                        R8 K2 [ipairs]
       23 MOVE                             R9 R1
       24 CALL                             R8 1 3
       25 FORGPREP_INEXT                   R8
       26 LOADB                            R13 1
       27 SETTABLE                         R13 R7 R12
       28 FORGLOOP                         R8 2 [inext] ; [-3]
       30 JUMPIFNOT                        R2 ; [+66]
       31 NEWTABLE                         R8 0 0
       33 GETIMPORT                        R9 K2 [ipairs]
       35 MOVE                             R10 R0
       36 CALL                             R9 1 3
       37 FORGPREP_INEXT                   R9
       38 LOADB                            R14 1
       39 SETTABLE                         R14 R8 R13
       40 FORGLOOP                         R9 2 [inext] ; [-3]
       42 GETIMPORT                        R9 K2 [ipairs]
       44 MOVE                             R10 R1
       45 CALL                             R9 1 3
       46 FORGPREP_INEXT                   R9
       47 GETTABLE                         R14 R8 R13
       48 JUMPIF                           R14 ; [+14]
       49 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       51 MOVE                             R15 R4
       52 MOVE                             R16 R13
       53 GETIMPORT                        R14 K5 [table.insert]
       55 CALL                             R14 2 0
       56 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
       58 MOVE                             R15 R5
       59 MOVE                             R16 R13
       60 GETIMPORT                        R14 K5 [table.insert]
       62 CALL                             R14 2 0
       63 FORGLOOP                         R9 2 [inext] ; [-17]
       65 GETIMPORT                        R9 K2 [ipairs]
       67 MOVE                             R10 R0
       68 CALL                             R9 1 3
       69 FORGPREP_INEXT                   R9
       70 GETTABLE                         R14 R7 R13
       71 JUMPIF                           R14 ; [+15]
       72 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       74 MOVE                             R15 R4
       75 MOVE                             R16 R13
       76 GETIMPORT                        R14 K5 [table.insert]
       78 CALL                             R14 2 0
       79 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
       81 MOVE                             R15 R5
       82 MOVE                             R16 R13
       83 GETIMPORT                        R14 K5 [table.insert]
       85 CALL                             R14 2 0
       86 JUMP                             ; [+7]
       87 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
       89 MOVE                             R15 R6
       90 MOVE                             R16 R13
       91 GETIMPORT                        R14 K5 [table.insert]
       93 CALL                             R14 2 0
       94 FORGLOOP                         R9 2 [inext] ; [-25]
       96 JUMP                             ; [+95]
       97 JUMPIFNOT                        R3 ; [+94]
       98 GETIMPORT                        R8 K2 [ipairs]
      100 MOVE                             R9 R1
      101 CALL                             R8 1 3
      102 FORGPREP_INEXT                   R8
      103 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      105 MOVE                             R14 R4
      106 MOVE                             R15 R12
      107 GETIMPORT                        R13 K5 [table.insert]
      109 CALL                             R13 2 0
      110 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
      112 MOVE                             R14 R5
      113 MOVE                             R15 R12
      114 GETIMPORT                        R13 K5 [table.insert]
      116 CALL                             R13 2 0
      117 FORGLOOP                         R8 2 [inext] ; [-15]
      119 GETIMPORT                        R8 K2 [ipairs]
      121 MOVE                             R9 R0
      122 CALL                             R8 1 3
      123 FORGPREP_INEXT                   R8
      124 GETTABLE                         R13 R7 R12
      125 JUMPIF                           R13 ; [+15]
      126 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      128 MOVE                             R14 R4
      129 MOVE                             R15 R12
      130 GETIMPORT                        R13 K5 [table.insert]
      132 CALL                             R13 2 0
      133 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
      135 MOVE                             R14 R5
      136 MOVE                             R15 R12
      137 GETIMPORT                        R13 K5 [table.insert]
      139 CALL                             R13 2 0
      140 JUMP                             ; [+7]
      141 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
      143 MOVE                             R14 R6
      144 MOVE                             R15 R12
      145 GETIMPORT                        R13 K5 [table.insert]
      147 CALL                             R13 2 0
      148 FORGLOOP                         R8 2 [inext] ; [-25]
      150 JUMP                             ; [+41]
      151 GETIMPORT                        R7 K2 [ipairs]
      153 MOVE                             R8 R0
      154 CALL                             R7 1 3
      155 FORGPREP_INEXT                   R7
      156 GETIMPORT                        R12 K7 [table.find]
      158 MOVE                             R13 R1
      159 MOVE                             R14 R11
      160 CALL                             R12 2 1
      161 JUMPIF                           R12 ; [+7]
      162 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      164 MOVE                             R14 R5
      165 MOVE                             R15 R11
      166 GETIMPORT                        R13 K5 [table.insert]
      168 CALL                             R13 2 0
      169 FORGLOOP                         R7 2 [inext] ; [-14]
      171 GETIMPORT                        R7 K2 [ipairs]
      173 MOVE                             R8 R1
      174 CALL                             R7 1 3
      175 FORGPREP_INEXT                   R7
      176 GETIMPORT                        R12 K7 [table.find]
      178 MOVE                             R13 R0
      179 MOVE                             R14 R11
      180 CALL                             R12 2 1
      181 JUMPIF                           R12 ; [+7]
      182 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      184 MOVE                             R14 R6
      185 MOVE                             R15 R11
      186 GETIMPORT                        R13 K5 [table.insert]
      188 CALL                             R13 2 0
      189 FORGLOOP                         R7 2 [inext] ; [-14]
      191 MOVE                             R4 R0
      192 MOVE                             R7 R4
      193 DUPTABLE                         R8 K10 [{"Added", "Removed"}]
      194 SETTABLEKS                       R5 R8 K8 ["Added"]
      196 SETTABLEKS                       R6 R8 K9 ["Removed"]
      198 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Utility"]
       17 GETTABLEKS                       R3 R3 K10 ["shouldDragAsFace"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 2 0
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K12 ["updateSelection"]
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K14 ["updateSelectionWithMultipleSelectables"]
       28 RETURN                           R3 1
