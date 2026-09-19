PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["summary"] = , ["compactedUIMessageCount"] = 0}]
        1 DUPTABLE                         R1 K11 [{"scriptIndex", "gameTreeIndex", "grepIndex", "inspectIndex", "planModeIndex"}]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K6 ["scriptIndex"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K7 ["gameTreeIndex"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K8 ["grepIndex"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K9 ["inspectIndex"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K10 ["planModeIndex"]
       22 SETTABLEKS                       R1 R0 K0 ["index"]
       24 RETURN                           R0 1

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
        0 DUPTABLE                         R1 K5 [{"scriptIndex", "gameTreeIndex", "grepIndex", "inspectIndex", "planModeIndex"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["scriptIndex"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["gameTreeIndex"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["grepIndex"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["inspectIndex"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["planModeIndex"]
       21 NEWTABLE                         R2 0 0
       23 MOVE                             R3 R0
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETTABLEKS                       R8 R7 K6 ["content"]
       29 JUMPIFNOT                        R8 ; [+37]
       30 GETTABLEKS                       R8 R7 K6 ["content"]
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 GETTABLEKS                       R13 R12 K7 ["type"]
       37 JUMPIFNOTEQKS                    R13 K8 ["tool_use"] ; [+27]
       39 GETTABLEKS                       R14 R12 K9 ["id"]
       41 GETTABLE                         R13 R2 R14
       42 JUMPIF                           R13 ; [+5]
       43 GETTABLEKS                       R13 R12 K9 ["id"]
       45 NEWTABLE                         R14 0 0
       47 SETTABLE                         R14 R2 R13
       48 GETTABLEKS                       R15 R12 K9 ["id"]
       50 GETTABLE                         R14 R2 R15
       51 DUPTABLE                         R15 K12 [{"name", "input"}]
       52 GETTABLEKS                       R16 R12 K10 ["name"]
       54 SETTABLEKS                       R16 R15 K10 ["name"]
       56 GETTABLEKS                       R16 R12 K11 ["input"]
       58 SETTABLEKS                       R16 R15 K11 ["input"]
       60 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       62 GETIMPORT                        R13 K15 [table.insert]
       64 CALL                             R13 2 0
       65 FORGLOOP                         R8 2 ; [-31]
       67 FORGLOOP                         R3 2 ; [-41]
       69 MOVE                             R3 R0
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 FORGPREP                         R3
       73 GETTABLEKS                       R8 R7 K6 ["content"]
       75 JUMPIFNOT                        R8 ; [+34]
       76 GETTABLEKS                       R8 R7 K6 ["content"]
       78 LOADNIL                          R9
       79 LOADNIL                          R10
       80 FORGPREP                         R8
       81 GETTABLEKS                       R13 R12 K7 ["type"]
       83 JUMPIFNOTEQKS                    R13 K16 ["tool_result"] ; [+24]
       85 GETTABLEKS                       R14 R12 K9 ["id"]
       87 GETTABLE                         R13 R2 R14
       88 JUMPIFNOT                        R13 ; [+19]
       89 LENGTH                           R14 R13
       90 LOADN                            R15 0
       91 JUMPIFNOTLT                      R15 R14 ; [+16]
       93 GETIMPORT                        R14 K18 [table.remove]
       95 MOVE                             R15 R13
       96 LOADN                            R16 1
       97 CALL                             R14 2 1
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K19 ["_indexToolResult"]
      101 MOVE                             R16 R1
      102 GETTABLEKS                       R17 R14 K10 ["name"]
      104 GETTABLEKS                       R18 R14 K11 ["input"]
      106 MOVE                             R19 R12
      107 CALL                             R15 4 0
      108 FORGLOOP                         R8 2 ; [-28]
      110 FORGLOOP                         R3 2 ; [-38]
      112 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R4 R3 K0 ["isError"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["ReadFile"]
       10 JUMPIFNOTEQ                      R1 R5 ; [+22]
       12 MOVE                             R5 R2
       13 JUMPIFNOT                        R5 ; [+2]
       14 GETTABLEKS                       R5 R2 K2 ["target_file"]
       16 JUMPIFNOT                        R5 ; [+208]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K4 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+202]
       24 GETTABLEKS                       R6 R0 K6 ["scriptIndex"]
       26 DUPTABLE                         R7 K9 [{"path", "content"}]
       27 SETTABLEKS                       R5 R7 K7 ["path"]
       29 SETTABLEKS                       R4 R7 K8 ["content"]
       31 SETTABLE                         R7 R6 R5
       32 RETURN                           R0 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K10 ["GameTree"]
       36 JUMPIFNOTEQ                      R1 R5 ; [+29]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R5 R2 K7 ["path"]
       41 JUMPIF                           R5 ; [+1]
       42 LOADK                            R5 K11 ["game"]
       43 FASTCALL1                        TYPEOF R5 ; [+3]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K4 [typeof]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+176]
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
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K18 ["GrepSearch"]
       69 JUMPIFNOTEQ                      R1 R5 ; [+33]
       71 MOVE                             R5 R2
       72 JUMPIFNOT                        R5 ; [+2]
       73 GETTABLEKS                       R5 R2 K19 ["query"]
       75 JUMPIFNOT                        R5 ; [+149]
       76 FASTCALL1                        TYPEOF R5 ; [+3]
       77 MOVE                             R7 R5
       78 GETIMPORT                        R6 K4 [typeof]
       80 CALL                             R6 1 1
       81 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+143]
       83 GETTABLEKS                       R6 R0 K20 ["grepIndex"]
       85 DUPTABLE                         R7 K23 [{"query", "matchCount", "results"}]
       86 SETTABLEKS                       R5 R7 K19 ["query"]
       88 GETTABLEKS                       R9 R3 K24 ["structuredContent"]
       90 JUMPIFNOT                        R9 ; [+5]
       91 GETTABLEKS                       R8 R3 K24 ["structuredContent"]
       93 GETTABLEKS                       R8 R8 K25 ["count"]
       95 JUMPIF                           R8 ; [+1]
       96 LOADN                            R8 0
       97 SETTABLEKS                       R8 R7 K21 ["matchCount"]
       99 SETTABLEKS                       R4 R7 K22 ["results"]
      101 SETTABLE                         R7 R6 R5
      102 RETURN                           R0 0
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K26 ["InspectInstance"]
      106 JUMPIFNOTEQ                      R1 R5 ; [+22]
      108 MOVE                             R5 R2
      109 JUMPIFNOT                        R5 ; [+2]
      110 GETTABLEKS                       R5 R2 K7 ["path"]
      112 JUMPIFNOT                        R5 ; [+112]
      113 FASTCALL1                        TYPEOF R5 ; [+3]
      114 MOVE                             R7 R5
      115 GETIMPORT                        R6 K4 [typeof]
      117 CALL                             R6 1 1
      118 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+106]
      120 GETTABLEKS                       R6 R0 K27 ["inspectIndex"]
      122 DUPTABLE                         R7 K29 [{"path", "properties"}]
      123 SETTABLEKS                       R5 R7 K7 ["path"]
      125 SETTABLEKS                       R4 R7 K28 ["properties"]
      127 SETTABLE                         R7 R6 R5
      128 RETURN                           R0 0
      129 GETUPVAL                         R5 2
      130 GETTABLEKS                       R5 R5 K30 ["FFlagAssistantMarkdownPlanMode"]
      132 JUMPIFNOT                        R5 ; [+92]
      133 GETUPVAL                         R5 1
      134 GETTABLEKS                       R5 R5 K31 ["FinalizePlan"]
      136 JUMPIFEQ                         R1 R5 ; [+6]
      138 GETUPVAL                         R5 1
      139 GETTABLEKS                       R5 R5 K32 ["UpdatePlan"]
      141 JUMPIFNOTEQ                      R1 R5 ; [+83]
      143 MOVE                             R5 R2
      144 JUMPIFNOT                        R5 ; [+2]
      145 GETTABLEKS                       R5 R2 K33 ["plan"]
      147 GETTABLEKS                       R6 R3 K24 ["structuredContent"]
      149 JUMPIFNOT                        R6 ; [+10]
      150 FASTCALL1                        TYPEOF R6 ; [+3]
      151 MOVE                             R9 R6
      152 GETIMPORT                        R8 K4 [typeof]
      154 CALL                             R8 1 1
      155 JUMPIFNOTEQKS                    R8 K34 ["table"] ; [+4]
      157 GETTABLEKS                       R7 R6 K35 ["planId"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R7
      161 JUMPIFNOT                        R7 ; [+63]
      162 FASTCALL1                        TYPEOF R7 ; [+3]
      163 MOVE                             R9 R7
      164 GETIMPORT                        R8 K4 [typeof]
      166 CALL                             R8 1 1
      167 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+57]
      169 JUMPIFNOT                        R5 ; [+55]
      170 FASTCALL1                        TYPEOF R5 ; [+3]
      171 MOVE                             R9 R5
      172 GETIMPORT                        R8 K4 [typeof]
      174 CALL                             R8 1 1
      175 JUMPIFNOTEQKS                    R8 K34 ["table"] ; [+49]
      177 GETTABLEKS                       R8 R0 K36 ["planModeIndex"]
      179 DUPTABLE                         R9 K39 [{"planId", "content", "title", "summary"}]
      180 SETTABLEKS                       R7 R9 K35 ["planId"]
      182 GETTABLEKS                       R12 R5 K40 ["completeDescription"]
      184 FASTCALL1                        TYPEOF R12 ; [+2]
      185 GETIMPORT                        R11 K4 [typeof]
      187 CALL                             R11 1 1
      188 JUMPIFNOTEQKS                    R11 K5 ["string"] ; [+4]
      190 GETTABLEKS                       R10 R5 K40 ["completeDescription"]
      192 JUMP                             ; [+1]
      193 LOADK                            R10 K41 [""]
      194 SETTABLEKS                       R10 R9 K8 ["content"]
      196 GETTABLEKS                       R12 R5 K37 ["title"]
      198 FASTCALL1                        TYPEOF R12 ; [+2]
      199 GETIMPORT                        R11 K4 [typeof]
      201 CALL                             R11 1 1
      202 JUMPIFNOTEQKS                    R11 K5 ["string"] ; [+4]
      204 GETTABLEKS                       R10 R5 K37 ["title"]
      206 JUMP                             ; [+1]
      207 LOADK                            R10 K41 [""]
      208 SETTABLEKS                       R10 R9 K37 ["title"]
      210 GETTABLEKS                       R12 R5 K38 ["summary"]
      212 FASTCALL1                        TYPEOF R12 ; [+2]
      213 GETIMPORT                        R11 K4 [typeof]
      215 CALL                             R11 1 1
      216 JUMPIFNOTEQKS                    R11 K5 ["string"] ; [+4]
      218 GETTABLEKS                       R10 R5 K38 ["summary"]
      220 JUMP                             ; [+1]
      221 LOADK                            R10 K41 [""]
      222 SETTABLEKS                       R10 R9 K38 ["summary"]
      224 SETTABLE                         R9 R8 R7
      225 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["scriptIndex"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R0 K1 ["index"]
        7 GETTABLEKS                       R7 R7 K0 ["scriptIndex"]
        9 SETTABLE                         R6 R7 R5
       10 FORGLOOP                         R2 2 ; [-6]
       12 GETTABLEKS                       R2 R1 K2 ["gameTreeIndex"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R7 R0 K1 ["index"]
       19 GETTABLEKS                       R7 R7 K2 ["gameTreeIndex"]
       21 SETTABLE                         R6 R7 R5
       22 FORGLOOP                         R2 2 ; [-6]
       24 GETTABLEKS                       R2 R1 K3 ["grepIndex"]
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLEKS                       R7 R0 K1 ["index"]
       31 GETTABLEKS                       R7 R7 K3 ["grepIndex"]
       33 SETTABLE                         R6 R7 R5
       34 FORGLOOP                         R2 2 ; [-6]
       36 GETTABLEKS                       R2 R1 K4 ["inspectIndex"]
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETTABLEKS                       R7 R0 K1 ["index"]
       43 GETTABLEKS                       R7 R7 K4 ["inspectIndex"]
       45 SETTABLE                         R6 R7 R5
       46 FORGLOOP                         R2 2 ; [-6]
       48 GETTABLEKS                       R2 R1 K5 ["planModeIndex"]
       50 LOADNIL                          R3
       51 LOADNIL                          R4
       52 FORGPREP                         R2
       53 GETTABLEKS                       R7 R0 K1 ["index"]
       55 GETTABLEKS                       R7 R7 K5 ["planModeIndex"]
       57 SETTABLE                         R6 R7 R5
       58 FORGLOOP                         R2 2 ; [-6]
       60 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R3 K1 ["scriptIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R3 K1 ["gameTreeIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R3 K1 ["grepIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R3 K1 ["planModeIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R3 K1 ["inspectIndex"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["index"]
        6 GETTABLEKS                       R3 R3 K1 ["scriptIndex"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADK                            R10 K2 ["- %*"]
       12 MOVE                             R12 R6
       13 NAMECALL                         R10 R10 K3 ["format"]
       15 CALL                             R10 2 1
       16 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K6 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 1 ; [-12]
       24 LENGTH                           R3 R2
       25 LOADN                            R4 0
       26 JUMPIFNOTLT                      R4 R3 ; [+27]
       28 LOADK                            R5 K7 ["Scripts previously read (use `from_history` with type=\"%*\"):"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K8 ["ReadFile"]
       32 NAMECALL                         R5 R5 K3 ["format"]
       34 CALL                             R5 2 1
       35 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K6 [table.insert]
       40 CALL                             R3 2 0
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       47 MOVE                             R9 R1
       48 MOVE                             R10 R7
       49 GETIMPORT                        R8 K6 [table.insert]
       51 CALL                             R8 2 0
       52 FORGLOOP                         R3 2 ; [-8]
       54 NEWTABLE                         R3 0 0
       56 GETTABLEKS                       R4 R0 K0 ["index"]
       58 GETTABLEKS                       R4 R4 K9 ["gameTreeIndex"]
       60 LOADNIL                          R5
       61 LOADNIL                          R6
       62 FORGPREP                         R4
       63 LOADK                            R11 K10 ["- %* (depth: %*)"]
       64 MOVE                             R13 R7
       65 GETTABLEKS                       R14 R8 K11 ["depth"]
       67 NAMECALL                         R11 R11 K3 ["format"]
       69 CALL                             R11 3 1
       70 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       72 MOVE                             R10 R3
       73 GETIMPORT                        R9 K6 [table.insert]
       75 CALL                             R9 2 0
       76 FORGLOOP                         R4 2 ; [-14]
       78 LENGTH                           R4 R3
       79 LOADN                            R5 0
       80 JUMPIFNOTLT                      R5 R4 ; [+27]
       82 LOADK                            R6 K12 ["Game tree explored (use `from_history` with type=\"%*\"):"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K13 ["GameTree"]
       86 NAMECALL                         R6 R6 K3 ["format"]
       88 CALL                             R6 2 1
       89 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       91 MOVE                             R5 R1
       92 GETIMPORT                        R4 K6 [table.insert]
       94 CALL                             R4 2 0
       95 MOVE                             R4 R3
       96 LOADNIL                          R5
       97 LOADNIL                          R6
       98 FORGPREP                         R4
       99 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      101 MOVE                             R10 R1
      102 MOVE                             R11 R8
      103 GETIMPORT                        R9 K6 [table.insert]
      105 CALL                             R9 2 0
      106 FORGLOOP                         R4 2 ; [-8]
      108 NEWTABLE                         R4 0 0
      110 GETTABLEKS                       R5 R0 K0 ["index"]
      112 GETTABLEKS                       R5 R5 K14 ["grepIndex"]
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 FORGPREP                         R5
      117 LOADK                            R12 K15 ["- %* (%* matches)"]
      118 MOVE                             R14 R8
      119 GETTABLEKS                       R15 R9 K16 ["matchCount"]
      121 NAMECALL                         R12 R12 K3 ["format"]
      123 CALL                             R12 3 1
      124 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      126 MOVE                             R11 R4
      127 GETIMPORT                        R10 K6 [table.insert]
      129 CALL                             R10 2 0
      130 FORGLOOP                         R5 2 ; [-14]
      132 LENGTH                           R5 R4
      133 LOADN                            R6 0
      134 JUMPIFNOTLT                      R6 R5 ; [+27]
      136 LOADK                            R7 K17 ["Grep searches performed (use `from_history` with type=\"%*\"):"]
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R9 R9 K18 ["GrepSearch"]
      140 NAMECALL                         R7 R7 K3 ["format"]
      142 CALL                             R7 2 1
      143 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      145 MOVE                             R6 R1
      146 GETIMPORT                        R5 K6 [table.insert]
      148 CALL                             R5 2 0
      149 MOVE                             R5 R4
      150 LOADNIL                          R6
      151 LOADNIL                          R7
      152 FORGPREP                         R5
      153 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      155 MOVE                             R11 R1
      156 MOVE                             R12 R9
      157 GETIMPORT                        R10 K6 [table.insert]
      159 CALL                             R10 2 0
      160 FORGLOOP                         R5 2 ; [-8]
      162 NEWTABLE                         R5 0 0
      164 GETTABLEKS                       R6 R0 K0 ["index"]
      166 GETTABLEKS                       R6 R6 K19 ["inspectIndex"]
      168 LOADNIL                          R7
      169 LOADNIL                          R8
      170 FORGPREP                         R6
      171 LOADK                            R13 K2 ["- %*"]
      172 MOVE                             R15 R9
      173 NAMECALL                         R13 R13 K3 ["format"]
      175 CALL                             R13 2 1
      176 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      178 MOVE                             R12 R5
      179 GETIMPORT                        R11 K6 [table.insert]
      181 CALL                             R11 2 0
      182 FORGLOOP                         R6 1 ; [-12]
      184 LENGTH                           R6 R5
      185 LOADN                            R7 0
      186 JUMPIFNOTLT                      R7 R6 ; [+27]
      188 LOADK                            R8 K20 ["Instances inspected (use `from_history` with type=\"%*\"):"]
      189 GETUPVAL                         R10 0
      190 GETTABLEKS                       R10 R10 K21 ["InspectInstance"]
      192 NAMECALL                         R8 R8 K3 ["format"]
      194 CALL                             R8 2 1
      195 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      197 MOVE                             R7 R1
      198 GETIMPORT                        R6 K6 [table.insert]
      200 CALL                             R6 2 0
      201 MOVE                             R6 R5
      202 LOADNIL                          R7
      203 LOADNIL                          R8
      204 FORGPREP                         R6
      205 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      207 MOVE                             R12 R1
      208 MOVE                             R13 R10
      209 GETIMPORT                        R11 K6 [table.insert]
      211 CALL                             R11 2 0
      212 FORGLOOP                         R6 2 ; [-8]
      214 GETUPVAL                         R6 1
      215 GETTABLEKS                       R6 R6 K22 ["FFlagAssistantMarkdownPlanMode"]
      217 JUMPIFNOT                        R6 ; [+50]
      218 NEWTABLE                         R6 0 0
      220 GETTABLEKS                       R7 R0 K0 ["index"]
      222 GETTABLEKS                       R7 R7 K23 ["planModeIndex"]
      224 LOADNIL                          R8
      225 LOADNIL                          R9
      226 FORGPREP                         R7
      227 LOADK                            R14 K24 ["- %*: \"%*\" — %*"]
      228 MOVE                             R16 R10
      229 GETTABLEKS                       R17 R11 K25 ["title"]
      231 GETTABLEKS                       R18 R11 K26 ["summary"]
      233 NAMECALL                         R14 R14 K3 ["format"]
      235 CALL                             R14 4 1
      236 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      238 MOVE                             R13 R6
      239 GETIMPORT                        R12 K6 [table.insert]
      241 CALL                             R12 2 0
      242 FORGLOOP                         R7 2 ; [-16]
      244 LENGTH                           R7 R6
      245 LOADN                            R8 0
      246 JUMPIFNOTLT                      R8 R7 ; [+21]
      248 FASTCALL2K                       TABLE_INSERT R1 K27 ; [+5]
      250 MOVE                             R8 R1
      251 LOADK                            R9 K27 ["Plans created (use `from_history` with type=\"plan_mode\" and key=planId):"]
      252 GETIMPORT                        R7 K6 [table.insert]
      254 CALL                             R7 2 0
      255 MOVE                             R7 R6
      256 LOADNIL                          R8
      257 LOADNIL                          R9
      258 FORGPREP                         R7
      259 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
      261 MOVE                             R13 R1
      262 MOVE                             R14 R11
      263 GETIMPORT                        R12 K6 [table.insert]
      265 CALL                             R12 2 0
      266 FORGLOOP                         R7 2 ; [-8]
      268 LENGTH                           R6 R1
      269 JUMPIFNOTEQKN                    R6 K28 [0] ; [+3]
      271 LOADK                            R6 K29 ["No historical data indexed."]
      272 RETURN                           R6 1
      273 GETIMPORT                        R6 K31 [table.concat]
      275 MOVE                             R7 R1
      276 LOADK                            R8 K32 ["\n"]
      277 CALL                             R6 2 -1
      278 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 GETTABLEKS                       R2 R2 K7 ["EngineFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Engine"]
       18 GETTABLEKS                       R3 R3 K8 ["StreamTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Engine"]
       25 GETTABLEKS                       R4 R4 K9 ["Providers"]
       27 GETTABLEKS                       R4 R4 K10 ["ToolNames"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 0 0
       32 NEWTABLE                         R5 16 0
       34 DUPCLOSURE                       R6 K11 [PROTO_0]
       35 SETTABLEKS                       R6 R5 K12 ["new"]
       37 DUPCLOSURE                       R6 K13 [PROTO_1]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K14 ["get"]
       41 DUPCLOSURE                       R6 K15 [PROTO_2]
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R6 R5 K16 ["set"]
       45 DUPCLOSURE                       R6 K17 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K18 ["removeThread"]
       49 DUPCLOSURE                       R6 K19 [PROTO_4]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R6 R5 K20 ["clearAll"]
       53 DUPCLOSURE                       R6 K21 [PROTO_5]
       54 DUPCLOSURE                       R7 K22 [PROTO_6]
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R7 R5 K23 ["buildIndex"]
       58 DUPCLOSURE                       R7 K24 [PROTO_7]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R7 R5 K25 ["_indexToolResult"]
       64 DUPCLOSURE                       R7 K26 [PROTO_8]
       65 SETTABLEKS                       R7 R5 K27 ["mergeIndex"]
       67 DUPCLOSURE                       R7 K28 [PROTO_9]
       68 SETTABLEKS                       R7 R5 K29 ["getScript"]
       70 DUPCLOSURE                       R7 K30 [PROTO_10]
       71 SETTABLEKS                       R7 R5 K31 ["getGameTree"]
       73 DUPCLOSURE                       R7 K32 [PROTO_11]
       74 SETTABLEKS                       R7 R5 K33 ["getGrep"]
       76 DUPCLOSURE                       R7 K34 [PROTO_12]
       77 SETTABLEKS                       R7 R5 K35 ["getPlan"]
       79 DUPCLOSURE                       R7 K36 [PROTO_13]
       80 SETTABLEKS                       R7 R5 K37 ["getInspect"]
       82 DUPCLOSURE                       R7 K38 [PROTO_14]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R7 R5 K39 ["buildManifest"]
       87 RETURN                           R5 1
