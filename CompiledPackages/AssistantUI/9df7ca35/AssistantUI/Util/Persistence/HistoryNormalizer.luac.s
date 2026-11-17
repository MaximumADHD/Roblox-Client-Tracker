PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["JSONDecode"]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 FASTPCALL                        pcall 3 ; [+2]
       11 GETIMPORT                        R1 K3 [pcall]
       13 CALL                             R1 3 2
       14 JUMPIFNOT                        R1 ; [+2]
       15 MOVE                             R3 R2
       16 RETURN                           R3 1
       17 LOADNIL                          R3
       18 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["metadata"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["JSONDecode"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R3 K4 [pcall]
       15 CALL                             R3 3 2
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+4]
       27 GETTABLEKS                       R2 R1 K8 ["historyWriter"]
       29 RETURN                           R2 1
       30 LOADNIL                          R2
       31 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["JSONDecode"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R3 K4 [pcall]
       15 CALL                             R3 3 2
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+4]
       27 GETTABLEKS                       R2 R1 K8 ["type"]
       29 RETURN                           R2 1
       30 LOADNIL                          R2
       31 RETURN                           R2 1

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
       22 JUMP                             ; [+13]
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R12 R12 K5 ["JSONDecode"]
       26 GETUPVAL                         R13 0
       27 MOVE                             R14 R10
       28 FASTPCALL                        pcall 3 ; [+2]
       29 GETIMPORT                        R11 K7 [pcall]
       31 CALL                             R11 3 2
       32 JUMPIFNOT                        R11 ; [+2]
       33 MOVE                             R9 R12
       34 JUMP                             ; [+1]
       35 LOADNIL                          R9
       36 FASTCALL1                        TYPEOF R9 ; [+3]
       37 MOVE                             R11 R9
       38 GETIMPORT                        R10 K9 [typeof]
       40 CALL                             R10 1 1
       41 JUMPIFNOTEQKS                    R10 K10 ["table"] ; [+4]
       43 GETTABLEKS                       R8 R9 K11 ["type"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 JUMPIFNOTEQKS                    R8 K12 ["tool_result"] ; [+3]
       49 LOADB                            R1 1
       50 JUMP                             ; [+5]
       51 JUMPIFEQKS                       R8 K13 ["text"] ; [+3]
       53 JUMPIFNOTEQKS                    R8 K14 ["image"] ; [+2]
       55 LOADB                            R2 1
       56 FORGLOOP                         R3 2 ; [-41]
       58 MOVE                             R3 R1
       59 JUMPIFNOT                        R3 ; [+1]
       60 NOT                              R3 R2
       61 RETURN                           R3 1

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
       11 JUMP                             ; [+13]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R11 R11 K2 ["JSONDecode"]
       15 GETUPVAL                         R12 0
       16 MOVE                             R13 R9
       17 FASTPCALL                        pcall 3 ; [+2]
       18 GETIMPORT                        R10 K4 [pcall]
       20 CALL                             R10 3 2
       21 JUMPIFNOT                        R10 ; [+2]
       22 MOVE                             R8 R11
       23 JUMP                             ; [+1]
       24 LOADNIL                          R8
       25 FASTCALL1                        TYPEOF R8 ; [+3]
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K6 [typeof]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+4]
       32 GETTABLEKS                       R7 R8 K8 ["historyWriter"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 JUMPIFEQKS                       R7 K9 ["acp-llm-v1"] ; [+5]
       38 GETUPVAL                         R7 1
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADB                            R7 1
       43 RETURN                           R7 1
       44 GETTABLEKS                       R7 R6 K10 ["role"]
       46 JUMPIFNOTEQKS                    R7 K11 ["assistant"] ; [+13]
       48 JUMPIFNOTEQKS                    R1 K11 ["assistant"] ; [+11]
       50 GETTABLEKS                       R7 R6 K0 ["metadata"]
       52 JUMPIFEQKNIL                     R7 ; [+5]
       54 GETTABLEKS                       R7 R6 K0 ["metadata"]
       56 JUMPIFNOTEQKS                    R7 K12 ["{}"] ; [+3]
       58 LOADB                            R7 1
       59 RETURN                           R7 1
       60 GETTABLEKS                       R1 R6 K10 ["role"]
       62 FORGLOOP                         R2 2 ; [-58]
       64 LOADB                            R2 0
       65 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["JSONDecode"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R3 K4 [pcall]
       15 CALL                             R3 3 2
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+8]
       27 GETTABLEKS                       R3 R1 K8 ["type"]
       29 JUMPIFNOTEQKS                    R3 K9 ["tool_result"] ; [+4]
       31 GETTABLEKS                       R2 R1 K10 ["toolUseId"]
       33 RETURN                           R2 1
       34 LOADNIL                          R2
       35 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["JSONDecode"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R3 K4 [pcall]
       15 CALL                             R3 3 2
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+8]
       27 GETTABLEKS                       R3 R1 K8 ["type"]
       29 JUMPIFNOTEQKS                    R3 K9 ["tool_use"] ; [+4]
       31 GETTABLEKS                       R2 R1 K10 ["id"]
       33 RETURN                           R2 1
       34 LOADNIL                          R2
       35 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mcpContent"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["JSONDecode"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R3 K4 [pcall]
       15 CALL                             R3 3 2
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K6 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKS                    R2 K7 ["table"] ; [+13]
       27 GETTABLEKS                       R2 R1 K8 ["type"]
       29 JUMPIFNOTEQKS                    R2 K9 ["tool_use"] ; [+9]
       31 GETTABLEKS                       R3 R1 K10 ["name"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K6 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFEQKS                       R2 K11 ["string"] ; [+2]
       39 RETURN                           R0 1
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K12 ["stripPrefix"]
       43 GETTABLEKS                       R3 R1 K10 ["name"]
       45 CALL                             R2 1 1
       46 GETTABLEKS                       R3 R1 K10 ["name"]
       48 JUMPIFNOTEQ                      R2 R3 ; [+2]
       50 RETURN                           R0 1
       51 GETIMPORT                        R3 K14 [table.clone]
       53 MOVE                             R4 R0
       54 CALL                             R3 1 1
       55 GETIMPORT                        R4 K14 [table.clone]
       57 MOVE                             R5 R1
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R2 R4 K10 ["name"]
       61 GETUPVAL                         R5 0
       62 MOVE                             R7 R4
       63 NAMECALL                         R5 R5 K15 ["JSONEncode"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R3 K0 ["mcpContent"]
       68 RETURN                           R3 1

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
       26 MOVE                             R0 R3
       27 SETTABLEKS                       R2 R0 K6 ["contents"]
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
       25 JUMP                             ; [+13]
       26 GETUPVAL                         R16 1
       27 GETTABLEKS                       R16 R16 K3 ["JSONDecode"]
       29 GETUPVAL                         R17 1
       30 MOVE                             R18 R14
       31 FASTPCALL                        pcall 3 ; [+2]
       32 GETIMPORT                        R15 K5 [pcall]
       34 CALL                             R15 3 2
       35 JUMPIFNOT                        R15 ; [+2]
       36 MOVE                             R13 R16
       37 JUMP                             ; [+1]
       38 LOADNIL                          R13
       39 FASTCALL1                        TYPEOF R13 ; [+3]
       40 MOVE                             R15 R13
       41 GETIMPORT                        R14 K7 [typeof]
       43 CALL                             R14 1 1
       44 JUMPIFNOTEQKS                    R14 K8 ["table"] ; [+8]
       46 GETTABLEKS                       R14 R13 K9 ["type"]
       48 JUMPIFNOTEQKS                    R14 K10 ["tool_result"] ; [+4]
       50 GETTABLEKS                       R12 R13 K11 ["toolUseId"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R12
       54 JUMPIFNOT                        R12 ; [+1]
       55 SETTABLE                         R11 R1 R12
       56 FORGLOOP                         R7 2 ; [-38]
       58 FORGLOOP                         R2 2 ; [-48]
       60 NEWTABLE                         R2 0 0
       62 LOADNIL                          R3
       63 NEWTABLE                         R4 0 0
       65 NEWTABLE                         R5 0 0
       67 NEWCLOSURE                       R6 P0
       68 CAPTURE                          REF R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 MOVE                             R7 R0
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R12 R11 K12 ["role"]
       78 JUMPIFNOTEQKS                    R12 K13 ["user"] ; [+72]
       80 NEWTABLE                         R12 0 0
       82 GETTABLEKS                       R13 R11 K0 ["contents"]
       84 JUMPIF                           R13 ; [+2]
       85 NEWTABLE                         R13 0 0
       87 LOADNIL                          R14
       88 LOADNIL                          R15
       89 FORGPREP                         R13
       90 GETTABLEKS                       R20 R17 K1 ["mcpContent"]
       92 JUMPIFNOT                        R20 ; [+2]
       93 JUMPIFNOTEQKS                    R20 K2 [""] ; [+3]
       95 LOADNIL                          R19
       96 JUMP                             ; [+13]
       97 GETUPVAL                         R22 1
       98 GETTABLEKS                       R22 R22 K3 ["JSONDecode"]
      100 GETUPVAL                         R23 1
      101 MOVE                             R24 R20
      102 FASTPCALL                        pcall 3 ; [+2]
      103 GETIMPORT                        R21 K5 [pcall]
      105 CALL                             R21 3 2
      106 JUMPIFNOT                        R21 ; [+2]
      107 MOVE                             R19 R22
      108 JUMP                             ; [+1]
      109 LOADNIL                          R19
      110 FASTCALL1                        TYPEOF R19 ; [+3]
      111 MOVE                             R21 R19
      112 GETIMPORT                        R20 K7 [typeof]
      114 CALL                             R20 1 1
      115 JUMPIFNOTEQKS                    R20 K8 ["table"] ; [+4]
      117 GETTABLEKS                       R18 R19 K9 ["type"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R18
      121 JUMPIFEQKS                       R18 K10 ["tool_result"] ; [+8]
      123 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
      125 MOVE                             R19 R12
      126 MOVE                             R20 R17
      127 GETIMPORT                        R18 K15 [table.insert]
      129 CALL                             R18 2 0
      130 FORGLOOP                         R13 2 ; [-41]
      132 LENGTH                           R13 R12
      133 LOADN                            R14 0
      134 JUMPIFNOTLT                      R14 R13 ; [+183]
      136 MOVE                             R13 R6
      137 CALL                             R13 0 0
      138 GETIMPORT                        R15 K17 [table.clone]
      140 MOVE                             R16 R11
      141 CALL                             R15 1 1
      142 SETTABLEKS                       R12 R15 K0 ["contents"]
      144 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      146 MOVE                             R14 R2
      147 GETIMPORT                        R13 K15 [table.insert]
      149 CALL                             R13 2 0
      150 JUMP                             ; [+167]
      151 GETTABLEKS                       R12 R11 K12 ["role"]
      153 JUMPIFEQKS                       R12 K18 ["assistant"] ; [+5]
      155 GETTABLEKS                       R12 R11 K12 ["role"]
      157 JUMPIFNOTEQKS                    R12 K19 ["model"] ; [+151]
      159 JUMPIF                           R3 ; [+8]
      160 GETIMPORT                        R12 K17 [table.clone]
      162 MOVE                             R13 R11
      163 CALL                             R12 1 1
      164 LOADK                            R13 K18 ["assistant"]
      165 SETTABLEKS                       R13 R12 K12 ["role"]
      167 MOVE                             R3 R12
      168 MOVE                             R12 R3
      169 GETTABLEKS                       R15 R12 K21 ["updatedUtc"]
      171 ORK                              R14 R15 K20 [0]
      172 GETTABLEKS                       R16 R11 K21 ["updatedUtc"]
      174 ORK                              R15 R16 K20 [0]
      175 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      177 GETIMPORT                        R13 K24 [math.max]
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R12 K21 ["updatedUtc"]
      182 GETTABLEKS                       R13 R11 K0 ["contents"]
      184 JUMPIF                           R13 ; [+2]
      185 NEWTABLE                         R13 0 0
      187 LOADNIL                          R14
      188 LOADNIL                          R15
      189 FORGPREP                         R13
      190 GETTABLEKS                       R20 R17 K1 ["mcpContent"]
      192 JUMPIFNOT                        R20 ; [+2]
      193 JUMPIFNOTEQKS                    R20 K2 [""] ; [+3]
      195 LOADNIL                          R19
      196 JUMP                             ; [+13]
      197 GETUPVAL                         R22 1
      198 GETTABLEKS                       R22 R22 K3 ["JSONDecode"]
      200 GETUPVAL                         R23 1
      201 MOVE                             R24 R20
      202 FASTPCALL                        pcall 3 ; [+2]
      203 GETIMPORT                        R21 K5 [pcall]
      205 CALL                             R21 3 2
      206 JUMPIFNOT                        R21 ; [+2]
      207 MOVE                             R19 R22
      208 JUMP                             ; [+1]
      209 LOADNIL                          R19
      210 FASTCALL1                        TYPEOF R19 ; [+3]
      211 MOVE                             R21 R19
      212 GETIMPORT                        R20 K7 [typeof]
      214 CALL                             R20 1 1
      215 JUMPIFNOTEQKS                    R20 K8 ["table"] ; [+4]
      217 GETTABLEKS                       R18 R19 K9 ["type"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R18
      221 JUMPIFEQKS                       R18 K10 ["tool_result"] ; [+84]
      223 GETUPVAL                         R19 2
      224 MOVE                             R20 R17
      225 CALL                             R19 1 1
      226 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
      228 MOVE                             R21 R4
      229 MOVE                             R22 R19
      230 GETIMPORT                        R20 K15 [table.insert]
      232 CALL                             R20 2 0
      233 GETTABLEKS                       R22 R19 K1 ["mcpContent"]
      235 JUMPIFNOT                        R22 ; [+2]
      236 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      238 LOADNIL                          R21
      239 JUMP                             ; [+13]
      240 GETUPVAL                         R24 1
      241 GETTABLEKS                       R24 R24 K3 ["JSONDecode"]
      243 GETUPVAL                         R25 1
      244 MOVE                             R26 R22
      245 FASTPCALL                        pcall 3 ; [+2]
      246 GETIMPORT                        R23 K5 [pcall]
      248 CALL                             R23 3 2
      249 JUMPIFNOT                        R23 ; [+2]
      250 MOVE                             R21 R24
      251 JUMP                             ; [+1]
      252 LOADNIL                          R21
      253 FASTCALL1                        TYPEOF R21 ; [+3]
      254 MOVE                             R23 R21
      255 GETIMPORT                        R22 K7 [typeof]
      257 CALL                             R22 1 1
      258 JUMPIFNOTEQKS                    R22 K8 ["table"] ; [+8]
      260 GETTABLEKS                       R22 R21 K9 ["type"]
      262 JUMPIFNOTEQKS                    R22 K25 ["tool_use"] ; [+4]
      264 GETTABLEKS                       R20 R21 K26 ["id"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R20
      268 JUMPIFNOT                        R20 ; [+37]
      269 GETTABLE                         R21 R1 R20
      270 JUMPIFNOT                        R21 ; [+35]
      271 GETTABLE                         R21 R5 R20
      272 JUMPIFNOT                        R21 ; [+24]
      273 GETUPVAL                         R21 3
      274 GETTABLEKS                       R21 R21 K27 ["FFlagDebugLogAssistantUI"]
      276 JUMPIFNOT                        R21 ; [+20]
      277 GETIMPORT                        R21 K29 [warn]
      279 LOADK                            R22 K30 ["[HistoryNormalizer] Duplicate tool_use id %* while projecting message %*; inserting tool_result again into assistant group %*"]
      280 MOVE                             R24 R20
      281 GETTABLEKS                       R26 R11 K31 ["messageId"]
      283 FASTCALL1                        TOSTRING R26 ; [+2]
      284 GETIMPORT                        R25 K33 [tostring]
      286 CALL                             R25 1 1
      287 GETTABLEKS                       R27 R12 K31 ["messageId"]
      289 FASTCALL1                        TOSTRING R27 ; [+2]
      290 GETIMPORT                        R26 K33 [tostring]
      292 CALL                             R26 1 1
      293 NAMECALL                         R22 R22 K34 ["format"]
      295 CALL                             R22 4 1
      296 CALL                             R21 1 0
      297 LOADB                            R21 1
      298 SETTABLE                         R21 R5 R20
      299 GETTABLE                         R23 R1 R20
      300 FASTCALL2                        TABLE_INSERT R4 R23 ; [+4]
      302 MOVE                             R22 R4
      303 GETIMPORT                        R21 K15 [table.insert]
      305 CALL                             R21 2 0
      306 FORGLOOP                         R13 2 ; [-117]
      308 JUMP                             ; [+9]
      309 MOVE                             R12 R6
      310 CALL                             R12 0 0
      311 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      313 MOVE                             R13 R2
      314 MOVE                             R14 R11
      315 GETIMPORT                        R12 K15 [table.insert]
      317 CALL                             R12 2 0
      318 FORGLOOP                         R7 2 ; [-243]
      320 MOVE                             R7 R6
      321 CALL                             R7 0 0
      322 CLOSEUPVALS                      R3
      323 RETURN                           R2 1

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
       17 JUMP                             ; [+13]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K5 ["JSONDecode"]
       21 GETUPVAL                         R12 1
       22 MOVE                             R13 R9
       23 FASTPCALL                        pcall 3 ; [+2]
       24 GETIMPORT                        R10 K7 [pcall]
       26 CALL                             R10 3 2
       27 JUMPIFNOT                        R10 ; [+2]
       28 MOVE                             R8 R11
       29 JUMP                             ; [+1]
       30 LOADNIL                          R8
       31 FASTCALL1                        TYPEOF R8 ; [+3]
       32 MOVE                             R10 R8
       33 GETIMPORT                        R9 K9 [typeof]
       35 CALL                             R9 1 1
       36 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+31]
       38 GETTABLEKS                       R9 R8 K10 ["historyWriter"]
       40 JUMPIFEQKNIL                     R9 ; [+27]
       42 GETIMPORT                        R9 K12 [table.clone]
       44 MOVE                             R10 R7
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K12 [table.clone]
       48 MOVE                             R11 R8
       49 CALL                             R10 1 1
       50 LOADNIL                          R11
       51 SETTABLEKS                       R11 R10 K10 ["historyWriter"]
       53 GETUPVAL                         R11 1
       54 MOVE                             R13 R10
       55 NAMECALL                         R11 R11 K13 ["JSONEncode"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R9 K3 ["metadata"]
       60 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       62 MOVE                             R12 R2
       63 MOVE                             R13 R9
       64 GETIMPORT                        R11 K15 [table.insert]
       66 CALL                             R11 2 0
       67 JUMP                             ; [+7]
       68 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       70 MOVE                             R10 R2
       71 MOVE                             R11 R7
       72 GETIMPORT                        R9 K15 [table.insert]
       74 CALL                             R9 2 0
       75 FORGLOOP                         R3 2 ; [-65]
       77 RETURN                           R2 1

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
