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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isPathExcluded"]
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
       31 LOADK                            R12 K7 ["%* %*"]
       32 MOVE                             R14 R8
       33 MOVE                             R15 R7
       34 NAMECALL                         R12 R12 K8 ["format"]
       36 CALL                             R12 3 1
       37 MOVE                             R11 R12
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-14]
       46 GETIMPORT                        R4 K13 [table.sort]
       48 MOVE                             R5 R3
       49 CALL                             R4 1 0
       50 LOADK                            R5 K14 ["%* children (%*)"]
       51 LENGTH                           R7 R1
       52 GETIMPORT                        R8 K16 [table.concat]
       54 MOVE                             R9 R3
       55 LOADK                            R10 K17 [", "]
       56 CALL                             R8 2 1
       57 NAMECALL                         R5 R5 K8 ["format"]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R1 K0 ["head_limit"]
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 0
        7 NEWTABLE                         R6 0 1
        9 DUPTABLE                         R7 K3 [{"instance", "depth"}]
       10 SETTABLEKS                       R0 R7 K1 ["instance"]
       12 LOADN                            R8 0
       13 SETTABLEKS                       R8 R7 K2 ["depth"]
       15 SETLIST                          R6 R7 1 [1]
       17 LENGTH                           R7 R6
       18 LOADN                            R8 0
       19 JUMPIFNOTLT                      R8 R7 ; [+109]
       21 JUMPIFNOTLT                      R4 R5 ; [+107]
       23 GETIMPORT                        R7 K6 [table.remove]
       25 MOVE                             R8 R6
       26 LOADN                            R9 1
       27 CALL                             R7 2 1
       28 GETTABLEKS                       R8 R7 K1 ["instance"]
       30 GETTABLEKS                       R9 R7 K2 ["depth"]
       32 NAMECALL                         R10 R8 K7 ["GetFullName"]
       34 CALL                             R10 1 1
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K8 ["isPathExcluded"]
       38 MOVE                             R13 R10
       39 CALL                             R12 1 1
       40 NOT                              R11 R12
       41 JUMPIFNOT                        R11 ; [+86]
       42 NAMECALL                         R11 R8 K9 ["GetChildren"]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 2
       46 MOVE                             R13 R8
       47 MOVE                             R14 R1
       48 CALL                             R12 2 1
       49 JUMPIFNOT                        R12 ; [+48]
       50 DUPTABLE                         R13 K14 [{"name", "className", "fullPath", "parentName"}]
       51 GETTABLEKS                       R14 R8 K15 ["Name"]
       53 SETTABLEKS                       R14 R13 K10 ["name"]
       55 GETTABLEKS                       R14 R8 K16 ["ClassName"]
       57 SETTABLEKS                       R14 R13 K11 ["className"]
       59 SETTABLEKS                       R10 R13 K12 ["fullPath"]
       61 GETTABLEKS                       R14 R8 K17 ["Parent"]
       63 JUMPIFNOT                        R14 ; [+4]
       64 GETTABLEKS                       R15 R8 K17 ["Parent"]
       66 GETTABLEKS                       R14 R15 K15 ["Name"]
       68 SETTABLEKS                       R14 R13 K13 ["parentName"]
       70 JUMPIFNOTLE                      R2 R9 ; [+19]
       72 LENGTH                           R14 R11
       73 LOADN                            R15 0
       74 JUMPIFNOTLT                      R15 R14 ; [+15]
       76 GETUPVAL                         R14 3
       77 MOVE                             R15 R8
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K18 ["childSummary"]
       81 GETUPVAL                         R14 4
       82 MOVE                             R15 R8
       83 MOVE                             R16 R1
       84 CALL                             R14 2 1
       85 LOADN                            R15 0
       86 JUMPIFNOTLT                      R15 R14 ; [+3]
       88 SETTABLEKS                       R14 R13 K19 ["unexploredChildCount"]
       90 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       92 MOVE                             R15 R3
       93 MOVE                             R16 R13
       94 GETIMPORT                        R14 K21 [table.insert]
       96 CALL                             R14 2 0
       97 ADDK                             R4 R4 K22 [1]
       98 JUMPIFNOTLT                      R9 R2 ; [+29]
      100 MOVE                             R13 R11
      101 LOADNIL                          R14
      102 LOADNIL                          R15
      103 FORGPREP                         R13
      104 NAMECALL                         R18 R17 K7 ["GetFullName"]
      106 CALL                             R18 1 1
      107 GETUPVAL                         R21 1
      108 GETTABLEKS                       R20 R21 K8 ["isPathExcluded"]
      110 MOVE                             R21 R18
      111 CALL                             R20 1 1
      112 NOT                              R19 R20
      113 JUMPIFNOT                        R19 ; [+12]
      114 DUPTABLE                         R21 K3 [{"instance", "depth"}]
      115 SETTABLEKS                       R17 R21 K1 ["instance"]
      117 ADDK                             R22 R9 K22 [1]
      118 SETTABLEKS                       R22 R21 K2 ["depth"]
      120 FASTCALL2                        TABLE_INSERT R6 R21 ; [+4]
      122 MOVE                             R20 R6
      123 GETIMPORT                        R19 K21 [table.insert]
      125 CALL                             R19 2 0
      126 FORGLOOP                         R13 2 ; [-23]
      128 JUMPBACK                         ; [-112]
      129 RETURN                           R3 2

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keywords"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 LOADK                            R5 K1 ["keywords '%*'"]
        6 GETTABLEKS                       R7 R0 K0 ["keywords"]
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K6 ["instance_type"]
       20 JUMPIFNOT                        R2 ; [+13]
       21 LOADK                            R5 K7 ["type '%*'"]
       22 GETTABLEKS                       R7 R0 K6 ["instance_type"]
       24 NAMECALL                         R5 R5 K2 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K5 [table.insert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R0 K8 ["path"]
       36 JUMPIFNOT                        R2 ; [+17]
       37 GETTABLEKS                       R2 R0 K8 ["path"]
       39 JUMPIFEQKS                       R2 K9 [""] ; [+14]
       41 LOADK                            R5 K10 ["path '%*'"]
       42 GETTABLEKS                       R7 R0 K8 ["path"]
       44 NAMECALL                         R5 R5 K2 ["format"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       50 MOVE                             R3 R1
       51 GETIMPORT                        R2 K5 [table.insert]
       53 CALL                             R2 2 0
       54 LENGTH                           R3 R1
       55 LOADN                            R4 0
       56 JUMPIFNOTLT                      R4 R3 ; [+7]
       58 GETIMPORT                        R2 K12 [table.concat]
       60 MOVE                             R3 R1
       61 LOADK                            R4 K13 [", "]
       62 CALL                             R2 2 1
       63 JUMPIF                           R2 ; [+1]
       64 LOADK                            R2 K14 ["the specified filters"]
       65 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["findInstance"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 RETURN                           R2 2
       16 LOADNIL                          R2
       17 LOADK                            R4 K4 ["Could not find instance at path '%*'"]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K5 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 RETURN                           R2 2

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
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K8 ["findInstance"]
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
       41 JUMPIFNOT                        R5 ; [+10]
       42 DUPTABLE                         R6 K12 [{"text"}]
       43 LOADK                            R8 K13 ["Error: %*"]
       44 MOVE                             R10 R5
       45 NAMECALL                         R8 R8 K10 ["format"]
       47 CALL                             R8 2 1
       48 MOVE                             R7 R8
       49 SETTABLEKS                       R7 R6 K11 ["text"]
       51 RETURN                           R6 1
       52 FASTCALL2K                       ASSERT R4 K14 ; [+5]
       54 MOVE                             R7 R4
       55 LOADK                            R8 K14 ["startInstance should not be nil if err is nil"]
       56 GETIMPORT                        R6 K16 [assert]
       58 CALL                             R6 2 0
       59 GETUPVAL                         R6 3
       60 MOVE                             R7 R4
       61 MOVE                             R8 R0
       62 MOVE                             R9 R2
       63 CALL                             R6 3 2
       64 LENGTH                           R8 R6
       65 JUMPIFNOTEQKN                    R8 K17 [0] ; [+14]
       67 GETUPVAL                         R8 4
       68 MOVE                             R9 R0
       69 CALL                             R8 1 1
       70 DUPTABLE                         R9 K12 [{"text"}]
       71 LOADK                            R11 K18 ["No instances found matching %*"]
       72 MOVE                             R13 R8
       73 NAMECALL                         R11 R11 K10 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R10 R11
       77 SETTABLEKS                       R10 R9 K11 ["text"]
       79 RETURN                           R9 1
       80 LENGTH                           R8 R6
       81 GETIMPORT                        R9 K20 [pcall]
       83 NEWCLOSURE                       R10 P0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R6
       86 CALL                             R9 1 2
       87 JUMPIF                           R9 ; [+14]
       88 DUPTABLE                         R11 K12 [{"text"}]
       89 LOADK                            R13 K21 ["Error encoding JSON: %*"]
       90 FASTCALL1                        TOSTRING R10 ; [+3]
       91 MOVE                             R16 R10
       92 GETIMPORT                        R15 K23 [tostring]
       94 CALL                             R15 1 1
       95 NAMECALL                         R13 R13 K10 ["format"]
       97 CALL                             R13 2 1
       98 MOVE                             R12 R13
       99 SETTABLEKS                       R12 R11 K11 ["text"]
      101 RETURN                           R11 1
      102 GETTABLEKS                       R11 R0 K24 ["head_limit"]
      104 JUMPIF                           R11 ; [+1]
      105 GETUPVAL                         R11 6
      106 JUMPIFNOTLT                      R7 R11 ; [+8]
      108 JUMPIF                           R3 ; [+6]
      109 DUPTABLE                         R12 K26 [{"text", "count"}]
      110 SETTABLEKS                       R10 R12 K11 ["text"]
      112 SETTABLEKS                       R8 R12 K25 ["count"]
      114 RETURN                           R12 1
      115 NEWTABLE                         R12 0 0
      117 JUMPIFNOTLE                      R11 R7 ; [+13]
      119 LOADK                            R16 K27 ["Note: Output limited to %* nodes (results truncated)"]
      120 MOVE                             R18 R11
      121 NAMECALL                         R16 R16 K10 ["format"]
      123 CALL                             R16 2 1
      124 MOVE                             R15 R16
      125 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      127 MOVE                             R14 R12
      128 GETIMPORT                        R13 K30 [table.insert]
      130 CALL                             R13 2 0
      131 JUMPIFNOT                        R3 ; [+13]
      132 LOADK                            R16 K31 ["Note: Max depth capped at %* (requested %*)"]
      133 GETUPVAL                         R18 1
      134 MOVE                             R19 R1
      135 NAMECALL                         R16 R16 K10 ["format"]
      137 CALL                             R16 3 1
      138 MOVE                             R15 R16
      139 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      141 MOVE                             R14 R12
      142 GETIMPORT                        R13 K30 [table.insert]
      144 CALL                             R13 2 0
      145 DUPTABLE                         R13 K26 [{"text", "count"}]
      146 GETIMPORT                        R18 K33 [table.concat]
      148 MOVE                             R19 R12
      149 LOADK                            R20 K34 ["\n"]
      150 CALL                             R18 2 1
      151 MOVE                             R15 R18
      152 LOADK                            R16 K35 ["\n\n"]
      153 MOVE                             R17 R10
      154 CONCAT                           R14 R15 R17
      155 SETTABLEKS                       R14 R13 K11 ["text"]
      157 SETTABLEKS                       R8 R13 K25 ["count"]
      159 RETURN                           R13 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R1 K0 ["text"]
        8 NAMECALL                         R2 R2 K1 ["addText"]
       10 CALL                             R2 2 1
       11 DUPTABLE                         R4 K6 [{"count", "path", "keywords", "instanceType"}]
       12 GETTABLEKS                       R5 R1 K2 ["count"]
       14 SETTABLEKS                       R5 R4 K2 ["count"]
       16 GETTABLEKS                       R5 R0 K3 ["path"]
       18 SETTABLEKS                       R5 R4 K3 ["path"]
       20 GETTABLEKS                       R5 R0 K4 ["keywords"]
       22 SETTABLEKS                       R5 R4 K4 ["keywords"]
       24 GETTABLEKS                       R5 R0 K7 ["instance_type"]
       26 SETTABLEKS                       R5 R4 K5 ["instanceType"]
       28 NAMECALL                         R2 R2 K8 ["setStructuredContent"]
       30 CALL                             R2 2 1
       31 NAMECALL                         R2 R2 K9 ["build"]
       33 CALL                             R2 1 -1
       34 RETURN                           R2 -1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["GameTree"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GameTree"]
        2 LOADK                            R4 K1 ["Exploring"]
        3 DUPTABLE                         R5 K3 [{"path"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["path"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GameTree"]
        2 LOADK                            R4 K1 ["ExploringAll"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["input"]
        2 GETTABLEKS                       R1 R2 K1 ["path"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 JUMPIFEQKS                       R1 K2 [""] ; [+5]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1
       11 DUPCLOSURE                       R2 K3 [PROTO_13]
       12 CAPTURE                          UPVAL U0
       13 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GameTree"]
        2 LOADK                            R4 K1 ["Found"]
        3 DUPTABLE                         R5 K3 [{"count"}]
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K2 ["count"]
        7 ORK                              R6 R7 K4 [0]
        8 SETTABLEKS                       R6 R5 K2 ["count"]
       10 NAMECALL                         R1 R1 K5 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K6 ["summary"]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K7 ["path"]
       20 JUMPIFNOT                        R2 ; [+14]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K7 ["path"]
       24 JUMPIFEQKS                       R2 K8 [""] ; [+10]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K7 ["path"]
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K11 [table.insert]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K12 ["keywords"]
       38 JUMPIFNOT                        R2 ; [+19]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R2 R3 K12 ["keywords"]
       42 JUMPIFEQKS                       R2 K8 [""] ; [+15]
       44 LOADK                            R5 K13 ["'%*'"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K12 ["keywords"]
       48 NAMECALL                         R5 R5 K14 ["format"]
       50 CALL                             R5 2 1
       51 MOVE                             R4 R5
       52 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       54 MOVE                             R3 R1
       55 GETIMPORT                        R2 K11 [table.insert]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R2 R3 K15 ["instanceType"]
       61 JUMPIFNOT                        R2 ; [+14]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R2 R3 K15 ["instanceType"]
       65 JUMPIFEQKS                       R2 K8 [""] ; [+10]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R4 R5 K15 ["instanceType"]
       70 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       72 MOVE                             R3 R1
       73 GETIMPORT                        R2 K11 [table.insert]
       75 CALL                             R2 2 0
       76 LENGTH                           R2 R1
       77 LOADN                            R3 0
       78 JUMPIFNOTLT                      R3 R2 ; [+17]
       80 GETUPVAL                         R2 0
       81 LOADK                            R4 K0 ["GameTree"]
       82 LOADK                            R5 K16 ["Listed"]
       83 DUPTABLE                         R6 K18 [{"params"}]
       84 GETIMPORT                        R7 K20 [table.concat]
       86 MOVE                             R8 R1
       87 LOADK                            R9 K21 [", "]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K17 ["params"]
       91 NAMECALL                         R2 R2 K5 ["getText"]
       93 CALL                             R2 4 1
       94 SETTABLEKS                       R2 R0 K22 ["subtitle"]
       96 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["GameTreeTool_explore"]
        3 DUPCLOSURE                       R5 K2 [PROTO_9]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K5 ["ToolNames"]
       18 GETTABLEKS                       R6 R7 K6 ["GameTree"]
       20 NAMECALL                         R4 R4 K7 ["setName"]
       22 CALL                             R4 2 1
       23 LOADK                            R7 K8 ["Explore the Roblox game hierarchy tree with flat JSON output.\nReturns an array of JSON objects representing instances in the Data Model, showing names, paths, and relationships.\nUse optional filters to narrow down results by path, instance type, or keywords.\nFor detailed inspection of a specific instance's properties and attributes, use the Inspect Instance tool.\n\nOUTPUT FORMAT:\nArray of objects with:\n{\n  \"name\": \"InstanceName\",\n  \"className\": \"Part\", \n  \"fullPath\": \"Workspace.Folder.InstanceName\",\n  \"parentName\": \"Folder\",\n  \"childSummary\": \"5 children (3 Part, 2 Script)\",  // Present if depth limit reached and children exist\n  \"unexploredChildCount\": 5  // Present if depth limit reached with matching children\n}\n\nDEPTH LIMITING:\n- Default max_depth: "]
       24 GETUPVAL                         R8 4
       25 LOADK                            R9 K9 [" levels from start point (absolute traversal depth)\n- Absolute max: "]
       26 GETUPVAL                         R10 5
       27 LOADK                            R11 K10 [" levels\n- max_depth limits how deep into the hierarchy we traverse, regardless of filters\n- Beyond max_depth, children are summarized with counts by class type\n- Nodes at depth limit show: \"unexploredChildCount\" and \"childSummary\"\n\nEXAMPLES:\n- Full tree ("]
       28 GETUPVAL                         R12 4
       29 LOADK                            R13 K11 [" levels): GameTree()\n- Workspace only: GameTree(path: \"Workspace\")\n- ServerScriptService: GameTree(path: \"ServerScriptService\")\n- All base scripts: GameTree(instance_type: \"BaseScript\")\n- All parts: GameTree(instance_type: \"Part\")\n- By keywords: GameTree(keywords: \"player, character\")\n- Deep exploration: GameTree(max_depth: 6)\n- Specific path: GameTree(path: \"Workspace.Models\")\n- Combined filters: GameTree(path: \"Workspace\", instance_type: \"Part\", keywords: \"red\")\n- Increase output: GameTree(head_limit: 1000, max_depth: 5)\n"]
       30 CONCAT                           R6 R7 R13
       31 NAMECALL                         R4 R4 K12 ["setDescription"]
       33 CALL                             R4 2 1
       34 LOADK                            R6 K13 ["path"]
       35 DUPTABLE                         R7 K16 [{"type", "description"}]
       36 LOADK                            R8 K17 ["string"]
       37 SETTABLEKS                       R8 R7 K14 ["type"]
       39 LOADK                            R8 K18 ["Start exploration from this path. Examples: 'Workspace', 'ServerScriptService', 'Workspace.Models'. Path is case-sensitive."]
       40 SETTABLEKS                       R8 R7 K15 ["description"]
       42 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       44 CALL                             R4 3 1
       45 LOADK                            R6 K20 ["instance_type"]
       46 DUPTABLE                         R7 K16 [{"type", "description"}]
       47 LOADK                            R8 K17 ["string"]
       48 SETTABLEKS                       R8 R7 K14 ["type"]
       50 LOADK                            R8 K21 ["Filter by ClassName using IsA() check. Examples: 'BasePart', 'BaseScript', 'GuiObject', 'Model', 'Folder'. Case sensitive."]
       51 SETTABLEKS                       R8 R7 K15 ["description"]
       53 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       55 CALL                             R4 3 1
       56 LOADK                            R6 K22 ["keywords"]
       57 DUPTABLE                         R7 K16 [{"type", "description"}]
       58 LOADK                            R8 K17 ["string"]
       59 SETTABLEKS                       R8 R7 K14 ["type"]
       61 LOADK                            R8 K23 ["Filter by instance name keywords (case-insensitive). Separate multiple keywords with commas or spaces. Instance name must contain at least one keyword. Examples: 'player', 'red, blue', 'button door'"]
       62 SETTABLEKS                       R8 R7 K15 ["description"]
       64 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       66 CALL                             R4 3 1
       67 LOADK                            R6 K24 ["max_depth"]
       68 DUPTABLE                         R7 K16 [{"type", "description"}]
       69 LOADK                            R8 K25 ["number"]
       70 SETTABLEKS                       R8 R7 K14 ["type"]
       72 LOADK                            R9 K26 ["Maximum absolute depth to traverse from start point. Default: %*, Absolute max: %*. Limits how deep we explore in the hierarchy regardless of filters. Beyond this depth, children are summarized instead of expanded."]
       73 GETUPVAL                         R11 4
       74 GETUPVAL                         R12 5
       75 NAMECALL                         R9 R9 K27 ["format"]
       77 CALL                             R9 3 1
       78 MOVE                             R8 R9
       79 SETTABLEKS                       R8 R7 K15 ["description"]
       81 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       83 CALL                             R4 3 1
       84 LOADK                            R6 K28 ["head_limit"]
       85 DUPTABLE                         R7 K16 [{"type", "description"}]
       86 LOADK                            R8 K25 ["number"]
       87 SETTABLEKS                       R8 R7 K14 ["type"]
       89 LOADK                            R9 K29 ["Maximum number of results to return. Default: %*. Prevents overwhelming output for large trees."]
       90 GETUPVAL                         R11 6
       91 NAMECALL                         R9 R9 K27 ["format"]
       93 CALL                             R9 2 1
       94 MOVE                             R8 R9
       95 SETTABLEKS                       R8 R7 K15 ["description"]
       97 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       99 CALL                             R4 3 1
      100 MOVE                             R6 R3
      101 NAMECALL                         R4 R4 K30 ["setHandler"]
      103 CALL                             R4 2 1
      104 NAMECALL                         R4 R4 K31 ["build"]
      106 CALL                             R4 1 1
      107 DUPTABLE                         R5 K35 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      108 DUPCLOSURE                       R6 K36 [PROTO_11]
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 SETTABLEKS                       R6 R5 K32 ["transformInitialContent"]
      113 DUPCLOSURE                       R6 K37 [PROTO_14]
      114 CAPTURE                          UPVAL U8
      115 SETTABLEKS                       R6 R5 K33 ["getTransformPreExecuteFn"]
      117 DUPCLOSURE                       R6 K38 [PROTO_16]
      118 CAPTURE                          UPVAL U8
      119 SETTABLEKS                       R6 R5 K34 ["getTransformResultFn"]
      121 DUPTABLE                         R6 K42 [{"definition", "contentWidgets", "streamTransform"}]
      122 SETTABLEKS                       R4 R6 K39 ["definition"]
      124 NEWTABLE                         R7 0 1
      126 GETUPVAL                         R8 7
      127 SETLIST                          R7 R8 1 [1]
      129 SETTABLEKS                       R7 R6 K40 ["contentWidgets"]
      131 SETTABLEKS                       R5 R6 K41 ["streamTransform"]
      133 RETURN                           R6 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Components"]
       24 GETTABLEKS                       R5 R6 K13 ["ContentWidgets"]
       26 GETTABLEKS                       R4 R5 K14 ["SummarizedContentWidget"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Tools"]
       33 GETTABLEKS                       R5 R6 K16 ["ToolTypes"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K17 ["Util"]
       40 GETTABLEKS                       R6 R7 K18 ["ToolUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K19 ["Resources"]
       47 GETTABLEKS                       R8 R9 K20 ["Localization"]
       49 GETTABLEKS                       R7 R8 K21 ["Translator"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R8 R2 K17 ["Util"]
       54 GETTABLEKS                       R7 R8 K22 ["ToolBuilder"]
       56 GETTABLEKS                       R9 R2 K17 ["Util"]
       58 GETTABLEKS                       R8 R9 K23 ["ToolResult"]
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R11 R0 K24 ["Flags"]
       64 GETTABLEKS                       R10 R11 K25 ["FIntGameTreeDefaultHeadLimit"]
       66 CALL                             R9 1 1
       67 CALL                             R9 0 1
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R12 R0 K24 ["Flags"]
       72 GETTABLEKS                       R11 R12 K26 ["FIntGameTreeDefaultMaxDepth"]
       74 CALL                             R10 1 1
       75 CALL                             R10 0 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R13 R0 K24 ["Flags"]
       80 GETTABLEKS                       R12 R13 K27 ["FIntGameTreeMaxAbsoluteDepth"]
       82 CALL                             R11 1 1
       83 CALL                             R11 0 1
       84 DUPCLOSURE                       R12 K28 [PROTO_0]
       85 DUPCLOSURE                       R13 K29 [PROTO_1]
       86 CAPTURE                          VAL R5
       87 DUPCLOSURE                       R14 K30 [PROTO_2]
       88 CAPTURE                          VAL R12
       89 DUPCLOSURE                       R15 K31 [PROTO_3]
       90 DUPCLOSURE                       R16 K32 [PROTO_4]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R14
       96 DUPCLOSURE                       R17 K33 [PROTO_5]
       97 DUPCLOSURE                       R18 K34 [PROTO_6]
       98 CAPTURE                          VAL R5
       99 DUPCLOSURE                       R19 K35 [PROTO_8]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R9
      107 DUPCLOSURE                       R20 K36 [PROTO_17]
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R6
      117 RETURN                           R20 1
