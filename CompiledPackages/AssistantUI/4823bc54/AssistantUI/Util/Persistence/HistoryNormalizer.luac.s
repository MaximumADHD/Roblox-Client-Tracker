PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K2 [pcall]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["JSONDecode"]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 CALL                             R1 3 2
       13 JUMPIFNOT                        R1 ; [+2]
       14 MOVE                             R3 R2
       15 RETURN                           R3 1
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["metadata"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [pcall]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R2
       14 CALL                             R3 3 2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+4]
       26 GETTABLEKS                       R2 R1 K8 ["historyWriter"]
       28 RETURN                           R2 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [pcall]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R2
       14 CALL                             R3 3 2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+4]
       26 GETTABLEKS                       R2 R1 K8 ["type"]
       28 RETURN                           R2 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["role"]
        2 JUMPIFEQKS                       R1 K1 ["user"] ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K2 ["contents"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R10 R7 K3 ["mcpContent"]
       18 JUMPIFNOT                        R10 ; [+2]
       19 JUMPIFNOTEQKS                    R10 K4 [""] ; [+3]
       21 LOADNIL                          R9
       22 JUMP                             ; [+12]
       23 GETIMPORT                        R11 K6 [pcall]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K7 ["JSONDecode"]
       28 GETUPVAL                         R13 0
       29 MOVE                             R14 R10
       30 CALL                             R11 3 2
       31 JUMPIFNOT                        R11 ; [+2]
       32 MOVE                             R9 R12
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 FASTCALL1                        TYPEOF R9 ; [+3]
       36 MOVE                             R11 R9
       37 GETIMPORT                        R10 K9 [typeof]
       39 CALL                             R10 1 1
       40 JUMPIFNOTEQKS                    R10 K10 ["table"] ; [+4]
       42 GETTABLEKS                       R8 R9 K11 ["type"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 JUMPIFNOTEQKS                    R8 K12 ["tool_result"] ; [+3]
       48 LOADB                            R1 1
       49 JUMP                             ; [+5]
       50 JUMPIFEQKS                       R8 K13 ["text"] ; [+3]
       52 JUMPIFNOTEQKS                    R8 K14 ["image"] ; [+2]
       54 LOADB                            R2 1
       55 FORGLOOP                         R3 2 ; [-40]
       57 MOVE                             R3 R1
       58 JUMPIFNOT                        R3 ; [+1]
       59 NOT                              R3 R2
       60 RETURN                           R3 1

PROTO_4:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R9 R6 K0 ["metadata"]
        7 JUMPIFNOT                        R9 ; [+2]
        8 JUMPIFNOTEQKS                    R9 K1 [""] ; [+3]
       10 LOADNIL                          R8
       11 JUMP                             ; [+12]
       12 GETIMPORT                        R10 K3 [pcall]
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R11 R11 K4 ["JSONDecode"]
       17 GETUPVAL                         R12 0
       18 MOVE                             R13 R9
       19 CALL                             R10 3 2
       20 JUMPIFNOT                        R10 ; [+2]
       21 MOVE                             R8 R11
       22 JUMP                             ; [+1]
       23 LOADNIL                          R8
       24 FASTCALL1                        TYPEOF R8 ; [+3]
       25 MOVE                             R10 R8
       26 GETIMPORT                        R9 K6 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+4]
       31 GETTABLEKS                       R7 R8 K8 ["historyWriter"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 JUMPIFEQKS                       R7 K9 ["acp-llm-v1"] ; [+5]
       37 GETUPVAL                         R7 1
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 JUMPIFNOT                        R7 ; [+2]
       41 LOADB                            R7 1
       42 RETURN                           R7 1
       43 GETTABLEKS                       R7 R6 K10 ["role"]
       45 JUMPIFNOTEQKS                    R7 K11 ["assistant"] ; [+13]
       47 JUMPIFNOTEQKS                    R1 K11 ["assistant"] ; [+11]
       49 GETTABLEKS                       R7 R6 K0 ["metadata"]
       51 JUMPIFEQKNIL                     R7 ; [+5]
       53 GETTABLEKS                       R7 R6 K0 ["metadata"]
       55 JUMPIFNOTEQKS                    R7 K12 ["{}"] ; [+3]
       57 LOADB                            R7 1
       58 RETURN                           R7 1
       59 GETTABLEKS                       R1 R6 K10 ["role"]
       61 FORGLOOP                         R2 2 ; [-57]
       63 LOADB                            R2 0
       64 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [pcall]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R2
       14 CALL                             R3 3 2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+8]
       26 GETTABLEKS                       R3 R1 K8 ["type"]
       28 JUMPIFNOTEQKS                    R3 K9 ["tool_result"] ; [+4]
       30 GETTABLEKS                       R2 R1 K10 ["toolUseId"]
       32 RETURN                           R2 1
       33 LOADNIL                          R2
       34 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [pcall]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R2
       14 CALL                             R3 3 2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+8]
       26 GETTABLEKS                       R3 R1 K8 ["type"]
       28 JUMPIFNOTEQKS                    R3 K9 ["tool_use"] ; [+4]
       30 GETTABLEKS                       R2 R1 K10 ["id"]
       32 RETURN                           R2 1
       33 LOADNIL                          R2
       34 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [pcall]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R2
       14 CALL                             R3 3 2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K6 [typeof]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K7 ["table"] ; [+13]
       26 GETTABLEKS                       R2 R1 K8 ["type"]
       28 JUMPIFNOTEQKS                    R2 K9 ["tool_use"] ; [+9]
       30 GETTABLEKS                       R3 R1 K10 ["name"]
       32 FASTCALL1                        TYPEOF R3 ; [+2]
       33 GETIMPORT                        R2 K6 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFEQKS                       R2 K11 ["string"] ; [+2]
       38 RETURN                           R0 1
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K12 ["stripPrefix"]
       42 GETTABLEKS                       R3 R1 K10 ["name"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R1 K10 ["name"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+2]
       49 RETURN                           R0 1
       50 GETIMPORT                        R3 K14 [table.clone]
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 GETIMPORT                        R4 K14 [table.clone]
       56 MOVE                             R5 R1
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R2 R4 K10 ["name"]
       60 GETUPVAL                         R5 0
       61 MOVE                             R7 R4
       62 NAMECALL                         R5 R5 K15 ["JSONEncode"]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R3 K0 ["mcpContent"]
       67 RETURN                           R3 1

PROTO_8:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R1 R2 K3 ["contents"]
        6 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K0 [0] ; [+12]
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K3 [table.clear]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K3 [table.clear]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 GETIMPORT                        R2 K5 [table.clone]
       20 GETUPVAL                         R3 1
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K5 [table.clone]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R2 R3 K6 ["contents"]
       28 MOVE                             R0 R3
       29 GETTABLEKS                       R1 R0 K6 ["contents"]
       31 LOADNIL                          R2
       32 LOADNIL                          R3
       33 FORGPREP                         R1
       34 GETIMPORT                        R6 K5 [table.clone]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 1
       38 MOVE                             R5 R6
       39 SETTABLEKS                       R4 R5 K7 ["sequenceNumber"]
       41 GETTABLEKS                       R6 R0 K6 ["contents"]
       43 SETTABLE                         R5 R6 R4
       44 FORGLOOP                         R1 2 ; [-11]
       46 GETUPVAL                         R2 3
       47 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       49 MOVE                             R3 R0
       50 GETIMPORT                        R1 K9 [table.insert]
       52 CALL                             R1 2 0
       53 LOADNIL                          R1
       54 SETUPVAL                         R1 0
       55 GETIMPORT                        R1 K3 [table.clear]
       57 GETUPVAL                         R2 1
       58 CALL                             R1 1 0
       59 GETIMPORT                        R1 K3 [table.clear]
       61 GETUPVAL                         R2 2
       62 CALL                             R1 1 0
       63 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K0 ["contents"]
       13 JUMPIF                           R7 ; [+2]
       14 NEWTABLE                         R7 0 0
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R14 R11 K1 ["mcpContent"]
       21 JUMPIFNOT                        R14 ; [+2]
       22 JUMPIFNOTEQKS                    R14 K2 [""] ; [+3]
       24 LOADNIL                          R13
       25 JUMP                             ; [+12]
       26 GETIMPORT                        R15 K4 [pcall]
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R16 R16 K5 ["JSONDecode"]
       31 GETUPVAL                         R17 1
       32 MOVE                             R18 R14
       33 CALL                             R15 3 2
       34 JUMPIFNOT                        R15 ; [+2]
       35 MOVE                             R13 R16
       36 JUMP                             ; [+1]
       37 LOADNIL                          R13
       38 FASTCALL1                        TYPEOF R13 ; [+3]
       39 MOVE                             R15 R13
       40 GETIMPORT                        R14 K7 [typeof]
       42 CALL                             R14 1 1
       43 JUMPIFNOTEQKS                    R14 K8 ["table"] ; [+8]
       45 GETTABLEKS                       R14 R13 K9 ["type"]
       47 JUMPIFNOTEQKS                    R14 K10 ["tool_result"] ; [+4]
       49 GETTABLEKS                       R12 R13 K11 ["toolUseId"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R12
       53 JUMPIFNOT                        R12 ; [+1]
       54 SETTABLE                         R11 R1 R12
       55 FORGLOOP                         R7 2 ; [-37]
       57 FORGLOOP                         R2 2 ; [-47]
       59 NEWTABLE                         R2 0 0
       61 LOADNIL                          R3
       62 NEWTABLE                         R4 0 0
       64 NEWTABLE                         R5 0 0
       66 NEWCLOSURE                       R6 P0
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 MOVE                             R7 R0
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 GETTABLEKS                       R12 R11 K12 ["role"]
       77 JUMPIFNOTEQKS                    R12 K13 ["user"] ; [+72]
       79 NEWTABLE                         R12 0 0
       81 GETTABLEKS                       R13 R11 K0 ["contents"]
       83 JUMPIF                           R13 ; [+2]
       84 NEWTABLE                         R13 0 0
       86 LOADNIL                          R14
       87 LOADNIL                          R15
       88 FORGPREP                         R13
       89 GETTABLEKS                       R20 R17 K1 ["mcpContent"]
       91 JUMPIFNOT                        R20 ; [+2]
       92 JUMPIFNOTEQKS                    R20 K2 [""] ; [+3]
       94 LOADNIL                          R19
       95 JUMP                             ; [+12]
       96 GETIMPORT                        R21 K4 [pcall]
       98 GETUPVAL                         R22 1
       99 GETTABLEKS                       R22 R22 K5 ["JSONDecode"]
      101 GETUPVAL                         R23 1
      102 MOVE                             R24 R20
      103 CALL                             R21 3 2
      104 JUMPIFNOT                        R21 ; [+2]
      105 MOVE                             R19 R22
      106 JUMP                             ; [+1]
      107 LOADNIL                          R19
      108 FASTCALL1                        TYPEOF R19 ; [+3]
      109 MOVE                             R21 R19
      110 GETIMPORT                        R20 K7 [typeof]
      112 CALL                             R20 1 1
      113 JUMPIFNOTEQKS                    R20 K8 ["table"] ; [+4]
      115 GETTABLEKS                       R18 R19 K9 ["type"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R18
      119 JUMPIFEQKS                       R18 K10 ["tool_result"] ; [+8]
      121 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
      123 MOVE                             R19 R12
      124 MOVE                             R20 R17
      125 GETIMPORT                        R18 K15 [table.insert]
      127 CALL                             R18 2 0
      128 FORGLOOP                         R13 2 ; [-40]
      130 LENGTH                           R13 R12
      131 LOADN                            R14 0
      132 JUMPIFNOTLT                      R14 R13 ; [+183]
      134 MOVE                             R13 R6
      135 CALL                             R13 0 0
      136 GETIMPORT                        R16 K17 [table.clone]
      138 MOVE                             R17 R11
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R12 R16 K0 ["contents"]
      142 MOVE                             R15 R16
      143 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      145 MOVE                             R14 R2
      146 GETIMPORT                        R13 K15 [table.insert]
      148 CALL                             R13 2 0
      149 JUMP                             ; [+166]
      150 GETTABLEKS                       R12 R11 K12 ["role"]
      152 JUMPIFEQKS                       R12 K18 ["assistant"] ; [+5]
      154 GETTABLEKS                       R12 R11 K12 ["role"]
      156 JUMPIFNOTEQKS                    R12 K19 ["model"] ; [+150]
      158 JUMPIF                           R3 ; [+8]
      159 GETIMPORT                        R12 K17 [table.clone]
      161 MOVE                             R13 R11
      162 CALL                             R12 1 1
      163 LOADK                            R13 K18 ["assistant"]
      164 SETTABLEKS                       R13 R12 K12 ["role"]
      166 MOVE                             R3 R12
      167 MOVE                             R12 R3
      168 GETTABLEKS                       R15 R12 K21 ["updatedUtc"]
      170 ORK                              R14 R15 K20 [0]
      171 GETTABLEKS                       R16 R11 K21 ["updatedUtc"]
      173 ORK                              R15 R16 K20 [0]
      174 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      176 GETIMPORT                        R13 K24 [math.max]
      178 CALL                             R13 2 1
      179 SETTABLEKS                       R13 R12 K21 ["updatedUtc"]
      181 GETTABLEKS                       R13 R11 K0 ["contents"]
      183 JUMPIF                           R13 ; [+2]
      184 NEWTABLE                         R13 0 0
      186 LOADNIL                          R14
      187 LOADNIL                          R15
      188 FORGPREP                         R13
      189 GETTABLEKS                       R20 R17 K1 ["mcpContent"]
      191 JUMPIFNOT                        R20 ; [+2]
      192 JUMPIFNOTEQKS                    R20 K2 [""] ; [+3]
      194 LOADNIL                          R19
      195 JUMP                             ; [+12]
      196 GETIMPORT                        R21 K4 [pcall]
      198 GETUPVAL                         R22 1
      199 GETTABLEKS                       R22 R22 K5 ["JSONDecode"]
      201 GETUPVAL                         R23 1
      202 MOVE                             R24 R20
      203 CALL                             R21 3 2
      204 JUMPIFNOT                        R21 ; [+2]
      205 MOVE                             R19 R22
      206 JUMP                             ; [+1]
      207 LOADNIL                          R19
      208 FASTCALL1                        TYPEOF R19 ; [+3]
      209 MOVE                             R21 R19
      210 GETIMPORT                        R20 K7 [typeof]
      212 CALL                             R20 1 1
      213 JUMPIFNOTEQKS                    R20 K8 ["table"] ; [+4]
      215 GETTABLEKS                       R18 R19 K9 ["type"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R18
      219 JUMPIFEQKS                       R18 K10 ["tool_result"] ; [+84]
      221 GETUPVAL                         R19 2
      222 MOVE                             R20 R17
      223 CALL                             R19 1 1
      224 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
      226 MOVE                             R21 R4
      227 MOVE                             R22 R19
      228 GETIMPORT                        R20 K15 [table.insert]
      230 CALL                             R20 2 0
      231 GETTABLEKS                       R22 R19 K1 ["mcpContent"]
      233 JUMPIFNOT                        R22 ; [+2]
      234 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      236 LOADNIL                          R21
      237 JUMP                             ; [+12]
      238 GETIMPORT                        R23 K4 [pcall]
      240 GETUPVAL                         R24 1
      241 GETTABLEKS                       R24 R24 K5 ["JSONDecode"]
      243 GETUPVAL                         R25 1
      244 MOVE                             R26 R22
      245 CALL                             R23 3 2
      246 JUMPIFNOT                        R23 ; [+2]
      247 MOVE                             R21 R24
      248 JUMP                             ; [+1]
      249 LOADNIL                          R21
      250 FASTCALL1                        TYPEOF R21 ; [+3]
      251 MOVE                             R23 R21
      252 GETIMPORT                        R22 K7 [typeof]
      254 CALL                             R22 1 1
      255 JUMPIFNOTEQKS                    R22 K8 ["table"] ; [+8]
      257 GETTABLEKS                       R22 R21 K9 ["type"]
      259 JUMPIFNOTEQKS                    R22 K25 ["tool_use"] ; [+4]
      261 GETTABLEKS                       R20 R21 K26 ["id"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R20
      265 JUMPIFNOT                        R20 ; [+38]
      266 GETTABLE                         R21 R1 R20
      267 JUMPIFNOT                        R21 ; [+36]
      268 GETTABLE                         R21 R5 R20
      269 JUMPIFNOT                        R21 ; [+25]
      270 GETUPVAL                         R21 3
      271 GETTABLEKS                       R21 R21 K27 ["FFlagDebugLogAssistantUI"]
      273 JUMPIFNOT                        R21 ; [+21]
      274 GETIMPORT                        R21 K29 [warn]
      276 LOADK                            R23 K30 ["[HistoryNormalizer] Duplicate tool_use id %* while projecting message %*; inserting tool_result again into assistant group %*"]
      277 MOVE                             R25 R20
      278 GETTABLEKS                       R27 R11 K31 ["messageId"]
      280 FASTCALL1                        TOSTRING R27 ; [+2]
      281 GETIMPORT                        R26 K33 [tostring]
      283 CALL                             R26 1 1
      284 GETTABLEKS                       R28 R12 K31 ["messageId"]
      286 FASTCALL1                        TOSTRING R28 ; [+2]
      287 GETIMPORT                        R27 K33 [tostring]
      289 CALL                             R27 1 1
      290 NAMECALL                         R23 R23 K34 ["format"]
      292 CALL                             R23 4 1
      293 MOVE                             R22 R23
      294 CALL                             R21 1 0
      295 LOADB                            R21 1
      296 SETTABLE                         R21 R5 R20
      297 GETTABLE                         R23 R1 R20
      298 FASTCALL2                        TABLE_INSERT R4 R23 ; [+4]
      300 MOVE                             R22 R4
      301 GETIMPORT                        R21 K15 [table.insert]
      303 CALL                             R21 2 0
      304 FORGLOOP                         R13 2 ; [-116]
      306 JUMP                             ; [+9]
      307 MOVE                             R12 R6
      308 CALL                             R12 0 0
      309 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      311 MOVE                             R13 R2
      312 MOVE                             R14 R11
      313 GETIMPORT                        R12 K15 [table.insert]
      315 CALL                             R12 2 0
      316 FORGLOOP                         R7 2 ; [-242]
      318 MOVE                             R7 R6
      319 CALL                             R7 0 0
      320 CLOSEUPVALS                      R3
      321 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.create]
        5 LENGTH                           R3 R1
        6 CALL                             R2 1 1
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R9 R7 K3 ["metadata"]
       13 JUMPIFNOT                        R9 ; [+2]
       14 JUMPIFNOTEQKS                    R9 K4 [""] ; [+3]
       16 LOADNIL                          R8
       17 JUMP                             ; [+12]
       18 GETIMPORT                        R10 K6 [pcall]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K7 ["JSONDecode"]
       23 GETUPVAL                         R12 1
       24 MOVE                             R13 R9
       25 CALL                             R10 3 2
       26 JUMPIFNOT                        R10 ; [+2]
       27 MOVE                             R8 R11
       28 JUMP                             ; [+1]
       29 LOADNIL                          R8
       30 FASTCALL1                        TYPEOF R8 ; [+3]
       31 MOVE                             R10 R8
       32 GETIMPORT                        R9 K9 [typeof]
       34 CALL                             R9 1 1
       35 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+31]
       37 GETTABLEKS                       R9 R8 K10 ["historyWriter"]
       39 JUMPIFEQKNIL                     R9 ; [+27]
       41 GETIMPORT                        R9 K12 [table.clone]
       43 MOVE                             R10 R7
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K12 [table.clone]
       47 MOVE                             R11 R8
       48 CALL                             R10 1 1
       49 LOADNIL                          R11
       50 SETTABLEKS                       R11 R10 K10 ["historyWriter"]
       52 GETUPVAL                         R11 1
       53 MOVE                             R13 R10
       54 NAMECALL                         R11 R11 K13 ["JSONEncode"]
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R9 K3 ["metadata"]
       59 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       61 MOVE                             R12 R2
       62 MOVE                             R13 R9
       63 GETIMPORT                        R11 K15 [table.insert]
       65 CALL                             R11 2 0
       66 JUMP                             ; [+7]
       67 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R7
       71 GETIMPORT                        R9 K15 [table.insert]
       73 CALL                             R9 2 0
       74 FORGLOOP                         R3 2 ; [-64]
       76 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R2 K13 ["ToolNaming"]
       27 DUPCLOSURE                       R5 K14 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R6 K15 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R7 K16 [PROTO_2]
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R8 K17 [PROTO_3]
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R9 K18 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R8
       38 DUPCLOSURE                       R10 K19 [PROTO_5]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R11 K20 [PROTO_6]
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R12 K21 [PROTO_7]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 DUPCLOSURE                       R13 K22 [PROTO_8]
       46 DUPCLOSURE                       R14 K23 [PROTO_10]
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R12
       50 CAPTURE                          VAL R3
       51 DUPCLOSURE                       R15 K24 [PROTO_11]
       52 CAPTURE                          VAL R14
       53 CAPTURE                          VAL R1
       54 DUPTABLE                         R16 K30 [{["ACP_HISTORY_WRITER"] = "acp-llm-v1", ["shouldNormalize"], ["projectForLegacy"], ["projectForLegacyStorage"]}]
       55 SETTABLEKS                       R9 R16 K27 ["shouldNormalize"]
       57 SETTABLEKS                       R14 R16 K28 ["projectForLegacy"]
       59 SETTABLEKS                       R15 R16 K29 ["projectForLegacyStorage"]
       61 RETURN                           R16 1
