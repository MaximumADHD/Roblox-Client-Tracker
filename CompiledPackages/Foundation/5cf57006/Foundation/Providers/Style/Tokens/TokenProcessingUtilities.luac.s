PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+30]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K3 ["Color3"]
       11 JUMPIFEQKNIL                     R2 ; [+25]
       13 LOADB                            R1 0
       14 GETTABLEKS                       R3 R0 K3 ["Color3"]
       16 FASTCALL1                        TYPEOF R3 ; [+2]
       17 GETIMPORT                        R2 K5 [typeof]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K3 ["Color3"] ; [+16]
       22 LOADB                            R1 0
       23 GETTABLEKS                       R2 R0 K6 ["Transparency"]
       25 JUMPIFEQKNIL                     R2 ; [+11]
       27 GETTABLEKS                       R3 R0 K6 ["Transparency"]
       29 FASTCALL1                        TYPEOF R3 ; [+2]
       30 GETIMPORT                        R2 K5 [typeof]
       32 CALL                             R2 1 1
       33 JUMPIFEQKS                       R2 K7 ["number"] ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 RETURN                           R1 1

PROTO_1:
        0 MULK                             R3 R0 K0 [1000]
        1 FASTCALL1                        MATH_ROUND R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.round]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [1000]
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R7 R0 K1 ["R"]
        2 MULK                             R6 R7 K0 [255]
        3 FASTCALL1                        MATH_ROUND R6 ; [+2]
        4 GETIMPORT                        R5 K4 [math.round]
        6 CALL                             R5 1 1
        7 MOVE                             R2 R5
        8 GETTABLEKS                       R7 R0 K5 ["G"]
       10 MULK                             R6 R7 K0 [255]
       11 FASTCALL1                        MATH_ROUND R6 ; [+2]
       12 GETIMPORT                        R5 K4 [math.round]
       14 CALL                             R5 1 1
       15 MOVE                             R3 R5
       16 GETTABLEKS                       R6 R0 K6 ["B"]
       18 MULK                             R5 R6 K0 [255]
       19 FASTCALL1                        MATH_ROUND R5 ; [+2]
       20 GETIMPORT                        R4 K4 [math.round]
       22 CALL                             R4 1 1
       23 JUMPIFNOT                        R1 ; [+11]
       24 MOVE                             R5 R2
       25 MOVE                             R6 R3
       26 MOVE                             R7 R4
       27 SUBRK                            R9 R7 K1 ["R"]
       28 MULK                             R11 R9 K8 [1000]
       29 FASTCALL1                        MATH_ROUND R11 ; [+2]
       30 GETIMPORT                        R10 K4 [math.round]
       32 CALL                             R10 1 1
       33 DIVK                             R8 R10 K8 [1000]
       34 RETURN                           R5 4
       35 RETURN                           R2 3

