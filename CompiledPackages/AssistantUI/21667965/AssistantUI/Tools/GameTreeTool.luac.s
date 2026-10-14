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
       14 LENGTH                           R7 R6
       15 LOADN                            R8 0
       16 JUMPIFNOTLT                      R8 R7 ; [+109]
       18 JUMPIFNOTLT                      R4 R5 ; [+107]
       20 GETIMPORT                        R7 K7 [table.remove]
       22 MOVE                             R8 R6
       23 LOADN                            R9 1
       24 CALL                             R7 2 1
       25 GETTABLEKS                       R8 R7 K1 ["instance"]
       27 GETTABLEKS                       R9 R7 K2 ["depth"]
       29 NAMECALL                         R10 R8 K8 ["GetFullName"]
       31 CALL                             R10 1 1
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K9 ["isPathExcluded"]
       35 MOVE                             R13 R10
       36 CALL                             R12 1 1
       37 NOT                              R11 R12
       38 JUMPIFNOT                        R11 ; [+86]
       39 NAMECALL                         R11 R8 K10 ["GetChildren"]
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 2
       43 MOVE                             R13 R8
       44 MOVE                             R14 R1
       45 CALL                             R12 2 1
       46 JUMPIFNOT                        R12 ; [+48]
       47 DUPTABLE                         R13 K15 [{"name", "className", "fullPath", "parentName"}]
       48 GETTABLEKS                       R14 R8 K16 ["Name"]
       50 SETTABLEKS                       R14 R13 K11 ["name"]
       52 GETTABLEKS                       R14 R8 K17 ["ClassName"]
       54 SETTABLEKS                       R14 R13 K12 ["className"]
       56 SETTABLEKS                       R10 R13 K13 ["fullPath"]
       58 GETTABLEKS                       R14 R8 K18 ["Parent"]
       60 JUMPIFNOT                        R14 ; [+4]
       61 GETTABLEKS                       R14 R8 K18 ["Parent"]
       63 GETTABLEKS                       R14 R14 K16 ["Name"]
       65 SETTABLEKS                       R14 R13 K14 ["parentName"]
       67 JUMPIFNOTLE                      R2 R9 ; [+19]
       69 LENGTH                           R14 R11
       70 LOADN                            R15 0
       71 JUMPIFNOTLT                      R15 R14 ; [+15]
       73 GETUPVAL                         R14 3
       74 MOVE                             R15 R8
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R14 R13 K19 ["childSummary"]
       78 GETUPVAL                         R14 4
       79 MOVE                             R15 R8
       80 MOVE                             R16 R1
       81 CALL                             R14 2 1
       82 LOADN                            R15 0
       83 JUMPIFNOTLT                      R15 R14 ; [+3]
       85 SETTABLEKS                       R14 R13 K20 ["unexploredChildCount"]
       87 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       89 MOVE                             R15 R3
       90 MOVE                             R16 R13
       91 GETIMPORT                        R14 K22 [table.insert]
       93 CALL                             R14 2 0
       94 ADDK                             R4 R4 K23 [1]
       95 JUMPIFNOTLT                      R9 R2 ; [+29]
       97 MOVE                             R13 R11
       98 LOADNIL                          R14
       99 LOADNIL                          R15
      100 FORGPREP                         R13
      101 NAMECALL                         R18 R17 K8 ["GetFullName"]
      103 CALL                             R18 1 1
      104 GETUPVAL                         R20 1
      105 GETTABLEKS                       R20 R20 K9 ["isPathExcluded"]
      107 MOVE                             R21 R18
      108 CALL                             R20 1 1
      109 NOT                              R19 R20
      110 JUMPIFNOT                        R19 ; [+12]
      111 DUPTABLE                         R21 K24 [{"instance", "depth"}]
      112 SETTABLEKS                       R17 R21 K1 ["instance"]
      114 ADDK                             R22 R9 K23 [1]
      115 SETTABLEKS                       R22 R21 K2 ["depth"]
      117 FASTCALL2                        TABLE_INSERT R6 R21 ; [+4]
      119 MOVE                             R20 R6
      120 GETIMPORT                        R19 K22 [table.insert]
      122 CALL                             R19 2 0
      123 FORGLOOP                         R13 2 ; [-23]
      125 JUMPBACK                         ; [-112]
      126 RETURN                           R3 2

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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantStandaloneDataModel"]
       20 JUMPIFNOT                        R5 ; [+12]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["Types"]
       24 GETTABLEKS                       R5 R5 K5 ["Standalone"]
       26 JUMPIFNOTEQ                      R2 R5 ; [+6]
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 MOVE                             R4 R5
       32 JUMP                             ; [+17]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
       36 JUMPIFNOT                        R5 ; [+8]
       37 GETUPVAL                         R5 4
       38 MOVE                             R7 R3
       39 MOVE                             R8 R0
       40 NAMECALL                         R5 R5 K6 ["InvokeAsync"]
       42 CALL                             R5 3 1
       43 MOVE                             R4 R5
       44 JUMP                             ; [+5]
       45 GETUPVAL                         R5 5
       46 MOVE                             R6 R2
       47 MOVE                             R7 R0
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 GETUPVAL                         R5 6
       51 CALL                             R5 0 1
       52 GETTABLEKS                       R7 R4 K7 ["text"]
       54 NAMECALL                         R5 R5 K8 ["addText"]
       56 CALL                             R5 2 1
       57 DUPTABLE                         R7 K13 [{"count", "path", "keywords", "instanceType"}]
       58 GETTABLEKS                       R8 R4 K9 ["count"]
       60 SETTABLEKS                       R8 R7 K9 ["count"]
       62 GETTABLEKS                       R8 R0 K10 ["path"]
       64 SETTABLEKS                       R8 R7 K10 ["path"]
       66 GETTABLEKS                       R8 R0 K11 ["keywords"]
       68 SETTABLEKS                       R8 R7 K11 ["keywords"]
       70 GETTABLEKS                       R8 R0 K14 ["instance_type"]
       72 SETTABLEKS                       R8 R7 K12 ["instanceType"]
       74 NAMECALL                         R5 R5 K15 ["setStructuredContent"]
       76 CALL                             R5 2 1
       77 NAMECALL                         R5 R5 K16 ["build"]
       79 CALL                             R5 1 -1
       80 RETURN                           R5 -1

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
      125 DUPTABLE                         R8 K54 [{["title"] = "Game Tree", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      126 NAMECALL                         R6 R6 K55 ["setAnnotations"]
      128 CALL                             R6 2 1
      129 MOVE                             R8 R5
      130 NAMECALL                         R6 R6 K56 ["setHandler"]
      132 CALL                             R6 2 1
      133 NAMECALL                         R6 R6 K57 ["build"]
      135 CALL                             R6 1 1
      136 DUPTABLE                         R7 K60 [{"availableDataModelTypes", "definition"}]
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R9 R9 K61 ["FFlagAssistantStandaloneDataModel"]
      140 JUMPIFNOT                        R9 ; [+25]
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
      165 JUMP                             ; [+19]
      166 NEWTABLE                         R8 0 3
      168 GETUPVAL                         R9 6
      169 GETTABLEKS                       R9 R9 K62 ["Types"]
      171 GETTABLEKS                       R9 R9 K63 ["Edit"]
      173 GETUPVAL                         R10 6
      174 GETTABLEKS                       R10 R10 K62 ["Types"]
      176 GETTABLEKS                       R10 R10 K64 ["Client"]
      178 GETUPVAL                         R11 6
      179 GETTABLEKS                       R11 R11 K62 ["Types"]
      181 GETTABLEKS                       R11 R11 K65 ["Server"]
      183 SETLIST                          R8 R9 3 [1]
      185 SETTABLEKS                       R8 R7 K58 ["availableDataModelTypes"]
      187 SETTABLEKS                       R6 R7 K59 ["definition"]
      189 CLOSEUPVALS                      R3
      190 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Bin"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["DMNetworking"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["DataModelType"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Parent"]
       43 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Util"]
       50 GETTABLEKS                       R8 R8 K17 ["NetworkingIdentity"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Tools"]
       57 GETTABLEKS                       R9 R9 K19 ["ToolTypes"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Util"]
       64 GETTABLEKS                       R10 R10 K20 ["ToolUtils"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R3 K21 ["Remote"]
       69 GETTABLEKS                       R11 R6 K10 ["Util"]
       71 GETTABLEKS                       R11 R11 K22 ["ToolBuilder"]
       73 GETTABLEKS                       R12 R6 K10 ["Util"]
       75 GETTABLEKS                       R12 R12 K23 ["ToolResult"]
       77 GETTABLEKS                       R13 R5 K24 ["FIntGameTreeDefaultHeadLimit"]
       79 GETTABLEKS                       R14 R5 K25 ["FIntGameTreeDefaultMaxDepth"]
       81 GETTABLEKS                       R15 R5 K26 ["FIntGameTreeMaxAbsoluteDepth"]
       83 DUPCLOSURE                       R16 K27 [PROTO_0]
       84 DUPCLOSURE                       R17 K28 [PROTO_1]
       85 CAPTURE                          VAL R9
       86 DUPCLOSURE                       R18 K29 [PROTO_2]
       87 CAPTURE                          VAL R16
       88 DUPCLOSURE                       R19 K30 [PROTO_3]
       89 DUPCLOSURE                       R20 K31 [PROTO_4]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R19
       94 CAPTURE                          VAL R18
       95 DUPCLOSURE                       R21 K32 [PROTO_5]
       96 DUPCLOSURE                       R22 K33 [PROTO_6]
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R23 K34 [PROTO_8]
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R21
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R13
      106 DUPCLOSURE                       R24 K35 [PROTO_13]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R23
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R13
      120 RETURN                           R24 1
