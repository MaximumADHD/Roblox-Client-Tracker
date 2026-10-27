PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["instance_type"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R1 K0 ["instance_type"]
        5 JUMPIFEQKS                       R2 K1 [""] ; [+9]
        7 GETTABLEKS                       R4 R1 K0 ["instance_type"]
        9 NAMECALL                         R2 R0 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K3 ["keywords"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETTABLEKS                       R2 R1 K3 ["keywords"]
       20 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
       22 LOADB                            R2 1
       23 RETURN                           R2 1
       24 GETTABLEKS                       R2 R0 K4 ["Name"]
       26 NAMECALL                         R2 R2 K5 ["lower"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R1 K3 ["keywords"]
       31 LOADK                            R5 K6 ["[^,%s]+"]
       32 NAMECALL                         R3 R3 K7 ["gmatch"]
       34 CALL                             R3 2 3
       35 FORGPREP                         R3
       36 NAMECALL                         R10 R6 K5 ["lower"]
       38 CALL                             R10 1 1
       39 LOADN                            R11 1
       40 LOADB                            R12 1
       41 NAMECALL                         R8 R2 K8 ["find"]
       43 CALL                             R8 4 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 LOADB                            R8 1
       46 RETURN                           R8 1
       47 FORGLOOP                         R3 1 ; [-12]
       49 LOADB                            R3 0
       50 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPathExcluded"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 3
        4 FORGPREP                         R3
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R7
        7 MOVE                             R10 R1
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+1]
       10 ADDK                             R2 R2 K1 [1]
       11 FORGLOOP                         R3 2 ; [-7]
       13 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        6 LOADK                            R2 K2 [""]
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K3 ["ClassName"]
       16 GETTABLEKS                       R12 R7 K3 ["ClassName"]
       18 GETTABLE                         R11 R2 R12
       19 ORK                              R10 R11 K1 [0]
       20 ADDK                             R9 R10 K4 [1]
       21 SETTABLE                         R9 R2 R8
       22 FORGLOOP                         R3 2 ; [-9]
       24 NEWTABLE                         R3 0 0
       26 GETIMPORT                        R4 K6 [pairs]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 LOADK                            R11 K7 ["%* %*"]
       32 MOVE                             R13 R8
       33 MOVE                             R14 R7
       34 NAMECALL                         R11 R11 K8 ["format"]
       36 CALL                             R11 3 1
       37 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       39 MOVE                             R10 R3
       40 GETIMPORT                        R9 K11 [table.insert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R4 2 ; [-13]
       45 GETIMPORT                        R4 K13 [table.sort]
       47 MOVE                             R5 R3
       48 CALL                             R4 1 0
       49 LOADK                            R4 K14 ["%* children (%*)"]
       50 LENGTH                           R6 R1
       51 GETIMPORT                        R7 K16 [table.concat]
       53 MOVE                             R8 R3
       54 LOADK                            R9 K17 [", "]
       55 CALL                             R7 2 1
       56 NAMECALL                         R4 R4 K8 ["format"]
       58 CALL                             R4 3 1
       59 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R1 K0 ["head_limit"]
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 0
        7 NEWTABLE                         R6 0 1
        9 DUPTABLE                         R7 K4 [{["instance"], ["depth"] = 0}]
       10 SETTABLEKS                       R0 R7 K1 ["instance"]
       12 SETLIST                          R6 R7 1 [1]
       14 LOADN                            R7 0
       15 GETIMPORT                        R8 K7 [os.clock]
       17 CALL                             R8 0 1
       18 LENGTH                           R9 R6
       19 LOADN                            R10 0
       20 JUMPIFNOTLT                      R10 R9 ; [+132]
       22 JUMPIFNOTLT                      R4 R5 ; [+130]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K8 ["FFlagAssistantGameTreeYield"]
       27 JUMPIFNOT                        R9 ; [+19]
       28 ADDK                             R7 R7 K9 [1]
       29 GETUPVAL                         R10 2
       30 MOD                              R9 R7 R10
       31 JUMPIFNOTEQKN                    R9 K3 [0] ; [+15]
       33 GETIMPORT                        R10 K7 [os.clock]
       35 CALL                             R10 0 1
       36 SUB                              R9 R10 R8
       37 GETUPVAL                         R10 3
       38 JUMPIFNOTLE                      R10 R9 ; [+8]
       40 GETIMPORT                        R9 K12 [task.wait]
       42 CALL                             R9 0 0
       43 GETIMPORT                        R9 K7 [os.clock]
       45 CALL                             R9 0 1
       46 MOVE                             R8 R9
       47 GETIMPORT                        R9 K15 [table.remove]
       49 MOVE                             R10 R6
       50 LOADN                            R11 1
       51 CALL                             R9 2 1
       52 GETTABLEKS                       R10 R9 K1 ["instance"]
       54 GETTABLEKS                       R11 R9 K2 ["depth"]
       56 NAMECALL                         R12 R10 K16 ["GetFullName"]
       58 CALL                             R12 1 1
       59 GETUPVAL                         R14 4
       60 GETTABLEKS                       R14 R14 K17 ["isPathExcluded"]
       62 MOVE                             R15 R12
       63 CALL                             R14 1 1
       64 NOT                              R13 R14
       65 JUMPIFNOT                        R13 ; [+86]
       66 NAMECALL                         R13 R10 K18 ["GetChildren"]
       68 CALL                             R13 1 1
       69 GETUPVAL                         R14 5
       70 MOVE                             R15 R10
       71 MOVE                             R16 R1
       72 CALL                             R14 2 1
       73 JUMPIFNOT                        R14 ; [+48]
       74 DUPTABLE                         R15 K23 [{"name", "className", "fullPath", "parentName"}]
       75 GETTABLEKS                       R16 R10 K24 ["Name"]
       77 SETTABLEKS                       R16 R15 K19 ["name"]
       79 GETTABLEKS                       R16 R10 K25 ["ClassName"]
       81 SETTABLEKS                       R16 R15 K20 ["className"]
       83 SETTABLEKS                       R12 R15 K21 ["fullPath"]
       85 GETTABLEKS                       R16 R10 K26 ["Parent"]
       87 JUMPIFNOT                        R16 ; [+4]
       88 GETTABLEKS                       R16 R10 K26 ["Parent"]
       90 GETTABLEKS                       R16 R16 K24 ["Name"]
       92 SETTABLEKS                       R16 R15 K22 ["parentName"]
       94 JUMPIFNOTLE                      R2 R11 ; [+19]
       96 LENGTH                           R16 R13
       97 LOADN                            R17 0
       98 JUMPIFNOTLT                      R17 R16 ; [+15]
      100 GETUPVAL                         R16 6
      101 MOVE                             R17 R10
      102 CALL                             R16 1 1
      103 SETTABLEKS                       R16 R15 K27 ["childSummary"]
      105 GETUPVAL                         R16 7
      106 MOVE                             R17 R10
      107 MOVE                             R18 R1
      108 CALL                             R16 2 1
      109 LOADN                            R17 0
      110 JUMPIFNOTLT                      R17 R16 ; [+3]
      112 SETTABLEKS                       R16 R15 K28 ["unexploredChildCount"]
      114 FASTCALL2                        TABLE_INSERT R3 R15 ; [+5]
      116 MOVE                             R17 R3
      117 MOVE                             R18 R15
      118 GETIMPORT                        R16 K30 [table.insert]
      120 CALL                             R16 2 0
      121 ADDK                             R4 R4 K9 [1]
      122 JUMPIFNOTLT                      R11 R2 ; [+29]
      124 MOVE                             R15 R13
      125 LOADNIL                          R16
      126 LOADNIL                          R17
      127 FORGPREP                         R15
      128 NAMECALL                         R20 R19 K16 ["GetFullName"]
      130 CALL                             R20 1 1
      131 GETUPVAL                         R22 4
      132 GETTABLEKS                       R22 R22 K17 ["isPathExcluded"]
      134 MOVE                             R23 R20
      135 CALL                             R22 1 1
      136 NOT                              R21 R22
      137 JUMPIFNOT                        R21 ; [+12]
      138 DUPTABLE                         R23 K31 [{"instance", "depth"}]
      139 SETTABLEKS                       R19 R23 K1 ["instance"]
      141 ADDK                             R24 R11 K9 [1]
      142 SETTABLEKS                       R24 R23 K2 ["depth"]
      144 FASTCALL2                        TABLE_INSERT R6 R23 ; [+4]
      146 MOVE                             R22 R6
      147 GETIMPORT                        R21 K30 [table.insert]
      149 CALL                             R21 2 0
      150 FORGLOOP                         R15 2 ; [-23]
      152 JUMPBACK                         ; [-135]
      153 RETURN                           R3 2

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keywords"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 LOADK                            R4 K1 ["keywords '%*'"]
        6 GETTABLEKS                       R6 R0 K0 ["keywords"]
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 2 1
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K5 [table.insert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K6 ["instance_type"]
       19 JUMPIFNOT                        R2 ; [+12]
       20 LOADK                            R4 K7 ["type '%*'"]
       21 GETTABLEKS                       R6 R0 K6 ["instance_type"]
       23 NAMECALL                         R4 R4 K2 ["format"]
       25 CALL                             R4 2 1
       26 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K5 [table.insert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R0 K8 ["path"]
       34 JUMPIFNOT                        R2 ; [+16]
       35 GETTABLEKS                       R2 R0 K8 ["path"]
       37 JUMPIFEQKS                       R2 K9 [""] ; [+13]
       39 LOADK                            R4 K10 ["path '%*'"]
       40 GETTABLEKS                       R6 R0 K8 ["path"]
       42 NAMECALL                         R4 R4 K2 ["format"]
       44 CALL                             R4 2 1
       45 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       47 MOVE                             R3 R1
       48 GETIMPORT                        R2 K5 [table.insert]
       50 CALL                             R2 2 0
       51 LENGTH                           R3 R1
       52 LOADN                            R4 0
       53 JUMPIFNOTLT                      R4 R3 ; [+7]
       55 GETIMPORT                        R2 K12 [table.concat]
       57 MOVE                             R3 R1
       58 LOADK                            R4 K13 [", "]
       59 CALL                             R2 2 1
       60 JUMPIF                           R2 ; [+1]
       61 LOADK                            R2 K14 ["the specified filters"]
       62 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["findInstance"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 RETURN                           R2 2
       16 LOADNIL                          R2
       17 LOADK                            R3 K4 ["Could not find instance at path '%*'"]
       18 MOVE                             R5 R0
       19 NAMECALL                         R3 R3 K5 ["format"]
       21 CALL                             R3 2 1
       22 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["max_depth"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [math.min]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 JUMPIFLT                         R4 R1 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETTABLEKS                       R6 R0 K4 ["path"]
       18 JUMPIFNOT                        R6 ; [+2]
       19 JUMPIFNOTEQKS                    R6 K5 [""] ; [+5]
       21 GETIMPORT                        R4 K7 [game]
       23 LOADNIL                          R5
       24 JUMP                             ; [+16]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K8 ["findInstance"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 JUMPIFNOT                        R7 ; [+3]
       31 MOVE                             R4 R7
       32 LOADNIL                          R5
       33 JUMP                             ; [+7]
       34 LOADNIL                          R4
       35 LOADK                            R8 K9 ["Could not find instance at path '%*'"]
       36 MOVE                             R10 R6
       37 NAMECALL                         R8 R8 K10 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R5 R8
       41 JUMPIFNOT                        R5 ; [+9]
       42 DUPTABLE                         R6 K12 [{"text"}]
       43 LOADK                            R7 K13 ["Error: %*"]
       44 MOVE                             R9 R5
       45 NAMECALL                         R7 R7 K10 ["format"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K11 ["text"]
       50 RETURN                           R6 1
       51 FASTCALL2K                       ASSERT R4 K14 ; [+5]
       53 MOVE                             R7 R4
       54 LOADK                            R8 K14 ["startInstance should not be nil if err is nil"]
       55 GETIMPORT                        R6 K16 [assert]
       57 CALL                             R6 2 0
       58 GETUPVAL                         R6 3
       59 MOVE                             R7 R4
       60 MOVE                             R8 R0
       61 MOVE                             R9 R2
       62 CALL                             R6 3 2
       63 LENGTH                           R8 R6
       64 JUMPIFNOTEQKN                    R8 K17 [0] ; [+13]
       66 GETUPVAL                         R8 4
       67 MOVE                             R9 R0
       68 CALL                             R8 1 1
       69 DUPTABLE                         R9 K12 [{"text"}]
       70 LOADK                            R10 K18 ["No instances found matching %*"]
       71 MOVE                             R12 R8
       72 NAMECALL                         R10 R10 K10 ["format"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K11 ["text"]
       77 RETURN                           R9 1
       78 LENGTH                           R8 R6
       79 GETIMPORT                        R9 K20 [pcall]
       81 NEWCLOSURE                       R10 P0
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R6
       84 CALL                             R9 1 2
       85 JUMPIF                           R9 ; [+13]
       86 DUPTABLE                         R11 K12 [{"text"}]
       87 LOADK                            R12 K21 ["Error encoding JSON: %*"]
       88 FASTCALL1                        TOSTRING R10 ; [+3]
       89 MOVE                             R15 R10
       90 GETIMPORT                        R14 K23 [tostring]
       92 CALL                             R14 1 1
       93 NAMECALL                         R12 R12 K10 ["format"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K11 ["text"]
       98 RETURN                           R11 1
       99 GETTABLEKS                       R11 R0 K24 ["head_limit"]
      101 JUMPIF                           R11 ; [+1]
      102 GETUPVAL                         R11 6
      103 JUMPIFNOTLT                      R7 R11 ; [+8]
      105 JUMPIF                           R3 ; [+6]
      106 DUPTABLE                         R12 K26 [{"text", "count"}]
      107 SETTABLEKS                       R10 R12 K11 ["text"]
      109 SETTABLEKS                       R8 R12 K25 ["count"]
      111 RETURN                           R12 1
      112 NEWTABLE                         R12 0 0
      114 JUMPIFNOTLE                      R11 R7 ; [+12]
      116 LOADK                            R15 K27 ["Note: Output limited to %* nodes (results truncated)"]
      117 MOVE                             R17 R11
      118 NAMECALL                         R15 R15 K10 ["format"]
      120 CALL                             R15 2 1
      121 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      123 MOVE                             R14 R12
      124 GETIMPORT                        R13 K30 [table.insert]
      126 CALL                             R13 2 0
      127 JUMPIFNOT                        R3 ; [+12]
      128 LOADK                            R15 K31 ["Note: Max depth capped at %* (requested %*)"]
      129 GETUPVAL                         R17 1
      130 MOVE                             R18 R1
      131 NAMECALL                         R15 R15 K10 ["format"]
      133 CALL                             R15 3 1
      134 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      136 MOVE                             R14 R12
      137 GETIMPORT                        R13 K30 [table.insert]
      139 CALL                             R13 2 0
      140 DUPTABLE                         R13 K26 [{"text", "count"}]
      141 GETIMPORT                        R18 K33 [table.concat]
      143 MOVE                             R19 R12
      144 LOADK                            R20 K34 ["\n"]
      145 CALL                             R18 2 1
      146 MOVE                             R15 R18
      147 LOADK                            R16 K35 ["\n\n"]
      148 MOVE                             R17 R10
      149 CONCAT                           R14 R15 R17
      150 SETTABLEKS                       R14 R13 K11 ["text"]
      152 SETTABLEKS                       R8 R13 K25 ["count"]
      154 RETURN                           R13 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_12:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["forTarget"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K3 ["Types"]
       20 GETTABLEKS                       R5 R5 K4 ["Standalone"]
       22 JUMPIFNOTEQ                      R2 R5 ; [+6]
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R0
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 JUMP                             ; [+17]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETUPVAL                         R5 4
       34 MOVE                             R7 R3
       35 MOVE                             R8 R0
       36 NAMECALL                         R5 R5 K5 ["InvokeAsync"]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R5 5
       42 MOVE                             R6 R2
       43 MOVE                             R7 R0
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 GETUPVAL                         R5 6
       47 CALL                             R5 0 1
       48 GETTABLEKS                       R7 R4 K6 ["text"]
       50 NAMECALL                         R5 R5 K7 ["addText"]
       52 CALL                             R5 2 1
       53 DUPTABLE                         R7 K12 [{"count", "path", "keywords", "instanceType"}]
       54 GETTABLEKS                       R8 R4 K8 ["count"]
       56 SETTABLEKS                       R8 R7 K8 ["count"]
       58 GETTABLEKS                       R8 R0 K9 ["path"]
       60 SETTABLEKS                       R8 R7 K9 ["path"]
       62 GETTABLEKS                       R8 R0 K10 ["keywords"]
       64 SETTABLEKS                       R8 R7 K10 ["keywords"]
       66 GETTABLEKS                       R8 R0 K13 ["instance_type"]
       68 SETTABLEKS                       R8 R7 K11 ["instanceType"]
       70 NAMECALL                         R5 R5 K14 ["setStructuredContent"]
       72 CALL                             R5 2 1
       73 NAMECALL                         R5 R5 K15 ["build"]
       75 CALL                             R5 1 -1
       76 RETURN                           R5 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["GameTreeTool.explore"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_9]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["GameTreeTool_explore"]
       48 DUPCLOSURE                       R9 K15 [PROTO_11]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          REF R4
       60 CAPTURE                          REF R3
       61 CAPTURE                          UPVAL U7
       62 GETUPVAL                         R6 8
       63 GETTABLEKS                       R6 R6 K17 ["define"]
       65 CALL                             R6 0 1
       66 GETUPVAL                         R8 9
       67 GETTABLEKS                       R8 R8 K18 ["ToolNames"]
       69 GETTABLEKS                       R8 R8 K19 ["GameTree"]
       71 NAMECALL                         R6 R6 K20 ["setName"]
       73 CALL                             R6 2 1
       74 LOADK                            R9 K21 ["Explore the Roblox game hierarchy tree with flat JSON output.\nReturns an array of JSON objects representing instances in the Data Model, showing names, paths, and relationships.\nUse optional filters to narrow down results by path, instance type, or keywords.\nFor detailed inspection of a specific instance's properties and attributes, use the Inspect Instance tool.\n\nOUTPUT FORMAT:\nArray of objects with:\n{\n  \"name\": \"InstanceName\",\n  \"className\": \"Part\", \n  \"fullPath\": \"Workspace.Folder.InstanceName\",\n  \"parentName\": \"Folder\",\n  \"childSummary\": \"5 children (3 Part, 2 Script)\",  // Present if depth limit reached and children exist\n  \"unexploredChildCount\": 5  // Present if depth limit reached with matching children\n}\n\nDEPTH LIMITING:\n- Default max_depth: "]
       75 GETUPVAL                         R10 10
       76 LOADK                            R11 K22 [" levels from start point (absolute traversal depth)\n- Absolute max: "]
       77 GETUPVAL                         R12 11
       78 LOADK                            R13 K23 [" levels\n- max_depth limits how deep into the hierarchy we traverse, regardless of filters\n- Beyond max_depth, children are summarized with counts by class type\n- Nodes at depth limit show: \"unexploredChildCount\" and \"childSummary\"\n\nEXAMPLES (every call must pass datamodel_type: use \"Edit\" in edit mode, or \"Client\"/\"Server\" during a playtest -- \"Edit\" is rejected while playing):\n- Full tree ("]
       79 GETUPVAL                         R14 10
       80 LOADK                            R15 K24 [" levels): search_game_tree(datamodel_type: \"Edit\")\n- Workspace only: search_game_tree(datamodel_type: \"Edit\", path: \"Workspace\")\n- ServerScriptService: search_game_tree(datamodel_type: \"Edit\", path: \"ServerScriptService\")\n- All base scripts: search_game_tree(datamodel_type: \"Edit\", instance_type: \"BaseScript\")\n- All parts: search_game_tree(datamodel_type: \"Edit\", instance_type: \"Part\")\n- By keywords: search_game_tree(datamodel_type: \"Edit\", keywords: \"player, character\")\n- Deep exploration: search_game_tree(datamodel_type: \"Edit\", max_depth: 6)\n- Combined filters: search_game_tree(datamodel_type: \"Edit\", path: \"Workspace\", instance_type: \"Part\", keywords: \"red\")\n- Client tree during a playtest: search_game_tree(datamodel_type: \"Client\", path: \"Players\")\n- Server tree during a playtest: search_game_tree(datamodel_type: \"Server\", path: \"Workspace\")\n"]
       81 CONCAT                           R8 R9 R15
       82 NAMECALL                         R6 R6 K25 ["setDescription"]
       84 CALL                             R6 2 1
       85 LOADK                            R8 K26 ["path"]
       86 DUPTABLE                         R9 K31 [{["type"] = "string", ["description"] = "Start exploration from this path. Examples: 'Workspace', 'ServerScriptService', 'Workspace.Models'. Path is case-sensitive."}]
       87 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       89 CALL                             R6 3 1
       90 LOADK                            R8 K33 ["instance_type"]
       91 DUPTABLE                         R9 K35 [{["type"] = "string", ["description"] = "Filter by ClassName using IsA() check. Examples: 'BasePart', 'BaseScript', 'GuiObject', 'Model', 'Folder'. Case sensitive."}]
       92 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       94 CALL                             R6 3 1
       95 LOADK                            R8 K36 ["keywords"]
       96 DUPTABLE                         R9 K38 [{["type"] = "string", ["description"] = "Filter by instance name keywords (case-insensitive). Separate multiple keywords with commas or spaces. Instance name must contain at least one keyword. Examples: 'player', 'red, blue', 'button door'"}]
       97 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       99 CALL                             R6 3 1
      100 LOADK                            R8 K39 ["max_depth"]
      101 DUPTABLE                         R9 K41 [{["type"] = "number", ["description"]}]
      102 LOADK                            R10 K42 ["Maximum absolute depth to traverse from start point. Default: %*, Absolute max: %*. Limits how deep we explore in the hierarchy regardless of filters. Beyond this depth, children are summarized instead of expanded."]
      103 GETUPVAL                         R12 10
      104 GETUPVAL                         R13 11
      105 NAMECALL                         R10 R10 K43 ["format"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K29 ["description"]
      110 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
      112 CALL                             R6 3 1
      113 LOADK                            R8 K44 ["head_limit"]
      114 DUPTABLE                         R9 K41 [{["type"] = "number", ["description"]}]
      115 LOADK                            R10 K45 ["Maximum number of results to return. Default: %*. Prevents overwhelming output for large trees."]
      116 GETUPVAL                         R12 12
      117 NAMECALL                         R10 R10 K43 ["format"]
      119 CALL                             R10 2 1
      120 SETTABLEKS                       R10 R9 K29 ["description"]
      122 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
      124 CALL                             R6 3 1
      125 LOADK                            R8 K46 ["Game Tree"]
      126 NAMECALL                         R6 R6 K47 ["setTitle"]
      128 CALL                             R6 2 1
      129 DUPTABLE                         R8 K55 [{["title"] = "Game Tree", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      130 NAMECALL                         R6 R6 K56 ["setAnnotations"]
      132 CALL                             R6 2 1
      133 MOVE                             R8 R5
      134 NAMECALL                         R6 R6 K57 ["setHandler"]
      136 CALL                             R6 2 1
      137 NAMECALL                         R6 R6 K58 ["build"]
      139 CALL                             R6 1 1
      140 DUPTABLE                         R7 K61 [{"availableDataModelTypes", "definition"}]
      141 NEWTABLE                         R8 0 4
      143 GETUPVAL                         R9 6
      144 GETTABLEKS                       R9 R9 K62 ["Types"]
      146 GETTABLEKS                       R9 R9 K63 ["Edit"]
      148 GETUPVAL                         R10 6
      149 GETTABLEKS                       R10 R10 K62 ["Types"]
      151 GETTABLEKS                       R10 R10 K64 ["Client"]
      153 GETUPVAL                         R11 6
      154 GETTABLEKS                       R11 R11 K62 ["Types"]
      156 GETTABLEKS                       R11 R11 K65 ["Server"]
      158 GETUPVAL                         R12 6
      159 GETTABLEKS                       R12 R12 K62 ["Types"]
      161 GETTABLEKS                       R12 R12 K8 ["Standalone"]
      163 SETLIST                          R8 R9 4 [1]
      165 SETTABLEKS                       R8 R7 K59 ["availableDataModelTypes"]
      167 SETTABLEKS                       R6 R7 K60 ["definition"]
      169 CLOSEUPVALS                      R3
      170 RETURN                           R7 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["NetworkingIdentity"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K10 [require]
       51 GETTABLEKS                       R10 R0 K18 ["Tools"]
       53 GETTABLEKS                       R10 R10 K19 ["ToolTypes"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K10 [require]
       58 GETTABLEKS                       R11 R0 K14 ["Util"]
       60 GETTABLEKS                       R11 R11 K20 ["ToolUtils"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R11 R4 K21 ["Remote"]
       65 GETTABLEKS                       R12 R5 K14 ["Util"]
       67 GETTABLEKS                       R12 R12 K22 ["ToolBuilder"]
       69 GETTABLEKS                       R13 R5 K14 ["Util"]
       71 GETTABLEKS                       R13 R13 K23 ["ToolResult"]
       73 GETTABLEKS                       R14 R7 K24 ["FIntGameTreeDefaultHeadLimit"]
       75 GETTABLEKS                       R15 R7 K25 ["FIntGameTreeDefaultMaxDepth"]
       77 GETTABLEKS                       R16 R7 K26 ["FIntGameTreeMaxAbsoluteDepth"]
       79 GETTABLEKS                       R18 R7 K27 ["FIntGameTreeYieldCheckInterval"]
       81 FASTCALL2K                       MATH_MAX R18 K28 ; [+4]
       83 LOADK                            R19 K28 [1]
       84 GETIMPORT                        R17 K31 [math.max]
       86 CALL                             R17 2 1
       87 GETTABLEKS                       R20 R7 K32 ["FIntGameTreeYieldFps"]
       89 FASTCALL2K                       MATH_MAX R20 K28 ; [+4]
       91 LOADK                            R21 K28 [1]
       92 GETIMPORT                        R19 K31 [math.max]
       94 CALL                             R19 2 1
       95 DIVRK                            R18 K28 [1] R19
       96 DUPCLOSURE                       R19 K33 [PROTO_0]
       97 DUPCLOSURE                       R20 K34 [PROTO_1]
       98 CAPTURE                          VAL R10
       99 DUPCLOSURE                       R21 K35 [PROTO_2]
      100 CAPTURE                          VAL R19
      101 DUPCLOSURE                       R22 K36 [PROTO_3]
      102 DUPCLOSURE                       R23 K37 [PROTO_4]
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R22
      110 CAPTURE                          VAL R21
      111 DUPCLOSURE                       R24 K38 [PROTO_5]
      112 DUPCLOSURE                       R25 K39 [PROTO_6]
      113 CAPTURE                          VAL R10
      114 DUPCLOSURE                       R26 K40 [PROTO_8]
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R23
      119 CAPTURE                          VAL R24
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R14
      122 DUPCLOSURE                       R27 K41 [PROTO_13]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R26
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R14
      136 RETURN                           R27 1