PROTO_3:
        0 GETTABLEKS                       R11 R0 K1 ["R"]
        2 MULK                             R10 R11 K0 [255]
        3 FASTCALL1                        MATH_ROUND R10 ; [+2]
        4 GETIMPORT                        R9 K4 [math.round]
        6 CALL                             R9 1 1
        7 MOVE                             R6 R9
        8 GETTABLEKS                       R11 R0 K5 ["G"]
       10 MULK                             R10 R11 K0 [255]
       11 FASTCALL1                        MATH_ROUND R10 ; [+2]
       12 GETIMPORT                        R9 K4 [math.round]
       14 CALL                             R9 1 1
       15 MOVE                             R7 R9
       16 GETTABLEKS                       R10 R0 K6 ["B"]
       18 MULK                             R9 R10 K0 [255]
       19 FASTCALL1                        MATH_ROUND R9 ; [+2]
       20 GETIMPORT                        R8 K4 [math.round]
       22 CALL                             R8 1 1
       23 JUMPIFNOT                        R1 ; [+11]
       24 MOVE                             R2 R6
       25 MOVE                             R3 R7
       26 MOVE                             R4 R8
       27 SUBRK                            R9 R7 K1 ["R"]
       28 MULK                             R11 R9 K8 [1000]
       29 FASTCALL1                        MATH_ROUND R11 ; [+2]
       30 GETIMPORT                        R10 K4 [math.round]
       32 CALL                             R10 1 1
       33 DIVK                             R5 R10 K8 [1000]
       34 JUMP                             ; [+4]
       35 MOVE                             R2 R6
       36 MOVE                             R3 R7
       37 MOVE                             R4 R8
       38 LOADNIL                          R5
       39 LOADK                            R7 K9 ["<span class=\"color-preview\" style=\"background-color: rgba(%*,%*,%*,%*);\"></span>"]
       40 MOVE                             R9 R2
       41 MOVE                             R10 R3
       42 MOVE                             R11 R4
       43 ORK                              R12 R5 K7 [1]
       44 NAMECALL                         R7 R7 K10 ["format"]
       46 CALL                             R7 5 1
       47 MOVE                             R6 R7
       48 RETURN                           R6 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Color3"] ; [+36]
        7 GETTABLEKS                       R9 R0 K4 ["R"]
        9 MULK                             R8 R9 K3 [255]
       10 FASTCALL1                        MATH_ROUND R8 ; [+2]
       11 GETIMPORT                        R7 K7 [math.round]
       13 CALL                             R7 1 1
       14 MOVE                             R4 R7
       15 GETTABLEKS                       R9 R0 K8 ["G"]
       17 MULK                             R8 R9 K3 [255]
       18 FASTCALL1                        MATH_ROUND R8 ; [+2]
       19 GETIMPORT                        R7 K7 [math.round]
       21 CALL                             R7 1 1
       22 MOVE                             R5 R7
       23 GETTABLEKS                       R8 R0 K9 ["B"]
       25 MULK                             R7 R8 K3 [255]
       26 FASTCALL1                        MATH_ROUND R7 ; [+2]
       27 GETIMPORT                        R6 K7 [math.round]
       29 CALL                             R6 1 1
       30 MOVE                             R1 R4
       31 MOVE                             R2 R5
       32 MOVE                             R3 R6
       33 LOADK                            R5 K10 ["rgb(%*, %*, %*)"]
       34 MOVE                             R7 R1
       35 MOVE                             R8 R2
       36 MOVE                             R9 R3
       37 NAMECALL                         R5 R5 K11 ["format"]
       39 CALL                             R5 4 1
       40 MOVE                             R4 R5
       41 RETURN                           R4 1
       42 FASTCALL1                        TYPEOF R0 ; [+3]
       43 MOVE                             R2 R0
       44 GETIMPORT                        R1 K1 [typeof]
       46 CALL                             R1 1 1
       47 JUMPIFNOTEQKS                    R1 K12 ["number"] ; [+12]
       49 MULK                             R4 R0 K13 [1000]
       50 FASTCALL1                        MATH_ROUND R4 ; [+2]
       51 GETIMPORT                        R3 K7 [math.round]
       53 CALL                             R3 1 1
       54 DIVK                             R2 R3 K13 [1000]
       55 FASTCALL1                        TOSTRING R2 ; [+2]
       56 GETIMPORT                        R1 K15 [tostring]
       58 CALL                             R1 1 1
       59 RETURN                           R1 1
       60 LOADB                            R1 0
       61 FASTCALL1                        TYPE R0 ; [+3]
       62 MOVE                             R3 R0
       63 GETIMPORT                        R2 K17 [type]
       65 CALL                             R2 1 1
       66 JUMPIFNOTEQKS                    R2 K18 ["table"] ; [+30]
       68 LOADB                            R1 0
       69 GETTABLEKS                       R2 R0 K2 ["Color3"]
       71 JUMPIFEQKNIL                     R2 ; [+25]
       73 LOADB                            R1 0
       74 GETTABLEKS                       R3 R0 K2 ["Color3"]
       76 FASTCALL1                        TYPEOF R3 ; [+2]
       77 GETIMPORT                        R2 K1 [typeof]
       79 CALL                             R2 1 1
       80 JUMPIFNOTEQKS                    R2 K2 ["Color3"] ; [+16]
       82 LOADB                            R1 0
       83 GETTABLEKS                       R2 R0 K19 ["Transparency"]
       85 JUMPIFEQKNIL                     R2 ; [+11]
       87 GETTABLEKS                       R3 R0 K19 ["Transparency"]
       89 FASTCALL1                        TYPEOF R3 ; [+2]
       90 GETIMPORT                        R2 K1 [typeof]
       92 CALL                             R2 1 1
       93 JUMPIFEQKS                       R2 K12 ["number"] ; [+2]
       95 LOADB                            R1 0 +1
       96 LOADB                            R1 1
       97 JUMPIFNOT                        R1 ; [+53]
       98 GETTABLEKS                       R5 R0 K2 ["Color3"]
      100 GETTABLEKS                       R6 R0 K19 ["Transparency"]
      102 GETTABLEKS                       R12 R5 K4 ["R"]
      104 MULK                             R11 R12 K3 [255]
      105 FASTCALL1                        MATH_ROUND R11 ; [+2]
      106 GETIMPORT                        R10 K7 [math.round]
      108 CALL                             R10 1 1
      109 MOVE                             R7 R10
      110 GETTABLEKS                       R12 R5 K8 ["G"]
      112 MULK                             R11 R12 K3 [255]
      113 FASTCALL1                        MATH_ROUND R11 ; [+2]
      114 GETIMPORT                        R10 K7 [math.round]
      116 CALL                             R10 1 1
      117 MOVE                             R8 R10
      118 GETTABLEKS                       R11 R5 K9 ["B"]
      120 MULK                             R10 R11 K3 [255]
      121 FASTCALL1                        MATH_ROUND R10 ; [+2]
      122 GETIMPORT                        R9 K7 [math.round]
      124 CALL                             R9 1 1
      125 JUMPIFNOT                        R6 ; [+11]
      126 MOVE                             R1 R7
      127 MOVE                             R2 R8
      128 MOVE                             R3 R9
      129 SUBRK                            R10 R20 K6 ["round"]
      130 MULK                             R12 R10 K13 [1000]
      131 FASTCALL1                        MATH_ROUND R12 ; [+2]
      132 GETIMPORT                        R11 K7 [math.round]
      134 CALL                             R11 1 1
      135 DIVK                             R4 R11 K13 [1000]
      136 JUMP                             ; [+4]
      137 MOVE                             R1 R7
      138 MOVE                             R2 R8
      139 MOVE                             R3 R9
      140 LOADNIL                          R4
      141 LOADK                            R6 K21 ["rgba(%*, %*, %*, %*)"]
      142 MOVE                             R8 R1
      143 MOVE                             R9 R2
      144 MOVE                             R10 R3
      145 MOVE                             R11 R4
      146 NAMECALL                         R6 R6 K11 ["format"]
      148 CALL                             R6 5 1
      149 MOVE                             R5 R6
      150 RETURN                           R5 1
      151 FASTCALL1                        TOSTRING R0 ; [+3]
      152 MOVE                             R2 R0
      153 GETIMPORT                        R1 K15 [tostring]
      155 CALL                             R1 1 1
      156 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Color3"] ; [+73]
        7 GETTABLEKS                       R9 R0 K4 ["R"]
        9 MULK                             R8 R9 K3 [255]
       10 FASTCALL1                        MATH_ROUND R8 ; [+2]
       11 GETIMPORT                        R7 K7 [math.round]
       13 CALL                             R7 1 1
       14 MOVE                             R4 R7
       15 GETTABLEKS                       R9 R0 K8 ["G"]
       17 MULK                             R8 R9 K3 [255]
       18 FASTCALL1                        MATH_ROUND R8 ; [+2]
       19 GETIMPORT                        R7 K7 [math.round]
       21 CALL                             R7 1 1
       22 MOVE                             R5 R7
       23 GETTABLEKS                       R8 R0 K9 ["B"]
       25 MULK                             R7 R8 K3 [255]
       26 FASTCALL1                        MATH_ROUND R7 ; [+2]
       27 GETIMPORT                        R6 K7 [math.round]
       29 CALL                             R6 1 1
       30 MOVE                             R1 R4
       31 MOVE                             R2 R5
       32 MOVE                             R3 R6
       33 GETTABLEKS                       R14 R0 K4 ["R"]
       35 MULK                             R13 R14 K3 [255]
       36 FASTCALL1                        MATH_ROUND R13 ; [+2]
       37 GETIMPORT                        R12 K7 [math.round]
       39 CALL                             R12 1 1
       40 MOVE                             R9 R12
       41 GETTABLEKS                       R14 R0 K8 ["G"]
       43 MULK                             R13 R14 K3 [255]
       44 FASTCALL1                        MATH_ROUND R13 ; [+2]
       45 GETIMPORT                        R12 K7 [math.round]
       47 CALL                             R12 1 1
       48 MOVE                             R10 R12
       49 GETTABLEKS                       R13 R0 K9 ["B"]
       51 MULK                             R12 R13 K3 [255]
       52 FASTCALL1                        MATH_ROUND R12 ; [+2]
       53 GETIMPORT                        R11 K7 [math.round]
       55 CALL                             R11 1 1
       56 MOVE                             R5 R9
       57 MOVE                             R6 R10
       58 MOVE                             R7 R11
       59 LOADNIL                          R8
       60 LOADK                            R9 K10 ["<span class=\"color-preview\" style=\"background-color: rgba(%*,%*,%*,%*);\"></span>"]
       61 MOVE                             R11 R5
       62 MOVE                             R12 R6
       63 MOVE                             R13 R7
       64 ORK                              R14 R8 K11 [1]
       65 NAMECALL                         R9 R9 K12 ["format"]
       67 CALL                             R9 5 1
       68 MOVE                             R4 R9
       69 LOADK                            R6 K13 ["<span class=\"color\">%* rgb(%*, %*, %*)</span>"]
       70 MOVE                             R8 R4
       71 MOVE                             R9 R1
       72 MOVE                             R10 R2
       73 MOVE                             R11 R3
       74 NAMECALL                         R6 R6 K12 ["format"]
       76 CALL                             R6 5 1
       77 MOVE                             R5 R6
       78 RETURN                           R5 1
       79 FASTCALL1                        TYPEOF R0 ; [+3]
       80 MOVE                             R2 R0
       81 GETIMPORT                        R1 K1 [typeof]
       83 CALL                             R1 1 1
       84 JUMPIFNOTEQKS                    R1 K14 ["number"] ; [+12]
       86 MULK                             R4 R0 K15 [1000]
       87 FASTCALL1                        MATH_ROUND R4 ; [+2]
       88 GETIMPORT                        R3 K7 [math.round]
       90 CALL                             R3 1 1
       91 DIVK                             R2 R3 K15 [1000]
       92 FASTCALL1                        TOSTRING R2 ; [+2]
       93 GETIMPORT                        R1 K17 [tostring]
       95 CALL                             R1 1 1
       96 RETURN                           R1 1
       97 LOADB                            R1 0
       98 FASTCALL1                        TYPE R0 ; [+3]
       99 MOVE                             R3 R0
      100 GETIMPORT                        R2 K19 [type]
      102 CALL                             R2 1 1
      103 JUMPIFNOTEQKS                    R2 K20 ["table"] ; [+30]
      105 LOADB                            R1 0
      106 GETTABLEKS                       R2 R0 K2 ["Color3"]
      108 JUMPIFEQKNIL                     R2 ; [+25]
      110 LOADB                            R1 0
      111 GETTABLEKS                       R3 R0 K2 ["Color3"]
      113 FASTCALL1                        TYPEOF R3 ; [+2]
      114 GETIMPORT                        R2 K1 [typeof]
      116 CALL                             R2 1 1
      117 JUMPIFNOTEQKS                    R2 K2 ["Color3"] ; [+16]
      119 LOADB                            R1 0
      120 GETTABLEKS                       R2 R0 K21 ["Transparency"]
      122 JUMPIFEQKNIL                     R2 ; [+11]
      124 GETTABLEKS                       R3 R0 K21 ["Transparency"]
      126 FASTCALL1                        TYPEOF R3 ; [+2]
      127 GETIMPORT                        R2 K1 [typeof]
      129 CALL                             R2 1 1
      130 JUMPIFEQKS                       R2 K14 ["number"] ; [+2]
      132 LOADB                            R1 0 +1
      133 LOADB                            R1 1
      134 JUMPIFNOT                        R1 ; [+106]
      135 GETTABLEKS                       R5 R0 K2 ["Color3"]
      137 GETTABLEKS                       R6 R0 K21 ["Transparency"]
      139 GETTABLEKS                       R12 R5 K4 ["R"]
      141 MULK                             R11 R12 K3 [255]
      142 FASTCALL1                        MATH_ROUND R11 ; [+2]
      143 GETIMPORT                        R10 K7 [math.round]
      145 CALL                             R10 1 1
      146 MOVE                             R7 R10
      147 GETTABLEKS                       R12 R5 K8 ["G"]
      149 MULK                             R11 R12 K3 [255]
      150 FASTCALL1                        MATH_ROUND R11 ; [+2]
      151 GETIMPORT                        R10 K7 [math.round]
      153 CALL                             R10 1 1
      154 MOVE                             R8 R10
      155 GETTABLEKS                       R11 R5 K9 ["B"]
      157 MULK                             R10 R11 K3 [255]
      158 FASTCALL1                        MATH_ROUND R10 ; [+2]
      159 GETIMPORT                        R9 K7 [math.round]
      161 CALL                             R9 1 1
      162 JUMPIFNOT                        R6 ; [+11]
      163 MOVE                             R1 R7
      164 MOVE                             R2 R8
      165 MOVE                             R3 R9
      166 SUBRK                            R10 R11 K6 ["round"]
      167 MULK                             R12 R10 K15 [1000]
      168 FASTCALL1                        MATH_ROUND R12 ; [+2]
      169 GETIMPORT                        R11 K7 [math.round]
      171 CALL                             R11 1 1
      172 DIVK                             R4 R11 K15 [1000]
      173 JUMP                             ; [+4]
      174 MOVE                             R1 R7
      175 MOVE                             R2 R8
      176 MOVE                             R3 R9
      177 LOADNIL                          R4
      178 GETTABLEKS                       R6 R0 K2 ["Color3"]
      180 GETTABLEKS                       R7 R0 K21 ["Transparency"]
      182 GETTABLEKS                       R17 R6 K4 ["R"]
      184 MULK                             R16 R17 K3 [255]
      185 FASTCALL1                        MATH_ROUND R16 ; [+2]
      186 GETIMPORT                        R15 K7 [math.round]
      188 CALL                             R15 1 1
      189 MOVE                             R12 R15
      190 GETTABLEKS                       R17 R6 K8 ["G"]
      192 MULK                             R16 R17 K3 [255]
      193 FASTCALL1                        MATH_ROUND R16 ; [+2]
      194 GETIMPORT                        R15 K7 [math.round]
      196 CALL                             R15 1 1
      197 MOVE                             R13 R15
      198 GETTABLEKS                       R16 R6 K9 ["B"]
      200 MULK                             R15 R16 K3 [255]
      201 FASTCALL1                        MATH_ROUND R15 ; [+2]
      202 GETIMPORT                        R14 K7 [math.round]
      204 CALL                             R14 1 1
      205 JUMPIFNOT                        R7 ; [+11]
      206 MOVE                             R8 R12
      207 MOVE                             R9 R13
      208 MOVE                             R10 R14
      209 SUBRK                            R15 R11 K7 [math.round]
      210 MULK                             R17 R15 K15 [1000]
      211 FASTCALL1                        MATH_ROUND R17 ; [+2]
      212 GETIMPORT                        R16 K7 [math.round]
      214 CALL                             R16 1 1
      215 DIVK                             R11 R16 K15 [1000]
      216 JUMP                             ; [+4]
      217 MOVE                             R8 R12
      218 MOVE                             R9 R13
      219 MOVE                             R10 R14
      220 LOADNIL                          R11
      221 LOADK                            R12 K10 ["<span class=\"color-preview\" style=\"background-color: rgba(%*,%*,%*,%*);\"></span>"]
      222 MOVE                             R14 R8
      223 MOVE                             R15 R9
      224 MOVE                             R16 R10
      225 ORK                              R17 R11 K11 [1]
      226 NAMECALL                         R12 R12 K12 ["format"]
      228 CALL                             R12 5 1
      229 MOVE                             R5 R12
      230 LOADK                            R7 K22 ["<span class=\"color\">%* rgba(%*, %*, %*, %*)</span>"]
      231 MOVE                             R9 R5
      232 MOVE                             R10 R1
      233 MOVE                             R11 R2
      234 MOVE                             R12 R3
      235 MOVE                             R13 R4
      236 NAMECALL                         R7 R7 K12 ["format"]
      238 CALL                             R7 6 1
      239 MOVE                             R6 R7
      240 RETURN                           R6 1
      241 FASTCALL1                        TOSTRING R0 ; [+3]
      242 MOVE                             R2 R0
      243 GETIMPORT                        R1 K17 [tostring]
      245 CALL                             R1 1 1
      246 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 JUMPIFNOT                        R2 ; [+8]
        7 LOADK                            R11 K0 ["%*.%*"]
        8 MOVE                             R13 R2
        9 MOVE                             R14 R8
       10 NAMECALL                         R11 R11 K1 ["format"]
       12 CALL                             R11 3 1
       13 MOVE                             R10 R11
       14 JUMP                             ; [+1]
       15 MOVE                             R10 R8
       16 FASTCALL1                        TYPE R9 ; [+3]
       17 MOVE                             R12 R9
       18 GETIMPORT                        R11 K3 [type]
       20 CALL                             R11 1 1
       21 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+66]
       23 FASTCALL1                        GETMETATABLE R9 ; [+3]
       24 MOVE                             R12 R9
       25 GETIMPORT                        R11 K6 [getmetatable]
       27 CALL                             R11 1 1
       28 JUMPIF                           R11 ; [+59]
       29 JUMPIFNOT                        R3 ; [+38]
       30 LOADB                            R11 0
       31 FASTCALL1                        TYPE R9 ; [+3]
       32 MOVE                             R13 R9
       33 GETIMPORT                        R12 K3 [type]
       35 CALL                             R12 1 1
       36 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+30]
       38 LOADB                            R11 0
       39 GETTABLEKS                       R12 R9 K7 ["Color3"]
       41 JUMPIFEQKNIL                     R12 ; [+25]
       43 LOADB                            R11 0
       44 GETTABLEKS                       R13 R9 K7 ["Color3"]
       46 FASTCALL1                        TYPEOF R13 ; [+2]
       47 GETIMPORT                        R12 K9 [typeof]
       49 CALL                             R12 1 1
       50 JUMPIFNOTEQKS                    R12 K7 ["Color3"] ; [+16]
       52 LOADB                            R11 0
       53 GETTABLEKS                       R12 R9 K10 ["Transparency"]
       55 JUMPIFEQKNIL                     R12 ; [+11]
       57 GETTABLEKS                       R13 R9 K10 ["Transparency"]
       59 FASTCALL1                        TYPEOF R13 ; [+2]
       60 GETIMPORT                        R12 K9 [typeof]
       62 CALL                             R12 1 1
       63 JUMPIFEQKS                       R12 K11 ["number"] ; [+2]
       65 LOADB                            R11 0 +1
       66 LOADB                            R11 1
       67 JUMPIF                           R11 ; [+20]
       68 GETUPVAL                         R11 0
       69 MOVE                             R12 R9
       70 MOVE                             R13 R1
       71 MOVE                             R14 R10
       72 MOVE                             R15 R3
       73 CALL                             R11 4 1
       74 MOVE                             R12 R11
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 FORGPREP                         R12
       78 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
       80 MOVE                             R18 R4
       81 MOVE                             R19 R16
       82 GETIMPORT                        R17 K13 [table.insert]
       84 CALL                             R17 2 0
       85 FORGLOOP                         R12 2 ; [-8]
       87 JUMP                             ; [+15]
       88 DUPTABLE                         R13 K18 [{"key", "value", "category", "fullPath"}]
       89 SETTABLEKS                       R8 R13 K14 ["key"]
       91 SETTABLEKS                       R9 R13 K15 ["value"]
       93 SETTABLEKS                       R1 R13 K16 ["category"]
       95 SETTABLEKS                       R10 R13 K17 ["fullPath"]
       97 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       99 MOVE                             R12 R4
      100 GETIMPORT                        R11 K13 [table.insert]
      102 CALL                             R11 2 0
      103 FORGLOOP                         R5 2 ; [-98]
      105 RETURN                           R4 1

