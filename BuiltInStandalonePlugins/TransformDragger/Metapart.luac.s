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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["info"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["info"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["getCFrameAndSizeOfList"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["children"]
       12 GETGLOBAL                        R4 K3 ["createMetaPart"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K4 ["objects"]
       17 GETTABLEN                        R5 R6 1
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       21 CALL                             R2 2 2
       22 SETTABLEKS                       R2 R0 K6 ["oCFrame"]
       24 SETTABLEKS                       R3 R1 K7 ["oSize"]
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K0 ["info"]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K0 ["info"]
       32 GETTABLEKS                       R2 R2 K6 ["oCFrame"]
       34 NAMECALL                         R3 R2 K8 ["components"]
       36 CALL                             R3 1 12
       37 GETIMPORT                        R15 K10 [CFrame.new]
       39 LOADN                            R17 0
       40 JUMPIFNOTLT                      R17 R3 ; [+9]
       42 MULK                             R19 R3 K11 [1000000]
       43 SUBK                             R18 R19 K12 [0.5]
       44 FASTCALL1                        MATH_CEIL R18 ; [+2]
       45 GETIMPORT                        R17 K15 [math.ceil]
       47 CALL                             R17 1 1
       48 DIVK                             R16 R17 K11 [1000000]
       49 JUMPIF                           R16 ; [+7]
       50 MULK                             R19 R3 K11 [1000000]
       51 ADDK                             R18 R19 K12 [0.5]
       52 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       53 GETIMPORT                        R17 K17 [math.floor]
       55 CALL                             R17 1 1
       56 DIVK                             R16 R17 K11 [1000000]
       57 LOADN                            R18 0
       58 JUMPIFNOTLT                      R18 R4 ; [+9]
       60 MULK                             R20 R4 K11 [1000000]
       61 SUBK                             R19 R20 K12 [0.5]
       62 FASTCALL1                        MATH_CEIL R19 ; [+2]
       63 GETIMPORT                        R18 K15 [math.ceil]
       65 CALL                             R18 1 1
       66 DIVK                             R17 R18 K11 [1000000]
       67 JUMPIF                           R17 ; [+7]
       68 MULK                             R20 R4 K11 [1000000]
       69 ADDK                             R19 R20 K12 [0.5]
       70 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       71 GETIMPORT                        R18 K17 [math.floor]
       73 CALL                             R18 1 1
       74 DIVK                             R17 R18 K11 [1000000]
       75 LOADN                            R19 0
       76 JUMPIFNOTLT                      R19 R5 ; [+9]
       78 MULK                             R21 R5 K11 [1000000]
       79 SUBK                             R20 R21 K12 [0.5]
       80 FASTCALL1                        MATH_CEIL R20 ; [+2]
       81 GETIMPORT                        R19 K15 [math.ceil]
       83 CALL                             R19 1 1
       84 DIVK                             R18 R19 K11 [1000000]
       85 JUMPIF                           R18 ; [+7]
       86 MULK                             R21 R5 K11 [1000000]
       87 ADDK                             R20 R21 K12 [0.5]
       88 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       89 GETIMPORT                        R19 K17 [math.floor]
       91 CALL                             R19 1 1
       92 DIVK                             R18 R19 K11 [1000000]
       93 MOVE                             R19 R6
       94 MOVE                             R20 R7
       95 MOVE                             R21 R8
       96 MOVE                             R22 R9
       97 MOVE                             R23 R10
       98 MOVE                             R24 R11
       99 MOVE                             R25 R12
      100 MOVE                             R26 R13
      101 MOVE                             R27 R14
      102 CALL                             R15 12 1
      103 MOVE                             R1 R15
      104 SETTABLEKS                       R1 R0 K6 ["oCFrame"]
      106 RETURN                           R0 0

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
       17 NAMECALL                         R5 R5 K1 ["GetTouchingParts"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K2 ["combineLists"]
       23 MOVE                             R7 R0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K3 ["filterOutItems"]
       27 MOVE                             R9 R1
       28 MOVE                             R10 R5
       29 CALL                             R8 2 -1
       30 CALL                             R6 -1 1
       31 MOVE                             R0 R6
       32 FORNLOOP                         R2
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K4 ["removeDuplicates"]
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
       11 JUMPIF                           R2 ; [+106]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["info"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["info"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["getCFrameAndSizeOfList"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["children"]
       24 GETGLOBAL                        R6 K5 ["createMetaPart"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K6 ["objects"]
       29 GETTABLEN                        R7 R8 1
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R6 R6 K7 ["CFrame"]
       33 CALL                             R4 2 2
       34 SETTABLEKS                       R4 R2 K2 ["oCFrame"]
       36 SETTABLEKS                       R5 R3 K8 ["oSize"]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K0 ["info"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K0 ["info"]
       44 GETTABLEKS                       R4 R4 K2 ["oCFrame"]
       46 NAMECALL                         R5 R4 K9 ["components"]
       48 CALL                             R5 1 12
       49 GETIMPORT                        R17 K11 [CFrame.new]
       51 LOADN                            R19 0
       52 JUMPIFNOTLT                      R19 R5 ; [+9]
       54 MULK                             R21 R5 K12 [1000000]
       55 SUBK                             R20 R21 K13 [0.5]
       56 FASTCALL1                        MATH_CEIL R20 ; [+2]
       57 GETIMPORT                        R19 K16 [math.ceil]
       59 CALL                             R19 1 1
       60 DIVK                             R18 R19 K12 [1000000]
       61 JUMPIF                           R18 ; [+7]
       62 MULK                             R21 R5 K12 [1000000]
       63 ADDK                             R20 R21 K13 [0.5]
       64 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       65 GETIMPORT                        R19 K18 [math.floor]
       67 CALL                             R19 1 1
       68 DIVK                             R18 R19 K12 [1000000]
       69 LOADN                            R20 0
       70 JUMPIFNOTLT                      R20 R6 ; [+9]
       72 MULK                             R22 R6 K12 [1000000]
       73 SUBK                             R21 R22 K13 [0.5]
       74 FASTCALL1                        MATH_CEIL R21 ; [+2]
       75 GETIMPORT                        R20 K16 [math.ceil]
       77 CALL                             R20 1 1
       78 DIVK                             R19 R20 K12 [1000000]
       79 JUMPIF                           R19 ; [+7]
       80 MULK                             R22 R6 K12 [1000000]
       81 ADDK                             R21 R22 K13 [0.5]
       82 FASTCALL1                        MATH_FLOOR R21 ; [+2]
       83 GETIMPORT                        R20 K18 [math.floor]
       85 CALL                             R20 1 1
       86 DIVK                             R19 R20 K12 [1000000]
       87 LOADN                            R21 0
       88 JUMPIFNOTLT                      R21 R7 ; [+9]
       90 MULK                             R23 R7 K12 [1000000]
       91 SUBK                             R22 R23 K13 [0.5]
       92 FASTCALL1                        MATH_CEIL R22 ; [+2]
       93 GETIMPORT                        R21 K16 [math.ceil]
       95 CALL                             R21 1 1
       96 DIVK                             R20 R21 K12 [1000000]
       97 JUMPIF                           R20 ; [+7]
       98 MULK                             R23 R7 K12 [1000000]
       99 ADDK                             R22 R23 K13 [0.5]
      100 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      101 GETIMPORT                        R21 K18 [math.floor]
      103 CALL                             R21 1 1
      104 DIVK                             R20 R21 K12 [1000000]
      105 MOVE                             R21 R8
      106 MOVE                             R22 R9
      107 MOVE                             R23 R10
      108 MOVE                             R24 R11
      109 MOVE                             R25 R12
      110 MOVE                             R26 R13
      111 MOVE                             R27 R14
      112 MOVE                             R28 R15
      113 MOVE                             R29 R16
      114 CALL                             R17 12 1
      115 MOVE                             R3 R17
      116 SETTABLEKS                       R3 R2 K2 ["oCFrame"]
      118 GETUPVAL                         R2 0
      119 GETUPVAL                         R3 2
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K6 ["objects"]
      123 CALL                             R3 1 1
      124 SETTABLEKS                       R3 R2 K19 ["roots"]
      126 GETTABLEKS                       R3 R1 K20 ["p"]
      128 GETTABLEKS                       R4 R0 K20 ["p"]
      130 SUB                              R2 R3 R4
      131 GETUPVAL                         R3 3
      132 GETIMPORT                        R4 K11 [CFrame.new]
      134 MOVE                             R5 R2
      135 CALL                             R4 1 -1
      136 CALL                             R3 -1 0
      137 GETUPVAL                         R3 0
      138 GETTABLEKS                       R3 R3 K0 ["info"]
      140 GETUPVAL                         R5 0
      141 GETTABLEKS                       R5 R5 K0 ["info"]
      143 GETTABLEKS                       R5 R5 K21 ["pCFrame"]
      145 ADD                              R4 R5 R2
      146 SETTABLEKS                       R4 R3 K21 ["pCFrame"]
      148 GETUPVAL                         R3 0
      149 GETTABLEKS                       R3 R3 K0 ["info"]
      151 GETUPVAL                         R6 0
      152 GETTABLEKS                       R6 R6 K0 ["info"]
      154 GETTABLEKS                       R6 R6 K2 ["oCFrame"]
      156 ADD                              R5 R6 R2
      157 NAMECALL                         R6 R5 K9 ["components"]
      159 CALL                             R6 1 12
      160 GETIMPORT                        R18 K11 [CFrame.new]
      162 LOADN                            R20 0
      163 JUMPIFNOTLT                      R20 R6 ; [+9]
      165 MULK                             R22 R6 K12 [1000000]
      166 SUBK                             R21 R22 K13 [0.5]
      167 FASTCALL1                        MATH_CEIL R21 ; [+2]
      168 GETIMPORT                        R20 K16 [math.ceil]
      170 CALL                             R20 1 1
      171 DIVK                             R19 R20 K12 [1000000]
      172 JUMPIF                           R19 ; [+7]
      173 MULK                             R22 R6 K12 [1000000]
      174 ADDK                             R21 R22 K13 [0.5]
      175 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      176 GETIMPORT                        R20 K18 [math.floor]
      178 CALL                             R20 1 1
      179 DIVK                             R19 R20 K12 [1000000]
      180 LOADN                            R21 0
      181 JUMPIFNOTLT                      R21 R7 ; [+9]
      183 MULK                             R23 R7 K12 [1000000]
      184 SUBK                             R22 R23 K13 [0.5]
      185 FASTCALL1                        MATH_CEIL R22 ; [+2]
      186 GETIMPORT                        R21 K16 [math.ceil]
      188 CALL                             R21 1 1
      189 DIVK                             R20 R21 K12 [1000000]
      190 JUMPIF                           R20 ; [+7]
      191 MULK                             R23 R7 K12 [1000000]
      192 ADDK                             R22 R23 K13 [0.5]
      193 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      194 GETIMPORT                        R21 K18 [math.floor]
      196 CALL                             R21 1 1
      197 DIVK                             R20 R21 K12 [1000000]
      198 LOADN                            R22 0
      199 JUMPIFNOTLT                      R22 R8 ; [+9]
      201 MULK                             R24 R8 K12 [1000000]
      202 SUBK                             R23 R24 K13 [0.5]
      203 FASTCALL1                        MATH_CEIL R23 ; [+2]
      204 GETIMPORT                        R22 K16 [math.ceil]
      206 CALL                             R22 1 1
      207 DIVK                             R21 R22 K12 [1000000]
      208 JUMPIF                           R21 ; [+7]
      209 MULK                             R24 R8 K12 [1000000]
      210 ADDK                             R23 R24 K13 [0.5]
      211 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      212 GETIMPORT                        R22 K18 [math.floor]
      214 CALL                             R22 1 1
      215 DIVK                             R21 R22 K12 [1000000]
      216 MOVE                             R22 R9
      217 MOVE                             R23 R10
      218 MOVE                             R24 R11
      219 MOVE                             R25 R12
      220 MOVE                             R26 R13
      221 MOVE                             R27 R14
      222 MOVE                             R28 R15
      223 MOVE                             R29 R16
      224 MOVE                             R30 R17
      225 CALL                             R18 12 1
      226 MOVE                             R4 R18
      227 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
      229 GETUPVAL                         R3 0
      230 GETTABLEKS                       R3 R3 K0 ["info"]
      232 LOADB                            R4 0
      233 SETTABLEKS                       R4 R3 K1 ["expectingChanged"]
      235 RETURN                           R0 0

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
       54 JUMPIFNOTEQKS                    R1 K11 ["Size"] ; [+125]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K6 ["info"]
       59 GETTABLEKS                       R2 R2 K12 ["oSize"]
       61 JUMPIFNOT                        R2 ; [+6]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K6 ["info"]
       65 GETTABLEKS                       R2 R2 K12 ["oSize"]
       67 RETURN                           R2 1
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K6 ["info"]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K6 ["info"]
       74 GETUPVAL                         R4 1
       75 GETTABLEKS                       R4 R4 K13 ["getCFrameAndSizeOfList"]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K4 ["children"]
       80 GETGLOBAL                        R6 K14 ["createMetaPart"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K15 ["objects"]
       85 GETTABLEN                        R7 R8 1
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R6 R6 K16 ["CFrame"]
       89 CALL                             R4 2 2
       90 SETTABLEKS                       R4 R2 K17 ["oCFrame"]
       92 SETTABLEKS                       R5 R3 K12 ["oSize"]
       94 GETUPVAL                         R2 0
       95 GETTABLEKS                       R2 R2 K6 ["info"]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K6 ["info"]
      100 GETTABLEKS                       R4 R4 K17 ["oCFrame"]
      102 NAMECALL                         R5 R4 K18 ["components"]
      104 CALL                             R5 1 12
      105 GETIMPORT                        R17 K20 [CFrame.new]
      107 LOADN                            R19 0
      108 JUMPIFNOTLT                      R19 R5 ; [+9]
      110 MULK                             R21 R5 K21 [1000000]
      111 SUBK                             R20 R21 K22 [0.5]
      112 FASTCALL1                        MATH_CEIL R20 ; [+2]
      113 GETIMPORT                        R19 K25 [math.ceil]
      115 CALL                             R19 1 1
      116 DIVK                             R18 R19 K21 [1000000]
      117 JUMPIF                           R18 ; [+7]
      118 MULK                             R21 R5 K21 [1000000]
      119 ADDK                             R20 R21 K22 [0.5]
      120 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      121 GETIMPORT                        R19 K27 [math.floor]
      123 CALL                             R19 1 1
      124 DIVK                             R18 R19 K21 [1000000]
      125 LOADN                            R20 0
      126 JUMPIFNOTLT                      R20 R6 ; [+9]
      128 MULK                             R22 R6 K21 [1000000]
      129 SUBK                             R21 R22 K22 [0.5]
      130 FASTCALL1                        MATH_CEIL R21 ; [+2]
      131 GETIMPORT                        R20 K25 [math.ceil]
      133 CALL                             R20 1 1
      134 DIVK                             R19 R20 K21 [1000000]
      135 JUMPIF                           R19 ; [+7]
      136 MULK                             R22 R6 K21 [1000000]
      137 ADDK                             R21 R22 K22 [0.5]
      138 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      139 GETIMPORT                        R20 K27 [math.floor]
      141 CALL                             R20 1 1
      142 DIVK                             R19 R20 K21 [1000000]
      143 LOADN                            R21 0
      144 JUMPIFNOTLT                      R21 R7 ; [+9]
      146 MULK                             R23 R7 K21 [1000000]
      147 SUBK                             R22 R23 K22 [0.5]
      148 FASTCALL1                        MATH_CEIL R22 ; [+2]
      149 GETIMPORT                        R21 K25 [math.ceil]
      151 CALL                             R21 1 1
      152 DIVK                             R20 R21 K21 [1000000]
      153 JUMPIF                           R20 ; [+7]
      154 MULK                             R23 R7 K21 [1000000]
      155 ADDK                             R22 R23 K22 [0.5]
      156 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      157 GETIMPORT                        R21 K27 [math.floor]
      159 CALL                             R21 1 1
      160 DIVK                             R20 R21 K21 [1000000]
      161 MOVE                             R21 R8
      162 MOVE                             R22 R9
      163 MOVE                             R23 R10
      164 MOVE                             R24 R11
      165 MOVE                             R25 R12
      166 MOVE                             R26 R13
      167 MOVE                             R27 R14
      168 MOVE                             R28 R15
      169 MOVE                             R29 R16
      170 CALL                             R17 12 1
      171 MOVE                             R3 R17
      172 SETTABLEKS                       R3 R2 K17 ["oCFrame"]
      174 GETUPVAL                         R2 0
      175 GETTABLEKS                       R2 R2 K6 ["info"]
      177 GETTABLEKS                       R2 R2 K12 ["oSize"]
      179 RETURN                           R2 1
      180 JUMPIFNOTEQKS                    R1 K16 ["CFrame"] ; [+125]
      182 GETUPVAL                         R2 0
      183 GETTABLEKS                       R2 R2 K6 ["info"]
      185 GETTABLEKS                       R2 R2 K17 ["oCFrame"]
      187 JUMPIFNOT                        R2 ; [+6]
      188 GETUPVAL                         R2 0
      189 GETTABLEKS                       R2 R2 K6 ["info"]
      191 GETTABLEKS                       R2 R2 K17 ["oCFrame"]
      193 RETURN                           R2 1
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K6 ["info"]
      197 GETUPVAL                         R3 0
      198 GETTABLEKS                       R3 R3 K6 ["info"]
      200 GETUPVAL                         R4 1
      201 GETTABLEKS                       R4 R4 K13 ["getCFrameAndSizeOfList"]
      203 GETUPVAL                         R5 0
      204 GETTABLEKS                       R5 R5 K4 ["children"]
      206 GETGLOBAL                        R6 K14 ["createMetaPart"]
      208 GETUPVAL                         R8 0
      209 GETTABLEKS                       R8 R8 K15 ["objects"]
      211 GETTABLEN                        R7 R8 1
      212 CALL                             R6 1 1
      213 GETTABLEKS                       R6 R6 K16 ["CFrame"]
      215 CALL                             R4 2 2
      216 SETTABLEKS                       R4 R2 K17 ["oCFrame"]
      218 SETTABLEKS                       R5 R3 K12 ["oSize"]
      220 GETUPVAL                         R2 0
      221 GETTABLEKS                       R2 R2 K6 ["info"]
      223 GETUPVAL                         R4 0
      224 GETTABLEKS                       R4 R4 K6 ["info"]
      226 GETTABLEKS                       R4 R4 K17 ["oCFrame"]
      228 NAMECALL                         R5 R4 K18 ["components"]
      230 CALL                             R5 1 12
      231 GETIMPORT                        R17 K20 [CFrame.new]
      233 LOADN                            R19 0
      234 JUMPIFNOTLT                      R19 R5 ; [+9]
      236 MULK                             R21 R5 K21 [1000000]
      237 SUBK                             R20 R21 K22 [0.5]
      238 FASTCALL1                        MATH_CEIL R20 ; [+2]
      239 GETIMPORT                        R19 K25 [math.ceil]
      241 CALL                             R19 1 1
      242 DIVK                             R18 R19 K21 [1000000]
      243 JUMPIF                           R18 ; [+7]
      244 MULK                             R21 R5 K21 [1000000]
      245 ADDK                             R20 R21 K22 [0.5]
      246 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      247 GETIMPORT                        R19 K27 [math.floor]
      249 CALL                             R19 1 1
      250 DIVK                             R18 R19 K21 [1000000]
      251 LOADN                            R20 0
      252 JUMPIFNOTLT                      R20 R6 ; [+9]
      254 MULK                             R22 R6 K21 [1000000]
      255 SUBK                             R21 R22 K22 [0.5]
      256 FASTCALL1                        MATH_CEIL R21 ; [+2]
      257 GETIMPORT                        R20 K25 [math.ceil]
      259 CALL                             R20 1 1
      260 DIVK                             R19 R20 K21 [1000000]
      261 JUMPIF                           R19 ; [+7]
      262 MULK                             R22 R6 K21 [1000000]
      263 ADDK                             R21 R22 K22 [0.5]
      264 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      265 GETIMPORT                        R20 K27 [math.floor]
      267 CALL                             R20 1 1
      268 DIVK                             R19 R20 K21 [1000000]
      269 LOADN                            R21 0
      270 JUMPIFNOTLT                      R21 R7 ; [+9]
      272 MULK                             R23 R7 K21 [1000000]
      273 SUBK                             R22 R23 K22 [0.5]
      274 FASTCALL1                        MATH_CEIL R22 ; [+2]
      275 GETIMPORT                        R21 K25 [math.ceil]
      277 CALL                             R21 1 1
      278 DIVK                             R20 R21 K21 [1000000]
      279 JUMPIF                           R20 ; [+7]
      280 MULK                             R23 R7 K21 [1000000]
      281 ADDK                             R22 R23 K22 [0.5]
      282 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      283 GETIMPORT                        R21 K27 [math.floor]
      285 CALL                             R21 1 1
      286 DIVK                             R20 R21 K21 [1000000]
      287 MOVE                             R21 R8
      288 MOVE                             R22 R9
      289 MOVE                             R23 R10
      290 MOVE                             R24 R11
      291 MOVE                             R25 R12
      292 MOVE                             R26 R13
      293 MOVE                             R27 R14
      294 MOVE                             R28 R15
      295 MOVE                             R29 R16
      296 CALL                             R17 12 1
      297 MOVE                             R3 R17
      298 SETTABLEKS                       R3 R2 K17 ["oCFrame"]
      300 GETUPVAL                         R2 0
      301 GETTABLEKS                       R2 R2 K6 ["info"]
      303 GETTABLEKS                       R2 R2 K17 ["oCFrame"]
      305 RETURN                           R2 1
      306 JUMPIFNOTEQKS                    R1 K28 ["PlaneAlignedSize"] ; [+15]
      308 GETUPVAL                         R2 0
      309 GETTABLEKS                       R2 R2 K6 ["info"]
      311 GETTABLEKS                       R2 R2 K29 ["pSize"]
      313 JUMPIFNOT                        R2 ; [+6]
      314 GETUPVAL                         R2 0
      315 GETTABLEKS                       R2 R2 K6 ["info"]
      317 GETTABLEKS                       R2 R2 K29 ["pSize"]
      319 RETURN                           R2 1
      320 LOADNIL                          R2
      321 RETURN                           R2 1
      322 JUMPIFNOTEQKS                    R1 K30 ["PlaneAlignedCFrame"] ; [+15]
      324 GETUPVAL                         R2 0
      325 GETTABLEKS                       R2 R2 K6 ["info"]
      327 GETTABLEKS                       R2 R2 K31 ["pCFrame"]
      329 JUMPIFNOT                        R2 ; [+6]
      330 GETUPVAL                         R2 0
      331 GETTABLEKS                       R2 R2 K6 ["info"]
      333 GETTABLEKS                       R2 R2 K31 ["pCFrame"]
      335 RETURN                           R2 1
      336 LOADNIL                          R2
      337 RETURN                           R2 1
      338 JUMPIFNOTEQKS                    R1 K32 ["GetTouchingParts"] ; [+4]
      340 NEWCLOSURE                       R2 P4
      341 CAPTURE                          UPVAL U4
      342 RETURN                           R2 1
      343 JUMPIFNOTEQKS                    R1 K33 ["PlaneSet"] ; [+11]
      345 GETUPVAL                         R3 0
      346 GETTABLEKS                       R3 R3 K6 ["info"]
      348 GETTABLEKS                       R3 R3 K34 ["lastPlaneCFrame"]
      350 JUMPIFNOTEQKNIL                  R3 ; [+2]
      352 LOADB                            R2 0 +1
      353 LOADB                            R2 1
      354 RETURN                           R2 1
      355 RETURN                           R0 0

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
       33 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+284]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K1 ["info"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K1 ["info"]
       44 GETTABLEKS                       R3 R3 K9 ["oCFrame"]
       46 JUMPIF                           R3 ; [+106]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K1 ["info"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K1 ["info"]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K3 ["getCFrameAndSizeOfList"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K10 ["children"]
       59 GETGLOBAL                        R7 K11 ["createMetaPart"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K4 ["objects"]
       64 GETTABLEN                        R8 R9 1
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R7 R7 K7 ["CFrame"]
       68 CALL                             R5 2 2
       69 SETTABLEKS                       R5 R3 K9 ["oCFrame"]
       71 SETTABLEKS                       R6 R4 K12 ["oSize"]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K1 ["info"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R5 R5 K1 ["info"]
       79 GETTABLEKS                       R5 R5 K9 ["oCFrame"]
       81 NAMECALL                         R6 R5 K13 ["components"]
       83 CALL                             R6 1 12
       84 GETIMPORT                        R18 K15 [CFrame.new]
       86 LOADN                            R20 0
       87 JUMPIFNOTLT                      R20 R6 ; [+9]
       89 MULK                             R22 R6 K16 [1000000]
       90 SUBK                             R21 R22 K17 [0.5]
       91 FASTCALL1                        MATH_CEIL R21 ; [+2]
       92 GETIMPORT                        R20 K20 [math.ceil]
       94 CALL                             R20 1 1
       95 DIVK                             R19 R20 K16 [1000000]
       96 JUMPIF                           R19 ; [+7]
       97 MULK                             R22 R6 K16 [1000000]
       98 ADDK                             R21 R22 K17 [0.5]
       99 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      100 GETIMPORT                        R20 K22 [math.floor]
      102 CALL                             R20 1 1
      103 DIVK                             R19 R20 K16 [1000000]
      104 LOADN                            R21 0
      105 JUMPIFNOTLT                      R21 R7 ; [+9]
      107 MULK                             R23 R7 K16 [1000000]
      108 SUBK                             R22 R23 K17 [0.5]
      109 FASTCALL1                        MATH_CEIL R22 ; [+2]
      110 GETIMPORT                        R21 K20 [math.ceil]
      112 CALL                             R21 1 1
      113 DIVK                             R20 R21 K16 [1000000]
      114 JUMPIF                           R20 ; [+7]
      115 MULK                             R23 R7 K16 [1000000]
      116 ADDK                             R22 R23 K17 [0.5]
      117 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      118 GETIMPORT                        R21 K22 [math.floor]
      120 CALL                             R21 1 1
      121 DIVK                             R20 R21 K16 [1000000]
      122 LOADN                            R22 0
      123 JUMPIFNOTLT                      R22 R8 ; [+9]
      125 MULK                             R24 R8 K16 [1000000]
      126 SUBK                             R23 R24 K17 [0.5]
      127 FASTCALL1                        MATH_CEIL R23 ; [+2]
      128 GETIMPORT                        R22 K20 [math.ceil]
      130 CALL                             R22 1 1
      131 DIVK                             R21 R22 K16 [1000000]
      132 JUMPIF                           R21 ; [+7]
      133 MULK                             R24 R8 K16 [1000000]
      134 ADDK                             R23 R24 K17 [0.5]
      135 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      136 GETIMPORT                        R22 K22 [math.floor]
      138 CALL                             R22 1 1
      139 DIVK                             R21 R22 K16 [1000000]
      140 MOVE                             R22 R9
      141 MOVE                             R23 R10
      142 MOVE                             R24 R11
      143 MOVE                             R25 R12
      144 MOVE                             R26 R13
      145 MOVE                             R27 R14
      146 MOVE                             R28 R15
      147 MOVE                             R29 R16
      148 MOVE                             R30 R17
      149 CALL                             R18 12 1
      150 MOVE                             R4 R18
      151 SETTABLEKS                       R4 R3 K9 ["oCFrame"]
      153 GETUPVAL                         R3 0
      154 GETUPVAL                         R4 2
      155 GETUPVAL                         R5 0
      156 GETTABLEKS                       R5 R5 K4 ["objects"]
      158 CALL                             R4 1 1
      159 SETTABLEKS                       R4 R3 K23 ["roots"]
      161 GETUPVAL                         R4 0
      162 GETTABLEKS                       R4 R4 K1 ["info"]
      164 GETTABLEKS                       R4 R4 K9 ["oCFrame"]
      166 NAMECALL                         R4 R4 K24 ["Inverse"]
      168 CALL                             R4 1 1
      169 MUL                              R3 R2 R4
      170 GETUPVAL                         R4 3
      171 MOVE                             R5 R3
      172 CALL                             R4 1 0
      173 GETUPVAL                         R5 0
      174 GETTABLEKS                       R5 R5 K1 ["info"]
      176 GETTABLEKS                       R5 R5 K9 ["oCFrame"]
      178 GETUPVAL                         R6 0
      179 GETTABLEKS                       R6 R6 K1 ["info"]
      181 GETTABLEKS                       R6 R6 K9 ["oCFrame"]
      183 GETTABLEKS                       R6 R6 K25 ["p"]
      185 SUB                              R4 R5 R6
      186 GETTABLEKS                       R6 R2 K25 ["p"]
      188 SUB                              R5 R2 R6
      189 JUMPIFEQ                         R4 R5 ; [+20]
      191 GETUPVAL                         R4 0
      192 GETTABLEKS                       R4 R4 K1 ["info"]
      194 LOADNIL                          R5
      195 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      197 GETUPVAL                         R4 0
      198 GETTABLEKS                       R4 R4 K1 ["info"]
      200 LOADNIL                          R5
      201 SETTABLEKS                       R5 R4 K6 ["pSize"]
      203 GETUPVAL                         R4 0
      204 GETTABLEKS                       R4 R4 K1 ["info"]
      206 LOADNIL                          R5
      207 SETTABLEKS                       R5 R4 K2 ["lastPlaneCFrame"]
      209 JUMP                             ; [+27]
      210 GETUPVAL                         R4 0
      211 GETTABLEKS                       R4 R4 K1 ["info"]
      213 GETTABLEKS                       R4 R4 K5 ["pCFrame"]
      215 JUMPIFNOT                        R4 ; [+21]
      216 GETUPVAL                         R4 0
      217 GETTABLEKS                       R4 R4 K1 ["info"]
      219 GETUPVAL                         R7 0
      220 GETTABLEKS                       R7 R7 K1 ["info"]
      222 GETTABLEKS                       R7 R7 K5 ["pCFrame"]
      224 GETUPVAL                         R8 0
      225 GETTABLEKS                       R8 R8 K1 ["info"]
      227 GETTABLEKS                       R8 R8 K9 ["oCFrame"]
      229 GETTABLEKS                       R8 R8 K25 ["p"]
      231 SUB                              R6 R7 R8
      232 GETTABLEKS                       R7 R2 K25 ["p"]
      234 ADD                              R5 R6 R7
      235 SETTABLEKS                       R5 R4 K5 ["pCFrame"]
      237 GETUPVAL                         R4 0
      238 GETTABLEKS                       R4 R4 K1 ["info"]
      240 NAMECALL                         R6 R2 K13 ["components"]
      242 CALL                             R6 1 12
      243 GETIMPORT                        R18 K15 [CFrame.new]
      245 LOADN                            R20 0
      246 JUMPIFNOTLT                      R20 R6 ; [+9]
      248 MULK                             R22 R6 K16 [1000000]
      249 SUBK                             R21 R22 K17 [0.5]
      250 FASTCALL1                        MATH_CEIL R21 ; [+2]
      251 GETIMPORT                        R20 K20 [math.ceil]
      253 CALL                             R20 1 1
      254 DIVK                             R19 R20 K16 [1000000]
      255 JUMPIF                           R19 ; [+7]
      256 MULK                             R22 R6 K16 [1000000]
      257 ADDK                             R21 R22 K17 [0.5]
      258 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      259 GETIMPORT                        R20 K22 [math.floor]
      261 CALL                             R20 1 1
      262 DIVK                             R19 R20 K16 [1000000]
      263 LOADN                            R21 0
      264 JUMPIFNOTLT                      R21 R7 ; [+9]
      266 MULK                             R23 R7 K16 [1000000]
      267 SUBK                             R22 R23 K17 [0.5]
      268 FASTCALL1                        MATH_CEIL R22 ; [+2]
      269 GETIMPORT                        R21 K20 [math.ceil]
      271 CALL                             R21 1 1
      272 DIVK                             R20 R21 K16 [1000000]
      273 JUMPIF                           R20 ; [+7]
      274 MULK                             R23 R7 K16 [1000000]
      275 ADDK                             R22 R23 K17 [0.5]
      276 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      277 GETIMPORT                        R21 K22 [math.floor]
      279 CALL                             R21 1 1
      280 DIVK                             R20 R21 K16 [1000000]
      281 LOADN                            R22 0
      282 JUMPIFNOTLT                      R22 R8 ; [+9]
      284 MULK                             R24 R8 K16 [1000000]
      285 SUBK                             R23 R24 K17 [0.5]
      286 FASTCALL1                        MATH_CEIL R23 ; [+2]
      287 GETIMPORT                        R22 K20 [math.ceil]
      289 CALL                             R22 1 1
      290 DIVK                             R21 R22 K16 [1000000]
      291 JUMPIF                           R21 ; [+7]
      292 MULK                             R24 R8 K16 [1000000]
      293 ADDK                             R23 R24 K17 [0.5]
      294 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      295 GETIMPORT                        R22 K22 [math.floor]
      297 CALL                             R22 1 1
      298 DIVK                             R21 R22 K16 [1000000]
      299 MOVE                             R22 R9
      300 MOVE                             R23 R10
      301 MOVE                             R24 R11
      302 MOVE                             R25 R12
      303 MOVE                             R26 R13
      304 MOVE                             R27 R14
      305 MOVE                             R28 R15
      306 MOVE                             R29 R16
      307 MOVE                             R30 R17
      308 CALL                             R18 12 1
      309 MOVE                             R5 R18
      310 SETTABLEKS                       R5 R4 K9 ["oCFrame"]
      312 GETUPVAL                         R4 0
      313 GETTABLEKS                       R4 R4 K1 ["info"]
      315 LOADB                            R5 0
      316 SETTABLEKS                       R5 R4 K8 ["expectingChanged"]
      318 RETURN                           R0 0

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
       12 NAMECALL                         R5 R5 K1 ["GetTouchingParts"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K2 ["combineLists"]
       18 MOVE                             R7 R1
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K3 ["filterOutItems"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R5
       24 CALL                             R8 2 -1
       25 CALL                             R6 -1 1
       26 MOVE                             R1 R6
       27 FORNLOOP                         R2
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K4 ["removeDuplicates"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 RETURN                           R1 1

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
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["object"]
        4 GETTABLEKS                       R1 R1 K1 ["PrimaryPart"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["object"]
       10 GETTABLEKS                       R1 R1 K1 ["PrimaryPart"]
       12 GETTABLEKS                       R0 R1 K2 ["CFrame"]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["children"]
       18 LENGTH                           R1 R2
       19 LOADN                            R2 0
       20 JUMPIFNOTLT                      R2 R1 ; [+8]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K3 ["children"]
       25 GETTABLEN                        R1 R2 1
       26 GETTABLEKS                       R0 R1 K2 ["CFrame"]
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R1 K5 [CFrame.new]
       31 CALL                             R1 0 1
       32 MOVE                             R0 R1
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K6 ["info"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K6 ["info"]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K7 ["getCFrameAndSizeOfList"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K3 ["children"]
       45 MOVE                             R5 R0
       46 CALL                             R3 2 2
       47 SETTABLEKS                       R3 R1 K8 ["oCFrame"]
       49 SETTABLEKS                       R4 R2 K9 ["oSize"]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K6 ["info"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K6 ["info"]
       57 GETTABLEKS                       R3 R3 K8 ["oCFrame"]
       59 NAMECALL                         R4 R3 K10 ["components"]
       61 CALL                             R4 1 12
       62 GETIMPORT                        R16 K5 [CFrame.new]
       64 LOADN                            R18 0
       65 JUMPIFNOTLT                      R18 R4 ; [+9]
       67 MULK                             R20 R4 K11 [1000000]
       68 SUBK                             R19 R20 K12 [0.5]
       69 FASTCALL1                        MATH_CEIL R19 ; [+2]
       70 GETIMPORT                        R18 K15 [math.ceil]
       72 CALL                             R18 1 1
       73 DIVK                             R17 R18 K11 [1000000]
       74 JUMPIF                           R17 ; [+7]
       75 MULK                             R20 R4 K11 [1000000]
       76 ADDK                             R19 R20 K12 [0.5]
       77 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       78 GETIMPORT                        R18 K17 [math.floor]
       80 CALL                             R18 1 1
       81 DIVK                             R17 R18 K11 [1000000]
       82 LOADN                            R19 0
       83 JUMPIFNOTLT                      R19 R5 ; [+9]
       85 MULK                             R21 R5 K11 [1000000]
       86 SUBK                             R20 R21 K12 [0.5]
       87 FASTCALL1                        MATH_CEIL R20 ; [+2]
       88 GETIMPORT                        R19 K15 [math.ceil]
       90 CALL                             R19 1 1
       91 DIVK                             R18 R19 K11 [1000000]
       92 JUMPIF                           R18 ; [+7]
       93 MULK                             R21 R5 K11 [1000000]
       94 ADDK                             R20 R21 K12 [0.5]
       95 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       96 GETIMPORT                        R19 K17 [math.floor]
       98 CALL                             R19 1 1
       99 DIVK                             R18 R19 K11 [1000000]
      100 LOADN                            R20 0
      101 JUMPIFNOTLT                      R20 R6 ; [+9]
      103 MULK                             R22 R6 K11 [1000000]
      104 SUBK                             R21 R22 K12 [0.5]
      105 FASTCALL1                        MATH_CEIL R21 ; [+2]
      106 GETIMPORT                        R20 K15 [math.ceil]
      108 CALL                             R20 1 1
      109 DIVK                             R19 R20 K11 [1000000]
      110 JUMPIF                           R19 ; [+7]
      111 MULK                             R22 R6 K11 [1000000]
      112 ADDK                             R21 R22 K12 [0.5]
      113 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      114 GETIMPORT                        R20 K17 [math.floor]
      116 CALL                             R20 1 1
      117 DIVK                             R19 R20 K11 [1000000]
      118 MOVE                             R20 R7
      119 MOVE                             R21 R8
      120 MOVE                             R22 R9
      121 MOVE                             R23 R10
      122 MOVE                             R24 R11
      123 MOVE                             R25 R12
      124 MOVE                             R26 R13
      125 MOVE                             R27 R14
      126 MOVE                             R28 R15
      127 CALL                             R16 12 1
      128 MOVE                             R2 R16
      129 SETTABLEKS                       R2 R1 K8 ["oCFrame"]
      131 RETURN                           R0 0

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
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["info"]
       50 GETTABLEKS                       R5 R5 K8 ["pCFrame"]
       52 ADD                              R4 R5 R2
       53 SETTABLEKS                       R4 R3 K8 ["pCFrame"]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K0 ["info"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K0 ["info"]
       61 GETTABLEKS                       R5 R5 K2 ["oCFrame"]
       63 ADD                              R4 R5 R2
       64 SETTABLEKS                       R4 R3 K2 ["oCFrame"]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K0 ["info"]
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
      398 JUMPIFNOTEQKS                    R1 K28 ["Size"] ; [+2]
      400 RETURN                           R0 0
      401 JUMPIFNOTEQKS                    R1 K29 ["Position"] ; [+41]
      403 GETUPVAL                         R3 0
      404 GETTABLEKS                       R3 R3 K1 ["info"]
      406 LOADB                            R4 1
      407 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      409 GETUPVAL                         R3 0
      410 GETTABLEKS                       R3 R3 K10 ["object"]
      412 NAMECALL                         R3 R3 K30 ["GetModelCFrame"]
      414 CALL                             R3 1 1
      415 GETTABLEKS                       R6 R3 K25 ["p"]
      417 SUB                              R5 R3 R6
      418 ADD                              R4 R5 R2
      419 NAMECALL                         R6 R3 K22 ["Inverse"]
      421 CALL                             R6 1 1
      422 MUL                              R5 R4 R6
      423 GETUPVAL                         R6 0
      424 GETTABLEKS                       R6 R6 K10 ["object"]
      426 GETUPVAL                         R9 0
      427 GETTABLEKS                       R9 R9 K10 ["object"]
      429 NAMECALL                         R9 R9 K23 ["GetPivot"]
      431 CALL                             R9 1 1
      432 MUL                              R8 R5 R9
      433 NAMECALL                         R6 R6 K24 ["PivotTo"]
      435 CALL                             R6 2 0
      436 GETUPVAL                         R6 0
      437 GETTABLEKS                       R6 R6 K1 ["info"]
      439 LOADB                            R7 0
      440 SETTABLEKS                       R7 R6 K8 ["expectingChanged"]
      442 RETURN                           R0 0
      443 GETUPVAL                         R3 0
      444 GETTABLEKS                       R3 R3 K1 ["info"]
      446 LOADB                            R4 1
      447 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      449 GETIMPORT                        R3 K32 [pcall]
      451 NEWCLOSURE                       R4 P1
      452 CAPTURE                          UPVAL U0
      453 CAPTURE                          VAL R1
      454 CALL                             R3 1 1
      455 JUMPIFNOT                        R3 ; [+4]
      456 GETUPVAL                         R3 0
      457 GETTABLEKS                       R3 R3 K10 ["object"]
      459 SETTABLE                         R2 R3 R1
      460 GETUPVAL                         R3 0
      461 GETTABLEKS                       R3 R3 K1 ["info"]
      463 LOADB                            R4 0
      464 SETTABLEKS                       R4 R3 K8 ["expectingChanged"]
      466 RETURN                           R0 0

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
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K2 ["info"]
       65 GETTABLEKS                       R5 R5 K11 ["pCFrame"]
       67 ADD                              R4 R5 R2
       68 SETTABLEKS                       R4 R3 K11 ["pCFrame"]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K2 ["info"]
       73 LOADB                            R4 0
       74 SETTABLEKS                       R4 R3 K3 ["expectingChanged"]
       76 RETURN                           R0 0

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
       29 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+129]
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
      143 CAPTURE                          UPVAL U4
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R9 R8 K25 ["__index"]
      149 GETTABLEKS                       R8 R2 K8 ["mt"]
      151 NEWCLOSURE                       R9 P6
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          UPVAL U1
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      158 RETURN                           R2 1
      159 LOADK                            R4 K27 ["Model"]
      160 NAMECALL                         R2 R0 K28 ["IsA"]
      162 CALL                             R2 2 1
      163 JUMPIFNOT                        R2 ; [+157]
      164 LOADK                            R4 K29 ["Workspace"]
      165 NAMECALL                         R2 R0 K28 ["IsA"]
      167 CALL                             R2 2 1
      168 JUMPIF                           R2 ; [+152]
      169 JUMPIFEQKNIL                     R0 ; [+8]
      171 FASTCALL1                        TYPEOF R0 ; [+3]
      172 MOVE                             R4 R0
      173 GETIMPORT                        R3 K1 [typeof]
      175 CALL                             R3 1 1
      176 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      178 LOADB                            R2 0
      179 JUMP                             ; [+6]
      180 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      182 JUMPIFEQKB                       R3 TRUE ; [+2]
      184 LOADB                            R2 0 +1
      185 LOADB                            R2 1
      186 JUMPIFNOT                        R2 ; [+1]
      187 RETURN                           R0 1
      188 NEWTABLE                         R2 8 0
      190 SETTABLEKS                       R0 R2 K30 ["object"]
      192 NEWTABLE                         R3 0 0
      194 SETTABLEKS                       R3 R2 K8 ["mt"]
      196 NEWTABLE                         R3 0 0
      198 SETTABLEKS                       R3 R2 K9 ["info"]
      200 GETTABLEKS                       R3 R2 K9 ["info"]
      202 LOADNIL                          R4
      203 SETTABLEKS                       R4 R3 K10 ["oCFrame"]
      205 GETTABLEKS                       R3 R2 K9 ["info"]
      207 LOADNIL                          R4
      208 SETTABLEKS                       R4 R3 K11 ["oSize"]
      210 GETTABLEKS                       R3 R2 K9 ["info"]
      212 LOADNIL                          R4
      213 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      215 GETTABLEKS                       R3 R2 K9 ["info"]
      217 LOADNIL                          R4
      218 SETTABLEKS                       R4 R3 K13 ["pSize"]
      220 GETTABLEKS                       R3 R2 K9 ["info"]
      222 LOADNIL                          R4
      223 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      225 GETUPVAL                         R3 0
      226 NEWTABLE                         R4 0 1
      228 GETTABLEKS                       R5 R2 K30 ["object"]
      230 SETLIST                          R4 R5 1 [1]
      232 CALL                             R3 1 1
      233 SETTABLEKS                       R3 R2 K15 ["children"]
      235 GETUPVAL                         R3 1
      236 NEWTABLE                         R4 0 1
      238 GETTABLEKS                       R5 R2 K30 ["object"]
      240 SETLIST                          R4 R5 1 [1]
      242 CALL                             R3 1 1
      243 SETTABLEKS                       R3 R2 K16 ["roots"]
      245 GETUPVAL                         R3 2
      246 NEWTABLE                         R4 0 1
      248 GETTABLEKS                       R5 R2 K30 ["object"]
      250 SETLIST                          R4 R5 1 [1]
      252 CALL                             R3 1 1
      253 SETTABLEKS                       R3 R2 K17 ["models"]
      255 LOADB                            R3 1
      256 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      258 GETTABLEKS                       R3 R2 K9 ["info"]
      260 LOADB                            R4 0
      261 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      263 GETTABLEKS                       R3 R2 K9 ["info"]
      265 LOADB                            R4 0
      266 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      268 NEWCLOSURE                       R3 P7
      269 CAPTURE                          VAL R2
      270 JUMPIFNOT                        R1 ; [+6]
      271 MOVE                             R4 R3
      272 GETTABLEKS                       R5 R2 K15 ["children"]
      274 CALL                             R4 1 1
      275 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      277 GETTABLEKS                       R6 R2 K8 ["mt"]
      279 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      281 MOVE                             R5 R2
      282 GETIMPORT                        R4 K24 [setmetatable]
      284 CALL                             R4 2 0
      285 NEWCLOSURE                       R4 P8
      286 CAPTURE                          VAL R2
      287 CAPTURE                          UPVAL U1
      288 NEWCLOSURE                       R5 P9
      289 CAPTURE                          VAL R2
      290 NEWCLOSURE                       R6 P10
      291 CAPTURE                          UPVAL U6
      292 CAPTURE                          VAL R2
      293 CAPTURE                          UPVAL U5
      294 GETTABLEKS                       R7 R2 K8 ["mt"]
      296 DUPCLOSURE                       R8 K31 [PROTO_33]
      297 SETTABLEKS                       R8 R7 K32 ["__eq"]
      299 NEWCLOSURE                       R7 P12
      300 CAPTURE                          VAL R2
      301 CAPTURE                          UPVAL U4
      302 GETTABLEKS                       R8 R2 K8 ["mt"]
      304 NEWCLOSURE                       R9 P13
      305 CAPTURE                          VAL R2
      306 CAPTURE                          VAL R7
      307 CAPTURE                          UPVAL U1
      308 CAPTURE                          VAL R6
      309 SETTABLEKS                       R9 R8 K25 ["__index"]
      311 GETTABLEKS                       R8 R2 K8 ["mt"]
      313 NEWCLOSURE                       R9 P14
      314 CAPTURE                          VAL R2
      315 CAPTURE                          UPVAL U4
      316 CAPTURE                          VAL R7
      317 CAPTURE                          UPVAL U1
      318 SETTABLEKS                       R9 R8 K26 ["__newindex"]
      320 RETURN                           R2 1
      321 LOADK                            R4 K33 ["BasePart"]
      322 NAMECALL                         R2 R0 K28 ["IsA"]
      324 CALL                             R2 2 1
      325 JUMPIFNOT                        R2 ; [+128]
      326 JUMPIFEQKNIL                     R0 ; [+8]
      328 FASTCALL1                        TYPEOF R0 ; [+3]
      329 MOVE                             R4 R0
      330 GETIMPORT                        R3 K1 [typeof]
      332 CALL                             R3 1 1
      333 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      335 LOADB                            R2 0
      336 JUMP                             ; [+6]
      337 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      339 JUMPIFEQKB                       R3 TRUE ; [+2]
      341 LOADB                            R2 0 +1
      342 LOADB                            R2 1
      343 JUMPIFNOT                        R2 ; [+1]
      344 RETURN                           R0 1
      345 NEWTABLE                         R2 8 0
      347 SETTABLEKS                       R0 R2 K30 ["object"]
      349 NEWTABLE                         R3 0 0
      351 SETTABLEKS                       R3 R2 K8 ["mt"]
      353 NEWTABLE                         R3 0 0
      355 SETTABLEKS                       R3 R2 K9 ["info"]
      357 GETTABLEKS                       R3 R2 K9 ["info"]
      359 LOADNIL                          R4
      360 SETTABLEKS                       R4 R3 K12 ["pCFrame"]
      362 GETTABLEKS                       R3 R2 K9 ["info"]
      364 LOADNIL                          R4
      365 SETTABLEKS                       R4 R3 K13 ["pSize"]
      367 GETTABLEKS                       R3 R2 K9 ["info"]
      369 LOADNIL                          R4
      370 SETTABLEKS                       R4 R3 K14 ["lastPlaneCFrame"]
      372 NEWTABLE                         R3 0 1
      374 MOVE                             R4 R0
      375 SETLIST                          R3 R4 1 [1]
      377 SETTABLEKS                       R3 R2 K15 ["children"]
      379 GETUPVAL                         R3 1
      380 NEWTABLE                         R4 0 1
      382 GETTABLEKS                       R5 R2 K30 ["object"]
      384 SETLIST                          R4 R5 1 [1]
      386 CALL                             R3 1 1
      387 SETTABLEKS                       R3 R2 K16 ["roots"]
      389 GETUPVAL                         R3 2
      390 NEWTABLE                         R4 0 1
      392 GETTABLEKS                       R5 R2 K30 ["object"]
      394 SETLIST                          R4 R5 1 [1]
      396 CALL                             R3 1 1
      397 SETTABLEKS                       R3 R2 K17 ["models"]
      399 LOADB                            R3 1
      400 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      402 GETTABLEKS                       R3 R2 K9 ["info"]
      404 LOADB                            R4 0
      405 SETTABLEKS                       R4 R3 K20 ["expectingChanged"]
      407 GETTABLEKS                       R3 R2 K9 ["info"]
      409 LOADB                            R4 0
      410 SETTABLEKS                       R4 R3 K21 ["updateRequired"]
      412 NEWCLOSURE                       R3 P15
      413 CAPTURE                          VAL R2
      414 JUMPIFNOT                        R1 ; [+6]
      415 MOVE                             R4 R3
      416 GETTABLEKS                       R5 R2 K15 ["children"]
      418 CALL                             R4 1 1
      419 SETTABLEKS                       R4 R2 K22 ["subscribe"]
      421 NEWCLOSURE                       R4 P16
      422 CAPTURE                          VAL R2
      423 CAPTURE                          UPVAL U1
      424 GETTABLEKS                       R7 R2 K8 ["mt"]
      426 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
      428 MOVE                             R6 R2
      429 GETIMPORT                        R5 K24 [setmetatable]
      431 CALL                             R5 2 0
      432 NEWCLOSURE                       R5 P17
      433 CAPTURE                          VAL R2
      434 GETTABLEKS                       R6 R2 K8 ["mt"]
      436 DUPCLOSURE                       R7 K34 [PROTO_54]
      437 SETTABLEKS                       R7 R6 K32 ["__eq"]
      439 GETTABLEKS                       R6 R2 K8 ["mt"]
      441 NEWCLOSURE                       R7 P19
      442 CAPTURE                          VAL R2
      443 CAPTURE                          UPVAL U1
      444 SETTABLEKS                       R7 R6 K25 ["__index"]
      446 GETTABLEKS                       R6 R2 K8 ["mt"]
      448 NEWCLOSURE                       R7 P20
      449 CAPTURE                          VAL R2
      450 CAPTURE                          UPVAL U4
      451 SETTABLEKS                       R7 R6 K26 ["__newindex"]
      453 RETURN                           R2 1
      454 JUMPIFEQKNIL                     R0 ; [+8]
      456 FASTCALL1                        TYPEOF R0 ; [+3]
      457 MOVE                             R4 R0
      458 GETIMPORT                        R3 K1 [typeof]
      460 CALL                             R3 1 1
      461 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
      463 LOADB                            R2 0
      464 JUMP                             ; [+6]
      465 GETTABLEKS                       R3 R0 K3 ["IsWrapped"]
      467 JUMPIFEQKB                       R3 TRUE ; [+2]
      469 LOADB                            R2 0 +1
      470 LOADB                            R2 1
      471 JUMPIFNOT                        R2 ; [+1]
      472 RETURN                           R0 1
      473 NEWTABLE                         R2 4 0
      475 SETTABLEKS                       R0 R2 K30 ["object"]
      477 NEWTABLE                         R3 0 0
      479 SETTABLEKS                       R3 R2 K8 ["mt"]
      481 NEWTABLE                         R3 0 0
      483 SETTABLEKS                       R3 R2 K9 ["info"]
      485 LOADB                            R3 1
      486 SETTABLEKS                       R3 R2 K3 ["IsWrapped"]
      488 GETTABLEKS                       R5 R2 K8 ["mt"]
      490 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      492 MOVE                             R4 R2
      493 GETIMPORT                        R3 K24 [setmetatable]
      495 CALL                             R3 2 0
      496 GETTABLEKS                       R3 R2 K8 ["mt"]
      498 DUPCLOSURE                       R4 K35 [PROTO_66]
      499 SETTABLEKS                       R4 R3 K32 ["__eq"]
      501 GETTABLEKS                       R3 R2 K8 ["mt"]
      503 NEWCLOSURE                       R4 P22
      504 CAPTURE                          VAL R2
      505 SETTABLEKS                       R4 R3 K25 ["__index"]
      507 GETTABLEKS                       R3 R2 K8 ["mt"]
      509 NEWCLOSURE                       R4 P23
      510 CAPTURE                          VAL R2
      511 SETTABLEKS                       R4 R3 K26 ["__newindex"]
      513 RETURN                           R2 1

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
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["FFlag"]
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
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R10
       77 SETGLOBAL                        R19 K23 ["createMetaPart"]
       79 NEWTABLE                         R19 2 0
       81 GETGLOBAL                        R20 K23 ["createMetaPart"]
       83 SETTABLEKS                       R20 R19 K24 ["convertToPart"]
       85 GETGLOBAL                        R20 K16 ["forcePrimaryPart"]
       87 SETTABLEKS                       R20 R19 K16 ["forcePrimaryPart"]
       89 CLOSEUPVALS                      R7
       90 RETURN                           R19 1
