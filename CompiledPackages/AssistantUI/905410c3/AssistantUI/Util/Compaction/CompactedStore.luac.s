PROTO_0:
        0 DUPTABLE                         R0 K3 [{"index", "summary", "compactedUIMessageCount"}]
        1 DUPTABLE                         R1 K8 [{"scriptIndex", "gameTreeIndex", "grepIndex", "inspectIndex"}]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K4 ["scriptIndex"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K5 ["gameTreeIndex"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K6 ["grepIndex"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K7 ["inspectIndex"]
       18 SETTABLEKS                       R1 R0 K0 ["index"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K1 ["summary"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K2 ["compactedUIMessageCount"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["content"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K0 ["content"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL1                        TYPEOF R6 ; [+3]
       13 MOVE                             R8 R6
       14 GETIMPORT                        R7 K3 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+12]
       19 GETTABLEKS                       R7 R6 K5 ["text"]
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETTABLEKS                       R9 R6 K5 ["text"]
       24 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       26 MOVE                             R8 R1
       27 GETIMPORT                        R7 K7 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-19]
       32 GETIMPORT                        R2 K9 [table.concat]
       34 MOVE                             R3 R1
       35 LOADK                            R4 K10 ["\n"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"scriptIndex", "gameTreeIndex", "grepIndex", "inspectIndex"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["scriptIndex"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["gameTreeIndex"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["grepIndex"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["inspectIndex"]
       17 NEWTABLE                         R2 0 0
       19 MOVE                             R3 R0
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETTABLEKS                       R8 R7 K5 ["content"]
       25 JUMPIFNOT                        R8 ; [+37]
       26 GETTABLEKS                       R8 R7 K5 ["content"]
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 GETTABLEKS                       R13 R12 K6 ["type"]
       33 JUMPIFNOTEQKS                    R13 K7 ["tool_use"] ; [+27]
       35 GETTABLEKS                       R14 R12 K8 ["id"]
       37 GETTABLE                         R13 R2 R14
       38 JUMPIF                           R13 ; [+5]
       39 GETTABLEKS                       R13 R12 K8 ["id"]
       41 NEWTABLE                         R14 0 0
       43 SETTABLE                         R14 R2 R13
       44 GETTABLEKS                       R15 R12 K8 ["id"]
       46 GETTABLE                         R14 R2 R15
       47 DUPTABLE                         R15 K11 [{"name", "input"}]
       48 GETTABLEKS                       R16 R12 K9 ["name"]
       50 SETTABLEKS                       R16 R15 K9 ["name"]
       52 GETTABLEKS                       R16 R12 K10 ["input"]
       54 SETTABLEKS                       R16 R15 K10 ["input"]
       56 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       58 GETIMPORT                        R13 K14 [table.insert]
       60 CALL                             R13 2 0
       61 FORGLOOP                         R8 2 ; [-31]
       63 FORGLOOP                         R3 2 ; [-41]
       65 MOVE                             R3 R0
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLEKS                       R8 R7 K5 ["content"]
       71 JUMPIFNOT                        R8 ; [+34]
       72 GETTABLEKS                       R8 R7 K5 ["content"]
       74 LOADNIL                          R9
       75 LOADNIL                          R10
       76 FORGPREP                         R8
       77 GETTABLEKS                       R13 R12 K6 ["type"]
       79 JUMPIFNOTEQKS                    R13 K15 ["tool_result"] ; [+24]
       81 GETTABLEKS                       R14 R12 K8 ["id"]
       83 GETTABLE                         R13 R2 R14
       84 JUMPIFNOT                        R13 ; [+19]
       85 LENGTH                           R14 R13
       86 LOADN                            R15 0
       87 JUMPIFNOTLT                      R15 R14 ; [+16]
       89 GETIMPORT                        R14 K17 [table.remove]
       91 MOVE                             R15 R13
       92 LOADN                            R16 1
       93 CALL                             R14 2 1
       94 GETUPVAL                         R16 0
       95 GETTABLEKS                       R15 R16 K18 ["_indexToolResult"]
       97 MOVE                             R16 R1
       98 GETTABLEKS                       R17 R14 K9 ["name"]
      100 GETTABLEKS                       R18 R14 K10 ["input"]
      102 MOVE                             R19 R12
      103 CALL                             R15 4 0
      104 FORGLOOP                         R8 2 ; [-28]
      106 FORGLOOP                         R3 2 ; [-38]
      108 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R4 R3 K0 ["isError"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["ReadFile"]
       10 JUMPIFNOTEQ                      R1 R5 ; [+22]
       12 MOVE                             R5 R2
       13 JUMPIFNOT                        R5 ; [+2]
       14 GETTABLEKS                       R5 R2 K2 ["target_file"]
       16 JUMPIFNOT                        R5 ; [+111]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K4 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+105]
       24 GETTABLEKS                       R6 R0 K6 ["scriptIndex"]
       26 DUPTABLE                         R7 K9 [{"path", "content"}]
       27 SETTABLEKS                       R5 R7 K7 ["path"]
       29 SETTABLEKS                       R4 R7 K8 ["content"]
       31 SETTABLE                         R7 R6 R5
       32 RETURN                           R0 0
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K10 ["GameTree"]
       36 JUMPIFNOTEQ                      R1 R5 ; [+29]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R5 R2 K7 ["path"]
       41 JUMPIF                           R5 ; [+1]
       42 LOADK                            R5 K11 ["game"]
       43 FASTCALL1                        TYPEOF R5 ; [+3]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K4 [typeof]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+79]
       50 GETTABLEKS                       R6 R0 K12 ["gameTreeIndex"]
       52 DUPTABLE                         R7 K16 [{"rootPath", "depth", "result"}]
       53 SETTABLEKS                       R5 R7 K13 ["rootPath"]
       55 JUMPIFNOT                        R2 ; [+3]
       56 GETTABLEKS                       R8 R2 K17 ["max_depth"]
       58 JUMPIF                           R8 ; [+1]
       59 LOADN                            R8 0
       60 SETTABLEKS                       R8 R7 K14 ["depth"]
       62 SETTABLEKS                       R4 R7 K15 ["result"]
       64 SETTABLE                         R7 R6 R5
       65 RETURN                           R0 0
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R5 R6 K18 ["GrepSearch"]
       69 JUMPIFNOTEQ                      R1 R5 ; [+33]
       71 MOVE                             R5 R2
       72 JUMPIFNOT                        R5 ; [+2]
       73 GETTABLEKS                       R5 R2 K19 ["query"]
       75 JUMPIFNOT                        R5 ; [+52]
       76 FASTCALL1                        TYPEOF R5 ; [+3]
       77 MOVE                             R7 R5
       78 GETIMPORT                        R6 K4 [typeof]
       80 CALL                             R6 1 1
       81 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+46]
       83 GETTABLEKS                       R6 R0 K20 ["grepIndex"]
       85 DUPTABLE                         R7 K23 [{"query", "matchCount", "results"}]
       86 SETTABLEKS                       R5 R7 K19 ["query"]
       88 GETTABLEKS                       R9 R3 K24 ["structuredContent"]
       90 JUMPIFNOT                        R9 ; [+5]
       91 GETTABLEKS                       R9 R3 K24 ["structuredContent"]
       93 GETTABLEKS                       R8 R9 K25 ["count"]
       95 JUMPIF                           R8 ; [+1]
       96 LOADN                            R8 0
       97 SETTABLEKS                       R8 R7 K21 ["matchCount"]
       99 SETTABLEKS                       R4 R7 K22 ["results"]
      101 SETTABLE                         R7 R6 R5
      102 RETURN                           R0 0
      103 GETUPVAL                         R6 1
      104 GETTABLEKS                       R5 R6 K26 ["InspectInstance"]
      106 JUMPIFNOTEQ                      R1 R5 ; [+21]
      108 MOVE                             R5 R2
      109 JUMPIFNOT                        R5 ; [+2]
      110 GETTABLEKS                       R5 R2 K7 ["path"]
      112 JUMPIFNOT                        R5 ; [+15]
      113 FASTCALL1                        TYPEOF R5 ; [+3]
      114 MOVE                             R7 R5
      115 GETIMPORT                        R6 K4 [typeof]
      117 CALL                             R6 1 1
      118 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+9]
      120 GETTABLEKS                       R6 R0 K27 ["inspectIndex"]
      122 DUPTABLE                         R7 K29 [{"path", "properties"}]
      123 SETTABLEKS                       R5 R7 K7 ["path"]
      125 SETTABLEKS                       R4 R7 K28 ["properties"]
      127 SETTABLE                         R7 R6 R5
      128 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["scriptIndex"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R8 R0 K1 ["index"]
        7 GETTABLEKS                       R7 R8 K0 ["scriptIndex"]
        9 SETTABLE                         R6 R7 R5
       10 FORGLOOP                         R2 2 ; [-6]
       12 GETTABLEKS                       R2 R1 K2 ["gameTreeIndex"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R8 R0 K1 ["index"]
       19 GETTABLEKS                       R7 R8 K2 ["gameTreeIndex"]
       21 SETTABLE                         R6 R7 R5
       22 FORGLOOP                         R2 2 ; [-6]
       24 GETTABLEKS                       R2 R1 K3 ["grepIndex"]
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLEKS                       R8 R0 K1 ["index"]
       31 GETTABLEKS                       R7 R8 K3 ["grepIndex"]
       33 SETTABLE                         R6 R7 R5
       34 FORGLOOP                         R2 2 ; [-6]
       36 GETTABLEKS                       R2 R1 K4 ["inspectIndex"]
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETTABLEKS                       R8 R0 K1 ["index"]
       43 GETTABLEKS                       R7 R8 K4 ["inspectIndex"]
       45 SETTABLE                         R6 R7 R5
       46 FORGLOOP                         R2 2 ; [-6]
       48 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R4 K1 ["scriptIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R4 K1 ["gameTreeIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R4 K1 ["grepIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R4 K1 ["inspectIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R6 R0 K0 ["index"]
        6 GETTABLEKS                       R3 R6 K1 ["scriptIndex"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADK                            R11 K2 ["- %*"]
       12 MOVE                             R13 R6
       13 NAMECALL                         R11 R11 K3 ["format"]
       15 CALL                             R11 2 1
       16 MOVE                             R10 R11
       17 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       19 MOVE                             R9 R2
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 1 ; [-13]
       25 LENGTH                           R3 R2
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+28]
       29 LOADK                            R6 K7 ["Scripts previously read (use `from_history` with type=\"%*\"):"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K8 ["ReadFile"]
       33 NAMECALL                         R6 R6 K3 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       39 MOVE                             R4 R1
       40 GETIMPORT                        R3 K6 [table.insert]
       42 CALL                             R3 2 0
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       49 MOVE                             R9 R1
       50 MOVE                             R10 R7
       51 GETIMPORT                        R8 K6 [table.insert]
       53 CALL                             R8 2 0
       54 FORGLOOP                         R3 2 ; [-8]
       56 NEWTABLE                         R3 0 0
       58 GETTABLEKS                       R7 R0 K0 ["index"]
       60 GETTABLEKS                       R4 R7 K9 ["gameTreeIndex"]
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 LOADK                            R12 K10 ["- %* (depth: %*)"]
       66 MOVE                             R14 R7
       67 GETTABLEKS                       R15 R8 K11 ["depth"]
       69 NAMECALL                         R12 R12 K3 ["format"]
       71 CALL                             R12 3 1
       72 MOVE                             R11 R12
       73 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       75 MOVE                             R10 R3
       76 GETIMPORT                        R9 K6 [table.insert]
       78 CALL                             R9 2 0
       79 FORGLOOP                         R4 2 ; [-15]
       81 LENGTH                           R4 R3
       82 LOADN                            R5 0
       83 JUMPIFNOTLT                      R5 R4 ; [+28]
       85 LOADK                            R7 K12 ["Game tree explored (use `from_history` with type=\"%*\"):"]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R9 R10 K13 ["GameTree"]
       89 NAMECALL                         R7 R7 K3 ["format"]
       91 CALL                             R7 2 1
       92 MOVE                             R6 R7
       93 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       95 MOVE                             R5 R1
       96 GETIMPORT                        R4 K6 [table.insert]
       98 CALL                             R4 2 0
       99 MOVE                             R4 R3
      100 LOADNIL                          R5
      101 LOADNIL                          R6
      102 FORGPREP                         R4
      103 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      105 MOVE                             R10 R1
      106 MOVE                             R11 R8
      107 GETIMPORT                        R9 K6 [table.insert]
      109 CALL                             R9 2 0
      110 FORGLOOP                         R4 2 ; [-8]
      112 NEWTABLE                         R4 0 0
      114 GETTABLEKS                       R8 R0 K0 ["index"]
      116 GETTABLEKS                       R5 R8 K14 ["grepIndex"]
      118 LOADNIL                          R6
      119 LOADNIL                          R7
      120 FORGPREP                         R5
      121 LOADK                            R13 K15 ["- %* (%* matches)"]
      122 MOVE                             R15 R8
      123 GETTABLEKS                       R16 R9 K16 ["matchCount"]
      125 NAMECALL                         R13 R13 K3 ["format"]
      127 CALL                             R13 3 1
      128 MOVE                             R12 R13
      129 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      131 MOVE                             R11 R4
      132 GETIMPORT                        R10 K6 [table.insert]
      134 CALL                             R10 2 0
      135 FORGLOOP                         R5 2 ; [-15]
      137 LENGTH                           R5 R4
      138 LOADN                            R6 0
      139 JUMPIFNOTLT                      R6 R5 ; [+28]
      141 LOADK                            R8 K17 ["Grep searches performed (use `from_history` with type=\"%*\"):"]
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R10 R11 K18 ["GrepSearch"]
      145 NAMECALL                         R8 R8 K3 ["format"]
      147 CALL                             R8 2 1
      148 MOVE                             R7 R8
      149 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      151 MOVE                             R6 R1
      152 GETIMPORT                        R5 K6 [table.insert]
      154 CALL                             R5 2 0
      155 MOVE                             R5 R4
      156 LOADNIL                          R6
      157 LOADNIL                          R7
      158 FORGPREP                         R5
      159 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      161 MOVE                             R11 R1
      162 MOVE                             R12 R9
      163 GETIMPORT                        R10 K6 [table.insert]
      165 CALL                             R10 2 0
      166 FORGLOOP                         R5 2 ; [-8]
      168 NEWTABLE                         R5 0 0
      170 GETTABLEKS                       R9 R0 K0 ["index"]
      172 GETTABLEKS                       R6 R9 K19 ["inspectIndex"]
      174 LOADNIL                          R7
      175 LOADNIL                          R8
      176 FORGPREP                         R6
      177 LOADK                            R14 K2 ["- %*"]
      178 MOVE                             R16 R9
      179 NAMECALL                         R14 R14 K3 ["format"]
      181 CALL                             R14 2 1
      182 MOVE                             R13 R14
      183 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      185 MOVE                             R12 R5
      186 GETIMPORT                        R11 K6 [table.insert]
      188 CALL                             R11 2 0
      189 FORGLOOP                         R6 1 ; [-13]
      191 LENGTH                           R6 R5
      192 LOADN                            R7 0
      193 JUMPIFNOTLT                      R7 R6 ; [+28]
      195 LOADK                            R9 K20 ["Instances inspected (use `from_history` with type=\"%*\"):"]
      196 GETUPVAL                         R12 0
      197 GETTABLEKS                       R11 R12 K21 ["InspectInstance"]
      199 NAMECALL                         R9 R9 K3 ["format"]
      201 CALL                             R9 2 1
      202 MOVE                             R8 R9
      203 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      205 MOVE                             R7 R1
      206 GETIMPORT                        R6 K6 [table.insert]
      208 CALL                             R6 2 0
      209 MOVE                             R6 R5
      210 LOADNIL                          R7
      211 LOADNIL                          R8
      212 FORGPREP                         R6
      213 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      215 MOVE                             R12 R1
      216 MOVE                             R13 R10
      217 GETIMPORT                        R11 K6 [table.insert]
      219 CALL                             R11 2 0
      220 FORGLOOP                         R6 2 ; [-8]
      222 LENGTH                           R6 R1
      223 JUMPIFNOTEQKN                    R6 K22 [0] ; [+3]
      225 LOADK                            R6 K23 ["No historical data indexed."]
      226 RETURN                           R6 1
      227 GETIMPORT                        R6 K25 [table.concat]
      229 MOVE                             R7 R1
      230 LOADK                            R8 K26 ["\n"]
      231 CALL                             R6 2 -1
      232 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolNames"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 0 0
       21 NEWTABLE                         R4 16 0
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 SETTABLEKS                       R5 R4 K10 ["new"]
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R5 R4 K12 ["get"]
       30 DUPCLOSURE                       R5 K13 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K14 ["set"]
       34 DUPCLOSURE                       R5 K15 [PROTO_3]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K16 ["removeThread"]
       38 DUPCLOSURE                       R5 K17 [PROTO_4]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K18 ["clearAll"]
       42 DUPCLOSURE                       R5 K19 [PROTO_5]
       43 DUPCLOSURE                       R6 K20 [PROTO_6]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R6 R4 K21 ["buildIndex"]
       47 DUPCLOSURE                       R6 K22 [PROTO_7]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R4 K23 ["_indexToolResult"]
       52 DUPCLOSURE                       R6 K24 [PROTO_8]
       53 SETTABLEKS                       R6 R4 K25 ["mergeIndex"]
       55 DUPCLOSURE                       R6 K26 [PROTO_9]
       56 SETTABLEKS                       R6 R4 K27 ["getScript"]
       58 DUPCLOSURE                       R6 K28 [PROTO_10]
       59 SETTABLEKS                       R6 R4 K29 ["getGameTree"]
       61 DUPCLOSURE                       R6 K30 [PROTO_11]
       62 SETTABLEKS                       R6 R4 K31 ["getGrep"]
       64 DUPCLOSURE                       R6 K32 [PROTO_12]
       65 SETTABLEKS                       R6 R4 K33 ["getInspect"]
       67 DUPCLOSURE                       R6 K34 [PROTO_13]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R6 R4 K35 ["buildManifest"]
       71 RETURN                           R4 1