PROTO_7:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 JUMPIFNOT                        R2 ; [+8]
        7 LOADK                            R11 K0 ["%*.%*"]
        8 MOVE                             R13 R2
        9 MOVE                             R14 R8
       10 NAMECALL                         R11 R11 K1 ["format"]
       12 CALL                             R11 3 1
       13 MOVE                             R10 R11
       14 JUMP                             ; [+1]
       15 MOVE                             R10 R8
       16 FASTCALL1                        TYPE R9 ; [+3]
       17 MOVE                             R12 R9
       18 GETIMPORT                        R11 K3 [type]
       20 CALL                             R11 1 1
       21 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+112]
       23 JUMPIFNOT                        R3 ; [+67]
       24 LOADB                            R11 0
       25 FASTCALL1                        TYPE R9 ; [+3]
       26 MOVE                             R13 R9
       27 GETIMPORT                        R12 K3 [type]
       29 CALL                             R12 1 1
       30 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+30]
       32 LOADB                            R11 0
       33 GETTABLEKS                       R12 R9 K5 ["Color3"]
       35 JUMPIFEQKNIL                     R12 ; [+25]
       37 LOADB                            R11 0
       38 GETTABLEKS                       R13 R9 K5 ["Color3"]
       40 FASTCALL1                        TYPEOF R13 ; [+2]
       41 GETIMPORT                        R12 K7 [typeof]
       43 CALL                             R12 1 1
       44 JUMPIFNOTEQKS                    R12 K5 ["Color3"] ; [+16]
       46 LOADB                            R11 0
       47 GETTABLEKS                       R12 R9 K8 ["Transparency"]
       49 JUMPIFEQKNIL                     R12 ; [+11]
       51 GETTABLEKS                       R13 R9 K8 ["Transparency"]
       53 FASTCALL1                        TYPEOF R13 ; [+2]
       54 GETIMPORT                        R12 K7 [typeof]
       56 CALL                             R12 1 1
       57 JUMPIFEQKS                       R12 K9 ["number"] ; [+2]
       59 LOADB                            R11 0 +1
       60 LOADB                            R11 1
       61 JUMPIFNOT                        R11 ; [+29]
       62 JUMPIFNOT                        R2 ; [+6]
       63 LOADK                            R14 K10 ["."]
       64 NAMECALL                         R12 R2 K11 ["split"]
       66 CALL                             R12 2 1
       67 GETTABLEN                        R11 R12 1
       68 JUMP                             ; [+1]
       69 LOADK                            R11 K12 ["Default"]
       70 GETTABLE                         R12 R4 R11
       71 JUMPIF                           R12 ; [+3]
       72 NEWTABLE                         R12 0 0
       74 SETTABLE                         R12 R4 R11
       75 GETTABLE                         R13 R4 R11
       76 DUPTABLE                         R14 K17 [{"key", "value", "category", "fullPath"}]
       77 SETTABLEKS                       R8 R14 K13 ["key"]
       79 SETTABLEKS                       R9 R14 K14 ["value"]
       81 SETTABLEKS                       R1 R14 K15 ["category"]
       83 SETTABLEKS                       R10 R14 K16 ["fullPath"]
       85 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
       87 GETIMPORT                        R12 K19 [table.insert]
       89 CALL                             R12 2 0
       90 JUMP                             ; [+71]
       91 JUMPIF                           R2 ; [+12]
       92 GETUPVAL                         R11 0
       93 MOVE                             R12 R9
       94 MOVE                             R13 R1
       95 MOVE                             R14 R8
       96 MOVE                             R15 R3
       97 CALL                             R11 4 1
       98 LENGTH                           R12 R11
       99 LOADN                            R13 0
      100 JUMPIFNOTLT                      R13 R12 ; [+61]
      102 SETTABLE                         R11 R4 R8
      103 JUMP                             ; [+58]
      104 GETUPVAL                         R11 0
      105 MOVE                             R12 R9
      106 MOVE                             R13 R1
      107 MOVE                             R14 R10
      108 MOVE                             R15 R3
      109 CALL                             R11 4 1
      110 LOADK                            R15 K10 ["."]
      111 NAMECALL                         R13 R2 K11 ["split"]
      113 CALL                             R13 2 1
      114 GETTABLEN                        R12 R13 1
      115 GETTABLE                         R13 R4 R12
      116 JUMPIF                           R13 ; [+3]
      117 NEWTABLE                         R13 0 0
      119 SETTABLE                         R13 R4 R12
      120 MOVE                             R13 R11
      121 LOADNIL                          R14
      122 LOADNIL                          R15
      123 FORGPREP                         R13
      124 GETTABLE                         R19 R4 R12
      125 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      127 MOVE                             R20 R17
      128 GETIMPORT                        R18 K19 [table.insert]
      130 CALL                             R18 2 0
      131 FORGLOOP                         R13 2 ; [-8]
      133 JUMP                             ; [+28]
      134 JUMPIFNOT                        R2 ; [+6]
      135 LOADK                            R14 K10 ["."]
      136 NAMECALL                         R12 R2 K11 ["split"]
      138 CALL                             R12 2 1
      139 GETTABLEN                        R11 R12 1
      140 JUMP                             ; [+1]
      141 LOADK                            R11 K12 ["Default"]
      142 GETTABLE                         R12 R4 R11
      143 JUMPIF                           R12 ; [+3]
      144 NEWTABLE                         R12 0 0
      146 SETTABLE                         R12 R4 R11
      147 GETTABLE                         R13 R4 R11
      148 DUPTABLE                         R14 K17 [{"key", "value", "category", "fullPath"}]
      149 SETTABLEKS                       R8 R14 K13 ["key"]
      151 SETTABLEKS                       R9 R14 K14 ["value"]
      153 SETTABLEKS                       R1 R14 K15 ["category"]
      155 SETTABLEKS                       R10 R14 K16 ["fullPath"]
      157 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
      159 GETIMPORT                        R12 K19 [table.insert]
      161 CALL                             R12 2 0
      162 FORGLOOP                         R5 2 ; [-157]
      164 RETURN                           R4 1

