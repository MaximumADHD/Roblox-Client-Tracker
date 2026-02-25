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
        7 JUMPIFNOT                        R2 ; [+7]
        8 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 GETIMPORT                        R2 K4 [table.insert]
       14 CALL                             R2 2 0
       15 NAMECALL                         R2 R0 K5 ["GetChildren"]
       17 CALL                             R2 1 1
       18 LOADN                            R5 1
       19 LENGTH                           R3 R2
       20 LOADN                            R4 1
       21 FORNPREP                         R3
       22 GETUPVAL                         R6 0
       23 GETTABLE                         R7 R2 R5
       24 MOVE                             R8 R1
       25 CALL                             R6 2 1
       26 MOVE                             R1 R6
       27 FORNLOOP                         R3
       28 RETURN                           R1 1

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
       18 GETTABLEKS                       R7 R1 K4 ["CFrame"]
       20 GETTABLEKS                       R6 R7 K5 ["p"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K6 ["visiblyIdentityCFrame"]
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
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K6 ["visiblyIdentityCFrame"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["activeInterPVJoints"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K1 ["Enabled"]
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R1 R4 K2 ["rootPVs"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 NAMECALL                         R9 R5 K3 ["GetPivot"]
       19 CALL                             R9 1 1
       20 MUL                              R8 R0 R9
       21 NAMECALL                         R6 R5 K4 ["PivotTo"]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-8]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R1 R4 K0 ["activeInterPVJoints"]
       29 LOADNIL                          R2
       30 LOADNIL                          R3
       31 FORGPREP                         R1
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K1 ["Enabled"]
       35 FORGLOOP                         R1 2 ; [-4]
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["info"]
        3 GETTABLEKS                       R0 R1 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["objects"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K1 ["roots"]
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["info"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["info"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["getCFrameAndSizeOfList"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["children"]
       12 GETGLOBAL                        R5 K3 ["createMetaPart"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K4 ["objects"]
       17 GETTABLEN                        R6 R7 1
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R4 R5 K5 ["CFrame"]
       21 CALL                             R2 2 2
       22 SETTABLEKS                       R2 R0 K6 ["oCFrame"]
       24 SETTABLEKS                       R3 R1 K7 ["oSize"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R0 R1 K0 ["info"]
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K0 ["info"]
       33 GETTABLEKS                       R2 R3 K6 ["oCFrame"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K6 ["oCFrame"]
       38 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["children"]
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
       17 NAMECALL                         R5 R5 K1 ["GetTouchingParts"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K2 ["combineLists"]
       23 MOVE                             R7 R0
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K3 ["filterOutItems"]
       27 MOVE                             R9 R1
       28 MOVE                             R10 R5
       29 CALL                             R8 2 -1
       30 CALL                             R6 -1 1
       31 MOVE                             R0 R6
       32 FORNLOOP                         R2
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K4 ["removeDuplicates"]
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 MOVE                             R0 R2
       39 RETURN                           R0 1

PROTO_20:
        0 LOADB                            R2 1
        1 JUMPIFEQKS                       R1 K0 ["Grouping"] ; [+5]
        3 JUMPIFEQKS                       R1 K1 ["Wrapped"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R1 R3 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["info"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["expectingChanged"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["info"]
        9 GETTABLEKS                       R2 R3 K2 ["oCFrame"]
       11 JUMPIF                           R2 ; [+38]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["info"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["info"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K3 ["getCFrameAndSizeOfList"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K4 ["children"]
       24 GETGLOBAL                        R7 K5 ["createMetaPart"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K6 ["objects"]
       29 GETTABLEN                        R8 R9 1
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R6 R7 K7 ["CFrame"]
       33 CALL                             R4 2 2
       34 SETTABLEKS                       R4 R2 K2 ["oCFrame"]
       36 SETTABLEKS                       R5 R3 K8 ["oSize"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K0 ["info"]
       41 GETUPVAL                         R3 2
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K0 ["info"]
       45 GETTABLEKS                       R4 R5 K2 ["oCFrame"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K2 ["oCFrame"]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R3 3
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R4 R5 K6 ["objects"]
       55 CALL                             R3 1 1
       56 SETTABLEKS                       R3 R2 K9 ["roots"]
       58 GETTABLEKS                       R3 R1 K10 ["p"]
       60 GETTABLEKS                       R4 R0 K10 ["p"]
       62 SUB                              R2 R3 R4
       63 GETUPVAL                         R3 4
       64 GETIMPORT                        R4 K12 [CFrame.new]
       66 MOVE                             R5 R2
       67 CALL                             R4 1 -1
       68 CALL                             R3 -1 0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K0 ["info"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R6 R7 K0 ["info"]
       75 GETTABLEKS                       R5 R6 K13 ["pCFrame"]
       77 ADD                              R4 R5 R2
       78 SETTABLEKS                       R4 R3 K13 ["pCFrame"]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R3 R4 K0 ["info"]
       83 GETUPVAL                         R4 2
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R7 R8 K0 ["info"]
       87 GETTABLEKS                       R6 R7 K2 ["oCFrame"]
       89 ADD                              R5 R6 R2
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
       93 GETUPVAL                         R4 0
       94 GETTABLEKS                       R3 R4 K0 ["info"]
       96 LOADB                            R4 0
       97 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       99 RETURN                           R0 0

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
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["children"]
       14 LENGTH                           R3 R4
       15 LOADN                            R4 10
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 JUMPIFNOTEQKS                    R1 K5 ["IsUpdateRequired"] ; [+13]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["info"]
       26 GETTABLEKS                       R2 R3 K7 ["updateRequired"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K6 ["info"]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R3 K7 ["updateRequired"]
       34 RETURN                           R2 1
       35 JUMPIFNOTEQKS                    R1 K8 ["ClearCache"] ; [+4]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          UPVAL U0
       39 RETURN                           R2 1
       40 JUMPIFNOTEQKS                    R1 K9 ["TranslateFromTo"] ; [+8]
       42 NEWCLOSURE                       R2 P3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 RETURN                           R2 1
       49 JUMPIFNOTEQKS                    R1 K10 ["Children"] ; [+5]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R2 R3 K4 ["children"]
       54 RETURN                           R2 1
       55 JUMPIFNOTEQKS                    R1 K11 ["Size"] ; [+57]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K6 ["info"]
       60 GETTABLEKS                       R2 R3 K12 ["oSize"]
       62 JUMPIFNOT                        R2 ; [+6]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R3 R4 K6 ["info"]
       66 GETTABLEKS                       R2 R3 K12 ["oSize"]
       68 RETURN                           R2 1
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R2 R3 K6 ["info"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K6 ["info"]
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R4 R5 K13 ["getCFrameAndSizeOfList"]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R5 R6 K4 ["children"]
       81 GETGLOBAL                        R7 K14 ["createMetaPart"]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R9 R10 K15 ["objects"]
       86 GETTABLEN                        R8 R9 1
       87 CALL                             R7 1 1
       88 GETTABLEKS                       R6 R7 K16 ["CFrame"]
       90 CALL                             R4 2 2
       91 SETTABLEKS                       R4 R2 K17 ["oCFrame"]
       93 SETTABLEKS                       R5 R3 K12 ["oSize"]
       95 GETUPVAL                         R3 0
       96 GETTABLEKS                       R2 R3 K6 ["info"]
       98 GETUPVAL                         R3 2
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R5 R6 K6 ["info"]
      102 GETTABLEKS                       R4 R5 K17 ["oCFrame"]
      104 CALL                             R3 1 1
      105 SETTABLEKS                       R3 R2 K17 ["oCFrame"]
      107 GETUPVAL                         R4 0
      108 GETTABLEKS                       R3 R4 K6 ["info"]
      110 GETTABLEKS                       R2 R3 K12 ["oSize"]
      112 RETURN                           R2 1
      113 JUMPIFNOTEQKS                    R1 K16 ["CFrame"] ; [+57]
      115 GETUPVAL                         R4 0
      116 GETTABLEKS                       R3 R4 K6 ["info"]
      118 GETTABLEKS                       R2 R3 K17 ["oCFrame"]
      120 JUMPIFNOT                        R2 ; [+6]
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R3 R4 K6 ["info"]
      124 GETTABLEKS                       R2 R3 K17 ["oCFrame"]
      126 RETURN                           R2 1
      127 GETUPVAL                         R3 0
      128 GETTABLEKS                       R2 R3 K6 ["info"]
      130 GETUPVAL                         R4 0
      131 GETTABLEKS                       R3 R4 K6 ["info"]
      133 GETUPVAL                         R5 1
      134 GETTABLEKS                       R4 R5 K13 ["getCFrameAndSizeOfList"]
      136 GETUPVAL                         R6 0
      137 GETTABLEKS                       R5 R6 K4 ["children"]
      139 GETGLOBAL                        R7 K14 ["createMetaPart"]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R9 R10 K15 ["objects"]
      144 GETTABLEN                        R8 R9 1
      145 CALL                             R7 1 1
      146 GETTABLEKS                       R6 R7 K16 ["CFrame"]
      148 CALL                             R4 2 2
      149 SETTABLEKS                       R4 R2 K17 ["oCFrame"]
      151 SETTABLEKS                       R5 R3 K12 ["oSize"]
      153 GETUPVAL                         R3 0
      154 GETTABLEKS                       R2 R3 K6 ["info"]
      156 GETUPVAL                         R3 2
      157 GETUPVAL                         R6 0
      158 GETTABLEKS                       R5 R6 K6 ["info"]
      160 GETTABLEKS                       R4 R5 K17 ["oCFrame"]
      162 CALL                             R3 1 1
      163 SETTABLEKS                       R3 R2 K17 ["oCFrame"]
      165 GETUPVAL                         R4 0
      166 GETTABLEKS                       R3 R4 K6 ["info"]
      168 GETTABLEKS                       R2 R3 K17 ["oCFrame"]
      170 RETURN                           R2 1
      171 JUMPIFNOTEQKS                    R1 K18 ["PlaneAlignedSize"] ; [+15]
      173 GETUPVAL                         R4 0
      174 GETTABLEKS                       R3 R4 K6 ["info"]
      176 GETTABLEKS                       R2 R3 K19 ["pSize"]
      178 JUMPIFNOT                        R2 ; [+6]
      179 GETUPVAL                         R4 0
      180 GETTABLEKS                       R3 R4 K6 ["info"]
      182 GETTABLEKS                       R2 R3 K19 ["pSize"]
      184 RETURN                           R2 1
      185 LOADNIL                          R2
      186 RETURN                           R2 1
      187 JUMPIFNOTEQKS                    R1 K20 ["PlaneAlignedCFrame"] ; [+15]
      189 GETUPVAL                         R4 0
      190 GETTABLEKS                       R3 R4 K6 ["info"]
      192 GETTABLEKS                       R2 R3 K21 ["pCFrame"]
      194 JUMPIFNOT                        R2 ; [+6]
      195 GETUPVAL                         R4 0
      196 GETTABLEKS                       R3 R4 K6 ["info"]
      198 GETTABLEKS                       R2 R3 K21 ["pCFrame"]
      200 RETURN                           R2 1
      201 LOADNIL                          R2
      202 RETURN                           R2 1
      203 JUMPIFNOTEQKS                    R1 K22 ["GetTouchingParts"] ; [+4]
      205 NEWCLOSURE                       R2 P4
      206 CAPTURE                          UPVAL U5
      207 RETURN                           R2 1
      208 JUMPIFNOTEQKS                    R1 K23 ["PlaneSet"] ; [+11]
      210 GETUPVAL                         R5 0
      211 GETTABLEKS                       R4 R5 K6 ["info"]
      213 GETTABLEKS                       R3 R4 K24 ["lastPlaneCFrame"]
      215 JUMPIFNOTEQKNIL                  R3 ; [+2]
      217 LOADB                            R2 0 +1
      218 LOADB                            R2 1
      219 RETURN                           R2 1
      220 RETURN                           R0 0

PROTO_26:
        0 JUMPIFNOTEQKS                    R1 K0 ["UpdatePlaneCFrame"] ; [+32]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["info"]
        5 GETTABLEKS                       R3 R4 K2 ["lastPlaneCFrame"]
        7 JUMPIFNOTEQ                      R3 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["info"]
       13 SETTABLEKS                       R2 R3 K2 ["lastPlaneCFrame"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K1 ["info"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K1 ["info"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K3 ["getCFrameAndSizeOfList"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K4 ["objects"]
       27 MOVE                             R7 R2
       28 CALL                             R5 2 2
       29 SETTABLEKS                       R5 R3 K5 ["pCFrame"]
       31 SETTABLEKS                       R6 R4 K6 ["pSize"]
       33 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+149]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K1 ["info"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K1 ["info"]
       44 GETTABLEKS                       R3 R4 K9 ["oCFrame"]
       46 JUMPIF                           R3 ; [+38]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R3 R4 K1 ["info"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K1 ["info"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R5 R6 K3 ["getCFrameAndSizeOfList"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K10 ["children"]
       59 GETGLOBAL                        R8 K11 ["createMetaPart"]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K4 ["objects"]
       64 GETTABLEN                        R9 R10 1
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R7 R8 K7 ["CFrame"]
       68 CALL                             R5 2 2
       69 SETTABLEKS                       R5 R3 K9 ["oCFrame"]
       71 SETTABLEKS                       R6 R4 K12 ["oSize"]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R3 R4 K1 ["info"]
       76 GETUPVAL                         R4 2
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R6 R7 K1 ["info"]
       80 GETTABLEKS                       R5 R6 K9 ["oCFrame"]
       82 CALL                             R4 1 1
       83 SETTABLEKS                       R4 R3 K9 ["oCFrame"]
       85 GETUPVAL                         R3 0
       86 GETUPVAL                         R4 3
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R5 R6 K4 ["objects"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K13 ["roots"]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R5 R6 K1 ["info"]
       96 GETTABLEKS                       R4 R5 K9 ["oCFrame"]
       98 NAMECALL                         R4 R4 K14 ["Inverse"]
      100 CALL                             R4 1 1
      101 MUL                              R3 R2 R4
      102 GETUPVAL                         R4 4
      103 MOVE                             R5 R3
      104 CALL                             R4 1 0
      105 GETUPVAL                         R7 0
      106 GETTABLEKS                       R6 R7 K1 ["info"]
      108 GETTABLEKS                       R5 R6 K9 ["oCFrame"]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R8 R9 K1 ["info"]
      113 GETTABLEKS                       R7 R8 K9 ["oCFrame"]
      115 GETTABLEKS                       R6 R7 K15 ["p"]
      117 SUB                              R4 R5 R6
      118 GETTABLEKS                       R6 R2 K15 ["p"]
      120 SUB                              R5 R2 R6
      121 JUMPIFEQ                         R4 R5 ; [+20]
      123 GETUPVAL                         R5 0
      124 GETTABLEKS                       R4 R5 K1 ["info"]
      126 LOADNIL                          R5
      127 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      129 GETUPVAL                         R5 0
      130 GETTABLEKS                       R4 R5 K1 ["info"]
      132 LOADNIL                          R5
      133 SETTABLEKS                       R5 R4 K6 ["pSize"]
      135 GETUPVAL                         R5 0
      136 GETTABLEKS                       R4 R5 K1 ["info"]
      138 LOADNIL                          R5
      139 SETTABLEKS                       R5 R4 K2 ["lastPlaneCFrame"]
      141 JUMP                             ; [+27]
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R5 R6 K1 ["info"]
      145 GETTABLEKS                       R4 R5 K5 ["pCFrame"]
      147 JUMPIFNOT                        R4 ; [+21]
      148 GETUPVAL                         R5 0
      149 GETTABLEKS                       R4 R5 K1 ["info"]
      151 GETUPVAL                         R9 0
      152 GETTABLEKS                       R8 R9 K1 ["info"]
      154 GETTABLEKS                       R7 R8 K5 ["pCFrame"]
      156 GETUPVAL                         R11 0
      157 GETTABLEKS                       R10 R11 K1 ["info"]
      159 GETTABLEKS                       R9 R10 K9 ["oCFrame"]
      161 GETTABLEKS                       R8 R9 K15 ["p"]
      163 SUB                              R6 R7 R8
      164 GETTABLEKS                       R7 R2 K15 ["p"]
      166 ADD                              R5 R6 R7
      167 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      169 GETUPVAL                         R5 0
      170 GETTABLEKS                       R4 R5 K1 ["info"]
      172 GETUPVAL                         R5 2
      173 MOVE                             R6 R2
      174 CALL                             R5 1 1
      175 SETTABLEKS                       R5 R4 K9 ["oCFrame"]
      177 GETUPVAL                         R5 0
      178 GETTABLEKS                       R4 R5 K1 ["info"]
      180 LOADB                            R5 0
      181 SETTABLEKS                       R5 R4 K8 ["expectingChanged"]
      183 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["info"]
        3 GETTABLEKS                       R0 R1 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["object"]
        7 SETLIST                          R2 R3 1 [1]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K1 ["roots"]
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["object"]
        3 NAMECALL                         R0 R0 K1 ["GetModelCFrame"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["object"]
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 LOADN                            R4 1
        8 LENGTH                           R2 R0
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 GETTABLE                         R5 R0 R4
       12 NAMECALL                         R5 R5 K1 ["GetTouchingParts"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K2 ["combineLists"]
       18 MOVE                             R7 R1
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R8 R9 K3 ["filterOutItems"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R5
       24 CALL                             R8 2 -1
       25 CALL                             R6 -1 1
       26 MOVE                             R1 R6
       27 FORNLOOP                         R2
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K4 ["removeDuplicates"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 RETURN                           R1 1

PROTO_32:
        0 GETGLOBAL                        R2 K0 ["createMetaPart"]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K1 ["Object"]
        6 GETGLOBAL                        R3 K0 ["createMetaPart"]
        8 GETUPVAL                         R4 1
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K1 ["Object"]
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
        0 LOADNIL                          R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["object"]
        4 GETTABLEKS                       R1 R2 K1 ["PrimaryPart"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["object"]
       10 GETTABLEKS                       R1 R2 K1 ["PrimaryPart"]
       12 GETTABLEKS                       R0 R1 K2 ["CFrame"]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["children"]
       18 LENGTH                           R1 R2
       19 LOADN                            R2 0
       20 JUMPIFNOTLT                      R2 R1 ; [+8]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K3 ["children"]
       25 GETTABLEN                        R1 R2 1
       26 GETTABLEKS                       R0 R1 K2 ["CFrame"]
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R1 K5 [CFrame.new]
       31 CALL                             R1 0 1
       32 MOVE                             R0 R1
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K6 ["info"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K6 ["info"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K7 ["getCFrameAndSizeOfList"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K3 ["children"]
       45 MOVE                             R5 R0
       46 CALL                             R3 2 2
       47 SETTABLEKS                       R3 R1 K8 ["oCFrame"]
       49 SETTABLEKS                       R4 R2 K9 ["oSize"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R1 R2 K6 ["info"]
       54 GETUPVAL                         R2 2
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R4 R5 K6 ["info"]
       58 GETTABLEKS                       R3 R4 K8 ["oCFrame"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K8 ["oCFrame"]
       63 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["object"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 JUMPIFEQKS                       R1 K2 ["Wrapped"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R1 R3 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["info"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["expectingChanged"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["info"]
        9 GETTABLEKS                       R2 R3 K2 ["oCFrame"]
       11 JUMPIF                           R2 ; [+2]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 2
       16 NEWTABLE                         R4 0 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["object"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["roots"]
       26 GETTABLEKS                       R3 R1 K5 ["p"]
       28 GETTABLEKS                       R4 R0 K5 ["p"]
       30 SUB                              R2 R3 R4
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K3 ["object"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K3 ["object"]
       37 NAMECALL                         R6 R6 K6 ["GetPivot"]
       39 CALL                             R6 1 1
       40 ADD                              R5 R6 R2
       41 NAMECALL                         R3 R3 K7 ["PivotTo"]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R3 R4 K0 ["info"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K0 ["info"]
       50 GETTABLEKS                       R5 R6 K8 ["pCFrame"]
       52 ADD                              R4 R5 R2
       53 SETTABLEKS                       R4 R3 K8 ["pCFrame"]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K0 ["info"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K0 ["info"]
       61 GETTABLEKS                       R5 R6 K2 ["oCFrame"]
       63 ADD                              R4 R5 R2
       64 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R3 R4 K0 ["info"]
       69 LOADB                            R4 0
       70 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       72 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_44:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["object"]
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
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["info"]
       15 GETTABLEKS                       R2 R3 K4 ["updateRequired"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["info"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K4 ["updateRequired"]
       23 RETURN                           R2 1
       24 JUMPIFNOTEQKS                    R1 K5 ["CanSimulate"] ; [+11]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K6 ["children"]
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
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R2 R3 K6 ["children"]
       70 RETURN                           R2 1
       71 JUMPIFNOTEQKS                    R1 K17 ["Size"] ; [+21]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R3 R4 K3 ["info"]
       76 GETTABLEKS                       R2 R3 K18 ["oSize"]
       78 JUMPIFNOT                        R2 ; [+6]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R3 R4 K3 ["info"]
       82 GETTABLEKS                       R2 R3 K18 ["oSize"]
       84 RETURN                           R2 1
       85 GETUPVAL                         R2 1
       86 CALL                             R2 0 0
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K3 ["info"]
       90 GETTABLEKS                       R2 R3 K18 ["oSize"]
       92 RETURN                           R2 1
       93 JUMPIFNOTEQKS                    R1 K19 ["CFrame"] ; [+21]
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R3 R4 K3 ["info"]
       98 GETTABLEKS                       R2 R3 K20 ["oCFrame"]
      100 JUMPIFNOT                        R2 ; [+6]
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R3 R4 K3 ["info"]
      104 GETTABLEKS                       R2 R3 K20 ["oCFrame"]
      106 RETURN                           R2 1
      107 GETUPVAL                         R2 1
      108 CALL                             R2 0 0
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R3 R4 K3 ["info"]
      112 GETTABLEKS                       R2 R3 K20 ["oCFrame"]
      114 RETURN                           R2 1
      115 JUMPIFNOTEQKS                    R1 K21 ["PlaneAlignedSize"] ; [+15]
      117 GETUPVAL                         R4 0
      118 GETTABLEKS                       R3 R4 K3 ["info"]
      120 GETTABLEKS                       R2 R3 K22 ["pSize"]
      122 JUMPIFNOT                        R2 ; [+6]
      123 GETUPVAL                         R4 0
      124 GETTABLEKS                       R3 R4 K3 ["info"]
      126 GETTABLEKS                       R2 R3 K22 ["pSize"]
      128 RETURN                           R2 1
      129 LOADNIL                          R2
      130 RETURN                           R2 1
      131 JUMPIFNOTEQKS                    R1 K23 ["PlaneAlignedCFrame"] ; [+15]
      133 GETUPVAL                         R4 0
      134 GETTABLEKS                       R3 R4 K3 ["info"]
      136 GETTABLEKS                       R2 R3 K24 ["pCFrame"]
      138 JUMPIFNOT                        R2 ; [+6]
      139 GETUPVAL                         R4 0
      140 GETTABLEKS                       R3 R4 K3 ["info"]
      142 GETTABLEKS                       R2 R3 K24 ["pCFrame"]
      144 RETURN                           R2 1
      145 LOADNIL                          R2
      146 RETURN                           R2 1
      147 JUMPIFNOTEQKS                    R1 K25 ["Position"] ; [+25]
      149 GETUPVAL                         R4 0
      150 GETTABLEKS                       R3 R4 K3 ["info"]
      152 GETTABLEKS                       R2 R3 K20 ["oCFrame"]
      154 JUMPIFNOT                        R2 ; [+8]
      155 GETUPVAL                         R5 0
      156 GETTABLEKS                       R4 R5 K3 ["info"]
      158 GETTABLEKS                       R3 R4 K20 ["oCFrame"]
      160 GETTABLEKS                       R2 R3 K26 ["p"]
      162 RETURN                           R2 1
      163 GETUPVAL                         R2 1
      164 CALL                             R2 0 0
      165 GETUPVAL                         R5 0
      166 GETTABLEKS                       R4 R5 K3 ["info"]
      168 GETTABLEKS                       R3 R4 K20 ["oCFrame"]
      170 GETTABLEKS                       R2 R3 K26 ["p"]
      172 RETURN                           R2 1
      173 JUMPIFNOTEQKS                    R1 K27 ["Object"] ; [+5]
      175 GETUPVAL                         R3 0
      176 GETTABLEKS                       R2 R3 K28 ["object"]
      178 RETURN                           R2 1
      179 GETIMPORT                        R2 K30 [pcall]
      181 NEWCLOSURE                       R3 P8
      182 CAPTURE                          UPVAL U0
      183 CAPTURE                          VAL R1
      184 CALL                             R2 1 1
      185 JUMPIFNOT                        R2 ; [+19]
      186 GETUPVAL                         R5 0
      187 GETTABLEKS                       R4 R5 K28 ["object"]
      189 GETTABLE                         R3 R4 R1
      190 FASTCALL1                        TYPE R3 ; [+2]
      191 GETIMPORT                        R2 K32 [type]
      193 CALL                             R2 1 1
      194 JUMPIFNOTEQKS                    R2 K33 ["function"] ; [+5]
      196 NEWCLOSURE                       R2 P9
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          VAL R1
      199 RETURN                           R2 1
      200 GETUPVAL                         R4 0
      201 GETTABLEKS                       R3 R4 K28 ["object"]
      203 GETTABLE                         R2 R3 R1
      204 RETURN                           R2 1
      205 LOADNIL                          R2
      206 RETURN                           R2 1

PROTO_46:
        0 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_48:
        0 JUMPIFNOTEQKS                    R1 K0 ["UpdatePlaneCFrame"] ; [+25]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["info"]
        5 SETTABLEKS                       R2 R3 K2 ["lastPlaneCFrame"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["info"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["info"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["getCFrameAndSizeOfList"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K4 ["children"]
       19 MOVE                             R7 R2
       20 CALL                             R5 2 2
       21 SETTABLEKS                       R5 R3 K5 ["pCFrame"]
       23 SETTABLEKS                       R6 R4 K6 ["pSize"]
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+130]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K1 ["info"]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K1 ["info"]
       37 GETTABLEKS                       R3 R4 K9 ["oCFrame"]
       39 JUMPIF                           R3 ; [+2]
       40 GETUPVAL                         R3 2
       41 CALL                             R3 0 0
       42 GETUPVAL                         R3 0
       43 GETUPVAL                         R4 3
       44 NEWTABLE                         R5 0 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K10 ["object"]
       49 SETLIST                          R5 R6 1 [1]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K11 ["roots"]
       54 GETUPVAL                         R3 4
       55 MOVE                             R4 R2
       56 LOADB                            R5 1
       57 CALL                             R3 2 1
       58 MOVE                             R2 R3
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K1 ["info"]
       62 GETTABLEKS                       R4 R5 K9 ["oCFrame"]
       64 NAMECALL                         R4 R4 K12 ["Inverse"]
       66 CALL                             R4 1 1
       67 MUL                              R3 R2 R4
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R4 R5 K10 ["object"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K10 ["object"]
       74 NAMECALL                         R7 R7 K13 ["GetPivot"]
       76 CALL                             R7 1 1
       77 MUL                              R6 R3 R7
       78 NAMECALL                         R4 R4 K14 ["PivotTo"]
       80 CALL                             R4 2 0
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R6 R7 K1 ["info"]
       84 GETTABLEKS                       R5 R6 K9 ["oCFrame"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K1 ["info"]
       89 GETTABLEKS                       R7 R8 K9 ["oCFrame"]
       91 GETTABLEKS                       R6 R7 K15 ["p"]
       93 SUB                              R4 R5 R6
       94 GETTABLEKS                       R6 R2 K15 ["p"]
       96 SUB                              R5 R2 R6
       97 JUMPIFEQ                         R4 R5 ; [+20]
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R4 R5 K1 ["info"]
      102 LOADNIL                          R5
      103 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R4 R5 K1 ["info"]
      108 LOADNIL                          R5
      109 SETTABLEKS                       R5 R4 K6 ["pSize"]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R4 R5 K1 ["info"]
      114 LOADNIL                          R5
      115 SETTABLEKS                       R5 R4 K2 ["lastPlaneCFrame"]
      117 JUMP                             ; [+27]
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R5 R6 K1 ["info"]
      121 GETTABLEKS                       R4 R5 K5 ["pCFrame"]
      123 JUMPIFNOT                        R4 ; [+21]
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R4 R5 K1 ["info"]
      127 GETUPVAL                         R9 0
      128 GETTABLEKS                       R8 R9 K1 ["info"]
      130 GETTABLEKS                       R7 R8 K5 ["pCFrame"]
      132 GETUPVAL                         R11 0
      133 GETTABLEKS                       R10 R11 K1 ["info"]
      135 GETTABLEKS                       R9 R10 K9 ["oCFrame"]
      137 GETTABLEKS                       R8 R9 K15 ["p"]
      139 SUB                              R6 R7 R8
      140 GETTABLEKS                       R7 R2 K15 ["p"]
      142 ADD                              R5 R6 R7
      143 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      145 GETUPVAL                         R5 0
      146 GETTABLEKS                       R4 R5 K1 ["info"]
      148 SETTABLEKS                       R2 R4 K9 ["oCFrame"]
      150 GETUPVAL                         R5 0
      151 GETTABLEKS                       R4 R5 K1 ["info"]
      153 LOADB                            R5 0
      154 SETTABLEKS                       R5 R4 K8 ["expectingChanged"]
      156 RETURN                           R0 0
      157 JUMPIFNOTEQKS                    R1 K16 ["BreakImplicitJoints"] ; [+3]
      159 DUPCLOSURE                       R3 K17 [PROTO_46]
      160 RETURN                           R3 1
      161 JUMPIFNOTEQKS                    R1 K18 ["Size"] ; [+2]
      163 RETURN                           R0 0
      164 JUMPIFNOTEQKS                    R1 K19 ["Position"] ; [+41]
      166 GETUPVAL                         R4 0
      167 GETTABLEKS                       R3 R4 K1 ["info"]
      169 LOADB                            R4 1
      170 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      172 GETUPVAL                         R4 0
      173 GETTABLEKS                       R3 R4 K10 ["object"]
      175 NAMECALL                         R3 R3 K20 ["GetModelCFrame"]
      177 CALL                             R3 1 1
      178 GETTABLEKS                       R6 R3 K15 ["p"]
      180 SUB                              R5 R3 R6
      181 ADD                              R4 R5 R2
      182 NAMECALL                         R6 R3 K12 ["Inverse"]
      184 CALL                             R6 1 1
      185 MUL                              R5 R4 R6
      186 GETUPVAL                         R7 0
      187 GETTABLEKS                       R6 R7 K10 ["object"]
      189 GETUPVAL                         R10 0
      190 GETTABLEKS                       R9 R10 K10 ["object"]
      192 NAMECALL                         R9 R9 K13 ["GetPivot"]
      194 CALL                             R9 1 1
      195 MUL                              R8 R5 R9
      196 NAMECALL                         R6 R6 K14 ["PivotTo"]
      198 CALL                             R6 2 0
      199 GETUPVAL                         R7 0
      200 GETTABLEKS                       R6 R7 K1 ["info"]
      202 LOADB                            R7 0
      203 SETTABLEKS                       R7 R6 K8 ["expectingChanged"]
      205 RETURN                           R0 0
      206 GETUPVAL                         R4 0
      207 GETTABLEKS                       R3 R4 K1 ["info"]
      209 LOADB                            R4 1
      210 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      212 GETIMPORT                        R3 K22 [pcall]
      214 NEWCLOSURE                       R4 P1
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          VAL R1
      217 CALL                             R3 1 1
      218 JUMPIFNOT                        R3 ; [+4]
      219 GETUPVAL                         R4 0
      220 GETTABLEKS                       R3 R4 K10 ["object"]
      222 SETTABLE                         R2 R3 R1
      223 GETUPVAL                         R4 0
      224 GETTABLEKS                       R3 R4 K1 ["info"]
      226 LOADB                            R4 0
      227 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      229 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["info"]
        3 GETTABLEKS                       R0 R1 K1 ["expectingChanged"]
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["object"]
        7 SETLIST                          R2 R3 1 [1]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K1 ["roots"]
       12 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["object"]
        3 NAMECALL                         R0 R0 K1 ["GetModelCFrame"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_53:
        0 GETGLOBAL                        R2 K0 ["createMetaPart"]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K1 ["Object"]
        6 GETGLOBAL                        R3 K0 ["createMetaPart"]
        8 GETUPVAL                         R4 1
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K1 ["Object"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["object"]
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
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["object"]
        4 GETTABLEKS                       R4 R5 K1 ["PivotOffset"]
        6 GETTABLEKS                       R5 R4 K2 ["Position"]
        8 SUB                              R6 R4 R5
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K0 ["object"]
       12 MUL                              R9 R3 R5
       13 ADD                              R8 R6 R9
       14 SETTABLEKS                       R8 R7 K1 ["PivotOffset"]
       16 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 0 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K0 ["object"]
        7 SETLIST                          R4 R5 1 [1]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["roots"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["info"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["expectingChanged"]
       18 GETTABLEKS                       R3 R1 K4 ["p"]
       20 GETTABLEKS                       R4 R0 K4 ["p"]
       22 SUB                              R2 R3 R4
       23 GETIMPORT                        R3 K6 [ipairs]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R4 R6 K7 ["models"]
       28 CALL                             R3 1 3
       29 FORGPREP_INEXT                   R3
       30 NAMECALL                         R9 R7 K8 ["GetPivot"]
       32 CALL                             R9 1 1
       33 ADD                              R8 R9 R2
       34 SETTABLEKS                       R8 R7 K9 ["WorldPivot"]
       36 FORGLOOP                         R3 2 [inext] ; [-7]
       38 LOADN                            R5 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K1 ["roots"]
       42 LENGTH                           R3 R6
       43 LOADN                            R4 1
       44 FORNPREP                         R3
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K1 ["roots"]
       48 GETTABLE                         R6 R7 R5
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R10 R11 K1 ["roots"]
       52 GETTABLE                         R9 R10 R5
       53 GETTABLEKS                       R8 R9 K10 ["CFrame"]
       55 ADD                              R7 R8 R2
       56 SETTABLEKS                       R7 R6 K10 ["CFrame"]
       58 FORNLOOP                         R3
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K2 ["info"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R6 R7 K2 ["info"]
       65 GETTABLEKS                       R5 R6 K11 ["pCFrame"]
       67 ADD                              R4 R5 R2
       68 SETTABLEKS                       R4 R3 K11 ["pCFrame"]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K2 ["info"]
       73 LOADB                            R4 0
       74 SETTABLEKS                       R4 R3 K3 ["expectingChanged"]
       76 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["subscribe"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R1 R3 K0 ["subscribe"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["disconnect"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["info"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["oCFrame"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["oSize"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["info"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["pCFrame"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["info"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["pSize"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K0 ["info"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K5 ["lastPlaneCFrame"]
       30 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_61:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["object"]
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
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K7 ["info"]
       35 GETTABLEKS                       R2 R3 K8 ["updateRequired"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K7 ["info"]
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K8 ["updateRequired"]
       43 RETURN                           R2 1
       44 JUMPIFNOTEQKS                    R1 K9 ["Children"] ; [+5]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K10 ["children"]
       49 RETURN                           R2 1
       50 JUMPIFNOTEQKS                    R1 K11 ["CFrame"] ; [+7]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K12 ["object"]
       55 GETTABLEKS                       R2 R3 K11 ["CFrame"]
       57 RETURN                           R2 1
       58 JUMPIFNOTEQKS                    R1 K13 ["Size"] ; [+7]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R3 R4 K12 ["object"]
       63 GETTABLEKS                       R2 R3 K13 ["Size"]
       65 RETURN                           R2 1
       66 JUMPIFNOTEQKS                    R1 K14 ["Position"] ; [+9]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R4 R5 K12 ["object"]
       71 GETTABLEKS                       R3 R4 K11 ["CFrame"]
       73 GETTABLEKS                       R2 R3 K15 ["p"]
       75 RETURN                           R2 1
       76 JUMPIFNOTEQKS                    R1 K16 ["Object"] ; [+5]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R2 R3 K12 ["object"]
       81 RETURN                           R2 1
       82 JUMPIFNOTEQKS                    R1 K17 ["PlaneAlignedSize"] ; [+15]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R3 R4 K7 ["info"]
       87 GETTABLEKS                       R2 R3 K18 ["pSize"]
       89 JUMPIFNOT                        R2 ; [+6]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R3 R4 K7 ["info"]
       93 GETTABLEKS                       R2 R3 K18 ["pSize"]
       95 RETURN                           R2 1
       96 LOADNIL                          R2
       97 RETURN                           R2 1
       98 JUMPIFNOTEQKS                    R1 K19 ["PlaneAlignedCFrame"] ; [+15]
      100 GETUPVAL                         R4 0
      101 GETTABLEKS                       R3 R4 K7 ["info"]
      103 GETTABLEKS                       R2 R3 K20 ["pCFrame"]
      105 JUMPIFNOT                        R2 ; [+6]
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R3 R4 K7 ["info"]
      109 GETTABLEKS                       R2 R3 K20 ["pCFrame"]
      111 RETURN                           R2 1
      112 LOADNIL                          R2
      113 RETURN                           R2 1
      114 GETIMPORT                        R2 K22 [pcall]
      116 NEWCLOSURE                       R3 P5
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          VAL R1
      119 CALL                             R2 1 1
      120 JUMPIFNOT                        R2 ; [+19]
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R4 R5 K12 ["object"]
      124 GETTABLE                         R3 R4 R1
      125 FASTCALL1                        TYPE R3 ; [+2]
      126 GETIMPORT                        R2 K24 [type]
      128 CALL                             R2 1 1
      129 JUMPIFNOTEQKS                    R2 K25 ["function"] ; [+5]
      131 NEWCLOSURE                       R2 P6
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          VAL R1
      134 RETURN                           R2 1
      135 GETUPVAL                         R4 0
      136 GETTABLEKS                       R3 R4 K12 ["object"]
      138 GETTABLE                         R2 R3 R1
      139 RETURN                           R2 1
      140 LOADNIL                          R2
      141 RETURN                           R2 1

PROTO_63:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["info"]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
        6 JUMPIFNOTEQKS                    R1 K2 ["UpdatePlaneCFrame"] ; [+35]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["info"]
       11 SETTABLEKS                       R2 R3 K3 ["lastPlaneCFrame"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["info"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["info"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K4 ["getCFrameAndSizeOfList"]
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K5 ["object"]
       27 SETLIST                          R6 R7 1 [1]
       29 MOVE                             R7 R2
       30 CALL                             R5 2 2
       31 SETTABLEKS                       R5 R3 K6 ["pCFrame"]
       33 SETTABLEKS                       R6 R4 K7 ["pSize"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K0 ["info"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R1 K8 ["CFrame"] ; [+11]
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R2
       46 CALL                             R3 1 1
       47 MOVE                             R2 R3
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K0 ["info"]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
       54 JUMPIFNOTEQKS                    R1 K9 ["Size"] ; [+7]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K0 ["info"]
       59 LOADNIL                          R4
       60 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
       62 JUMPIFNOTEQKS                    R1 K10 ["Position"] ; [+7]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R3 R4 K0 ["info"]
       67 LOADNIL                          R4
       68 SETTABLEKS                       R4 R3 K3 ["lastPlaneCFrame"]
       70 GETIMPORT                        R3 K12 [pcall]
       72 NEWCLOSURE                       R4 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R1
       75 CALL                             R3 1 1
       76 JUMPIFNOT                        R3 ; [+4]
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R3 R4 K5 ["object"]
       80 SETTABLE                         R2 R3 R1
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K0 ["info"]
       84 LOADB                            R4 0
       85 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
       87 RETURN                           R0 0

PROTO_65:
        0 GETGLOBAL                        R2 K0 ["createMetaPart"]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K1 ["Object"]
        6 GETGLOBAL                        R3 K0 ["createMetaPart"]
        8 GETUPVAL                         R4 1
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K1 ["Object"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["object"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 JUMPIFEQKS                       R1 K2 ["Wrapped"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_69:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["object"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["object"]
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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K8 ["object"]
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
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K8 ["object"]
       45 GETTABLE                         R3 R4 R1
       46 FASTCALL1                        TYPE R3 ; [+2]
       47 GETIMPORT                        R2 K14 [type]
       49 CALL                             R2 1 1
       50 JUMPIFNOTEQKS                    R2 K15 ["function"] ; [+5]
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R1
       55 RETURN                           R2 1
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K8 ["object"]
       59 GETTABLE                         R2 R3 R1
       60 RETURN                           R2 1
       61 LOADNIL                          R2
       62 RETURN                           R2 1

PROTO_71:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["object"]
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
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K6 ["object"]
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
       29 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+132]
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
      136 CAPTURE                          UPVAL U5
      137 NEWCLOSURE                       R7 P4
      138 CAPTURE                          VAL R2
      139 CAPTURE                          UPVAL U6
      140 GETTABLEKS                       R8 R2 K8 ["mt"]
      142 NEWCLOSURE                       R9 P5
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          UPVAL U1
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R9 R8 K25 ["__index"]
      151 GETTABLEKS                       R8 R2 K8 ["mt"]
      153 NEWCLOSURE                       R9 P6
      154 CAPTURE                          VAL R2
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          UPVAL U5
      157 CAPTURE                          UPVAL U1
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      161 RETURN                           R2 1
      162 LOADK                            R4 K27 ["Model"]
      163 NAMECALL                         R2 R0 K28 ["IsA"]
      165 CALL                             R2 2 1
      166 JUMPIFNOT                        R2 ; [+159]
      167 LOADK                            R4 K29 ["Workspace"]
      168 NAMECALL                         R2 R0 K28 ["IsA"]
      170 CALL                             R2 2 1
      171 JUMPIF                           R2 ; [+154]
      172 JUMPIFEQKNIL                     R0 ; [+8]
      174 FASTCALL1                        TYPEOF R0 ; [+3]
      175 MOVE                             R4 R0
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      181 LOADB                            R2 0
      182 JUMP                             ; [+6]
      183 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      185 JUMPIFEQKB                       R3 TRUE ; [+2]
      187 LOADB                            R2 0 +1
      188 LOADB                            R2 1
      189 JUMPIFNOT                        R2 ; [+1]
      190 RETURN                           R0 1
      191 NEWTABLE                         R2 8 0
      193 SETTABLEKS                       R0 R2 K30 ["object"]
      195 NEWTABLE                         R3 0 0
      197 SETTABLEKS                       R3 R2 K8 ["mt"]
      199 NEWTABLE                         R3 0 0
      201 SETTABLEKS                       R3 R2 K9 ["info"]
      203 GETTABLEKS                       R3 R2 K9 ["info"]
      205 LOADNIL                          R4
      206 SETTABLEKS                       R4 R3 K10 ["oCFrame"]
      208 GETTABLEKS                       R3 R2 K9 ["info"]
      210 LOADNIL                          R4
      211 SETTABLEKS                       R4 R3 K11 ["oSize"]
      213 GETTABLEKS                       R3 R2 K9 ["info"]
      215 LOADNIL                          R4
      216 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      218 GETTABLEKS                       R3 R2 K9 ["info"]
      220 LOADNIL                          R4
      221 SETTABLEKS                       R4 R3 K13 ["pSize"]
      223 GETTABLEKS                       R3 R2 K9 ["info"]
      225 LOADNIL                          R4
      226 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      228 GETUPVAL                         R3 0
      229 NEWTABLE                         R4 0 1
      231 GETTABLEKS                       R5 R2 K30 ["object"]
      233 SETLIST                          R4 R5 1 [1]
      235 CALL                             R3 1 1
      236 SETTABLEKS                       R3 R2 K15 ["children"]
      238 GETUPVAL                         R3 1
      239 NEWTABLE                         R4 0 1
      241 GETTABLEKS                       R5 R2 K30 ["object"]
      243 SETLIST                          R4 R5 1 [1]
      245 CALL                             R3 1 1
      246 SETTABLEKS                       R3 R2 K16 ["roots"]
      248 GETUPVAL                         R3 2
      249 NEWTABLE                         R4 0 1
      251 GETTABLEKS                       R5 R2 K30 ["object"]
      253 SETLIST                          R4 R5 1 [1]
      255 CALL                             R3 1 1
      256 SETTABLEKS                       R3 R2 K17 ["models"]
      258 LOADB                            R3 1
      259 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      261 GETTABLEKS                       R3 R2 K9 ["info"]
      263 LOADB                            R4 0
      264 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      266 GETTABLEKS                       R3 R2 K9 ["info"]
      268 LOADB                            R4 0
      269 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      271 NEWCLOSURE                       R3 P7
      272 CAPTURE                          VAL R2
      273 JUMPIFNOT                        R1 ; [+6]
      274 MOVE                             R4 R3
      275 GETTABLEKS                       R5 R2 K15 ["children"]
      277 CALL                             R4 1 1
      278 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      280 GETTABLEKS                       R6 R2 K8 ["mt"]
      282 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      284 MOVE                             R5 R2
      285 GETIMPORT                        R4 K24 [setmetatable]
      287 CALL                             R4 2 0
      288 NEWCLOSURE                       R4 P8
      289 CAPTURE                          VAL R2
      290 CAPTURE                          UPVAL U1
      291 NEWCLOSURE                       R5 P9
      292 CAPTURE                          VAL R2
      293 NEWCLOSURE                       R6 P10
      294 CAPTURE                          UPVAL U7
      295 CAPTURE                          VAL R2
      296 CAPTURE                          UPVAL U6
      297 GETTABLEKS                       R7 R2 K8 ["mt"]
      299 DUPCLOSURE                       R8 K31 [PROTO_33]
      300 SETTABLEKS                       R8 R7 K32 ["__eq"]
      302 NEWCLOSURE                       R7 P12
      303 CAPTURE                          VAL R2
      304 CAPTURE                          UPVAL U4
      305 CAPTURE                          UPVAL U5
      306 GETTABLEKS                       R8 R2 K8 ["mt"]
      308 NEWCLOSURE                       R9 P13
      309 CAPTURE                          VAL R2
      310 CAPTURE                          VAL R7
      311 CAPTURE                          UPVAL U1
      312 CAPTURE                          VAL R6
      313 SETTABLEKS                       R9 R8 K25 ["__index"]
      315 GETTABLEKS                       R8 R2 K8 ["mt"]
      317 NEWCLOSURE                       R9 P14
      318 CAPTURE                          VAL R2
      319 CAPTURE                          UPVAL U4
      320 CAPTURE                          VAL R7
      321 CAPTURE                          UPVAL U1
      322 CAPTURE                          UPVAL U5
      323 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      325 RETURN                           R2 1
      326 LOADK                            R4 K33 ["BasePart"]
      327 NAMECALL                         R2 R0 K28 ["IsA"]
      329 CALL                             R2 2 1
      330 JUMPIFNOT                        R2 ; [+129]
      331 JUMPIFEQKNIL                     R0 ; [+8]
      333 FASTCALL1                        TYPEOF R0 ; [+3]
      334 MOVE                             R4 R0
      335 GETIMPORT                        R3 K1 [typeof]
      337 CALL                             R3 1 1
      338 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      340 LOADB                            R2 0
      341 JUMP                             ; [+6]
      342 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      344 JUMPIFEQKB                       R3 TRUE ; [+2]
      346 LOADB                            R2 0 +1
      347 LOADB                            R2 1
      348 JUMPIFNOT                        R2 ; [+1]
      349 RETURN                           R0 1
      350 NEWTABLE                         R2 8 0
      352 SETTABLEKS                       R0 R2 K30 ["object"]
      354 NEWTABLE                         R3 0 0
      356 SETTABLEKS                       R3 R2 K8 ["mt"]
      358 NEWTABLE                         R3 0 0
      360 SETTABLEKS                       R3 R2 K9 ["info"]
      362 GETTABLEKS                       R3 R2 K9 ["info"]
      364 LOADNIL                          R4
      365 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      367 GETTABLEKS                       R3 R2 K9 ["info"]
      369 LOADNIL                          R4
      370 SETTABLEKS                       R4 R3 K13 ["pSize"]
      372 GETTABLEKS                       R3 R2 K9 ["info"]
      374 LOADNIL                          R4
      375 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      377 NEWTABLE                         R3 0 1
      379 MOVE                             R4 R0
      380 SETLIST                          R3 R4 1 [1]
      382 SETTABLEKS                       R3 R2 K15 ["children"]
      384 GETUPVAL                         R3 1
      385 NEWTABLE                         R4 0 1
      387 GETTABLEKS                       R5 R2 K30 ["object"]
      389 SETLIST                          R4 R5 1 [1]
      391 CALL                             R3 1 1
      392 SETTABLEKS                       R3 R2 K16 ["roots"]
      394 GETUPVAL                         R3 2
      395 NEWTABLE                         R4 0 1
      397 GETTABLEKS                       R5 R2 K30 ["object"]
      399 SETLIST                          R4 R5 1 [1]
      401 CALL                             R3 1 1
      402 SETTABLEKS                       R3 R2 K17 ["models"]
      404 LOADB                            R3 1
      405 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      407 GETTABLEKS                       R3 R2 K9 ["info"]
      409 LOADB                            R4 0
      410 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      412 GETTABLEKS                       R3 R2 K9 ["info"]
      414 LOADB                            R4 0
      415 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      417 NEWCLOSURE                       R3 P15
      418 CAPTURE                          VAL R2
      419 JUMPIFNOT                        R1 ; [+6]
      420 MOVE                             R4 R3
      421 GETTABLEKS                       R5 R2 K15 ["children"]
      423 CALL                             R4 1 1
      424 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      426 NEWCLOSURE                       R4 P16
      427 CAPTURE                          VAL R2
      428 CAPTURE                          UPVAL U1
      429 GETTABLEKS                       R7 R2 K8 ["mt"]
      431 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
      433 MOVE                             R6 R2
      434 GETIMPORT                        R5 K24 [setmetatable]
      436 CALL                             R5 2 0
      437 NEWCLOSURE                       R5 P17
      438 CAPTURE                          VAL R2
      439 GETTABLEKS                       R6 R2 K8 ["mt"]
      441 DUPCLOSURE                       R7 K34 [PROTO_54]
      442 SETTABLEKS                       R7 R6 K32 ["__eq"]
      444 GETTABLEKS                       R6 R2 K8 ["mt"]
      446 NEWCLOSURE                       R7 P19
      447 CAPTURE                          VAL R2
      448 CAPTURE                          UPVAL U1
      449 SETTABLEKS                       R7 R6 K25 ["__index"]
      451 GETTABLEKS                       R6 R2 K8 ["mt"]
      453 NEWCLOSURE                       R7 P20
      454 CAPTURE                          VAL R2
      455 CAPTURE                          UPVAL U4
      456 CAPTURE                          UPVAL U5
      457 SETTABLEKS                       R7 R6 K26 ["__newindex"]
      459 RETURN                           R2 1
      460 JUMPIFEQKNIL                     R0 ; [+8]
      462 FASTCALL1                        TYPEOF R0 ; [+3]
      463 MOVE                             R4 R0
      464 GETIMPORT                        R3 K1 [typeof]
      466 CALL                             R3 1 1
      467 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      469 LOADB                            R2 0
      470 JUMP                             ; [+6]
      471 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      473 JUMPIFEQKB                       R3 TRUE ; [+2]
      475 LOADB                            R2 0 +1
      476 LOADB                            R2 1
      477 JUMPIFNOT                        R2 ; [+1]
      478 RETURN                           R0 1
      479 NEWTABLE                         R2 4 0
      481 SETTABLEKS                       R0 R2 K30 ["object"]
      483 NEWTABLE                         R3 0 0
      485 SETTABLEKS                       R3 R2 K8 ["mt"]
      487 NEWTABLE                         R3 0 0
      489 SETTABLEKS                       R3 R2 K9 ["info"]
      491 LOADB                            R3 1
      492 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      494 GETTABLEKS                       R5 R2 K8 ["mt"]
      496 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      498 MOVE                             R4 R2
      499 GETIMPORT                        R3 K24 [setmetatable]
      501 CALL                             R3 2 0
      502 GETTABLEKS                       R3 R2 K8 ["mt"]
      504 DUPCLOSURE                       R4 K35 [PROTO_66]
      505 SETTABLEKS                       R4 R3 K32 ["__eq"]
      507 GETTABLEKS                       R3 R2 K8 ["mt"]
      509 NEWCLOSURE                       R4 P22
      510 CAPTURE                          VAL R2
      511 SETTABLEKS                       R4 R3 K25 ["__index"]
      513 GETTABLEKS                       R3 R2 K8 ["mt"]
      515 NEWCLOSURE                       R4 P23
      516 CAPTURE                          VAL R2
      517 SETTABLEKS                       R4 R3 K26 ["__newindex"]
      519 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["FuzzyMath"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["List"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["Extent"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["FFlag"]
       36 CALL                             R3 1 1
       37 NEWTABLE                         R4 0 0
       39 DUPCLOSURE                       R5 K9 [PROTO_0]
       40 DUPCLOSURE                       R6 K10 [PROTO_1]
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 0
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          REF R7
       46 CAPTURE                          VAL R8
       47 NEWCLOSURE                       R9 P3
       48 CAPTURE                          REF R7
       49 CAPTURE                          VAL R8
       50 DUPCLOSURE                       R10 K11 [PROTO_4]
       51 CAPTURE                          VAL R10
       52 DUPCLOSURE                       R11 K12 [PROTO_5]
       53 CAPTURE                          VAL R10
       54 DUPCLOSURE                       R12 K13 [PROTO_6]
       55 DUPCLOSURE                       R13 K14 [PROTO_7]
       56 CAPTURE                          VAL R12
       57 DUPCLOSURE                       R14 K15 [PROTO_8]
       58 CAPTURE                          VAL R0
       59 SETGLOBAL                        R14 K16 ["forcePrimaryPart"]
       61 DUPCLOSURE                       R14 K17 [PROTO_9]
       62 DUPCLOSURE                       R15 K18 [PROTO_10]
       63 DUPCLOSURE                       R16 K19 [PROTO_11]
       64 CAPTURE                          VAL R16
       65 DUPCLOSURE                       R17 K20 [PROTO_12]
       66 DUPCLOSURE                       R18 K21 [PROTO_13]
       67 CAPTURE                          VAL R16
       68 CAPTURE                          VAL R17
       69 DUPCLOSURE                       R19 K22 [PROTO_73]
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R18
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R10
       78 SETGLOBAL                        R19 K23 ["createMetaPart"]
       80 NEWTABLE                         R19 2 0
       82 GETGLOBAL                        R20 K23 ["createMetaPart"]
       84 SETTABLEKS                       R20 R19 K24 ["convertToPart"]
       86 GETGLOBAL                        R20 K16 ["forcePrimaryPart"]
       88 SETTABLEKS                       R20 R19 K16 ["forcePrimaryPart"]
       90 CLOSEUPVALS                      R7
       91 RETURN                           R19 1
