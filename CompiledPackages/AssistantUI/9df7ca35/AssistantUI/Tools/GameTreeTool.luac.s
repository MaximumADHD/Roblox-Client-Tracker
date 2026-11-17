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
       79 NEWCLOSURE                       R10 P0
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R6
       82 FASTPCALL                        pcall 1 ; [+2]
       83 GETIMPORT                        R9 K20 [pcall]
       85 CALL                             R9 1 2
       86 JUMPIF                           R9 ; [+13]
       87 DUPTABLE                         R11 K12 [{"text"}]
       88 LOADK                            R12 K21 ["Error encoding JSON: %*"]
       89 FASTCALL1                        TOSTRING R10 ; [+3]
       90 MOVE                             R15 R10
       91 GETIMPORT                        R14 K23 [tostring]
       93 CALL                             R14 1 1
       94 NAMECALL                         R12 R12 K10 ["format"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K11 ["text"]
       99 RETURN                           R11 1
      100 GETTABLEKS                       R11 R0 K24 ["head_limit"]
      102 JUMPIF                           R11 ; [+1]
      103 GETUPVAL                         R11 6
      104 JUMPIFNOTLT                      R7 R11 ; [+8]
      106 JUMPIF                           R3 ; [+6]
      107 DUPTABLE                         R12 K26 [{"text", "count"}]
      108 SETTABLEKS                       R10 R12 K11 ["text"]
      110 SETTABLEKS                       R8 R12 K25 ["count"]
      112 RETURN                           R12 1
      113 NEWTABLE                         R12 0 0
      115 JUMPIFNOTLE                      R11 R7 ; [+12]
      117 LOADK                            R15 K27 ["Note: Output limited to %* nodes (results truncated)"]
      118 MOVE                             R17 R11
      119 NAMECALL                         R15 R15 K10 ["format"]
      121 CALL                             R15 2 1
      122 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      124 MOVE                             R14 R12
      125 GETIMPORT                        R13 K30 [table.insert]
      127 CALL                             R13 2 0
      128 JUMPIFNOT                        R3 ; [+12]
      129 LOADK                            R15 K31 ["Note: Max depth capped at %* (requested %*)"]
      130 GETUPVAL                         R17 1
      131 MOVE                             R18 R1
      132 NAMECALL                         R15 R15 K10 ["format"]
      134 CALL                             R15 3 1
      135 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      137 MOVE                             R14 R12
      138 GETIMPORT                        R13 K30 [table.insert]
      140 CALL                             R13 2 0
      141 DUPTABLE                         R13 K26 [{"text", "count"}]
      142 GETIMPORT                        R15 K33 [table.concat]
      144 MOVE                             R16 R12
      145 LOADK                            R17 K34 ["\n"]
      146 CALL                             R15 2 1
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
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["forTarget"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["Types"]
       14 GETTABLEKS                       R5 R5 K3 ["Standalone"]
       16 JUMPIFNOTEQ                      R2 R5 ; [+6]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 CALL                             R5 1 1
       21 MOVE                             R4 R5
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 3
       24 MOVE                             R7 R3
       25 MOVE                             R8 R0
       26 NAMECALL                         R5 R5 K4 ["InvokeAsync"]
       28 CALL                             R5 3 1
       29 MOVE                             R4 R5
       30 GETUPVAL                         R5 4
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R7 R4 K5 ["text"]
       34 NAMECALL                         R5 R5 K6 ["addText"]
       36 CALL                             R5 2 1
       37 DUPTABLE                         R7 K11 [{"count", "path", "keywords", "instanceType"}]
       38 GETTABLEKS                       R8 R4 K7 ["count"]
       40 SETTABLEKS                       R8 R7 K7 ["count"]
       42 GETTABLEKS                       R8 R0 K8 ["path"]
       44 SETTABLEKS                       R8 R7 K8 ["path"]
       46 GETTABLEKS                       R8 R0 K9 ["keywords"]
       48 SETTABLEKS                       R8 R7 K9 ["keywords"]
       50 GETTABLEKS                       R8 R0 K12 ["instance_type"]
       52 SETTABLEKS                       R8 R7 K10 ["instanceType"]
       54 NAMECALL                         R5 R5 K13 ["setStructuredContent"]
       56 CALL                             R5 2 1
       57 NAMECALL                         R5 R5 K14 ["build"]
       59 CALL                             R5 1 -1
       60 RETURN                           R5 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["GameTreeTool.explore"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_9]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U6
       43 GETUPVAL                         R6 7
       44 GETTABLEKS                       R6 R6 K12 ["define"]
       46 CALL                             R6 0 1
       47 GETUPVAL                         R8 8
       48 GETTABLEKS                       R8 R8 K13 ["ToolNames"]
       50 GETTABLEKS                       R8 R8 K14 ["GameTree"]
       52 NAMECALL                         R6 R6 K15 ["setName"]
       54 CALL                             R6 2 1
       55 LOADK                            R9 K16 ["Explore the Roblox game hierarchy tree with flat JSON output.\nReturns an array of JSON objects representing instances in the Data Model, showing names, paths, and relationships.\nUse optional filters to narrow down results by path, instance type, or keywords.\nFor detailed inspection of a specific instance's properties and attributes, use the Inspect Instance tool.\n\nOUTPUT FORMAT:\nArray of objects with:\n{\n  \"name\": \"InstanceName\",\n  \"className\": \"Part\", \n  \"fullPath\": \"Workspace.Folder.InstanceName\",\n  \"parentName\": \"Folder\",\n  \"childSummary\": \"5 children (3 Part, 2 Script)\",  // Present if depth limit reached and children exist\n  \"unexploredChildCount\": 5  // Present if depth limit reached with matching children\n}\n\nDEPTH LIMITING:\n- Default max_depth: "]
       56 GETUPVAL                         R10 9
       57 LOADK                            R11 K17 [" levels from start point (absolute traversal depth)\n- Absolute max: "]
       58 GETUPVAL                         R12 10
       59 LOADK                            R13 K18 [" levels\n- max_depth limits how deep into the hierarchy we traverse, regardless of filters\n- Beyond max_depth, children are summarized with counts by class type\n- Nodes at depth limit show: \"unexploredChildCount\" and \"childSummary\"\n\nEXAMPLES (every call must pass datamodel_type: use \"Edit\" in edit mode, or \"Client\"/\"Server\" during a playtest -- \"Edit\" is rejected while playing):\n- Full tree ("]
       60 GETUPVAL                         R14 9
       61 LOADK                            R15 K19 [" levels): search_game_tree(datamodel_type: \"Edit\")\n- Workspace only: search_game_tree(datamodel_type: \"Edit\", path: \"Workspace\")\n- ServerScriptService: search_game_tree(datamodel_type: \"Edit\", path: \"ServerScriptService\")\n- All base scripts: search_game_tree(datamodel_type: \"Edit\", instance_type: \"BaseScript\")\n- All parts: search_game_tree(datamodel_type: \"Edit\", instance_type: \"Part\")\n- By keywords: search_game_tree(datamodel_type: \"Edit\", keywords: \"player, character\")\n- Deep exploration: search_game_tree(datamodel_type: \"Edit\", max_depth: 6)\n- Combined filters: search_game_tree(datamodel_type: \"Edit\", path: \"Workspace\", instance_type: \"Part\", keywords: \"red\")\n- Client tree during a playtest: search_game_tree(datamodel_type: \"Client\", path: \"Players\")\n- Server tree during a playtest: search_game_tree(datamodel_type: \"Server\", path: \"Workspace\")\n"]
       62 CONCAT                           R8 R9 R15
       63 NAMECALL                         R6 R6 K20 ["setDescription"]
       65 CALL                             R6 2 1
       66 LOADK                            R8 K21 ["path"]
       67 DUPTABLE                         R9 K26 [{["type"] = "string", ["description"] = "Start exploration from this path. Examples: 'Workspace', 'ServerScriptService', 'Workspace.Models'. Path is case-sensitive."}]
       68 NAMECALL                         R6 R6 K27 ["addOptionalArgument"]
       70 CALL                             R6 3 1
       71 LOADK                            R8 K28 ["instance_type"]
       72 DUPTABLE                         R9 K30 [{["type"] = "string", ["description"] = "Filter by ClassName using IsA() check. Examples: 'BasePart', 'BaseScript', 'GuiObject', 'Model', 'Folder'. Case sensitive."}]
       73 NAMECALL                         R6 R6 K27 ["addOptionalArgument"]
       75 CALL                             R6 3 1
       76 LOADK                            R8 K31 ["keywords"]
       77 DUPTABLE                         R9 K33 [{["type"] = "string", ["description"] = "Filter by instance name keywords (case-insensitive). Separate multiple keywords with commas or spaces. Instance name must contain at least one keyword. Examples: 'player', 'red, blue', 'button door'"}]
       78 NAMECALL                         R6 R6 K27 ["addOptionalArgument"]
       80 CALL                             R6 3 1
       81 LOADK                            R8 K34 ["max_depth"]
       82 DUPTABLE                         R9 K36 [{["type"] = "number", ["description"]}]
       83 LOADK                            R10 K37 ["Maximum absolute depth to traverse from start point. Default: %*, Absolute max: %*. Limits how deep we explore in the hierarchy regardless of filters. Beyond this depth, children are summarized instead of expanded."]
       84 GETUPVAL                         R12 9
       85 GETUPVAL                         R13 10
       86 NAMECALL                         R10 R10 K38 ["format"]
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K24 ["description"]
       91 NAMECALL                         R6 R6 K27 ["addOptionalArgument"]
       93 CALL                             R6 3 1
       94 LOADK                            R8 K39 ["head_limit"]
       95 DUPTABLE                         R9 K36 [{["type"] = "number", ["description"]}]
       96 LOADK                            R10 K40 ["Maximum number of results to return. Default: %*. Prevents overwhelming output for large trees."]
       97 GETUPVAL                         R12 11
       98 NAMECALL                         R10 R10 K38 ["format"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K24 ["description"]
      103 NAMECALL                         R6 R6 K27 ["addOptionalArgument"]
      105 CALL                             R6 3 1
      106 LOADK                            R8 K41 ["Game Tree"]
      107 NAMECALL                         R6 R6 K42 ["setTitle"]
      109 CALL                             R6 2 1
      110 DUPTABLE                         R8 K50 [{["title"] = "Game Tree", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      111 NAMECALL                         R6 R6 K51 ["setAnnotations"]
      113 CALL                             R6 2 1
      114 MOVE                             R8 R5
      115 NAMECALL                         R6 R6 K52 ["setHandler"]
      117 CALL                             R6 2 1
      118 NAMECALL                         R6 R6 K53 ["build"]
      120 CALL                             R6 1 1
      121 DUPTABLE                         R7 K56 [{"availableDataModelTypes", "definition"}]
      122 NEWTABLE                         R8 0 4
      124 GETUPVAL                         R9 5
      125 GETTABLEKS                       R9 R9 K57 ["Types"]
      127 GETTABLEKS                       R9 R9 K58 ["Edit"]
      129 GETUPVAL                         R10 5
      130 GETTABLEKS                       R10 R10 K57 ["Types"]
      132 GETTABLEKS                       R10 R10 K59 ["Client"]
      134 GETUPVAL                         R11 5
      135 GETTABLEKS                       R11 R11 K57 ["Types"]
      137 GETTABLEKS                       R11 R11 K60 ["Server"]
      139 GETUPVAL                         R12 5
      140 GETTABLEKS                       R12 R12 K57 ["Types"]
      142 GETTABLEKS                       R12 R12 K7 ["Standalone"]
      144 SETLIST                          R8 R9 4 [1]
      146 SETTABLEKS                       R8 R7 K54 ["availableDataModelTypes"]
      148 SETTABLEKS                       R6 R7 K55 ["definition"]
      150 RETURN                           R7 1

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
      122 DUPCLOSURE                       R27 K41 [PROTO_12]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R26
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R14
      135 RETURN                           R27 1