PROTO_8:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPE R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [type]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+34]
       11 LOADB                            R6 0
       12 MOVE                             R7 R5
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 FASTCALL1                        TYPE R11 ; [+3]
       17 MOVE                             R13 R11
       18 GETIMPORT                        R12 K1 [type]
       20 CALL                             R12 1 1
       21 JUMPIFEQKS                       R12 K2 ["table"] ; [+15]
       23 FASTCALL1                        TYPEOF R11 ; [+3]
       24 MOVE                             R13 R11
       25 GETIMPORT                        R12 K4 [typeof]
       27 CALL                             R12 1 1
       28 JUMPIFEQKS                       R12 K5 ["Color3"] ; [+8]
       30 FASTCALL1                        TYPEOF R11 ; [+3]
       31 MOVE                             R13 R11
       32 GETIMPORT                        R12 K4 [typeof]
       34 CALL                             R12 1 1
       35 JUMPIFNOTEQKS                    R12 K6 ["number"] ; [+3]
       37 LOADB                            R6 1
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R7 2 ; [-24]
       41 JUMPIFNOT                        R6 ; [+2]
       42 LOADB                            R7 1
       43 RETURN                           R7 1
       44 FORGLOOP                         R1 2 ; [-41]
       46 LOADB                            R1 0
       47 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R5 K0 ["(%u%a+)_(%d+)%.?(%u?%w*)"]
        1 NAMECALL                         R3 R0 K1 ["find"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+42]
        5 LOADK                            R5 K0 ["(%u%a+)_(%d+)%.?(%u?%w*)"]
        6 NAMECALL                         R3 R1 K1 ["find"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+37]
       10 LOADK                            R5 K0 ["(%u%a+)_(%d+)%.?(%u?%w*)"]
       11 NAMECALL                         R3 R0 K2 ["match"]
       13 CALL                             R3 2 3
       14 LOADK                            R8 K0 ["(%u%a+)_(%d+)%.?(%u?%w*)"]
       15 NAMECALL                         R6 R1 K2 ["match"]
       17 CALL                             R6 2 3
       18 JUMPIFNOTEQ                      R3 R6 ; [+23]
       20 JUMPIFNOTEQ                      R4 R7 ; [+6]
       22 JUMPIFLT                         R5 R8 ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 RETURN                           R9 1
       27 FASTCALL1                        TONUMBER R4 ; [+3]
       28 MOVE                             R11 R4
       29 GETIMPORT                        R10 K4 [tonumber]
       31 CALL                             R10 1 1
       32 FASTCALL1                        TONUMBER R7 ; [+3]
       33 MOVE                             R12 R7
       34 GETIMPORT                        R11 K4 [tonumber]
       36 CALL                             R11 1 1
       37 JUMPIFLT                         R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 RETURN                           R9 1
       42 JUMPIFLT                         R0 R1 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 RETURN                           R9 1
       47 JUMPIFNOT                        R2 ; [+23]
       48 LOADK                            R5 K5 ["| (%-?[%d.]+) |$"]
       49 NAMECALL                         R3 R0 K2 ["match"]
       51 CALL                             R3 2 1
       52 LOADK                            R6 K5 ["| (%-?[%d.]+) |$"]
       53 NAMECALL                         R4 R1 K2 ["match"]
       55 CALL                             R4 2 1
       56 FASTCALL1                        TONUMBER R3 ; [+3]
       57 MOVE                             R7 R3
       58 GETIMPORT                        R6 K4 [tonumber]
       60 CALL                             R6 1 1
       61 FASTCALL1                        TONUMBER R4 ; [+3]
       62 MOVE                             R8 R4
       63 GETIMPORT                        R7 K4 [tonumber]
       65 CALL                             R7 1 1
       66 JUMPIFLT                         R6 R7 ; [+2]
       68 LOADB                            R5 0 +1
       69 LOADB                            R5 1
       70 RETURN                           R5 1
       71 JUMPIFLT                         R0 R1 ; [+2]
       73 LOADB                            R3 0 +1
       74 LOADB                            R3 1
       75 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [string.split]
        3 MOVE                             R4 R1
        4 LOADK                            R5 K3 ["."]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 JUMPIFEQKNIL                     R2 ; [+8]
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R9 R2
       11 GETIMPORT                        R8 K5 [type]
       13 CALL                             R8 1 1
       14 JUMPIFEQKS                       R8 K6 ["table"] ; [+3]
       16 LOADNIL                          R8
       17 RETURN                           R8 1
       18 GETTABLE                         R2 R2 R7
       19 FORGLOOP                         R3 2 ; [-13]
       21 RETURN                           R2 1

