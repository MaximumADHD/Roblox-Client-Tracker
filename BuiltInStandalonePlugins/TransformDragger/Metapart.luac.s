PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 GETTABLEKS                       R2 R0 K3 ["IsWrapped"]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 NAMECALL                         R1 R0 K2 ["GetRootPart"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R2 0
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R2 R1
       12 NAMECALL                         R1 R0 K3 ["GetChildren"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K5 [ipairs]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 FORGLOOP                         R2 2 [inext] ; [-4]
       25 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 SETUPVAL                         R1 0
        3 LOADN                            R3 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 1
        6 FORNPREP                         R1
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R5 R0 R3
        9 CALL                             R4 1 0
       10 FORNLOOP                         R1
       11 NEWTABLE                         R1 0 0
       13 GETIMPORT                        R2 K1 [pairs]
       15 GETUPVAL                         R3 0
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       20 MOVE                             R8 R1
       21 MOVE                             R9 R5
       22 GETIMPORT                        R7 K4 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-8]
       27 RETURN                           R1 1

PROTO_4:
        0 JUMPIF                           R1 ; [+2]
        1 NEWTABLE                         R1 0 0
        3 LOADK                            R4 K0 ["BasePart"]
        4 NAMECALL                         R2 R0 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+8]
        8 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 GETIMPORT                        R2 K4 [table.insert]
       14 CALL                             R2 2 0
       15 JUMP                             ; [+13]
       16 LOADK                            R4 K5 ["ProceduralModel"]
       17 NAMECALL                         R2 R0 K1 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       23 MOVE                             R3 R1
       24 MOVE                             R4 R0
       25 GETIMPORT                        R2 K4 [table.insert]
       27 CALL                             R2 2 0
       28 RETURN                           R1 1
       29 NAMECALL                         R2 R0 K6 ["GetChildren"]
       31 CALL                             R2 1 1
       32 LOADN                            R5 1
       33 LENGTH                           R3 R2
       34 LOADN                            R4 1
       35 FORNPREP                         R3
       36 GETUPVAL                         R6 0
       37 GETTABLE                         R7 R2 R5
       38 MOVE                             R8 R1
       39 CALL                             R6 2 1
       40 MOVE                             R1 R6
       41 FORNLOOP                         R3
       42 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R6 R0 R4
        8 MOVE                             R7 R1
        9 CALL                             R5 2 1
       10 MOVE                             R1 R5
       11 FORNLOOP                         R2
       12 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 GETIMPORT                        R2 K4 [table.insert]
       11 CALL                             R2 2 0
       12 GETIMPORT                        R2 K6 [ipairs]
       14 NAMECALL                         R3 R0 K7 ["GetDescendants"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 3
       18 FORGPREP_INEXT                   R2
       19 LOADK                            R9 K0 ["Model"]
       20 NAMECALL                         R7 R6 K1 ["IsA"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       26 MOVE                             R8 R1
       27 MOVE                             R9 R6
       28 GETIMPORT                        R7 K4 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 [inext] ; [-13]
       33 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 MOVE                             R9 R1
       10 CALL                             R7 2 0
       11 FORGLOOP                         R2 2 [inext] ; [-5]
       13 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["PrimaryPart"]
        2 JUMPIF                           R1 ; [+62]
        3 LOADNIL                          R1
        4 NAMECALL                         R2 R0 K1 ["GetChildren"]
        6 CALL                             R2 1 1
        7 LOADN                            R5 1
        8 LENGTH                           R3 R2
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 GETTABLE                         R6 R2 R5
       12 LOADK                            R8 K2 ["BasePart"]
       13 NAMECALL                         R6 R6 K3 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+14]
       17 GETTABLE                         R1 R2 R5
       18 GETTABLEKS                       R6 R1 K4 ["CFrame"]
       20 GETTABLEKS                       R6 R6 K5 ["p"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K6 ["visiblyIdentityCFrame"]
       25 GETTABLEKS                       R8 R1 K4 ["CFrame"]
       27 LOADK                            R9 K7 [1E-05]
       28 CALL                             R7 2 1
       29 JUMPIF                           R7 ; [+32]
       30 JUMP                             ; [+30]
       31 GETTABLE                         R6 R2 R5
       32 LOADK                            R8 K8 ["Model"]
       33 NAMECALL                         R6 R6 K3 ["IsA"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+24]
       37 GETTABLE                         R6 R2 R5
       38 LOADK                            R8 K9 ["Workspace"]
       39 NAMECALL                         R6 R6 K3 ["IsA"]
       41 CALL                             R6 2 1
       42 JUMPIF                           R6 ; [+18]
       43 GETTABLE                         R6 R2 R5
       44 GETGLOBAL                        R7 K10 ["forcePrimaryPart"]
       46 GETTABLE                         R8 R2 R5
       47 CALL                             R7 1 0
       48 GETTABLEKS                       R7 R6 K0 ["PrimaryPart"]
       50 JUMPIFNOT                        R7 ; [+10]
       51 GETTABLEKS                       R1 R6 K0 ["PrimaryPart"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K6 ["visiblyIdentityCFrame"]
       56 GETTABLEKS                       R8 R1 K4 ["CFrame"]
       58 LOADK                            R9 K7 [1E-05]
       59 CALL                             R7 2 1
       60 JUMPIF                           R7 ; [+1]
       61 FORNLOOP                         R3
       62 JUMPIFNOT                        R1 ; [+2]
       63 SETTABLEKS                       R1 R0 K0 ["PrimaryPart"]
       65 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+9]
        3 MULK                             R4 R0 K0 [1000000]
        4 SUBK                             R3 R4 K1 [0.5]
        5 FASTCALL1                        MATH_CEIL R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.ceil]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K0 [1000000]
       10 JUMPIF                           R1 ; [+7]
       11 MULK                             R4 R0 K0 [1000000]
       12 ADDK                             R3 R4 K1 [0.5]
       13 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       14 GETIMPORT                        R2 K6 [math.floor]
       16 CALL                             R2 1 1
       17 DIVK                             R1 R2 K0 [1000000]
       18 RETURN                           R1 1

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["components"]
        2 CALL                             R2 1 12
        3 GETIMPORT                        R14 K3 [CFrame.new]
        5 LOADN                            R16 0
        6 JUMPIFNOTLT                      R16 R2 ; [+9]
        8 MULK                             R18 R2 K4 [1000000]
        9 SUBK                             R17 R18 K5 [0.5]
       10 FASTCALL1                        MATH_CEIL R17 ; [+2]
       11 GETIMPORT                        R16 K8 [math.ceil]
       13 CALL                             R16 1 1
       14 DIVK                             R15 R16 K4 [1000000]
       15 JUMPIF                           R15 ; [+7]
       16 MULK                             R18 R2 K4 [1000000]
       17 ADDK                             R17 R18 K5 [0.5]
       18 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       19 GETIMPORT                        R16 K10 [math.floor]
       21 CALL                             R16 1 1
       22 DIVK                             R15 R16 K4 [1000000]
       23 LOADN                            R17 0
       24 JUMPIFNOTLT                      R17 R3 ; [+9]
       26 MULK                             R19 R3 K4 [1000000]
       27 SUBK                             R18 R19 K5 [0.5]
       28 FASTCALL1                        MATH_CEIL R18 ; [+2]
       29 GETIMPORT                        R17 K8 [math.ceil]
       31 CALL                             R17 1 1
       32 DIVK                             R16 R17 K4 [1000000]
       33 JUMPIF                           R16 ; [+7]
       34 MULK                             R19 R3 K4 [1000000]
       35 ADDK                             R18 R19 K5 [0.5]
       36 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       37 GETIMPORT                        R17 K10 [math.floor]
       39 CALL                             R17 1 1
       40 DIVK                             R16 R17 K4 [1000000]
       41 LOADN                            R18 0
       42 JUMPIFNOTLT                      R18 R4 ; [+9]
       44 MULK                             R20 R4 K4 [1000000]
       45 SUBK                             R19 R20 K5 [0.5]
       46 FASTCALL1                        MATH_CEIL R19 ; [+2]
       47 GETIMPORT                        R18 K8 [math.ceil]
       49 CALL                             R18 1 1
       50 DIVK                             R17 R18 K4 [1000000]
       51 JUMPIF                           R17 ; [+7]
       52 MULK                             R20 R4 K4 [1000000]
       53 ADDK                             R19 R20 K5 [0.5]
       54 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       55 GETIMPORT                        R18 K10 [math.floor]
       57 CALL                             R18 1 1
       58 DIVK                             R17 R18 K4 [1000000]
       59 JUMPIFNOT                        R1 ; [+19]
       60 LOADN                            R19 0
       61 JUMPIFNOTLT                      R19 R5 ; [+9]
       63 MULK                             R21 R5 K4 [1000000]
       64 SUBK                             R20 R21 K5 [0.5]
       65 FASTCALL1                        MATH_CEIL R20 ; [+2]
       66 GETIMPORT                        R19 K8 [math.ceil]
       68 CALL                             R19 1 1
       69 DIVK                             R18 R19 K4 [1000000]
       70 JUMPIF                           R18 ; [+7]
       71 MULK                             R21 R5 K4 [1000000]
       72 ADDK                             R20 R21 K5 [0.5]
       73 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       74 GETIMPORT                        R19 K10 [math.floor]
       76 CALL                             R19 1 1
       77 DIVK                             R18 R19 K4 [1000000]
       78 JUMPIF                           R18 ; [+1]
       79 MOVE                             R18 R5
       80 JUMPIFNOT                        R1 ; [+19]
       81 LOADN                            R20 0
       82 JUMPIFNOTLT                      R20 R6 ; [+9]
       84 MULK                             R22 R6 K4 [1000000]
       85 SUBK                             R21 R22 K5 [0.5]
       86 FASTCALL1                        MATH_CEIL R21 ; [+2]
       87 GETIMPORT                        R20 K8 [math.ceil]
       89 CALL                             R20 1 1
       90 DIVK                             R19 R20 K4 [1000000]
       91 JUMPIF                           R19 ; [+7]
       92 MULK                             R22 R6 K4 [1000000]
       93 ADDK                             R21 R22 K5 [0.5]
       94 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       95 GETIMPORT                        R20 K10 [math.floor]
       97 CALL                             R20 1 1
       98 DIVK                             R19 R20 K4 [1000000]
       99 JUMPIF                           R19 ; [+1]
      100 MOVE                             R19 R6
      101 JUMPIFNOT                        R1 ; [+19]
      102 LOADN                            R21 0
      103 JUMPIFNOTLT                      R21 R7 ; [+9]
      105 MULK                             R23 R7 K4 [1000000]
      106 SUBK                             R22 R23 K5 [0.5]
      107 FASTCALL1                        MATH_CEIL R22 ; [+2]
      108 GETIMPORT                        R21 K8 [math.ceil]
      110 CALL                             R21 1 1
      111 DIVK                             R20 R21 K4 [1000000]
      112 JUMPIF                           R20 ; [+7]
      113 MULK                             R23 R7 K4 [1000000]
      114 ADDK                             R22 R23 K5 [0.5]
      115 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      116 GETIMPORT                        R21 K10 [math.floor]
      118 CALL                             R21 1 1
      119 DIVK                             R20 R21 K4 [1000000]
      120 JUMPIF                           R20 ; [+1]
      121 MOVE                             R20 R7
      122 JUMPIFNOT                        R1 ; [+19]
      123 LOADN                            R22 0
      124 JUMPIFNOTLT                      R22 R8 ; [+9]
      126 MULK                             R24 R8 K4 [1000000]
      127 SUBK                             R23 R24 K5 [0.5]
      128 FASTCALL1                        MATH_CEIL R23 ; [+2]
      129 GETIMPORT                        R22 K8 [math.ceil]
      131 CALL                             R22 1 1
      132 DIVK                             R21 R22 K4 [1000000]
      133 JUMPIF                           R21 ; [+7]
      134 MULK                             R24 R8 K4 [1000000]
      135 ADDK                             R23 R24 K5 [0.5]
      136 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      137 GETIMPORT                        R22 K10 [math.floor]
      139 CALL                             R22 1 1
      140 DIVK                             R21 R22 K4 [1000000]
      141 JUMPIF                           R21 ; [+1]
      142 MOVE                             R21 R8
      143 JUMPIFNOT                        R1 ; [+19]
      144 LOADN                            R23 0
      145 JUMPIFNOTLT                      R23 R9 ; [+9]
      147 MULK                             R25 R9 K4 [1000000]
      148 SUBK                             R24 R25 K5 [0.5]
      149 FASTCALL1                        MATH_CEIL R24 ; [+2]
      150 GETIMPORT                        R23 K8 [math.ceil]
      152 CALL                             R23 1 1
      153 DIVK                             R22 R23 K4 [1000000]
      154 JUMPIF                           R22 ; [+7]
      155 MULK                             R25 R9 K4 [1000000]
      156 ADDK                             R24 R25 K5 [0.5]
      157 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      158 GETIMPORT                        R23 K10 [math.floor]
      160 CALL                             R23 1 1
      161 DIVK                             R22 R23 K4 [1000000]
      162 JUMPIF                           R22 ; [+1]
      163 MOVE                             R22 R9
      164 JUMPIFNOT                        R1 ; [+19]
      165 LOADN                            R24 0
      166 JUMPIFNOTLT                      R24 R10 ; [+9]
      168 MULK                             R26 R10 K4 [1000000]
      169 SUBK                             R25 R26 K5 [0.5]
      170 FASTCALL1                        MATH_CEIL R25 ; [+2]
      171 GETIMPORT                        R24 K8 [math.ceil]
      173 CALL                             R24 1 1
      174 DIVK                             R23 R24 K4 [1000000]
      175 JUMPIF                           R23 ; [+7]
      176 MULK                             R26 R10 K4 [1000000]
      177 ADDK                             R25 R26 K5 [0.5]
      178 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      179 GETIMPORT                        R24 K10 [math.floor]
      181 CALL                             R24 1 1
      182 DIVK                             R23 R24 K4 [1000000]
      183 JUMPIF                           R23 ; [+1]
      184 MOVE                             R23 R10
      185 JUMPIFNOT                        R1 ; [+19]
      186 LOADN                            R25 0
      187 JUMPIFNOTLT                      R25 R11 ; [+9]
      189 MULK                             R27 R11 K4 [1000000]
      190 SUBK                             R26 R27 K5 [0.5]
      191 FASTCALL1                        MATH_CEIL R26 ; [+2]
      192 GETIMPORT                        R25 K8 [math.ceil]
      194 CALL                             R25 1 1
      195 DIVK                             R24 R25 K4 [1000000]
      196 JUMPIF                           R24 ; [+7]
      197 MULK                             R27 R11 K4 [1000000]
      198 ADDK                             R26 R27 K5 [0.5]
      199 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      200 GETIMPORT                        R25 K10 [math.floor]
      202 CALL                             R25 1 1
      203 DIVK                             R24 R25 K4 [1000000]
      204 JUMPIF                           R24 ; [+1]
      205 MOVE                             R24 R11
      206 JUMPIFNOT                        R1 ; [+19]
      207 LOADN                            R26 0
      208 JUMPIFNOTLT                      R26 R12 ; [+9]
      210 MULK                             R28 R12 K4 [1000000]
      211 SUBK                             R27 R28 K5 [0.5]
      212 FASTCALL1                        MATH_CEIL R27 ; [+2]
      213 GETIMPORT                        R26 K8 [math.ceil]
      215 CALL                             R26 1 1
      216 DIVK                             R25 R26 K4 [1000000]
      217 JUMPIF                           R25 ; [+7]
      218 MULK                             R28 R12 K4 [1000000]
      219 ADDK                             R27 R28 K5 [0.5]
      220 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      221 GETIMPORT                        R26 K10 [math.floor]
      223 CALL                             R26 1 1
      224 DIVK                             R25 R26 K4 [1000000]
      225 JUMPIF                           R25 ; [+1]
      226 MOVE                             R25 R12
      227 JUMPIFNOT                        R1 ; [+19]
      228 LOADN                            R27 0
      229 JUMPIFNOTLT                      R27 R13 ; [+9]
      231 MULK                             R29 R13 K4 [1000000]
      232 SUBK                             R28 R29 K5 [0.5]
      233 FASTCALL1                        MATH_CEIL R28 ; [+2]
      234 GETIMPORT                        R27 K8 [math.ceil]
      236 CALL                             R27 1 1
      237 DIVK                             R26 R27 K4 [1000000]
      238 JUMPIF                           R26 ; [+7]
      239 MULK                             R29 R13 K4 [1000000]
      240 ADDK                             R28 R29 K5 [0.5]
      241 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      242 GETIMPORT                        R27 K10 [math.floor]
      244 CALL                             R27 1 1
      245 DIVK                             R26 R27 K4 [1000000]
      246 JUMPIF                           R26 ; [+1]
      247 MOVE                             R26 R13
      248 CALL                             R14 12 -1
      249 RETURN                           R14 -1

PROTO_11:
        0 LOADK                            R4 K0 ["PVInstance"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+17]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 SETTABLE                         R0 R1 R0
        9 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K0 ["PVInstance"]
       14 NAMECALL                         R7 R6 K1 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+1]
       18 SETTABLE                         R0 R1 R6
       19 FORGLOOP                         R2 2 ; [-7]
       21 RETURN                           R0 0
       22 NAMECALL                         R2 R0 K3 ["GetChildren"]
       24 CALL                             R2 1 3
       25 FORGPREP                         R2
       26 GETUPVAL                         R7 0
       27 MOVE                             R8 R6
       28 MOVE                             R9 R1
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-5]
       32 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R4 K0 ["Constraint"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETTABLEKS                       R2 R1 K2 ["Attachment0"]
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETTABLEKS                       R3 R2 K3 ["Parent"]
       10 JUMPIFNOTEQ                      R3 R0 ; [+8]
       12 GETTABLEKS                       R4 R1 K4 ["Attachment1"]
       14 MOVE                             R5 R4
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETTABLEKS                       R5 R4 K3 ["Parent"]
       18 RETURN                           R5 1
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R1 K4 ["Attachment1"]
       22 MOVE                             R4 R3
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R4 R3 K3 ["Parent"]
       26 RETURN                           R4 1
       27 LOADK                            R4 K5 ["JointInstance"]
       28 NAMECALL                         R2 R1 K1 ["IsA"]
       30 CALL                             R2 2 1
       31 JUMPIF                           R2 ; [+5]
       32 LOADK                            R4 K6 ["WeldConstraint"]
       33 NAMECALL                         R2 R1 K1 ["IsA"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+10]
       37 GETTABLEKS                       R2 R1 K7 ["Part0"]
       39 JUMPIFNOTEQ                      R2 R0 ; [+4]
       41 GETTABLEKS                       R2 R1 K8 ["Part1"]
       43 RETURN                           R2 1
       44 GETTABLEKS                       R2 R1 K7 ["Part0"]
       46 RETURN                           R2 1
       47 LOADNIL                          R2
       48 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R6
        8 MOVE                             R9 R1
        9 CALL                             R7 2 0
       10 FORGLOOP                         R2 2 ; [-5]
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 MOVE                             R4 R1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 JUMPIFNOTEQ                      R7 R8 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       24 MOVE                             R10 R2
       25 MOVE                             R11 R7
       26 GETIMPORT                        R9 K2 [table.insert]
       28 CALL                             R9 2 0
       29 LOADK                            R11 K3 ["BasePart"]
       30 NAMECALL                         R9 R7 K4 ["IsA"]
       32 CALL                             R9 2 1
       33 JUMPIFNOT                        R9 ; [+21]
       34 NAMECALL                         R9 R7 K5 ["GetJoints"]
       36 CALL                             R9 1 3
       37 FORGPREP                         R9
       38 GETUPVAL                         R14 1
       39 MOVE                             R15 R7
       40 MOVE                             R16 R13
       41 CALL                             R14 2 1
       42 GETTABLE                         R15 R1 R14
       43 JUMPIFNOT                        R15 ; [+9]
       44 JUMPIFEQ                         R15 R8 ; [+8]
       46 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       48 MOVE                             R17 R3
       49 MOVE                             R18 R13
       50 GETIMPORT                        R16 K2 [table.insert]
       52 CALL                             R16 2 0
       53 FORGLOOP                         R9 2 ; [-16]
       55 FORGLOOP                         R4 2 ; [-36]
       57 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activeInterPVJoints"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K1 ["Enabled"]
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["rootPVs"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 NAMECALL                         R9 R5 K3 ["GetPivot"]
       19 CALL                             R9 1 1
       20 MUL                              R8 R0 R9
       21 NAMECALL                         R6 R5 K4 ["PivotTo"]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-8]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["activeInterPVJoints"]
       29 LOADNIL                          R2
       30 LOADNIL                          R3
       31 FORGPREP                         R1
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K1 ["Enabled"]
       35 FORGLOOP                         R1 2 ; [-4]
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 GETTABLEKS                       R0 R0 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["updateRequired"]
       12 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Changed"]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R7 R7 K3 ["connect"]
       13 CALL                             R7 2 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 [inext] ; [-9]
       17 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["objects"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K1 ["roots"]
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["objects"]
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K1 [1] ; [+98]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["objects"]
        9 GETTABLEN                        R0 R1 1
       10 LOADK                            R2 K2 ["ProceduralModel"]
       11 NAMECALL                         R0 R0 K3 ["IsA"]
       13 CALL                             R0 2 1
       14 JUMPIFNOT                        R0 ; [+88]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["objects"]
       18 GETTABLEN                        R0 R1 1
       19 NAMECALL                         R0 R0 K4 ["GetBoundingBox"]
       21 CALL                             R0 1 2
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K5 ["info"]
       25 NAMECALL                         R4 R0 K6 ["components"]
       27 CALL                             R4 1 12
       28 GETIMPORT                        R16 K9 [CFrame.new]
       30 LOADN                            R18 0
       31 JUMPIFNOTLT                      R18 R4 ; [+9]
       33 MULK                             R20 R4 K10 [1000000]
       34 SUBK                             R19 R20 K11 [0.5]
       35 FASTCALL1                        MATH_CEIL R19 ; [+2]
       36 GETIMPORT                        R18 K14 [math.ceil]
       38 CALL                             R18 1 1
       39 DIVK                             R17 R18 K10 [1000000]
       40 JUMPIF                           R17 ; [+7]
       41 MULK                             R20 R4 K10 [1000000]
       42 ADDK                             R19 R20 K11 [0.5]
       43 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       44 GETIMPORT                        R18 K16 [math.floor]
       46 CALL                             R18 1 1
       47 DIVK                             R17 R18 K10 [1000000]
       48 LOADN                            R19 0
       49 JUMPIFNOTLT                      R19 R5 ; [+9]
       51 MULK                             R21 R5 K10 [1000000]
       52 SUBK                             R20 R21 K11 [0.5]
       53 FASTCALL1                        MATH_CEIL R20 ; [+2]
       54 GETIMPORT                        R19 K14 [math.ceil]
       56 CALL                             R19 1 1
       57 DIVK                             R18 R19 K10 [1000000]
       58 JUMPIF                           R18 ; [+7]
       59 MULK                             R21 R5 K10 [1000000]
       60 ADDK                             R20 R21 K11 [0.5]
       61 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       62 GETIMPORT                        R19 K16 [math.floor]
       64 CALL                             R19 1 1
       65 DIVK                             R18 R19 K10 [1000000]
       66 LOADN                            R20 0
       67 JUMPIFNOTLT                      R20 R6 ; [+9]
       69 MULK                             R22 R6 K10 [1000000]
       70 SUBK                             R21 R22 K11 [0.5]
       71 FASTCALL1                        MATH_CEIL R21 ; [+2]
       72 GETIMPORT                        R20 K14 [math.ceil]
       74 CALL                             R20 1 1
       75 DIVK                             R19 R20 K10 [1000000]
       76 JUMPIF                           R19 ; [+7]
       77 MULK                             R22 R6 K10 [1000000]
       78 ADDK                             R21 R22 K11 [0.5]
       79 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       80 GETIMPORT                        R20 K16 [math.floor]
       82 CALL                             R20 1 1
       83 DIVK                             R19 R20 K10 [1000000]
       84 MOVE                             R20 R7
       85 MOVE                             R21 R8
       86 MOVE                             R22 R9
       87 MOVE                             R23 R10
       88 MOVE                             R24 R11
       89 MOVE                             R25 R12
       90 MOVE                             R26 R13
       91 MOVE                             R27 R14
       92 MOVE                             R28 R15
       93 CALL                             R16 12 1
       94 MOVE                             R3 R16
       95 SETTABLEKS                       R3 R2 K17 ["oCFrame"]
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K5 ["info"]
      100 SETTABLEKS                       R1 R2 K18 ["oSize"]
      102 RETURN                           R0 0
      103 GETUPVAL                         R0 0
      104 GETTABLEKS                       R0 R0 K5 ["info"]
      106 GETUPVAL                         R1 0
      107 GETTABLEKS                       R1 R1 K5 ["info"]
      109 GETUPVAL                         R2 1
      110 GETTABLEKS                       R2 R2 K19 ["getCFrameAndSizeOfList"]
      112 GETUPVAL                         R3 0
      113 GETTABLEKS                       R3 R3 K20 ["children"]
      115 GETGLOBAL                        R4 K21 ["createMetaPart"]
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R6 R6 K0 ["objects"]
      120 GETTABLEN                        R5 R6 1
      121 CALL                             R4 1 1
      122 GETTABLEKS                       R4 R4 K7 ["CFrame"]
      124 CALL                             R2 2 2
      125 SETTABLEKS                       R2 R0 K17 ["oCFrame"]
      127 SETTABLEKS                       R3 R1 K18 ["oSize"]
      129 GETUPVAL                         R0 0
      130 GETTABLEKS                       R0 R0 K5 ["info"]
      132 GETUPVAL                         R2 0
      133 GETTABLEKS                       R2 R2 K5 ["info"]
      135 GETTABLEKS                       R2 R2 K17 ["oCFrame"]
      137 NAMECALL                         R3 R2 K6 ["components"]
      139 CALL                             R3 1 12
      140 GETIMPORT                        R15 K9 [CFrame.new]
      142 LOADN                            R17 0
      143 JUMPIFNOTLT                      R17 R3 ; [+9]
      145 MULK                             R19 R3 K10 [1000000]
      146 SUBK                             R18 R19 K11 [0.5]
      147 FASTCALL1                        MATH_CEIL R18 ; [+2]
      148 GETIMPORT                        R17 K14 [math.ceil]
      150 CALL                             R17 1 1
      151 DIVK                             R16 R17 K10 [1000000]
      152 JUMPIF                           R16 ; [+7]
      153 MULK                             R19 R3 K10 [1000000]
      154 ADDK                             R18 R19 K11 [0.5]
      155 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      156 GETIMPORT                        R17 K16 [math.floor]
      158 CALL                             R17 1 1
      159 DIVK                             R16 R17 K10 [1000000]
      160 LOADN                            R18 0
      161 JUMPIFNOTLT                      R18 R4 ; [+9]
      163 MULK                             R20 R4 K10 [1000000]
      164 SUBK                             R19 R20 K11 [0.5]
      165 FASTCALL1                        MATH_CEIL R19 ; [+2]
      166 GETIMPORT                        R18 K14 [math.ceil]
      168 CALL                             R18 1 1
      169 DIVK                             R17 R18 K10 [1000000]
      170 JUMPIF                           R17 ; [+7]
      171 MULK                             R20 R4 K10 [1000000]
      172 ADDK                             R19 R20 K11 [0.5]
      173 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      174 GETIMPORT                        R18 K16 [math.floor]
      176 CALL                             R18 1 1
      177 DIVK                             R17 R18 K10 [1000000]
      178 LOADN                            R19 0
      179 JUMPIFNOTLT                      R19 R5 ; [+9]
      181 MULK                             R21 R5 K10 [1000000]
      182 SUBK                             R20 R21 K11 [0.5]
      183 FASTCALL1                        MATH_CEIL R20 ; [+2]
      184 GETIMPORT                        R19 K14 [math.ceil]
      186 CALL                             R19 1 1
      187 DIVK                             R18 R19 K10 [1000000]
      188 JUMPIF                           R18 ; [+7]
      189 MULK                             R21 R5 K10 [1000000]
      190 ADDK                             R20 R21 K11 [0.5]
      191 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      192 GETIMPORT                        R19 K16 [math.floor]
      194 CALL                             R19 1 1
      195 DIVK                             R18 R19 K10 [1000000]
      196 MOVE                             R19 R6
      197 MOVE                             R20 R7
      198 MOVE                             R21 R8
      199 MOVE                             R22 R9
      200 MOVE                             R23 R10
      201 MOVE                             R24 R11
      202 MOVE                             R25 R12
      203 MOVE                             R26 R13
      204 MOVE                             R27 R14
      205 CALL                             R15 12 1
      206 MOVE                             R1 R15
      207 SETTABLEKS                       R1 R0 K17 ["oCFrame"]
      209 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["children"]
        5 LENGTH                           R2 R1
        6 LOADN                            R3 10
        7 JUMPIFNOTLT                      R3 R2 ; [+4]
        9 NEWTABLE                         R2 0 0
       11 RETURN                           R2 1
       12 LOADN                            R4 1
       13 LENGTH                           R2 R1
       14 LOADN                            R3 1
       15 FORNPREP                         R2
       16 GETTABLE                         R5 R1 R4
       17 LOADK                            R7 K1 ["BasePart"]
       18 NAMECALL                         R5 R5 K2 ["IsA"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+16]
       22 GETTABLE                         R5 R1 R4
       23 NAMECALL                         R5 R5 K3 ["GetTouchingParts"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K4 ["combineLists"]
       29 MOVE                             R7 R0
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K5 ["filterOutItems"]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R5
       35 CALL                             R8 2 -1
       36 CALL                             R6 -1 1
       37 MOVE                             R0 R6
       38 FORNLOOP                         R2
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K6 ["removeDuplicates"]
       42 MOVE                             R3 R0
       43 CALL                             R2 1 1
       44 MOVE                             R0 R2
       45 RETURN                           R0 1

PROTO_20:
        0 LOADB                            R2 1
        1 JUMPIFEQKS                       R1 K0 ["Grouping"] ; [+5]
        3 JUMPIFEQKS                       R1 K1 ["Wrapped"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["info"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["expectingChanged"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["info"]
        9 GETTABLEKS                       R2 R2 K2 ["oCFrame"]
       11 JUMPIF                           R2 ; [+2]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["objects"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K4 ["roots"]
       22 GETTABLEKS                       R3 R1 K5 ["p"]
       24 GETTABLEKS                       R4 R0 K5 ["p"]
       26 SUB                              R2 R3 R4
       27 GETUPVAL                         R3 3
       28 GETIMPORT                        R4 K8 [CFrame.new]
       30 MOVE                             R5 R2
       31 CALL                             R4 1 -1
       32 CALL                             R3 -1 0
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K0 ["info"]
       36 GETTABLEKS                       R3 R3 K9 ["pCFrame"]
       38 JUMPIFNOT                        R3 ; [+11]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K0 ["info"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K0 ["info"]
       45 GETTABLEKS                       R5 R5 K9 ["pCFrame"]
       47 ADD                              R4 R5 R2
       48 SETTABLEKS                       R4 R3 K9 ["pCFrame"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K0 ["info"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K0 ["info"]
       56 GETTABLEKS                       R6 R6 K2 ["oCFrame"]
       58 ADD                              R5 R6 R2
       59 NAMECALL                         R6 R5 K10 ["components"]
       61 CALL                             R6 1 12
       62 GETIMPORT                        R18 K8 [CFrame.new]
       64 LOADN                            R20 0
       65 JUMPIFNOTLT                      R20 R6 ; [+9]
       67 MULK                             R22 R6 K11 [1000000]
       68 SUBK                             R21 R22 K12 [0.5]
       69 FASTCALL1                        MATH_CEIL R21 ; [+2]
       70 GETIMPORT                        R20 K15 [math.ceil]
       72 CALL                             R20 1 1
       73 DIVK                             R19 R20 K11 [1000000]
       74 JUMPIF                           R19 ; [+7]
       75 MULK                             R22 R6 K11 [1000000]
       76 ADDK                             R21 R22 K12 [0.5]
       77 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       78 GETIMPORT                        R20 K17 [math.floor]
       80 CALL                             R20 1 1
       81 DIVK                             R19 R20 K11 [1000000]
       82 LOADN                            R21 0
       83 JUMPIFNOTLT                      R21 R7 ; [+9]
       85 MULK                             R23 R7 K11 [1000000]
       86 SUBK                             R22 R23 K12 [0.5]
       87 FASTCALL1                        MATH_CEIL R22 ; [+2]
       88 GETIMPORT                        R21 K15 [math.ceil]
       90 CALL                             R21 1 1
       91 DIVK                             R20 R21 K11 [1000000]
       92 JUMPIF                           R20 ; [+7]
       93 MULK                             R23 R7 K11 [1000000]
       94 ADDK                             R22 R23 K12 [0.5]
       95 FASTCALL1                        MATH_FLOOR R22 ; [+2]
       96 GETIMPORT                        R21 K17 [math.floor]
       98 CALL                             R21 1 1
       99 DIVK                             R20 R21 K11 [1000000]
      100 LOADN                            R22 0
      101 JUMPIFNOTLT                      R22 R8 ; [+9]
      103 MULK                             R24 R8 K11 [1000000]
      104 SUBK                             R23 R24 K12 [0.5]
      105 FASTCALL1                        MATH_CEIL R23 ; [+2]
      106 GETIMPORT                        R22 K15 [math.ceil]
      108 CALL                             R22 1 1
      109 DIVK                             R21 R22 K11 [1000000]
      110 JUMPIF                           R21 ; [+7]
      111 MULK                             R24 R8 K11 [1000000]
      112 ADDK                             R23 R24 K12 [0.5]
      113 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      114 GETIMPORT                        R22 K17 [math.floor]
      116 CALL                             R22 1 1
      117 DIVK                             R21 R22 K11 [1000000]
      118 MOVE                             R22 R9
      119 MOVE                             R23 R10
      120 MOVE                             R24 R11
      121 MOVE                             R25 R12
      122 MOVE                             R26 R13
      123 MOVE                             R27 R14
      124 MOVE                             R28 R15
      125 MOVE                             R29 R16
      126 MOVE                             R30 R17
      127 CALL                             R18 12 1
      128 MOVE                             R4 R18
      129 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K0 ["info"]
      134 LOADB                            R4 0
      135 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
      137 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_25:
        0 JUMPIFNOTEQKS                    R1 K0 ["IsA"] ; [+3]
        2 DUPCLOSURE                       R2 K1 [PROTO_20]
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K2 ["Unsubscribe"] ; [+4]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U0
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K3 ["CanSimulate"] ; [+11]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["children"]
       14 LENGTH                           R3 R4
       15 LOADN                            R4 10
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 JUMPIFNOTEQKS                    R1 K5 ["IsUpdateRequired"] ; [+13]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["info"]
       26 GETTABLEKS                       R2 R2 K7 ["updateRequired"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K6 ["info"]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R3 K7 ["updateRequired"]
       34 RETURN                           R2 1
       35 JUMPIFNOTEQKS                    R1 K8 ["ClearCache"] ; [+4]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          UPVAL U0
       39 RETURN                           R2 1
       40 JUMPIFNOTEQKS                    R1 K9 ["TranslateFromTo"] ; [+7]
       42 NEWCLOSURE                       R2 P3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 RETURN                           R2 1
       48 JUMPIFNOTEQKS                    R1 K10 ["Children"] ; [+5]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K4 ["children"]
       53 RETURN                           R2 1
       54 JUMPIFNOTEQKS                    R1 K11 ["Size"] ; [+21]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K6 ["info"]
       59 GETTABLEKS                       R2 R2 K12 ["oSize"]
       61 JUMPIFNOT                        R2 ; [+6]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K6 ["info"]
       65 GETTABLEKS                       R2 R2 K12 ["oSize"]
       67 RETURN                           R2 1
       68 GETUPVAL                         R2 1
       69 CALL                             R2 0 0
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K6 ["info"]
       73 GETTABLEKS                       R2 R2 K12 ["oSize"]
       75 RETURN                           R2 1
       76 JUMPIFNOTEQKS                    R1 K13 ["CFrame"] ; [+21]
       78 GETUPVAL                         R2 0
       79 GETTABLEKS                       R2 R2 K6 ["info"]
       81 GETTABLEKS                       R2 R2 K14 ["oCFrame"]
       83 JUMPIFNOT                        R2 ; [+6]
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R2 R2 K6 ["info"]
       87 GETTABLEKS                       R2 R2 K14 ["oCFrame"]
       89 RETURN                           R2 1
       90 GETUPVAL                         R2 1
       91 CALL                             R2 0 0
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R2 R2 K6 ["info"]
       95 GETTABLEKS                       R2 R2 K14 ["oCFrame"]
       97 RETURN                           R2 1
       98 JUMPIFNOTEQKS                    R1 K15 ["PlaneAlignedSize"] ; [+15]
      100 GETUPVAL                         R2 0
      101 GETTABLEKS                       R2 R2 K6 ["info"]
      103 GETTABLEKS                       R2 R2 K16 ["pSize"]
      105 JUMPIFNOT                        R2 ; [+6]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K6 ["info"]
      109 GETTABLEKS                       R2 R2 K16 ["pSize"]
      111 RETURN                           R2 1
      112 LOADNIL                          R2
      113 RETURN                           R2 1
      114 JUMPIFNOTEQKS                    R1 K17 ["PlaneAlignedCFrame"] ; [+15]
      116 GETUPVAL                         R2 0
      117 GETTABLEKS                       R2 R2 K6 ["info"]
      119 GETTABLEKS                       R2 R2 K18 ["pCFrame"]
      121 JUMPIFNOT                        R2 ; [+6]
      122 GETUPVAL                         R2 0
      123 GETTABLEKS                       R2 R2 K6 ["info"]
      125 GETTABLEKS                       R2 R2 K18 ["pCFrame"]
      127 RETURN                           R2 1
      128 LOADNIL                          R2
      129 RETURN                           R2 1
      130 JUMPIFNOTEQKS                    R1 K19 ["GetTouchingParts"] ; [+4]
      132 NEWCLOSURE                       R2 P4
      133 CAPTURE                          UPVAL U4
      134 RETURN                           R2 1
      135 JUMPIFNOTEQKS                    R1 K20 ["PlaneSet"] ; [+11]
      137 GETUPVAL                         R3 0
      138 GETTABLEKS                       R3 R3 K6 ["info"]
      140 GETTABLEKS                       R3 R3 K21 ["lastPlaneCFrame"]
      142 JUMPIFNOTEQKNIL                  R3 ; [+2]
      144 LOADB                            R2 0 +1
      145 LOADB                            R2 1
      146 RETURN                           R2 1
      147 RETURN                           R0 0

PROTO_26:
        0 JUMPIFNOTEQKS                    R1 K0 ["UpdatePlaneCFrame"] ; [+32]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["info"]
        5 GETTABLEKS                       R3 R3 K2 ["lastPlaneCFrame"]
        7 JUMPIFNOTEQ                      R3 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["info"]
       13 SETTABLEKS                       R2 R3 K2 ["lastPlaneCFrame"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["info"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K1 ["info"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K3 ["getCFrameAndSizeOfList"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K4 ["objects"]
       27 MOVE                             R7 R2
       28 CALL                             R5 2 2
       29 SETTABLEKS                       R5 R3 K5 ["pCFrame"]
       31 SETTABLEKS                       R6 R4 K6 ["pSize"]
       33 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+180]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K1 ["info"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K1 ["info"]
       44 GETTABLEKS                       R3 R3 K9 ["oCFrame"]
       46 JUMPIF                           R3 ; [+2]
       47 GETUPVAL                         R3 2
       48 CALL                             R3 0 0
       49 GETUPVAL                         R3 0
       50 GETUPVAL                         R4 3
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K4 ["objects"]
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K10 ["roots"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K1 ["info"]
       60 GETTABLEKS                       R4 R4 K9 ["oCFrame"]
       62 NAMECALL                         R4 R4 K11 ["Inverse"]
       64 CALL                             R4 1 1
       65 MUL                              R3 R2 R4
       66 GETUPVAL                         R4 4
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K1 ["info"]
       72 GETTABLEKS                       R5 R5 K9 ["oCFrame"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K1 ["info"]
       77 GETTABLEKS                       R6 R6 K9 ["oCFrame"]
       79 GETTABLEKS                       R6 R6 K12 ["p"]
       81 SUB                              R4 R5 R6
       82 GETTABLEKS                       R6 R2 K12 ["p"]
       84 SUB                              R5 R2 R6
       85 JUMPIFEQ                         R4 R5 ; [+20]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K1 ["info"]
       90 LOADNIL                          R5
       91 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
       93 GETUPVAL                         R4 0
       94 GETTABLEKS                       R4 R4 K1 ["info"]
       96 LOADNIL                          R5
       97 SETTABLEKS                       R5 R4 K6 ["pSize"]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K1 ["info"]
      102 LOADNIL                          R5
      103 SETTABLEKS                       R5 R4 K2 ["lastPlaneCFrame"]
      105 JUMP                             ; [+27]
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R4 R4 K1 ["info"]
      109 GETTABLEKS                       R4 R4 K5 ["pCFrame"]
      111 JUMPIFNOT                        R4 ; [+21]
      112 GETUPVAL                         R4 0
      113 GETTABLEKS                       R4 R4 K1 ["info"]
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K1 ["info"]
      118 GETTABLEKS                       R7 R7 K5 ["pCFrame"]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K1 ["info"]
      123 GETTABLEKS                       R8 R8 K9 ["oCFrame"]
      125 GETTABLEKS                       R8 R8 K12 ["p"]
      127 SUB                              R6 R7 R8
      128 GETTABLEKS                       R7 R2 K12 ["p"]
      130 ADD                              R5 R6 R7
      131 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      133 GETUPVAL                         R4 0
      134 GETTABLEKS                       R4 R4 K1 ["info"]
      136 NAMECALL                         R6 R2 K13 ["components"]
      138 CALL                             R6 1 12
      139 GETIMPORT                        R18 K15 [CFrame.new]
      141 LOADN                            R20 0
      142 JUMPIFNOTLT                      R20 R6 ; [+9]
      144 MULK                             R22 R6 K16 [1000000]
      145 SUBK                             R21 R22 K17 [0.5]
      146 FASTCALL1                        MATH_CEIL R21 ; [+2]
      147 GETIMPORT                        R20 K20 [math.ceil]
      149 CALL                             R20 1 1
      150 DIVK                             R19 R20 K16 [1000000]
      151 JUMPIF                           R19 ; [+7]
      152 MULK                             R22 R6 K16 [1000000]
      153 ADDK                             R21 R22 K17 [0.5]
      154 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      155 GETIMPORT                        R20 K22 [math.floor]
      157 CALL                             R20 1 1
      158 DIVK                             R19 R20 K16 [1000000]
      159 LOADN                            R21 0
      160 JUMPIFNOTLT                      R21 R7 ; [+9]
      162 MULK                             R23 R7 K16 [1000000]
      163 SUBK                             R22 R23 K17 [0.5]
      164 FASTCALL1                        MATH_CEIL R22 ; [+2]
      165 GETIMPORT                        R21 K20 [math.ceil]
      167 CALL                             R21 1 1
      168 DIVK                             R20 R21 K16 [1000000]
      169 JUMPIF                           R20 ; [+7]
      170 MULK                             R23 R7 K16 [1000000]
      171 ADDK                             R22 R23 K17 [0.5]
      172 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      173 GETIMPORT                        R21 K22 [math.floor]
      175 CALL                             R21 1 1
      176 DIVK                             R20 R21 K16 [1000000]
      177 LOADN                            R22 0
      178 JUMPIFNOTLT                      R22 R8 ; [+9]
      180 MULK                             R24 R8 K16 [1000000]
      181 SUBK                             R23 R24 K17 [0.5]
      182 FASTCALL1                        MATH_CEIL R23 ; [+2]
      183 GETIMPORT                        R22 K20 [math.ceil]
      185 CALL                             R22 1 1
      186 DIVK                             R21 R22 K16 [1000000]
      187 JUMPIF                           R21 ; [+7]
      188 MULK                             R24 R8 K16 [1000000]
      189 ADDK                             R23 R24 K17 [0.5]
      190 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      191 GETIMPORT                        R22 K22 [math.floor]
      193 CALL                             R22 1 1
      194 DIVK                             R21 R22 K16 [1000000]
      195 MOVE                             R22 R9
      196 MOVE                             R23 R10
      197 MOVE                             R24 R11
      198 MOVE                             R25 R12
      199 MOVE                             R26 R13
      200 MOVE                             R27 R14
      201 MOVE                             R28 R15
      202 MOVE                             R29 R16
      203 MOVE                             R30 R17
      204 CALL                             R18 12 1
      205 MOVE                             R5 R18
      206 SETTABLEKS                       R5 R4 K9 ["oCFrame"]
      208 GETUPVAL                         R4 0
      209 GETTABLEKS                       R4 R4 K1 ["info"]
      211 LOADB                            R5 0
      212 SETTABLEKS                       R5 R4 K8 ["expectingChanged"]
      214 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 GETTABLEKS                       R0 R0 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["updateRequired"]
       12 RETURN                           R0 0

PROTO_28:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Changed"]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R7 R7 K3 ["connect"]
       13 CALL                             R7 2 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 [inext] ; [-9]
       17 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["object"]
        7 SETLIST                          R2 R3 1 [1]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K1 ["roots"]
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["object"]
        3 NAMECALL                         R0 R0 K1 ["GetModelCFrame"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["object"]
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 LOADN                            R4 1
        8 LENGTH                           R2 R0
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 GETTABLE                         R5 R0 R4
       12 LOADK                            R7 K1 ["BasePart"]
       13 NAMECALL                         R5 R5 K2 ["IsA"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+16]
       17 GETTABLE                         R5 R0 R4
       18 NAMECALL                         R5 R5 K3 ["GetTouchingParts"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["combineLists"]
       24 MOVE                             R7 R1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K5 ["filterOutItems"]
       28 MOVE                             R9 R0
       29 MOVE                             R10 R5
       30 CALL                             R8 2 -1
       31 CALL                             R6 -1 1
       32 MOVE                             R1 R6
       33 FORNLOOP                         R2
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K6 ["removeDuplicates"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1

PROTO_32:
        0 GETGLOBAL                        R1 K0 ["createMetaPart"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["Object"]
        6 GETGLOBAL                        R2 K0 ["createMetaPart"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K1 ["Object"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_33:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["object"]
        3 LOADK                            R2 K1 ["ProceduralModel"]
        4 NAMECALL                         R0 R0 K2 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+87]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["object"]
       11 NAMECALL                         R0 R0 K3 ["GetBoundingBox"]
       13 CALL                             R0 1 2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["info"]
       17 NAMECALL                         R4 R0 K5 ["components"]
       19 CALL                             R4 1 12
       20 GETIMPORT                        R16 K8 [CFrame.new]
       22 LOADN                            R18 0
       23 JUMPIFNOTLT                      R18 R4 ; [+9]
       25 MULK                             R20 R4 K9 [1000000]
       26 SUBK                             R19 R20 K10 [0.5]
       27 FASTCALL1                        MATH_CEIL R19 ; [+2]
       28 GETIMPORT                        R18 K13 [math.ceil]
       30 CALL                             R18 1 1
       31 DIVK                             R17 R18 K9 [1000000]
       32 JUMPIF                           R17 ; [+7]
       33 MULK                             R20 R4 K9 [1000000]
       34 ADDK                             R19 R20 K10 [0.5]
       35 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       36 GETIMPORT                        R18 K15 [math.floor]
       38 CALL                             R18 1 1
       39 DIVK                             R17 R18 K9 [1000000]
       40 LOADN                            R19 0
       41 JUMPIFNOTLT                      R19 R5 ; [+9]
       43 MULK                             R21 R5 K9 [1000000]
       44 SUBK                             R20 R21 K10 [0.5]
       45 FASTCALL1                        MATH_CEIL R20 ; [+2]
       46 GETIMPORT                        R19 K13 [math.ceil]
       48 CALL                             R19 1 1
       49 DIVK                             R18 R19 K9 [1000000]
       50 JUMPIF                           R18 ; [+7]
       51 MULK                             R21 R5 K9 [1000000]
       52 ADDK                             R20 R21 K10 [0.5]
       53 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       54 GETIMPORT                        R19 K15 [math.floor]
       56 CALL                             R19 1 1
       57 DIVK                             R18 R19 K9 [1000000]
       58 LOADN                            R20 0
       59 JUMPIFNOTLT                      R20 R6 ; [+9]
       61 MULK                             R22 R6 K9 [1000000]
       62 SUBK                             R21 R22 K10 [0.5]
       63 FASTCALL1                        MATH_CEIL R21 ; [+2]
       64 GETIMPORT                        R20 K13 [math.ceil]
       66 CALL                             R20 1 1
       67 DIVK                             R19 R20 K9 [1000000]
       68 JUMPIF                           R19 ; [+7]
       69 MULK                             R22 R6 K9 [1000000]
       70 ADDK                             R21 R22 K10 [0.5]
       71 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       72 GETIMPORT                        R20 K15 [math.floor]
       74 CALL                             R20 1 1
       75 DIVK                             R19 R20 K9 [1000000]
       76 MOVE                             R20 R7
       77 MOVE                             R21 R8
       78 MOVE                             R22 R9
       79 MOVE                             R23 R10
       80 MOVE                             R24 R11
       81 MOVE                             R25 R12
       82 MOVE                             R26 R13
       83 MOVE                             R27 R14
       84 MOVE                             R28 R15
       85 CALL                             R16 12 1
       86 MOVE                             R3 R16
       87 SETTABLEKS                       R3 R2 K16 ["oCFrame"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K4 ["info"]
       92 SETTABLEKS                       R1 R2 K17 ["oSize"]
       94 RETURN                           R0 0
       95 LOADNIL                          R0
       96 GETUPVAL                         R1 0
       97 GETTABLEKS                       R1 R1 K0 ["object"]
       99 GETTABLEKS                       R1 R1 K18 ["PrimaryPart"]
      101 JUMPIFNOT                        R1 ; [+8]
      102 GETUPVAL                         R1 0
      103 GETTABLEKS                       R1 R1 K0 ["object"]
      105 GETTABLEKS                       R1 R1 K18 ["PrimaryPart"]
      107 GETTABLEKS                       R0 R1 K6 ["CFrame"]
      109 JUMP                             ; [+28]
      110 GETUPVAL                         R2 0
      111 GETTABLEKS                       R2 R2 K19 ["children"]
      113 LENGTH                           R1 R2
      114 LOADN                            R2 0
      115 JUMPIFNOTLT                      R2 R1 ; [+18]
      117 GETUPVAL                         R2 0
      118 GETTABLEKS                       R2 R2 K19 ["children"]
      120 GETTABLEN                        R1 R2 1
      121 LOADK                            R4 K1 ["ProceduralModel"]
      122 NAMECALL                         R2 R1 K2 ["IsA"]
      124 CALL                             R2 2 1
      125 JUMPIFNOT                        R2 ; [+5]
      126 NAMECALL                         R2 R1 K20 ["GetPivot"]
      128 CALL                             R2 1 1
      129 MOVE                             R0 R2
      130 JUMP                             ; [+7]
      131 GETTABLEKS                       R0 R1 K6 ["CFrame"]
      133 JUMP                             ; [+4]
      134 GETIMPORT                        R1 K8 [CFrame.new]
      136 CALL                             R1 0 1
      137 MOVE                             R0 R1
      138 GETUPVAL                         R1 0
      139 GETTABLEKS                       R1 R1 K4 ["info"]
      141 GETUPVAL                         R2 0
      142 GETTABLEKS                       R2 R2 K4 ["info"]
      144 GETUPVAL                         R3 1
      145 GETTABLEKS                       R3 R3 K21 ["getCFrameAndSizeOfList"]
      147 GETUPVAL                         R4 0
      148 GETTABLEKS                       R4 R4 K19 ["children"]
      150 MOVE                             R5 R0
      151 CALL                             R3 2 2
      152 SETTABLEKS                       R3 R1 K16 ["oCFrame"]
      154 SETTABLEKS                       R4 R2 K17 ["oSize"]
      156 GETUPVAL                         R1 0
      157 GETTABLEKS                       R1 R1 K4 ["info"]
      159 GETUPVAL                         R3 0
      160 GETTABLEKS                       R3 R3 K4 ["info"]
      162 GETTABLEKS                       R3 R3 K16 ["oCFrame"]
      164 NAMECALL                         R4 R3 K5 ["components"]
      166 CALL                             R4 1 12
      167 GETIMPORT                        R16 K8 [CFrame.new]
      169 LOADN                            R18 0
      170 JUMPIFNOTLT                      R18 R4 ; [+9]
      172 MULK                             R20 R4 K9 [1000000]
      173 SUBK                             R19 R20 K10 [0.5]
      174 FASTCALL1                        MATH_CEIL R19 ; [+2]
      175 GETIMPORT                        R18 K13 [math.ceil]
      177 CALL                             R18 1 1
      178 DIVK                             R17 R18 K9 [1000000]
      179 JUMPIF                           R17 ; [+7]
      180 MULK                             R20 R4 K9 [1000000]
      181 ADDK                             R19 R20 K10 [0.5]
      182 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      183 GETIMPORT                        R18 K15 [math.floor]
      185 CALL                             R18 1 1
      186 DIVK                             R17 R18 K9 [1000000]
      187 LOADN                            R19 0
      188 JUMPIFNOTLT                      R19 R5 ; [+9]
      190 MULK                             R21 R5 K9 [1000000]
      191 SUBK                             R20 R21 K10 [0.5]
      192 FASTCALL1                        MATH_CEIL R20 ; [+2]
      193 GETIMPORT                        R19 K13 [math.ceil]
      195 CALL                             R19 1 1
      196 DIVK                             R18 R19 K9 [1000000]
      197 JUMPIF                           R18 ; [+7]
      198 MULK                             R21 R5 K9 [1000000]
      199 ADDK                             R20 R21 K10 [0.5]
      200 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      201 GETIMPORT                        R19 K15 [math.floor]
      203 CALL                             R19 1 1
      204 DIVK                             R18 R19 K9 [1000000]
      205 LOADN                            R20 0
      206 JUMPIFNOTLT                      R20 R6 ; [+9]
      208 MULK                             R22 R6 K9 [1000000]
      209 SUBK                             R21 R22 K10 [0.5]
      210 FASTCALL1                        MATH_CEIL R21 ; [+2]
      211 GETIMPORT                        R20 K13 [math.ceil]
      213 CALL                             R20 1 1
      214 DIVK                             R19 R20 K9 [1000000]
      215 JUMPIF                           R19 ; [+7]
      216 MULK                             R22 R6 K9 [1000000]
      217 ADDK                             R21 R22 K10 [0.5]
      218 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      219 GETIMPORT                        R20 K15 [math.floor]
      221 CALL                             R20 1 1
      222 DIVK                             R19 R20 K9 [1000000]
      223 MOVE                             R20 R7
      224 MOVE                             R21 R8
      225 MOVE                             R22 R9
      226 MOVE                             R23 R10
      227 MOVE                             R24 R11
      228 MOVE                             R25 R12
      229 MOVE                             R26 R13
      230 MOVE                             R27 R14
      231 MOVE                             R28 R15
      232 CALL                             R16 12 1
      233 MOVE                             R2 R16
      234 SETTABLEKS                       R2 R1 K16 ["oCFrame"]
      236 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["object"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 JUMPIFEQKS                       R1 K2 ["Wrapped"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["info"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["expectingChanged"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["info"]
        9 GETTABLEKS                       R2 R2 K2 ["oCFrame"]
       11 JUMPIF                           R2 ; [+2]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 2
       16 NEWTABLE                         R4 0 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["object"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["roots"]
       26 GETTABLEKS                       R3 R1 K5 ["p"]
       28 GETTABLEKS                       R4 R0 K5 ["p"]
       30 SUB                              R2 R3 R4
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K3 ["object"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K3 ["object"]
       37 NAMECALL                         R6 R6 K6 ["GetPivot"]
       39 CALL                             R6 1 1
       40 ADD                              R5 R6 R2
       41 NAMECALL                         R3 R3 K7 ["PivotTo"]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K0 ["info"]
       47 GETTABLEKS                       R3 R3 K8 ["pCFrame"]
       49 JUMPIFNOT                        R3 ; [+11]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K0 ["info"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K0 ["info"]
       56 GETTABLEKS                       R5 R5 K8 ["pCFrame"]
       58 ADD                              R4 R5 R2
       59 SETTABLEKS                       R4 R3 K8 ["pCFrame"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K0 ["info"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K0 ["info"]
       67 GETTABLEKS                       R5 R5 K2 ["oCFrame"]
       69 ADD                              R4 R5 R2
       70 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K0 ["info"]
       75 LOADB                            R4 0
       76 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       78 RETURN                           R0 0

PROTO_39:
        0 RETURN                           R0 0

PROTO_40:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_44:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["object"]
        9 GETVARARGS                       R3 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_45:
        0 JUMPIFNOTEQKS                    R1 K0 ["IsA"] ; [+4]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K1 ["Unsubscribe"] ; [+4]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K2 ["IsUpdateRequired"] ; [+13]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["info"]
       15 GETTABLEKS                       R2 R2 K4 ["updateRequired"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["info"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K4 ["updateRequired"]
       23 RETURN                           R2 1
       24 JUMPIFNOTEQKS                    R1 K5 ["CanSimulate"] ; [+11]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K6 ["children"]
       29 LENGTH                           R3 R4
       30 LOADN                            R4 10
       31 JUMPIFLT                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 RETURN                           R2 1
       36 JUMPIFNOTEQKS                    R1 K7 ["ClearCache"] ; [+4]
       38 NEWCLOSURE                       R2 P2
       39 CAPTURE                          UPVAL U0
       40 RETURN                           R2 1
       41 JUMPIFNOTEQKS                    R1 K8 ["TranslateFromTo"] ; [+6]
       43 NEWCLOSURE                       R2 P3
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 RETURN                           R2 1
       48 JUMPIFNOTEQKS                    R1 K9 ["BreakImplicitJoints"] ; [+3]
       50 DUPCLOSURE                       R2 K10 [PROTO_39]
       51 RETURN                           R2 1
       52 JUMPIFNOTEQKS                    R1 K11 ["IsColliding"] ; [+3]
       54 DUPCLOSURE                       R2 K12 [PROTO_40]
       55 RETURN                           R2 1
       56 JUMPIFNOTEQKS                    R1 K13 ["GetTouchingParts"] ; [+4]
       58 NEWCLOSURE                       R2 P6
       59 CAPTURE                          UPVAL U3
       60 RETURN                           R2 1
       61 JUMPIFNOTEQKS                    R1 K14 ["SafeRotate"] ; [+3]
       63 DUPCLOSURE                       R2 K15 [PROTO_42]
       64 RETURN                           R2 1
       65 JUMPIFNOTEQKS                    R1 K16 ["Children"] ; [+5]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K6 ["children"]
       70 RETURN                           R2 1
       71 JUMPIFNOTEQKS                    R1 K17 ["Size"] ; [+21]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K3 ["info"]
       76 GETTABLEKS                       R2 R2 K18 ["oSize"]
       78 JUMPIFNOT                        R2 ; [+6]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K3 ["info"]
       82 GETTABLEKS                       R2 R2 K18 ["oSize"]
       84 RETURN                           R2 1
       85 GETUPVAL                         R2 1
       86 CALL                             R2 0 0
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R2 R2 K3 ["info"]
       90 GETTABLEKS                       R2 R2 K18 ["oSize"]
       92 RETURN                           R2 1
       93 JUMPIFNOTEQKS                    R1 K19 ["CFrame"] ; [+21]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R2 R2 K3 ["info"]
       98 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      100 JUMPIFNOT                        R2 ; [+6]
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R2 R2 K3 ["info"]
      104 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      106 RETURN                           R2 1
      107 GETUPVAL                         R2 1
      108 CALL                             R2 0 0
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R2 R2 K3 ["info"]
      112 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      114 RETURN                           R2 1
      115 JUMPIFNOTEQKS                    R1 K21 ["PlaneAlignedSize"] ; [+15]
      117 GETUPVAL                         R2 0
      118 GETTABLEKS                       R2 R2 K3 ["info"]
      120 GETTABLEKS                       R2 R2 K22 ["pSize"]
      122 JUMPIFNOT                        R2 ; [+6]
      123 GETUPVAL                         R2 0
      124 GETTABLEKS                       R2 R2 K3 ["info"]
      126 GETTABLEKS                       R2 R2 K22 ["pSize"]
      128 RETURN                           R2 1
      129 LOADNIL                          R2
      130 RETURN                           R2 1
      131 JUMPIFNOTEQKS                    R1 K23 ["PlaneAlignedCFrame"] ; [+15]
      133 GETUPVAL                         R2 0
      134 GETTABLEKS                       R2 R2 K3 ["info"]
      136 GETTABLEKS                       R2 R2 K24 ["pCFrame"]
      138 JUMPIFNOT                        R2 ; [+6]
      139 GETUPVAL                         R2 0
      140 GETTABLEKS                       R2 R2 K3 ["info"]
      142 GETTABLEKS                       R2 R2 K24 ["pCFrame"]
      144 RETURN                           R2 1
      145 LOADNIL                          R2
      146 RETURN                           R2 1
      147 JUMPIFNOTEQKS                    R1 K25 ["Position"] ; [+25]
      149 GETUPVAL                         R2 0
      150 GETTABLEKS                       R2 R2 K3 ["info"]
      152 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      154 JUMPIFNOT                        R2 ; [+8]
      155 GETUPVAL                         R2 0
      156 GETTABLEKS                       R2 R2 K3 ["info"]
      158 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      160 GETTABLEKS                       R2 R2 K26 ["p"]
      162 RETURN                           R2 1
      163 GETUPVAL                         R2 1
      164 CALL                             R2 0 0
      165 GETUPVAL                         R2 0
      166 GETTABLEKS                       R2 R2 K3 ["info"]
      168 GETTABLEKS                       R2 R2 K20 ["oCFrame"]
      170 GETTABLEKS                       R2 R2 K26 ["p"]
      172 RETURN                           R2 1
      173 JUMPIFNOTEQKS                    R1 K27 ["Object"] ; [+5]
      175 GETUPVAL                         R2 0
      176 GETTABLEKS                       R2 R2 K28 ["object"]
      178 RETURN                           R2 1
      179 GETIMPORT                        R2 K30 [pcall]
      181 NEWCLOSURE                       R3 P8
      182 CAPTURE                          UPVAL U0
      183 CAPTURE                          VAL R1
      184 CALL                             R2 1 1
      185 JUMPIFNOT                        R2 ; [+19]
      186 GETUPVAL                         R4 0
      187 GETTABLEKS                       R4 R4 K28 ["object"]
      189 GETTABLE                         R3 R4 R1
      190 FASTCALL1                        TYPE R3 ; [+2]
      191 GETIMPORT                        R2 K32 [type]
      193 CALL                             R2 1 1
      194 JUMPIFNOTEQKS                    R2 K33 ["function"] ; [+5]
      196 NEWCLOSURE                       R2 P9
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          VAL R1
      199 RETURN                           R2 1
      200 GETUPVAL                         R3 0
      201 GETTABLEKS                       R3 R3 K28 ["object"]
      203 GETTABLE                         R2 R3 R1
      204 RETURN                           R2 1
      205 LOADNIL                          R2
      206 RETURN                           R2 1

PROTO_46:
        0 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_48:
        0 JUMPIFNOTEQKS                    R1 K0 ["UpdatePlaneCFrame"] ; [+25]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["info"]
        5 SETTABLEKS                       R2 R3 K2 ["lastPlaneCFrame"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["info"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["info"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["getCFrameAndSizeOfList"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["children"]
       19 MOVE                             R7 R2
       20 CALL                             R5 2 2
       21 SETTABLEKS                       R5 R3 K5 ["pCFrame"]
       23 SETTABLEKS                       R6 R4 K6 ["pSize"]
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+367]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K1 ["info"]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K1 ["info"]
       37 GETTABLEKS                       R3 R3 K9 ["oCFrame"]
       39 JUMPIF                           R3 ; [+2]
       40 GETUPVAL                         R3 2
       41 CALL                             R3 0 0
       42 GETUPVAL                         R3 0
       43 GETUPVAL                         R4 3
       44 NEWTABLE                         R5 0 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K10 ["object"]
       49 SETLIST                          R5 R6 1 [1]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K11 ["roots"]
       54 MOVE                             R3 R2
       55 NAMECALL                         R4 R3 K12 ["components"]
       57 CALL                             R4 1 12
       58 GETIMPORT                        R16 K14 [CFrame.new]
       60 LOADN                            R18 0
       61 JUMPIFNOTLT                      R18 R4 ; [+9]
       63 MULK                             R20 R4 K15 [1000000]
       64 SUBK                             R19 R20 K16 [0.5]
       65 FASTCALL1                        MATH_CEIL R19 ; [+2]
       66 GETIMPORT                        R18 K19 [math.ceil]
       68 CALL                             R18 1 1
       69 DIVK                             R17 R18 K15 [1000000]
       70 JUMPIF                           R17 ; [+7]
       71 MULK                             R20 R4 K15 [1000000]
       72 ADDK                             R19 R20 K16 [0.5]
       73 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       74 GETIMPORT                        R18 K21 [math.floor]
       76 CALL                             R18 1 1
       77 DIVK                             R17 R18 K15 [1000000]
       78 LOADN                            R19 0
       79 JUMPIFNOTLT                      R19 R5 ; [+9]
       81 MULK                             R21 R5 K15 [1000000]
       82 SUBK                             R20 R21 K16 [0.5]
       83 FASTCALL1                        MATH_CEIL R20 ; [+2]
       84 GETIMPORT                        R19 K19 [math.ceil]
       86 CALL                             R19 1 1
       87 DIVK                             R18 R19 K15 [1000000]
       88 JUMPIF                           R18 ; [+7]
       89 MULK                             R21 R5 K15 [1000000]
       90 ADDK                             R20 R21 K16 [0.5]
       91 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       92 GETIMPORT                        R19 K21 [math.floor]
       94 CALL                             R19 1 1
       95 DIVK                             R18 R19 K15 [1000000]
       96 LOADN                            R20 0
       97 JUMPIFNOTLT                      R20 R6 ; [+9]
       99 MULK                             R22 R6 K15 [1000000]
      100 SUBK                             R21 R22 K16 [0.5]
      101 FASTCALL1                        MATH_CEIL R21 ; [+2]
      102 GETIMPORT                        R20 K19 [math.ceil]
      104 CALL                             R20 1 1
      105 DIVK                             R19 R20 K15 [1000000]
      106 JUMPIF                           R19 ; [+7]
      107 MULK                             R22 R6 K15 [1000000]
      108 ADDK                             R21 R22 K16 [0.5]
      109 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      110 GETIMPORT                        R20 K21 [math.floor]
      112 CALL                             R20 1 1
      113 DIVK                             R19 R20 K15 [1000000]
      114 LOADN                            R21 0
      115 JUMPIFNOTLT                      R21 R7 ; [+9]
      117 MULK                             R23 R7 K15 [1000000]
      118 SUBK                             R22 R23 K16 [0.5]
      119 FASTCALL1                        MATH_CEIL R22 ; [+2]
      120 GETIMPORT                        R21 K19 [math.ceil]
      122 CALL                             R21 1 1
      123 DIVK                             R20 R21 K15 [1000000]
      124 JUMPIF                           R20 ; [+7]
      125 MULK                             R23 R7 K15 [1000000]
      126 ADDK                             R22 R23 K16 [0.5]
      127 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      128 GETIMPORT                        R21 K21 [math.floor]
      130 CALL                             R21 1 1
      131 DIVK                             R20 R21 K15 [1000000]
      132 JUMPIF                           R20 ; [+1]
      133 MOVE                             R20 R7
      134 LOADN                            R22 0
      135 JUMPIFNOTLT                      R22 R8 ; [+9]
      137 MULK                             R24 R8 K15 [1000000]
      138 SUBK                             R23 R24 K16 [0.5]
      139 FASTCALL1                        MATH_CEIL R23 ; [+2]
      140 GETIMPORT                        R22 K19 [math.ceil]
      142 CALL                             R22 1 1
      143 DIVK                             R21 R22 K15 [1000000]
      144 JUMPIF                           R21 ; [+7]
      145 MULK                             R24 R8 K15 [1000000]
      146 ADDK                             R23 R24 K16 [0.5]
      147 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      148 GETIMPORT                        R22 K21 [math.floor]
      150 CALL                             R22 1 1
      151 DIVK                             R21 R22 K15 [1000000]
      152 JUMPIF                           R21 ; [+1]
      153 MOVE                             R21 R8
      154 LOADN                            R23 0
      155 JUMPIFNOTLT                      R23 R9 ; [+9]
      157 MULK                             R25 R9 K15 [1000000]
      158 SUBK                             R24 R25 K16 [0.5]
      159 FASTCALL1                        MATH_CEIL R24 ; [+2]
      160 GETIMPORT                        R23 K19 [math.ceil]
      162 CALL                             R23 1 1
      163 DIVK                             R22 R23 K15 [1000000]
      164 JUMPIF                           R22 ; [+7]
      165 MULK                             R25 R9 K15 [1000000]
      166 ADDK                             R24 R25 K16 [0.5]
      167 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      168 GETIMPORT                        R23 K21 [math.floor]
      170 CALL                             R23 1 1
      171 DIVK                             R22 R23 K15 [1000000]
      172 JUMPIF                           R22 ; [+1]
      173 MOVE                             R22 R9
      174 LOADN                            R24 0
      175 JUMPIFNOTLT                      R24 R10 ; [+9]
      177 MULK                             R26 R10 K15 [1000000]
      178 SUBK                             R25 R26 K16 [0.5]
      179 FASTCALL1                        MATH_CEIL R25 ; [+2]
      180 GETIMPORT                        R24 K19 [math.ceil]
      182 CALL                             R24 1 1
      183 DIVK                             R23 R24 K15 [1000000]
      184 JUMPIF                           R23 ; [+7]
      185 MULK                             R26 R10 K15 [1000000]
      186 ADDK                             R25 R26 K16 [0.5]
      187 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      188 GETIMPORT                        R24 K21 [math.floor]
      190 CALL                             R24 1 1
      191 DIVK                             R23 R24 K15 [1000000]
      192 JUMPIF                           R23 ; [+1]
      193 MOVE                             R23 R10
      194 LOADN                            R25 0
      195 JUMPIFNOTLT                      R25 R11 ; [+9]
      197 MULK                             R27 R11 K15 [1000000]
      198 SUBK                             R26 R27 K16 [0.5]
      199 FASTCALL1                        MATH_CEIL R26 ; [+2]
      200 GETIMPORT                        R25 K19 [math.ceil]
      202 CALL                             R25 1 1
      203 DIVK                             R24 R25 K15 [1000000]
      204 JUMPIF                           R24 ; [+7]
      205 MULK                             R27 R11 K15 [1000000]
      206 ADDK                             R26 R27 K16 [0.5]
      207 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      208 GETIMPORT                        R25 K21 [math.floor]
      210 CALL                             R25 1 1
      211 DIVK                             R24 R25 K15 [1000000]
      212 JUMPIF                           R24 ; [+1]
      213 MOVE                             R24 R11
      214 LOADN                            R26 0
      215 JUMPIFNOTLT                      R26 R12 ; [+9]
      217 MULK                             R28 R12 K15 [1000000]
      218 SUBK                             R27 R28 K16 [0.5]
      219 FASTCALL1                        MATH_CEIL R27 ; [+2]
      220 GETIMPORT                        R26 K19 [math.ceil]
      222 CALL                             R26 1 1
      223 DIVK                             R25 R26 K15 [1000000]
      224 JUMPIF                           R25 ; [+7]
      225 MULK                             R28 R12 K15 [1000000]
      226 ADDK                             R27 R28 K16 [0.5]
      227 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      228 GETIMPORT                        R26 K21 [math.floor]
      230 CALL                             R26 1 1
      231 DIVK                             R25 R26 K15 [1000000]
      232 JUMPIF                           R25 ; [+1]
      233 MOVE                             R25 R12
      234 LOADN                            R27 0
      235 JUMPIFNOTLT                      R27 R13 ; [+9]
      237 MULK                             R29 R13 K15 [1000000]
      238 SUBK                             R28 R29 K16 [0.5]
      239 FASTCALL1                        MATH_CEIL R28 ; [+2]
      240 GETIMPORT                        R27 K19 [math.ceil]
      242 CALL                             R27 1 1
      243 DIVK                             R26 R27 K15 [1000000]
      244 JUMPIF                           R26 ; [+7]
      245 MULK                             R29 R13 K15 [1000000]
      246 ADDK                             R28 R29 K16 [0.5]
      247 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      248 GETIMPORT                        R27 K21 [math.floor]
      250 CALL                             R27 1 1
      251 DIVK                             R26 R27 K15 [1000000]
      252 JUMPIF                           R26 ; [+1]
      253 MOVE                             R26 R13
      254 LOADN                            R28 0
      255 JUMPIFNOTLT                      R28 R14 ; [+9]
      257 MULK                             R30 R14 K15 [1000000]
      258 SUBK                             R29 R30 K16 [0.5]
      259 FASTCALL1                        MATH_CEIL R29 ; [+2]
      260 GETIMPORT                        R28 K19 [math.ceil]
      262 CALL                             R28 1 1
      263 DIVK                             R27 R28 K15 [1000000]
      264 JUMPIF                           R27 ; [+7]
      265 MULK                             R30 R14 K15 [1000000]
      266 ADDK                             R29 R30 K16 [0.5]
      267 FASTCALL1                        MATH_FLOOR R29 ; [+2]
      268 GETIMPORT                        R28 K21 [math.floor]
      270 CALL                             R28 1 1
      271 DIVK                             R27 R28 K15 [1000000]
      272 JUMPIF                           R27 ; [+1]
      273 MOVE                             R27 R14
      274 LOADN                            R29 0
      275 JUMPIFNOTLT                      R29 R15 ; [+9]
      277 MULK                             R31 R15 K15 [1000000]
      278 SUBK                             R30 R31 K16 [0.5]
      279 FASTCALL1                        MATH_CEIL R30 ; [+2]
      280 GETIMPORT                        R29 K19 [math.ceil]
      282 CALL                             R29 1 1
      283 DIVK                             R28 R29 K15 [1000000]
      284 JUMPIF                           R28 ; [+7]
      285 MULK                             R31 R15 K15 [1000000]
      286 ADDK                             R30 R31 K16 [0.5]
      287 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      288 GETIMPORT                        R29 K21 [math.floor]
      290 CALL                             R29 1 1
      291 DIVK                             R28 R29 K15 [1000000]
      292 JUMPIF                           R28 ; [+1]
      293 MOVE                             R28 R15
      294 CALL                             R16 12 1
      295 MOVE                             R2 R16
      296 GETUPVAL                         R4 0
      297 GETTABLEKS                       R4 R4 K1 ["info"]
      299 GETTABLEKS                       R4 R4 K9 ["oCFrame"]
      301 NAMECALL                         R4 R4 K22 ["Inverse"]
      303 CALL                             R4 1 1
      304 MUL                              R3 R2 R4
      305 GETUPVAL                         R4 0
      306 GETTABLEKS                       R4 R4 K10 ["object"]
      308 GETUPVAL                         R7 0
      309 GETTABLEKS                       R7 R7 K10 ["object"]
      311 NAMECALL                         R7 R7 K23 ["GetPivot"]
      313 CALL                             R7 1 1
      314 MUL                              R6 R3 R7
      315 NAMECALL                         R4 R4 K24 ["PivotTo"]
      317 CALL                             R4 2 0
      318 GETUPVAL                         R5 0
      319 GETTABLEKS                       R5 R5 K1 ["info"]
      321 GETTABLEKS                       R5 R5 K9 ["oCFrame"]
      323 GETUPVAL                         R6 0
      324 GETTABLEKS                       R6 R6 K1 ["info"]
      326 GETTABLEKS                       R6 R6 K9 ["oCFrame"]
      328 GETTABLEKS                       R6 R6 K25 ["p"]
      330 SUB                              R4 R5 R6
      331 GETTABLEKS                       R6 R2 K25 ["p"]
      333 SUB                              R5 R2 R6
      334 JUMPIFEQ                         R4 R5 ; [+20]
      336 GETUPVAL                         R4 0
      337 GETTABLEKS                       R4 R4 K1 ["info"]
      339 LOADNIL                          R5
      340 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      342 GETUPVAL                         R4 0
      343 GETTABLEKS                       R4 R4 K1 ["info"]
      345 LOADNIL                          R5
      346 SETTABLEKS                       R5 R4 K6 ["pSize"]
      348 GETUPVAL                         R4 0
      349 GETTABLEKS                       R4 R4 K1 ["info"]
      351 LOADNIL                          R5
      352 SETTABLEKS                       R5 R4 K2 ["lastPlaneCFrame"]
      354 JUMP                             ; [+27]
      355 GETUPVAL                         R4 0
      356 GETTABLEKS                       R4 R4 K1 ["info"]
      358 GETTABLEKS                       R4 R4 K5 ["pCFrame"]
      360 JUMPIFNOT                        R4 ; [+21]
      361 GETUPVAL                         R4 0
      362 GETTABLEKS                       R4 R4 K1 ["info"]
      364 GETUPVAL                         R7 0
      365 GETTABLEKS                       R7 R7 K1 ["info"]
      367 GETTABLEKS                       R7 R7 K5 ["pCFrame"]
      369 GETUPVAL                         R8 0
      370 GETTABLEKS                       R8 R8 K1 ["info"]
      372 GETTABLEKS                       R8 R8 K9 ["oCFrame"]
      374 GETTABLEKS                       R8 R8 K25 ["p"]
      376 SUB                              R6 R7 R8
      377 GETTABLEKS                       R7 R2 K25 ["p"]
      379 ADD                              R5 R6 R7
      380 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      382 GETUPVAL                         R4 0
      383 GETTABLEKS                       R4 R4 K1 ["info"]
      385 SETTABLEKS                       R2 R4 K9 ["oCFrame"]
      387 GETUPVAL                         R4 0
      388 GETTABLEKS                       R4 R4 K1 ["info"]
      390 LOADB                            R5 0
      391 SETTABLEKS                       R5 R4 K8 ["expectingChanged"]
      393 RETURN                           R0 0
      394 JUMPIFNOTEQKS                    R1 K26 ["BreakImplicitJoints"] ; [+3]
      396 DUPCLOSURE                       R3 K27 [PROTO_46]
      397 RETURN                           R3 1
      398 JUMPIFNOTEQKS                    R1 K28 ["Size"] ; [+20]
      400 GETUPVAL                         R3 0
      401 GETTABLEKS                       R3 R3 K10 ["object"]
      403 LOADK                            R5 K29 ["ProceduralModel"]
      404 NAMECALL                         R3 R3 K30 ["IsA"]
      406 CALL                             R3 2 1
      407 JUMPIFNOT                        R3 ; [+10]
      408 GETUPVAL                         R3 0
      409 GETTABLEKS                       R3 R3 K10 ["object"]
      411 SETTABLEKS                       R2 R3 K28 ["Size"]
      413 GETUPVAL                         R3 0
      414 GETTABLEKS                       R3 R3 K1 ["info"]
      416 SETTABLEKS                       R2 R3 K31 ["oSize"]
      418 RETURN                           R0 0
      419 JUMPIFNOTEQKS                    R1 K32 ["Position"] ; [+41]
      421 GETUPVAL                         R3 0
      422 GETTABLEKS                       R3 R3 K1 ["info"]
      424 LOADB                            R4 1
      425 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      427 GETUPVAL                         R3 0
      428 GETTABLEKS                       R3 R3 K10 ["object"]
      430 NAMECALL                         R3 R3 K33 ["GetModelCFrame"]
      432 CALL                             R3 1 1
      433 GETTABLEKS                       R6 R3 K25 ["p"]
      435 SUB                              R5 R3 R6
      436 ADD                              R4 R5 R2
      437 NAMECALL                         R6 R3 K22 ["Inverse"]
      439 CALL                             R6 1 1
      440 MUL                              R5 R4 R6
      441 GETUPVAL                         R6 0
      442 GETTABLEKS                       R6 R6 K10 ["object"]
      444 GETUPVAL                         R9 0
      445 GETTABLEKS                       R9 R9 K10 ["object"]
      447 NAMECALL                         R9 R9 K23 ["GetPivot"]
      449 CALL                             R9 1 1
      450 MUL                              R8 R5 R9
      451 NAMECALL                         R6 R6 K24 ["PivotTo"]
      453 CALL                             R6 2 0
      454 GETUPVAL                         R6 0
      455 GETTABLEKS                       R6 R6 K1 ["info"]
      457 LOADB                            R7 0
      458 SETTABLEKS                       R7 R6 K8 ["expectingChanged"]
      460 RETURN                           R0 0
      461 GETUPVAL                         R3 0
      462 GETTABLEKS                       R3 R3 K1 ["info"]
      464 LOADB                            R4 1
      465 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      467 GETIMPORT                        R3 K35 [pcall]
      469 NEWCLOSURE                       R4 P1
      470 CAPTURE                          UPVAL U0
      471 CAPTURE                          VAL R1
      472 CALL                             R3 1 1
      473 JUMPIFNOT                        R3 ; [+4]
      474 GETUPVAL                         R3 0
      475 GETTABLEKS                       R3 R3 K10 ["object"]
      477 SETTABLE                         R2 R3 R1
      478 GETUPVAL                         R3 0
      479 GETTABLEKS                       R3 R3 K1 ["info"]
      481 LOADB                            R4 0
      482 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      484 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 GETTABLEKS                       R0 R0 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["updateRequired"]
       12 RETURN                           R0 0

PROTO_50:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Changed"]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R7 R7 K3 ["connect"]
       13 CALL                             R7 2 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 [inext] ; [-9]
       17 RETURN                           R1 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["object"]
        7 SETLIST                          R2 R3 1 [1]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K1 ["roots"]
       12 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["object"]
        3 NAMECALL                         R0 R0 K1 ["GetModelCFrame"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_53:
        0 GETGLOBAL                        R1 K0 ["createMetaPart"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["Object"]
        6 GETGLOBAL                        R2 K0 ["createMetaPart"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K1 ["Object"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_54:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["object"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 JUMPIFEQKS                       R1 K2 ["Wrapped"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_56:
        0 DIV                              R3 R2 R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["object"]
        4 GETTABLEKS                       R4 R4 K1 ["PivotOffset"]
        6 GETTABLEKS                       R5 R4 K2 ["Position"]
        8 SUB                              R6 R4 R5
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K0 ["object"]
       12 MUL                              R9 R3 R5
       13 ADD                              R8 R6 R9
       14 SETTABLEKS                       R8 R7 K1 ["PivotOffset"]
       16 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["object"]
        7 SETLIST                          R4 R5 1 [1]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["roots"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["info"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["expectingChanged"]
       18 GETTABLEKS                       R3 R1 K4 ["p"]
       20 GETTABLEKS                       R4 R0 K4 ["p"]
       22 SUB                              R2 R3 R4
       23 GETIMPORT                        R3 K6 [ipairs]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K7 ["models"]
       28 CALL                             R3 1 3
       29 FORGPREP_INEXT                   R3
       30 NAMECALL                         R9 R7 K8 ["GetPivot"]
       32 CALL                             R9 1 1
       33 ADD                              R8 R9 R2
       34 SETTABLEKS                       R8 R7 K9 ["WorldPivot"]
       36 FORGLOOP                         R3 2 [inext] ; [-7]
       38 LOADN                            R5 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K1 ["roots"]
       42 LENGTH                           R3 R6
       43 LOADN                            R4 1
       44 FORNPREP                         R3
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K1 ["roots"]
       48 GETTABLE                         R6 R7 R5
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K1 ["roots"]
       52 GETTABLE                         R8 R9 R5
       53 GETTABLEKS                       R8 R8 K10 ["CFrame"]
       55 ADD                              R7 R8 R2
       56 SETTABLEKS                       R7 R6 K10 ["CFrame"]
       58 FORNLOOP                         R3
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K2 ["info"]
       62 GETTABLEKS                       R3 R3 K11 ["pCFrame"]
       64 JUMPIFNOT                        R3 ; [+11]
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K2 ["info"]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K2 ["info"]
       71 GETTABLEKS                       R5 R5 K11 ["pCFrame"]
       73 ADD                              R4 R5 R2
       74 SETTABLEKS                       R4 R3 K11 ["pCFrame"]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K2 ["info"]
       79 LOADB                            R4 0
       80 SETTABLEKS                       R4 R3 K3 ["expectingChanged"]
       82 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_61:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["object"]
        9 GETVARARGS                       R3 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_62:
        0 JUMPIFNOTEQKS                    R1 K0 ["IsA"] ; [+4]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K1 ["UpdatePivot"] ; [+4]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K2 ["TranslateFromTo"] ; [+5]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R1 K3 ["Unsubscribe"] ; [+4]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          UPVAL U0
       20 RETURN                           R2 1
       21 JUMPIFNOTEQKS                    R1 K4 ["CanSimulate"] ; [+3]
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 JUMPIFNOTEQKS                    R1 K5 ["ClearCache"] ; [+4]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          UPVAL U0
       29 RETURN                           R2 1
       30 JUMPIFNOTEQKS                    R1 K6 ["IsUpdateRequired"] ; [+13]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K7 ["info"]
       35 GETTABLEKS                       R2 R2 K8 ["updateRequired"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["info"]
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K8 ["updateRequired"]
       43 RETURN                           R2 1
       44 JUMPIFNOTEQKS                    R1 K9 ["Children"] ; [+5]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K10 ["children"]
       49 RETURN                           R2 1
       50 JUMPIFNOTEQKS                    R1 K11 ["CFrame"] ; [+7]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K12 ["object"]
       55 GETTABLEKS                       R2 R2 K11 ["CFrame"]
       57 RETURN                           R2 1
       58 JUMPIFNOTEQKS                    R1 K13 ["Size"] ; [+7]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K12 ["object"]
       63 GETTABLEKS                       R2 R2 K13 ["Size"]
       65 RETURN                           R2 1
       66 JUMPIFNOTEQKS                    R1 K14 ["Position"] ; [+9]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K12 ["object"]
       71 GETTABLEKS                       R2 R2 K11 ["CFrame"]
       73 GETTABLEKS                       R2 R2 K15 ["p"]
       75 RETURN                           R2 1
       76 JUMPIFNOTEQKS                    R1 K16 ["Object"] ; [+5]
       78 GETUPVAL                         R2 0
       79 GETTABLEKS                       R2 R2 K12 ["object"]
       81 RETURN                           R2 1
       82 JUMPIFNOTEQKS                    R1 K17 ["PlaneAlignedSize"] ; [+15]
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R2 R2 K7 ["info"]
       87 GETTABLEKS                       R2 R2 K18 ["pSize"]
       89 JUMPIFNOT                        R2 ; [+6]
       90 GETUPVAL                         R2 0
       91 GETTABLEKS                       R2 R2 K7 ["info"]
       93 GETTABLEKS                       R2 R2 K18 ["pSize"]
       95 RETURN                           R2 1
       96 LOADNIL                          R2
       97 RETURN                           R2 1
       98 JUMPIFNOTEQKS                    R1 K19 ["PlaneAlignedCFrame"] ; [+15]
      100 GETUPVAL                         R2 0
      101 GETTABLEKS                       R2 R2 K7 ["info"]
      103 GETTABLEKS                       R2 R2 K20 ["pCFrame"]
      105 JUMPIFNOT                        R2 ; [+6]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K7 ["info"]
      109 GETTABLEKS                       R2 R2 K20 ["pCFrame"]
      111 RETURN                           R2 1
      112 LOADNIL                          R2
      113 RETURN                           R2 1
      114 GETIMPORT                        R2 K22 [pcall]
      116 NEWCLOSURE                       R3 P5
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          VAL R1
      119 CALL                             R2 1 1
      120 JUMPIFNOT                        R2 ; [+19]
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K12 ["object"]
      124 GETTABLE                         R3 R4 R1
      125 FASTCALL1                        TYPE R3 ; [+2]
      126 GETIMPORT                        R2 K24 [type]
      128 CALL                             R2 1 1
      129 JUMPIFNOTEQKS                    R2 K25 ["function"] ; [+5]
      131 NEWCLOSURE                       R2 P6
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          VAL R1
      134 RETURN                           R2 1
      135 GETUPVAL                         R3 0
      136 GETTABLEKS                       R3 R3 K12 ["object"]
      138 GETTABLE                         R2 R3 R1
      139 RETURN                           R2 1
      140 LOADNIL                          R2
      141 RETURN                           R2 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["info"]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
        6 JUMPIFNOTEQKS                    R1 K2 ["UpdatePlaneCFrame"] ; [+35]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["info"]
       11 SETTABLEKS                       R2 R3 K3 ["lastPlaneCFrame"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["info"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["info"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K4 ["getCFrameAndSizeOfList"]
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K5 ["object"]
       27 SETLIST                          R6 R7 1 [1]
       29 MOVE                             R7 R2
       30 CALL                             R5 2 2
       31 SETTABLEKS                       R5 R3 K6 ["pCFrame"]
       33 SETTABLEKS                       R6 R4 K7 ["pSize"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["info"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R1 K8 ["CFrame"] ; [+78]
       44 MOVE                             R3 R2
       45 NAMECALL                         R4 R3 K9 ["components"]
       47 CALL                             R4 1 12
       48 GETIMPORT                        R16 K11 [CFrame.new]
       50 LOADN                            R18 0
       51 JUMPIFNOTLT                      R18 R4 ; [+9]
       53 MULK                             R20 R4 K12 [1000000]
       54 SUBK                             R19 R20 K13 [0.5]
       55 FASTCALL1                        MATH_CEIL R19 ; [+2]
       56 GETIMPORT                        R18 K16 [math.ceil]
       58 CALL                             R18 1 1
       59 DIVK                             R17 R18 K12 [1000000]
       60 JUMPIF                           R17 ; [+7]
       61 MULK                             R20 R4 K12 [1000000]
       62 ADDK                             R19 R20 K13 [0.5]
       63 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       64 GETIMPORT                        R18 K18 [math.floor]
       66 CALL                             R18 1 1
       67 DIVK                             R17 R18 K12 [1000000]
       68 LOADN                            R19 0
       69 JUMPIFNOTLT                      R19 R5 ; [+9]
       71 MULK                             R21 R5 K12 [1000000]
       72 SUBK                             R20 R21 K13 [0.5]
       73 FASTCALL1                        MATH_CEIL R20 ; [+2]
       74 GETIMPORT                        R19 K16 [math.ceil]
       76 CALL                             R19 1 1
       77 DIVK                             R18 R19 K12 [1000000]
       78 JUMPIF                           R18 ; [+7]
       79 MULK                             R21 R5 K12 [1000000]
       80 ADDK                             R20 R21 K13 [0.5]
       81 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       82 GETIMPORT                        R19 K18 [math.floor]
       84 CALL                             R19 1 1
       85 DIVK                             R18 R19 K12 [1000000]
       86 LOADN                            R20 0
       87 JUMPIFNOTLT                      R20 R6 ; [+9]
       89 MULK                             R22 R6 K12 [1000000]
       90 SUBK                             R21 R22 K13 [0.5]
       91 FASTCALL1                        MATH_CEIL R21 ; [+2]
       92 GETIMPORT                        R20 K16 [math.ceil]
       94 CALL                             R20 1 1
       95 DIVK                             R19 R20 K12 [1000000]
       96 JUMPIF                           R19 ; [+7]
       97 MULK                             R22 R6 K12 [1000000]
       98 ADDK                             R21 R22 K13 [0.5]
       99 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      100 GETIMPORT                        R20 K18 [math.floor]
      102 CALL                             R20 1 1
      103 DIVK                             R19 R20 K12 [1000000]
      104 MOVE                             R20 R7
      105 MOVE                             R21 R8
      106 MOVE                             R22 R9
      107 MOVE                             R23 R10
      108 MOVE                             R24 R11
      109 MOVE                             R25 R12
      110 MOVE                             R26 R13
      111 MOVE                             R27 R14
      112 MOVE                             R28 R15
      113 CALL                             R16 12 1
      114 MOVE                             R2 R16
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K0 ["info"]
      118 LOADNIL                          R4
      119 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
      121 JUMPIFNOTEQKS                    R1 K19 ["Size"] ; [+7]
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R3 R3 K0 ["info"]
      126 LOADNIL                          R4
      127 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
      129 JUMPIFNOTEQKS                    R1 K20 ["Position"] ; [+7]
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K0 ["info"]
      134 LOADNIL                          R4
      135 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
      137 GETIMPORT                        R3 K22 [pcall]
      139 NEWCLOSURE                       R4 P0
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          VAL R1
      142 CALL                             R3 1 1
      143 JUMPIFNOT                        R3 ; [+4]
      144 GETUPVAL                         R3 0
      145 GETTABLEKS                       R3 R3 K5 ["object"]
      147 SETTABLE                         R2 R3 R1
      148 GETUPVAL                         R3 0
      149 GETTABLEKS                       R3 R3 K0 ["info"]
      151 LOADB                            R4 0
      152 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
      154 RETURN                           R0 0

PROTO_65:
        0 GETGLOBAL                        R1 K0 ["createMetaPart"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["Object"]
        6 GETGLOBAL                        R2 K0 ["createMetaPart"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K1 ["Object"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_66:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["object"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 JUMPIFEQKS                       R1 K2 ["Wrapped"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_69:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["object"]
        9 GETVARARGS                       R3 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_70:
        0 JUMPIFNOTEQKS                    R1 K0 ["IsA"] ; [+4]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K1 ["CFrame"] ; [+5]
        7 GETIMPORT                        R2 K3 [CFrame.new]
        9 CALL                             R2 0 -1
       10 RETURN                           R2 -1
       11 JUMPIFNOTEQKS                    R1 K4 ["Size"] ; [+3]
       13 LOADK                            R2 K5 [{0, 0, 0}]
       14 RETURN                           R2 1
       15 JUMPIFNOTEQKS                    R1 K6 ["Position"] ; [+3]
       17 LOADK                            R2 K5 [{0, 0, 0}]
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKS                    R1 K7 ["Object"] ; [+5]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["object"]
       24 RETURN                           R2 1
       25 JUMPIFNOTEQKS                    R1 K9 ["PlaneAlignedSize"] ; [+3]
       27 LOADK                            R2 K5 [{0, 0, 0}]
       28 RETURN                           R2 1
       29 JUMPIFNOTEQKS                    R1 K10 ["PlaneAlignedCFrame"] ; [+5]
       31 GETIMPORT                        R2 K3 [CFrame.new]
       33 CALL                             R2 0 -1
       34 RETURN                           R2 -1
       35 GETIMPORT                        R2 K12 [pcall]
       37 NEWCLOSURE                       R3 P1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 CALL                             R2 1 1
       41 JUMPIFNOT                        R2 ; [+19]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K8 ["object"]
       45 GETTABLE                         R3 R4 R1
       46 FASTCALL1                        TYPE R3 ; [+2]
       47 GETIMPORT                        R2 K14 [type]
       49 CALL                             R2 1 1
       50 JUMPIFNOTEQKS                    R2 K15 ["function"] ; [+5]
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R1
       55 RETURN                           R2 1
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K8 ["object"]
       59 GETTABLE                         R2 R3 R1
       60 RETURN                           R2 1
       61 LOADNIL                          R2
       62 RETURN                           R2 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_72:
        0 JUMPIFNOTEQKS                    R1 K0 ["UpdatePlaneCFrame"] ; [+2]
        2 RETURN                           R0 0
        3 JUMPIFNOTEQKS                    R1 K1 ["CFrame"] ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R1 K2 ["Size"] ; [+2]
        8 RETURN                           R0 0
        9 JUMPIFNOTEQKS                    R1 K3 ["Position"] ; [+2]
       11 RETURN                           R0 0
       12 GETIMPORT                        R3 K5 [pcall]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["object"]
       22 SETTABLE                         R2 R3 R1
       23 RETURN                           R0 0

PROTO_73:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
       12 LOADB                            R2 0
       13 JUMP                             ; [+6]
       14 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
       16 JUMPIFEQKB                       R3 TRUE ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 1
       22 JUMPIF                           R1 ; [+1]
       23 LOADB                            R1 0
       24 FASTCALL1                        TYPE R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K5 [type]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+130]
       31 LENGTH                           R2 R0
       32 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       34 LOADNIL                          R2
       35 RETURN                           R2 1
       36 NEWTABLE                         R2 16 0
       38 SETTABLEKS                       R0 R2 K7 ["objects"]
       40 NEWTABLE                         R3 0 0
       42 SETTABLEKS                       R3 R2 K8 ["mt"]
       44 NEWTABLE                         R3 0 0
       46 SETTABLEKS                       R3 R2 K9 ["info"]
       48 GETTABLEKS                       R3 R2 K9 ["info"]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K10 ["oCFrame"]
       53 GETTABLEKS                       R3 R2 K9 ["info"]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K11 ["oSize"]
       58 GETTABLEKS                       R3 R2 K9 ["info"]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
       63 GETTABLEKS                       R3 R2 K9 ["info"]
       65 LOADNIL                          R4
       66 SETTABLEKS                       R4 R3 K13 ["pSize"]
       68 GETTABLEKS                       R3 R2 K9 ["info"]
       70 LOADNIL                          R4
       71 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R4 R2 K7 ["objects"]
       76 CALL                             R3 1 1
       77 SETTABLEKS                       R3 R2 K15 ["children"]
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R4 R2 K7 ["objects"]
       82 CALL                             R3 1 1
       83 SETTABLEKS                       R3 R2 K16 ["roots"]
       85 GETUPVAL                         R3 2
       86 GETTABLEKS                       R4 R2 K7 ["objects"]
       88 CALL                             R3 1 1
       89 SETTABLEKS                       R3 R2 K17 ["models"]
       91 LOADB                            R3 1
       92 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
       94 GETUPVAL                         R3 3
       95 MOVE                             R4 R0
       96 CALL                             R3 1 2
       97 SETTABLEKS                       R3 R2 K18 ["rootPVs"]
       99 SETTABLEKS                       R4 R2 K19 ["activeInterPVJoints"]
      101 GETTABLEKS                       R3 R2 K9 ["info"]
      103 LOADB                            R4 0
      104 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      106 GETTABLEKS                       R3 R2 K9 ["info"]
      108 LOADB                            R4 0
      109 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      111 NEWCLOSURE                       R3 P0
      112 CAPTURE                          VAL R2
      113 NEWCLOSURE                       R4 P1
      114 CAPTURE                          VAL R2
      115 JUMPIFNOT                        R1 ; [+6]
      116 MOVE                             R5 R4
      117 GETTABLEKS                       R6 R2 K15 ["children"]
      119 CALL                             R5 1 1
      120 SETTABLEKS                       R5 R2 K22 ["subscribe"]
      122 GETTABLEKS                       R7 R2 K8 ["mt"]
      124 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
      126 MOVE                             R6 R2
      127 GETIMPORT                        R5 K24 [setmetatable]
      129 CALL                             R5 2 0
      130 NEWCLOSURE                       R5 P2
      131 CAPTURE                          VAL R2
      132 CAPTURE                          UPVAL U1
      133 NEWCLOSURE                       R6 P3
      134 CAPTURE                          VAL R2
      135 CAPTURE                          UPVAL U4
      136 NEWCLOSURE                       R7 P4
      137 CAPTURE                          VAL R2
      138 CAPTURE                          UPVAL U5
      139 GETTABLEKS                       R8 R2 K8 ["mt"]
      141 NEWCLOSURE                       R9 P5
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R6
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R9 R8 K25 ["__index"]
      149 GETTABLEKS                       R8 R2 K8 ["mt"]
      151 NEWCLOSURE                       R9 P6
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          VAL R6
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          VAL R3
      157 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      159 RETURN                           R2 1
      160 LOADK                            R4 K27 ["Model"]
      161 NAMECALL                         R2 R0 K28 ["IsA"]
      163 CALL                             R2 2 1
      164 JUMPIFNOT                        R2 ; [+157]
      165 LOADK                            R4 K29 ["Workspace"]
      166 NAMECALL                         R2 R0 K28 ["IsA"]
      168 CALL                             R2 2 1
      169 JUMPIF                           R2 ; [+152]
      170 JUMPIFEQKNIL                     R0 ; [+8]
      172 FASTCALL1                        TYPEOF R0 ; [+3]
      173 MOVE                             R4 R0
      174 GETIMPORT                        R3 K1 [typeof]
      176 CALL                             R3 1 1
      177 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      179 LOADB                            R2 0
      180 JUMP                             ; [+6]
      181 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      183 JUMPIFEQKB                       R3 TRUE ; [+2]
      185 LOADB                            R2 0 +1
      186 LOADB                            R2 1
      187 JUMPIFNOT                        R2 ; [+1]
      188 RETURN                           R0 1
      189 NEWTABLE                         R2 8 0
      191 SETTABLEKS                       R0 R2 K30 ["object"]
      193 NEWTABLE                         R3 0 0
      195 SETTABLEKS                       R3 R2 K8 ["mt"]
      197 NEWTABLE                         R3 0 0
      199 SETTABLEKS                       R3 R2 K9 ["info"]
      201 GETTABLEKS                       R3 R2 K9 ["info"]
      203 LOADNIL                          R4
      204 SETTABLEKS                       R4 R3 K10 ["oCFrame"]
      206 GETTABLEKS                       R3 R2 K9 ["info"]
      208 LOADNIL                          R4
      209 SETTABLEKS                       R4 R3 K11 ["oSize"]
      211 GETTABLEKS                       R3 R2 K9 ["info"]
      213 LOADNIL                          R4
      214 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      216 GETTABLEKS                       R3 R2 K9 ["info"]
      218 LOADNIL                          R4
      219 SETTABLEKS                       R4 R3 K13 ["pSize"]
      221 GETTABLEKS                       R3 R2 K9 ["info"]
      223 LOADNIL                          R4
      224 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      226 GETUPVAL                         R3 0
      227 NEWTABLE                         R4 0 1
      229 GETTABLEKS                       R5 R2 K30 ["object"]
      231 SETLIST                          R4 R5 1 [1]
      233 CALL                             R3 1 1
      234 SETTABLEKS                       R3 R2 K15 ["children"]
      236 GETUPVAL                         R3 1
      237 NEWTABLE                         R4 0 1
      239 GETTABLEKS                       R5 R2 K30 ["object"]
      241 SETLIST                          R4 R5 1 [1]
      243 CALL                             R3 1 1
      244 SETTABLEKS                       R3 R2 K16 ["roots"]
      246 GETUPVAL                         R3 2
      247 NEWTABLE                         R4 0 1
      249 GETTABLEKS                       R5 R2 K30 ["object"]
      251 SETLIST                          R4 R5 1 [1]
      253 CALL                             R3 1 1
      254 SETTABLEKS                       R3 R2 K17 ["models"]
      256 LOADB                            R3 1
      257 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      259 GETTABLEKS                       R3 R2 K9 ["info"]
      261 LOADB                            R4 0
      262 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      264 GETTABLEKS                       R3 R2 K9 ["info"]
      266 LOADB                            R4 0
      267 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      269 NEWCLOSURE                       R3 P7
      270 CAPTURE                          VAL R2
      271 JUMPIFNOT                        R1 ; [+6]
      272 MOVE                             R4 R3
      273 GETTABLEKS                       R5 R2 K15 ["children"]
      275 CALL                             R4 1 1
      276 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      278 GETTABLEKS                       R6 R2 K8 ["mt"]
      280 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      282 MOVE                             R5 R2
      283 GETIMPORT                        R4 K24 [setmetatable]
      285 CALL                             R4 2 0
      286 NEWCLOSURE                       R4 P8
      287 CAPTURE                          VAL R2
      288 CAPTURE                          UPVAL U1
      289 NEWCLOSURE                       R5 P9
      290 CAPTURE                          VAL R2
      291 NEWCLOSURE                       R6 P10
      292 CAPTURE                          UPVAL U6
      293 CAPTURE                          VAL R2
      294 CAPTURE                          UPVAL U5
      295 GETTABLEKS                       R7 R2 K8 ["mt"]
      297 DUPCLOSURE                       R8 K31 [PROTO_33]
      298 SETTABLEKS                       R8 R7 K32 ["__eq"]
      300 NEWCLOSURE                       R7 P12
      301 CAPTURE                          VAL R2
      302 CAPTURE                          UPVAL U4
      303 GETTABLEKS                       R8 R2 K8 ["mt"]
      305 NEWCLOSURE                       R9 P13
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R7
      308 CAPTURE                          UPVAL U1
      309 CAPTURE                          VAL R6
      310 SETTABLEKS                       R9 R8 K25 ["__index"]
      312 GETTABLEKS                       R8 R2 K8 ["mt"]
      314 NEWCLOSURE                       R9 P14
      315 CAPTURE                          VAL R2
      316 CAPTURE                          UPVAL U4
      317 CAPTURE                          VAL R7
      318 CAPTURE                          UPVAL U1
      319 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      321 RETURN                           R2 1
      322 LOADK                            R4 K33 ["BasePart"]
      323 NAMECALL                         R2 R0 K28 ["IsA"]
      325 CALL                             R2 2 1
      326 JUMPIFNOT                        R2 ; [+128]
      327 JUMPIFEQKNIL                     R0 ; [+8]
      329 FASTCALL1                        TYPEOF R0 ; [+3]
      330 MOVE                             R4 R0
      331 GETIMPORT                        R3 K1 [typeof]
      333 CALL                             R3 1 1
      334 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      336 LOADB                            R2 0
      337 JUMP                             ; [+6]
      338 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      340 JUMPIFEQKB                       R3 TRUE ; [+2]
      342 LOADB                            R2 0 +1
      343 LOADB                            R2 1
      344 JUMPIFNOT                        R2 ; [+1]
      345 RETURN                           R0 1
      346 NEWTABLE                         R2 8 0
      348 SETTABLEKS                       R0 R2 K30 ["object"]
      350 NEWTABLE                         R3 0 0
      352 SETTABLEKS                       R3 R2 K8 ["mt"]
      354 NEWTABLE                         R3 0 0
      356 SETTABLEKS                       R3 R2 K9 ["info"]
      358 GETTABLEKS                       R3 R2 K9 ["info"]
      360 LOADNIL                          R4
      361 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      363 GETTABLEKS                       R3 R2 K9 ["info"]
      365 LOADNIL                          R4
      366 SETTABLEKS                       R4 R3 K13 ["pSize"]
      368 GETTABLEKS                       R3 R2 K9 ["info"]
      370 LOADNIL                          R4
      371 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      373 NEWTABLE                         R3 0 1
      375 MOVE                             R4 R0
      376 SETLIST                          R3 R4 1 [1]
      378 SETTABLEKS                       R3 R2 K15 ["children"]
      380 GETUPVAL                         R3 1
      381 NEWTABLE                         R4 0 1
      383 GETTABLEKS                       R5 R2 K30 ["object"]
      385 SETLIST                          R4 R5 1 [1]
      387 CALL                             R3 1 1
      388 SETTABLEKS                       R3 R2 K16 ["roots"]
      390 GETUPVAL                         R3 2
      391 NEWTABLE                         R4 0 1
      393 GETTABLEKS                       R5 R2 K30 ["object"]
      395 SETLIST                          R4 R5 1 [1]
      397 CALL                             R3 1 1
      398 SETTABLEKS                       R3 R2 K17 ["models"]
      400 LOADB                            R3 1
      401 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      403 GETTABLEKS                       R3 R2 K9 ["info"]
      405 LOADB                            R4 0
      406 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      408 GETTABLEKS                       R3 R2 K9 ["info"]
      410 LOADB                            R4 0
      411 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      413 NEWCLOSURE                       R3 P15
      414 CAPTURE                          VAL R2
      415 JUMPIFNOT                        R1 ; [+6]
      416 MOVE                             R4 R3
      417 GETTABLEKS                       R5 R2 K15 ["children"]
      419 CALL                             R4 1 1
      420 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      422 NEWCLOSURE                       R4 P16
      423 CAPTURE                          VAL R2
      424 CAPTURE                          UPVAL U1
      425 GETTABLEKS                       R7 R2 K8 ["mt"]
      427 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
      429 MOVE                             R6 R2
      430 GETIMPORT                        R5 K24 [setmetatable]
      432 CALL                             R5 2 0
      433 NEWCLOSURE                       R5 P17
      434 CAPTURE                          VAL R2
      435 GETTABLEKS                       R6 R2 K8 ["mt"]
      437 DUPCLOSURE                       R7 K34 [PROTO_54]
      438 SETTABLEKS                       R7 R6 K32 ["__eq"]
      440 GETTABLEKS                       R6 R2 K8 ["mt"]
      442 NEWCLOSURE                       R7 P19
      443 CAPTURE                          VAL R2
      444 CAPTURE                          UPVAL U1
      445 SETTABLEKS                       R7 R6 K25 ["__index"]
      447 GETTABLEKS                       R6 R2 K8 ["mt"]
      449 NEWCLOSURE                       R7 P20
      450 CAPTURE                          VAL R2
      451 CAPTURE                          UPVAL U4
      452 SETTABLEKS                       R7 R6 K26 ["__newindex"]
      454 RETURN                           R2 1
      455 JUMPIFEQKNIL                     R0 ; [+8]
      457 FASTCALL1                        TYPEOF R0 ; [+3]
      458 MOVE                             R4 R0
      459 GETIMPORT                        R3 K1 [typeof]
      461 CALL                             R3 1 1
      462 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      464 LOADB                            R2 0
      465 JUMP                             ; [+6]
      466 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      468 JUMPIFEQKB                       R3 TRUE ; [+2]
      470 LOADB                            R2 0 +1
      471 LOADB                            R2 1
      472 JUMPIFNOT                        R2 ; [+1]
      473 RETURN                           R0 1
      474 NEWTABLE                         R2 4 0
      476 SETTABLEKS                       R0 R2 K30 ["object"]
      478 NEWTABLE                         R3 0 0
      480 SETTABLEKS                       R3 R2 K8 ["mt"]
      482 NEWTABLE                         R3 0 0
      484 SETTABLEKS                       R3 R2 K9 ["info"]
      486 LOADB                            R3 1
      487 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      489 GETTABLEKS                       R5 R2 K8 ["mt"]
      491 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      493 MOVE                             R4 R2
      494 GETIMPORT                        R3 K24 [setmetatable]
      496 CALL                             R3 2 0
      497 GETTABLEKS                       R3 R2 K8 ["mt"]
      499 DUPCLOSURE                       R4 K35 [PROTO_66]
      500 SETTABLEKS                       R4 R3 K32 ["__eq"]
      502 GETTABLEKS                       R3 R2 K8 ["mt"]
      504 NEWCLOSURE                       R4 P22
      505 CAPTURE                          VAL R2
      506 SETTABLEKS                       R4 R3 K25 ["__index"]
      508 GETTABLEKS                       R3 R2 K8 ["mt"]
      510 NEWCLOSURE                       R4 P23
      511 CAPTURE                          VAL R2
      512 SETTABLEKS                       R4 R3 K26 ["__newindex"]
      514 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FuzzyMath"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["List"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Extent"]
       27 CALL                             R2 1 1
       28 NEWTABLE                         R3 0 0
       30 DUPCLOSURE                       R4 K8 [PROTO_0]
       31 DUPCLOSURE                       R5 K9 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R6 0 0
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          REF R6
       37 CAPTURE                          VAL R7
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          REF R6
       40 CAPTURE                          VAL R7
       41 DUPCLOSURE                       R9 K10 [PROTO_4]
       42 CAPTURE                          VAL R9
       43 DUPCLOSURE                       R10 K11 [PROTO_5]
       44 CAPTURE                          VAL R9
       45 DUPCLOSURE                       R11 K12 [PROTO_6]
       46 DUPCLOSURE                       R12 K13 [PROTO_7]
       47 CAPTURE                          VAL R11
       48 DUPCLOSURE                       R13 K14 [PROTO_8]
       49 CAPTURE                          VAL R0
       50 SETGLOBAL                        R13 K15 ["forcePrimaryPart"]
       52 DUPCLOSURE                       R13 K16 [PROTO_9]
       53 DUPCLOSURE                       R14 K17 [PROTO_10]
       54 DUPCLOSURE                       R15 K18 [PROTO_11]
       55 CAPTURE                          VAL R15
       56 DUPCLOSURE                       R16 K19 [PROTO_12]
       57 DUPCLOSURE                       R17 K20 [PROTO_13]
       58 CAPTURE                          VAL R15
       59 CAPTURE                          VAL R16
       60 DUPCLOSURE                       R18 K21 [PROTO_73]
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R17
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R9
       68 SETGLOBAL                        R18 K22 ["createMetaPart"]
       70 NEWTABLE                         R18 2 0
       72 GETGLOBAL                        R19 K22 ["createMetaPart"]
       74 SETTABLEKS                       R19 R18 K23 ["convertToPart"]
       76 GETGLOBAL                        R19 K15 ["forcePrimaryPart"]
       78 SETTABLEKS                       R19 R18 K15 ["forcePrimaryPart"]
       80 CLOSEUPVALS                      R6
       81 RETURN                           R18 1
