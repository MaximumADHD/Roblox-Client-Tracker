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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 DUPCLOSURE                       R5 K11 [PROTO_3]
       18 DUPCLOSURE                       R6 K12 [PROTO_4]
       19 DUPCLOSURE                       R7 K13 [PROTO_5]
       20 DUPCLOSURE                       R8 K14 [PROTO_6]
       21 CAPTURE                          VAL R8
       22 DUPCLOSURE                       R9 K15 [PROTO_7]
       23 CAPTURE                          VAL R8
       24 DUPCLOSURE                       R10 K16 [PROTO_8]
       25 DUPCLOSURE                       R11 K17 [PROTO_9]
       26 NEWTABLE                         R12 0 17
       28 LOADK                            R13 K18 ["Color"]
       29 LOADK                            R14 K19 ["Stroke"]
       30 LOADK                            R15 K20 ["Size"]
       31 LOADK                            R16 K21 ["Radius"]
       32 LOADK                            R17 K22 ["Padding"]
       33 LOADK                            R18 K23 ["Margin"]
       34 LOADK                            R19 K24 ["Gap"]
       35 LOADK                            R20 K25 ["Typography"]
       36 LOADK                            R21 K26 ["FontSize"]
       37 LOADK                            R22 K27 ["FontWeight"]
       38 LOADK                            R23 K28 ["LineHeight"]
       39 LOADK                            R24 K29 ["Ease"]
       40 LOADK                            R25 K30 ["Time"]
       41 LOADK                            R26 K31 ["Inverse"]
       42 LOADK                            R27 K32 ["DarkMode"]
       43 LOADK                            R28 K33 ["LightMode"]
       44 SETLIST                          R12 R13 16 [1]
       46 LOADK                            R13 K34 ["Config"]
       47 SETLIST                          R12 R13 1 [17]
       49 DUPTABLE                         R13 K44 [{"isColorStyle", "formatColorPreviewHTML", "formatTokenValue", "formatTokenValueHTML", "collectTokens", "collectTokensWithSubcategories", "hasSubcategories", "sortTokens", "orderedTokenCategories"}]
       50 SETTABLEKS                       R2 R13 K35 ["isColorStyle"]
       52 SETTABLEKS                       R5 R13 K36 ["formatColorPreviewHTML"]
       54 SETTABLEKS                       R6 R13 K37 ["formatTokenValue"]
       56 SETTABLEKS                       R7 R13 K38 ["formatTokenValueHTML"]
       58 SETTABLEKS                       R8 R13 K39 ["collectTokens"]
       60 SETTABLEKS                       R9 R13 K40 ["collectTokensWithSubcategories"]
       62 SETTABLEKS                       R10 R13 K41 ["hasSubcategories"]
       64 SETTABLEKS                       R11 R13 K42 ["sortTokens"]
       66 SETTABLEKS                       R12 R13 K43 ["orderedTokenCategories"]
       68 RETURN                           R13 1