PROTO_11:
        0 GETIMPORT                        R3 K2 [string.split]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K3 ["."]
        4 CALL                             R3 2 1
        5 MOVE                             R4 R0
        6 LOADN                            R7 1
        7 LENGTH                           R8 R3
        8 SUBK                             R5 R8 K4 [1]
        9 LOADN                            R6 1
       10 FORNPREP                         R5
       11 GETTABLE                         R8 R3 R7
       12 GETTABLE                         R9 R4 R8
       13 JUMPIFNOTEQKNIL                  R9 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLE                         R4 R4 R8
       17 FORNLOOP                         R5
       18 LENGTH                           R6 R3
       19 GETTABLE                         R5 R3 R6
       20 JUMPIFNOT                        R4 ; [+2]
       21 JUMPIFNOT                        R5 ; [+1]
       22 SETTABLE                         R2 R4 R5
       23 RETURN                           R0 0

PROTO_12:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K1 [type]
       17 CALL                             R2 1 1
       18 JUMPIFEQKS                       R2 K2 ["table"] ; [+16]
       20 FASTCALL1                        TYPEOF R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K4 [typeof]
       24 CALL                             R3 1 1
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R5 R1
       27 GETIMPORT                        R4 K4 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1
       35 MOVE                             R2 R0
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETUPVAL                         R7 0
       40 MOVE                             R8 R6
       41 GETTABLE                         R9 R1 R5
       42 CALL                             R7 2 1
       43 JUMPIF                           R7 ; [+2]
       44 LOADB                            R7 0
       45 RETURN                           R7 1
       46 FORGLOOP                         R2 2 ; [-8]
       48 MOVE                             R2 R1
       49 LOADNIL                          R3
       50 LOADNIL                          R4
       51 FORGPREP                         R2
       52 GETTABLE                         R7 R0 R5
       53 JUMPIFNOTEQKNIL                  R7 ; [+3]
       55 LOADB                            R7 0
       56 RETURN                           R7 1
       57 FORGLOOP                         R2 1 ; [-6]
       59 LOADB                            R2 1
       60 RETURN                           R2 1

