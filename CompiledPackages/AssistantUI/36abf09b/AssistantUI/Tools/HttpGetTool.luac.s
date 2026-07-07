PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["/llms.txt"] ; [+10]
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["^/.+%.md$"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 GETTABLEKS                       R10 R5 K0 ["base"]
        7 LENGTH                           R9 R10
        8 FASTCALL3                        STRING_SUB R0 R8 R9
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [string.sub]
       13 CALL                             R6 3 1
       14 GETTABLEKS                       R7 R5 K0 ["base"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+21]
       18 GETTABLEKS                       R6 R5 K4 ["validate"]
       20 JUMPIFNOT                        R6 ; [+15]
       21 GETTABLEKS                       R10 R5 K0 ["base"]
       23 LENGTH                           R9 R10
       24 ADDK                             R8 R9 K5 [1]
       25 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K3 [string.sub]
       30 CALL                             R6 2 1
       31 GETTABLEKS                       R7 R5 K4 ["validate"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 -1
       35 RETURN                           R7 -1
       36 LOADB                            R6 1
       37 RETURN                           R6 1
       38 FORGLOOP                         R1 2 ; [-35]
       40 LOADB                            R1 0
       41 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADK                            R9 K0 ["- %* (%*)"]
        7 GETTABLEKS                       R11 R5 K1 ["base"]
        9 GETTABLEKS                       R12 R5 K2 ["description"]
       11 NAMECALL                         R9 R9 K3 ["format"]
       13 CALL                             R9 3 1
       14 MOVE                             R8 R9
       15 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K6 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-16]
       23 GETIMPORT                        R1 K8 [table.concat]
       25 MOVE                             R2 R0
       26 LOADK                            R3 K9 ["\n"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["([^\r\n]*)\r?\n?"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 LENGTH                           R2 R1
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+9]
       20 LENGTH                           R3 R1
       21 GETTABLE                         R2 R1 R3
       22 JUMPIFNOTEQKS                    R2 K5 [""] ; [+5]
       24 GETIMPORT                        R2 K7 [table.remove]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R4 R0 K0 ["lower"]
        2 CALL                             R4 1 1
        3 NAMECALL                         R5 R1 K0 ["lower"]
        5 CALL                             R5 1 1
        6 MOVE                             R8 R5
        7 LOADN                            R9 1
        8 LOADB                            R10 1
        9 NAMECALL                         R6 R4 K1 ["find"]
       11 CALL                             R6 4 1
       12 JUMPIF                           R6 ; [+3]
       13 LOADB                            R6 0
       14 LOADK                            R7 K2 [""]
       15 RETURN                           R6 2
       16 GETUPVAL                         R6 0
       17 MOVE                             R7 R0
       18 CALL                             R6 1 1
       19 JUMPIF                           R3 ; [+4]
       20 LENGTH                           R7 R6
       21 LOADN                            R8 60
       22 JUMPIFNOTLE                      R7 R8 ; [+4]
       24 LOADB                            R7 1
       25 MOVE                             R8 R0
       26 RETURN                           R7 2
       27 GETUPVAL                         R7 0
       28 MOVE                             R8 R4
       29 CALL                             R7 1 1
       30 NEWTABLE                         R8 0 0
       32 MOVE                             R9 R7
       33 LOADNIL                          R10
       34 LOADNIL                          R11
       35 FORGPREP                         R9
       36 MOVE                             R16 R5
       37 LOADN                            R17 1
       38 LOADB                            R18 1
       39 NAMECALL                         R14 R13 K1 ["find"]
       41 CALL                             R14 4 1
       42 JUMPIFNOT                        R14 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
       45 MOVE                             R15 R8
       46 MOVE                             R16 R12
       47 GETIMPORT                        R14 K5 [table.insert]
       49 CALL                             R14 2 0
       50 FORGLOOP                         R9 2 ; [-15]
       52 NEWTABLE                         R9 0 0
       54 MOVE                             R10 R8
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 FORGPREP                         R10
       58 LOADN                            R16 1
       59 SUB                              R17 R14 R2
       60 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       62 GETIMPORT                        R15 K8 [math.max]
       64 CALL                             R15 2 1
       65 LENGTH                           R17 R6
       66 ADD                              R18 R14 R2
       67 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
       69 GETIMPORT                        R16 K10 [math.min]
       71 CALL                             R16 2 1
       72 LENGTH                           R17 R9
       73 LOADN                            R18 0
       74 JUMPIFNOTLT                      R18 R17 ; [+11]
       76 LENGTH                           R20 R9
       77 GETTABLE                         R19 R9 R20
       78 GETTABLEN                        R18 R19 2
       79 ADDK                             R17 R18 K11 [1]
       80 JUMPIFNOTLE                      R15 R17 ; [+5]
       82 LENGTH                           R18 R9
       83 GETTABLE                         R17 R9 R18
       84 SETTABLEN                        R16 R17 2
       85 JUMP                             ; [+12]
       86 NEWTABLE                         R19 0 2
       88 MOVE                             R20 R15
       89 MOVE                             R21 R16
       90 SETLIST                          R19 R20 2 [1]
       92 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
       94 MOVE                             R18 R9
       95 GETIMPORT                        R17 K5 [table.insert]
       97 CALL                             R17 2 0
       98 FORGLOOP                         R10 2 ; [-41]
      100 LOADN                            R10 0
      101 MOVE                             R11 R9
      102 LOADNIL                          R12
      103 LOADNIL                          R13
      104 FORGPREP                         R11
      105 GETTABLEN                        R18 R15 2
      106 GETTABLEN                        R19 R15 1
      107 SUB                              R17 R18 R19
      108 ADDK                             R16 R17 K11 [1]
      109 ADD                              R10 R10 R16
      110 FORGLOOP                         R11 2 ; [-6]
      112 NEWTABLE                         R11 0 0
      114 MOVE                             R12 R9
      115 LOADNIL                          R13
      116 LOADNIL                          R14
      117 FORGPREP                         R12
      118 NEWTABLE                         R17 0 0
      120 GETTABLEN                        R20 R16 1
      121 GETTABLEN                        R18 R16 2
      122 LOADN                            R19 1
      123 FORNPREP                         R18
      124 GETTABLE                         R23 R6 R20
      125 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      127 MOVE                             R22 R17
      128 GETIMPORT                        R21 K5 [table.insert]
      130 CALL                             R21 2 0
      131 FORNLOOP                         R18
      132 MOVE                             R19 R11
      133 GETIMPORT                        R20 K13 [table.concat]
      135 MOVE                             R21 R17
      136 LOADK                            R22 K14 ["\n"]
      137 CALL                             R20 2 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R18 K5 [table.insert]
      141 CALL                             R18 -1 0
      142 FORGLOOP                         R12 2 ; [-25]
      144 GETIMPORT                        R12 K17 [string.format]
      146 LOADK                            R13 K18 ["Found %d match(es) for '%s' (%d/%d lines shown):\n"]
      147 LENGTH                           R14 R8
      148 MOVE                             R15 R1
      149 MOVE                             R16 R10
      150 LENGTH                           R17 R6
      151 CALL                             R12 5 1
      152 LOADB                            R13 1
      153 MOVE                             R15 R12
      154 LOADK                            R16 K14 ["\n"]
      155 GETIMPORT                        R17 K13 [table.concat]
      157 MOVE                             R18 R11
      158 LOADK                            R19 K19 ["\n\n---\n\n"]
      159 CALL                             R17 2 1
      160 CONCAT                           R14 R15 R17
      161 RETURN                           R13 2

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["url"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+4]
        5 LOADB                            R3 0
        6 LOADK                            R4 K2 ["url is required"]
        7 RETURN                           R3 2
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+6]
       12 LOADB                            R3 0
       13 LOADK                            R5 K3 ["URL not allowed. Only these patterns are permitted:\n"]
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 CONCAT                           R4 R5 R6
       17 RETURN                           R3 2
       18 GETIMPORT                        R3 K5 [pcall]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["http"]
       23 GETTABLEKS                       R4 R4 K7 ["requestAsync"]
       25 DUPTABLE                         R5 K11 [{["Url"], ["Method"] = "GET"}]
       26 SETTABLEKS                       R2 R5 K8 ["Url"]
       28 CALL                             R3 2 2
       29 JUMPIF                           R3 ; [+12]
       30 LOADB                            R5 0
       31 LOADK                            R7 K12 ["HTTP GET request failed: %*"]
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R10 R4
       34 GETIMPORT                        R9 K14 [tostring]
       36 CALL                             R9 1 1
       37 NAMECALL                         R7 R7 K15 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 RETURN                           R5 2
       42 GETTABLEKS                       R5 R4 K16 ["Success"]
       44 JUMPIF                           R5 ; [+9]
       45 LOADB                            R5 0
       46 LOADK                            R7 K17 ["HTTP GET request failed with status %*"]
       47 GETTABLEKS                       R9 R4 K18 ["StatusCode"]
       49 NAMECALL                         R7 R7 K15 ["format"]
       51 CALL                             R7 2 1
       52 MOVE                             R6 R7
       53 RETURN                           R5 2
       54 LOADB                            R5 1
       55 GETTABLEKS                       R6 R4 K19 ["Body"]
       57 RETURN                           R5 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K1 [{"url"}]
        3 GETTABLEKS                       R4 R0 K0 ["url"]
        5 SETTABLEKS                       R4 R3 K0 ["url"]
        7 CALL                             R1 2 2
        8 JUMPIF                           R1 ; [+22]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K2 ["addText"]
       14 CALL                             R3 2 1
       15 DUPTABLE                         R5 K1 [{"url"}]
       16 GETTABLEKS                       R6 R0 K0 ["url"]
       18 SETTABLEKS                       R6 R5 K0 ["url"]
       20 NAMECALL                         R3 R3 K3 ["setStructuredContent"]
       22 CALL                             R3 2 1
       23 LOADB                            R5 1
       24 NAMECALL                         R3 R3 K4 ["setError"]
       26 CALL                             R3 2 1
       27 NAMECALL                         R3 R3 K5 ["build"]
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1
       31 GETTABLEKS                       R3 R0 K6 ["query"]
       33 JUMPIFNOT                        R3 ; [+2]
       34 JUMPIFNOTEQKS                    R3 K7 [""] ; [+19]
       36 GETUPVAL                         R4 1
       37 CALL                             R4 0 1
       38 MOVE                             R6 R2
       39 NAMECALL                         R4 R4 K2 ["addText"]
       41 CALL                             R4 2 1
       42 DUPTABLE                         R6 K1 [{"url"}]
       43 GETTABLEKS                       R7 R0 K0 ["url"]
       45 SETTABLEKS                       R7 R6 K0 ["url"]
       47 NAMECALL                         R4 R4 K3 ["setStructuredContent"]
       49 CALL                             R4 2 1
       50 NAMECALL                         R4 R4 K5 ["build"]
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1
       54 GETTABLEKS                       R5 R0 K9 ["context_lines"]
       56 ORK                              R4 R5 K8 [3]
       57 GETTABLEKS                       R6 R0 K11 ["return_full"]
       59 ORK                              R5 R6 K10 [False]
       60 GETUPVAL                         R6 2
       61 MOVE                             R7 R2
       62 MOVE                             R8 R3
       63 MOVE                             R9 R4
       64 MOVE                             R10 R5
       65 CALL                             R6 4 2
       66 JUMPIF                           R6 ; [+26]
       67 GETUPVAL                         R8 1
       68 CALL                             R8 0 1
       69 GETIMPORT                        R10 K14 [string.format]
       71 LOADK                            R11 K15 ["No matches for '%s' in %s — skip this doc."]
       72 MOVE                             R12 R3
       73 GETTABLEKS                       R13 R0 K0 ["url"]
       75 CALL                             R10 3 -1
       76 NAMECALL                         R8 R8 K2 ["addText"]
       78 CALL                             R8 -1 1
       79 DUPTABLE                         R10 K17 [{[1], ["query"], ["found"] = False}]
       80 GETTABLEKS                       R11 R0 K0 ["url"]
       82 SETTABLEKS                       R11 R10 K0 ["url"]
       84 SETTABLEKS                       R3 R10 K6 ["query"]
       86 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
       88 CALL                             R8 2 1
       89 NAMECALL                         R8 R8 K5 ["build"]
       91 CALL                             R8 1 -1
       92 RETURN                           R8 -1
       93 GETUPVAL                         R8 1
       94 CALL                             R8 0 1
       95 MOVE                             R10 R7
       96 NAMECALL                         R8 R8 K2 ["addText"]
       98 CALL                             R8 2 1
       99 DUPTABLE                         R10 K19 [{[1], ["query"], ["found"] = True}]
      100 GETTABLEKS                       R11 R0 K0 ["url"]
      102 SETTABLEKS                       R11 R10 K0 ["url"]
      104 SETTABLEKS                       R3 R10 K6 ["query"]
      106 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
      108 CALL                             R8 2 1
      109 NAMECALL                         R8 R8 K5 ["build"]
      111 CALL                             R8 1 -1
      112 RETURN                           R8 -1

PROTO_7:
        0 DUPTABLE                         R0 K3 [{"type", "icon", "summary"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K5 ["Icons"]
        9 GETTABLEKS                       R1 R1 K6 ["Search"]
       11 SETTABLEKS                       R1 R0 K1 ["icon"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["HttpGet"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["HttpGet"]
        2 LOADK                            R4 K1 ["Searching"]
        3 DUPTABLE                         R5 K4 [{"query", "url"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["query"]
        7 GETUPVAL                         R6 2
        8 SETTABLEKS                       R6 R5 K3 ["url"]
       10 NAMECALL                         R1 R1 K5 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K6 ["summary"]
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["HttpGet"]
        2 LOADK                            R4 K1 ["Fetching"]
        3 DUPTABLE                         R5 K3 [{"url"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["url"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["url"]
        7 GETTABLEKS                       R2 R0 K0 ["input"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K0 ["input"]
       12 GETTABLEKS                       R2 R2 K2 ["query"]
       14 JUMPIFNOT                        R1 ; [+14]
       15 JUMPIFEQKS                       R1 K3 [""] ; [+13]
       17 JUMPIFNOT                        R2 ; [+7]
       18 JUMPIFEQKS                       R2 K3 [""] ; [+6]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
       29 LOADNIL                          R3
       30 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["url"]
        7 ORK                              R1 R2 K1 ["URL"]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K3 ["HttpGet"]
       10 LOADK                            R5 K4 ["Failed"]
       11 DUPTABLE                         R6 K5 [{"url"}]
       12 SETTABLEKS                       R1 R6 K2 ["url"]
       14 NAMECALL                         R2 R2 K6 ["getText"]
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R0 K7 ["summary"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K8 ["query"]
       23 JUMPIFNOT                        R1 ; [+46]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K9 ["found"]
       27 JUMPIFNOT                        R1 ; [+21]
       28 GETUPVAL                         R1 2
       29 LOADK                            R3 K3 ["HttpGet"]
       30 LOADK                            R4 K10 ["Found"]
       31 DUPTABLE                         R5 K11 [{"query", "url"}]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K8 ["query"]
       35 SETTABLEKS                       R6 R5 K8 ["query"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K2 ["url"]
       40 ORK                              R6 R7 K12 [""]
       41 SETTABLEKS                       R6 R5 K2 ["url"]
       43 NAMECALL                         R1 R1 K6 ["getText"]
       45 CALL                             R1 4 1
       46 SETTABLEKS                       R1 R0 K7 ["summary"]
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 2
       50 LOADK                            R3 K3 ["HttpGet"]
       51 LOADK                            R4 K13 ["NotFound"]
       52 DUPTABLE                         R5 K11 [{"query", "url"}]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K8 ["query"]
       56 SETTABLEKS                       R6 R5 K8 ["query"]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K2 ["url"]
       61 ORK                              R6 R7 K12 [""]
       62 SETTABLEKS                       R6 R5 K2 ["url"]
       64 NAMECALL                         R1 R1 K6 ["getText"]
       66 CALL                             R1 4 1
       67 SETTABLEKS                       R1 R0 K7 ["summary"]
       69 RETURN                           R0 0
       70 GETUPVAL                         R1 2
       71 LOADK                            R3 K3 ["HttpGet"]
       72 LOADK                            R4 K14 ["Fetched"]
       73 DUPTABLE                         R5 K5 [{"url"}]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K2 ["url"]
       77 SETTABLEKS                       R6 R5 K2 ["url"]
       79 NAMECALL                         R1 R1 K6 ["getText"]
       81 CALL                             R1 4 1
       82 SETTABLEKS                       R1 R0 K7 ["summary"]
       84 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["HttpGetTool_httpGet"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       11 CALL                             R3 3 1
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K4 ["define"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R7 5
       21 GETTABLEKS                       R7 R7 K5 ["HttpGet"]
       23 NAMECALL                         R5 R5 K6 ["setName"]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K7 ["replaceTokens"]
       29 LOADK                            R8 K8 ["Fetches the content of a URL via HTTP GET request. Returns the response body as text.\n\nOptionally searches the fetched content for a keyword (query parameter). When a query is provided:\n- Returns only the matching sections with surrounding context lines, saving context window space.\n- Returns a short \"no match\" message if the keyword isn't found.\n- Use context_lines to control how many lines of context around each match (default: 3).\n- Use return_full: true to get the entire document when the keyword matches.\n\nWithout a query, the full response body is returned.\n\nOnly the following URL patterns are allowed:\n{ALLOWED_URLS}\n\nAny URL that does not match one of the above rules will be rejected.\nOnly GET requests are supported. The full URL must be provided.\n\nExamples:\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/BasePart.md\", query: \"Position\", context_lines: 10)\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\", return_full: true)\n"]
       30 DUPTABLE                         R9 K11 [{"ALLOWED_URLS", "ENGINE_DOCS_URL"}]
       31 GETUPVAL                         R10 1
       32 CALL                             R10 0 1
       33 SETTABLEKS                       R10 R9 K9 ["ALLOWED_URLS"]
       35 GETUPVAL                         R10 6
       36 SETTABLEKS                       R10 R9 K10 ["ENGINE_DOCS_URL"]
       38 CALL                             R7 2 -1
       39 NAMECALL                         R5 R5 K12 ["setDescription"]
       41 CALL                             R5 -1 1
       42 LOADK                            R7 K13 ["url"]
       43 DUPTABLE                         R8 K18 [{["type"] = "string", ["description"] = "The full URL to fetch. Must match one of the allowed URL patterns."}]
       44 NAMECALL                         R5 R5 K19 ["addArgument"]
       46 CALL                             R5 3 1
       47 LOADK                            R7 K20 ["query"]
       48 DUPTABLE                         R8 K22 [{["type"] = "string", ["description"] = "Optional keyword to search for in the fetched content (case-insensitive literal match). When provided, only matching sections are returned."}]
       49 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       51 CALL                             R5 3 1
       52 LOADK                            R7 K24 ["context_lines"]
       53 DUPTABLE                         R8 K27 [{["type"] = "number", ["description"] = "Lines of surrounding context per match. Only meaningful when query is provided. Default: 3."}]
       54 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       56 CALL                             R5 3 1
       57 LOADK                            R7 K28 ["return_full"]
       58 DUPTABLE                         R8 K31 [{["type"] = "boolean", ["description"] = "If true and query matches, return the entire document instead of just matched sections. Only meaningful when query is provided. Default: false."}]
       59 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       61 CALL                             R5 3 1
       62 DUPTABLE                         R7 K40 [{["title"] = "HTTP GET", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
       63 NAMECALL                         R5 R5 K41 ["setAnnotations"]
       65 CALL                             R5 2 1
       66 MOVE                             R7 R4
       67 NAMECALL                         R5 R5 K42 ["setHandler"]
       69 CALL                             R5 2 1
       70 NAMECALL                         R5 R5 K43 ["build"]
       72 CALL                             R5 1 1
       73 DUPTABLE                         R6 K47 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       74 DUPCLOSURE                       R7 K48 [PROTO_7]
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 SETTABLEKS                       R7 R6 K44 ["transformInitialContent"]
       79 DUPCLOSURE                       R7 K49 [PROTO_10]
       80 CAPTURE                          UPVAL U8
       81 SETTABLEKS                       R7 R6 K45 ["getTransformPreExecuteFn"]
       83 DUPCLOSURE                       R7 K50 [PROTO_12]
       84 CAPTURE                          UPVAL U8
       85 SETTABLEKS                       R7 R6 K46 ["getTransformResultFn"]
       87 DUPTABLE                         R7 K54 [{"definition", "contentWidgets", "streamTransform"}]
       88 SETTABLEKS                       R5 R7 K51 ["definition"]
       90 GETUPVAL                         R9 9
       91 GETTABLEKS                       R9 R9 K55 ["FFlagAssistantSplitToolsAndWidgets"]
       93 JUMPIFNOT                        R9 ; [+2]
       94 LOADNIL                          R8
       95 JUMP                             ; [+5]
       96 NEWTABLE                         R8 0 1
       98 GETUPVAL                         R9 7
       99 SETLIST                          R8 R9 1 [1]
      101 SETTABLEKS                       R8 R7 K52 ["contentWidgets"]
      103 GETUPVAL                         R9 9
      104 GETTABLEKS                       R9 R9 K55 ["FFlagAssistantSplitToolsAndWidgets"]
      106 JUMPIFNOT                        R9 ; [+2]
      107 LOADNIL                          R8
      108 JUMP                             ; [+1]
      109 MOVE                             R8 R6
      110 SETTABLEKS                       R8 R7 K53 ["streamTransform"]
      112 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Components"]
       28 GETTABLEKS                       R5 R5 K11 ["ContentWidgets"]
       30 GETTABLEKS                       R5 R5 K12 ["SummarizedContentWidget"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Tools"]
       37 GETTABLEKS                       R6 R6 K14 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K15 ["Resources"]
       44 GETTABLEKS                       R7 R7 K16 ["Localization"]
       46 GETTABLEKS                       R7 R7 K17 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["ToolBuilder"]
       53 GETTABLEKS                       R8 R3 K18 ["Util"]
       55 GETTABLEKS                       R8 R8 K20 ["ToolResult"]
       57 GETTABLEKS                       R9 R5 K21 ["ToolNames"]
       59 GETTABLEKS                       R10 R1 K22 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       61 GETTABLEKS                       R11 R1 K23 ["ROBLOX_CREATOR_DOCS_BASE_URL"]
       63 DUPCLOSURE                       R12 K24 [PROTO_0]
       64 NEWTABLE                         R13 0 5
       66 DUPTABLE                         R14 K29 [{["base"], ["description"] = "Roblox Engine API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       67 SETTABLEKS                       R10 R14 K25 ["base"]
       69 SETTABLEKS                       R12 R14 K28 ["validate"]
       71 DUPTABLE                         R15 K32 [{["base"] = "https://create.roblox.com/docs/cloud", ["description"] = "Roblox Cloud API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       72 SETTABLEKS                       R12 R15 K28 ["validate"]
       74 DUPTABLE                         R16 K35 [{["base"] = "https://create.roblox.com/docs/performance-optimization", ["description"] = "Roblox Performance Optimization docs — URLs must end with .md or be llms.txt", ["validate"]}]
       75 SETTABLEKS                       R12 R16 K28 ["validate"]
       77 DUPTABLE                         R17 K38 [{["base"] = "https://github.com/Roblox/libmp", ["description"] = "Roblox LibMP repository — URLs must end with .md or be llms.txt", ["validate"]}]
       78 SETTABLEKS                       R12 R17 K28 ["validate"]
       80 DUPTABLE                         R18 K40 [{["base"], ["description"] = "Roblox Creator docs (guides, tutorials, etc.) — URLs must end with .md or be llms.txt", ["validate"]}]
       81 SETTABLEKS                       R11 R18 K25 ["base"]
       83 SETTABLEKS                       R12 R18 K28 ["validate"]
       85 SETLIST                          R13 R14 5 [1]
       87 DUPCLOSURE                       R14 K41 [PROTO_1]
       88 CAPTURE                          VAL R13
       89 DUPCLOSURE                       R15 K42 [PROTO_2]
       90 CAPTURE                          VAL R13
       91 DUPCLOSURE                       R16 K43 [PROTO_3]
       92 DUPCLOSURE                       R17 K44 [PROTO_4]
       93 CAPTURE                          VAL R16
       94 DUPCLOSURE                       R18 K45 [PROTO_13]
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 RETURN                           R18 1