PROTO_13:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+20]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+13]
       13 GETUPVAL                         R3 1
       14 LOADK                            R6 K3 ["Token override skipped: unknown source token path \"%*\""]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K4 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 NAMECALL                         R3 R3 K5 ["warning"]
       22 CALL                             R3 2 0
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 RETURN                           R2 1
       26 RETURN                           R1 1

PROTO_14:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R5 R2
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+21]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R2
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+13]
       13 GETUPVAL                         R5 1
       14 LOADK                            R8 K3 ["Token override skipped: unknown source token path \"%*\""]
       15 MOVE                             R10 R2
       16 NAMECALL                         R8 R8 K4 ["format"]
       18 CALL                             R8 2 1
       19 MOVE                             R7 R8
       20 NAMECALL                         R5 R5 K5 ["warning"]
       22 CALL                             R5 2 0
       23 LOADNIL                          R3
       24 JUMP                             ; [+3]
       25 MOVE                             R3 R4
       26 JUMP                             ; [+1]
       27 MOVE                             R3 R2
       28 JUMPIFNOTEQKNIL                  R3 ; [+3]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 GETUPVAL                         R4 0
       33 MOVE                             R5 R0
       34 MOVE                             R6 R1
       35 CALL                             R4 2 1
       36 JUMPIFNOTEQKNIL                  R4 ; [+13]
       38 GETUPVAL                         R5 1
       39 LOADK                            R8 K6 ["Token override skipped: unknown target token path \"%*\""]
       40 MOVE                             R10 R1
       41 NAMECALL                         R8 R8 K4 ["format"]
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 NAMECALL                         R5 R5 K5 ["warning"]
       47 CALL                             R5 2 0
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R4
       52 MOVE                             R7 R3
       53 CALL                             R5 2 1
       54 JUMPIF                           R5 ; [+12]
       55 GETUPVAL                         R5 1
       56 LOADK                            R8 K7 ["Token override skipped: type or shape mismatch for \"%*\""]
       57 MOVE                             R10 R1
       58 NAMECALL                         R8 R8 K4 ["format"]
       60 CALL                             R8 2 1
       61 MOVE                             R7 R8
       62 NAMECALL                         R5 R5 K5 ["warning"]
       64 CALL                             R5 2 0
       65 LOADNIL                          R5
       66 RETURN                           R5 1
       67 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Logger"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 DUPCLOSURE                       R5 K12 [PROTO_2]
       24 DUPCLOSURE                       R6 K13 [PROTO_3]
       25 DUPCLOSURE                       R7 K14 [PROTO_4]
       26 DUPCLOSURE                       R8 K15 [PROTO_5]
       27 DUPCLOSURE                       R9 K16 [PROTO_6]
       28 CAPTURE                          VAL R9
       29 DUPCLOSURE                       R10 K17 [PROTO_7]
       30 CAPTURE                          VAL R9
       31 DUPCLOSURE                       R11 K18 [PROTO_8]
       32 DUPCLOSURE                       R12 K19 [PROTO_9]
       33 NEWTABLE                         R13 0 17
       35 LOADK                            R14 K20 ["Color"]
       36 LOADK                            R15 K21 ["Stroke"]
       37 LOADK                            R16 K22 ["Size"]
       38 LOADK                            R17 K23 ["Radius"]
       39 LOADK                            R18 K24 ["Padding"]
       40 LOADK                            R19 K25 ["Margin"]
       41 LOADK                            R20 K26 ["Gap"]
       42 LOADK                            R21 K27 ["Typography"]
       43 LOADK                            R22 K28 ["FontSize"]
       44 LOADK                            R23 K29 ["FontWeight"]
       45 LOADK                            R24 K30 ["LineHeight"]
       46 LOADK                            R25 K31 ["Ease"]
       47 LOADK                            R26 K32 ["Time"]
       48 LOADK                            R27 K33 ["Inverse"]
       49 LOADK                            R28 K34 ["DarkMode"]
       50 LOADK                            R29 K35 ["LightMode"]
       51 SETLIST                          R13 R14 16 [1]
       53 LOADK                            R14 K36 ["Config"]
       54 SETLIST                          R13 R14 1 [17]
       56 DUPCLOSURE                       R14 K37 [PROTO_10]
       57 DUPCLOSURE                       R15 K38 [PROTO_11]
       58 DUPCLOSURE                       R16 K39 [PROTO_12]
       59 CAPTURE                          VAL R16
       60 DUPCLOSURE                       R17 K40 [PROTO_13]
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R18 K41 [PROTO_14]
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R16
       67 DUPTABLE                         R19 K55 [{"isColorStyle", "formatColorPreviewHTML", "formatTokenValue", "formatTokenValueHTML", "collectTokens", "collectTokensWithSubcategories", "hasSubcategories", "sortTokens", "orderedTokenCategories", "getTokenValue", "setTokenValue", "resolveTokenOverride", "_resolveTokenOverrideSource"}]
       68 SETTABLEKS                       R3 R19 K42 ["isColorStyle"]
       70 SETTABLEKS                       R6 R19 K43 ["formatColorPreviewHTML"]
       72 SETTABLEKS                       R7 R19 K44 ["formatTokenValue"]
       74 SETTABLEKS                       R8 R19 K45 ["formatTokenValueHTML"]
       76 SETTABLEKS                       R9 R19 K46 ["collectTokens"]
       78 SETTABLEKS                       R10 R19 K47 ["collectTokensWithSubcategories"]
       80 SETTABLEKS                       R11 R19 K48 ["hasSubcategories"]
       82 SETTABLEKS                       R12 R19 K49 ["sortTokens"]
       84 SETTABLEKS                       R13 R19 K50 ["orderedTokenCategories"]
       86 SETTABLEKS                       R14 R19 K51 ["getTokenValue"]
       88 SETTABLEKS                       R15 R19 K52 ["setTokenValue"]
       90 SETTABLEKS                       R18 R19 K53 ["resolveTokenOverride"]
       92 SETTABLEKS                       R17 R19 K54 ["_resolveTokenOverrideSource"]
       94 RETURN                           R19 1
