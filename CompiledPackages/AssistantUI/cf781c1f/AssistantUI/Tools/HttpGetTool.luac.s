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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       25 DUPTABLE                         R5 K10 [{"Url", "Method"}]
       26 SETTABLEKS                       R2 R5 K8 ["Url"]
       28 LOADK                            R6 K11 ["GET"]
       29 SETTABLEKS                       R6 R5 K9 ["Method"]
       31 CALL                             R3 2 2
       32 JUMPIF                           R3 ; [+12]
       33 LOADB                            R5 0
       34 LOADK                            R7 K12 ["HTTP GET request failed: %*"]
       35 FASTCALL1                        TOSTRING R4 ; [+3]
       36 MOVE                             R10 R4
       37 GETIMPORT                        R9 K14 [tostring]
       39 CALL                             R9 1 1
       40 NAMECALL                         R7 R7 K15 ["format"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 RETURN                           R5 2
       45 GETTABLEKS                       R5 R4 K16 ["Success"]
       47 JUMPIF                           R5 ; [+9]
       48 LOADB                            R5 0
       49 LOADK                            R7 K17 ["HTTP GET request failed with status %*"]
       50 GETTABLEKS                       R9 R4 K18 ["StatusCode"]
       52 NAMECALL                         R7 R7 K15 ["format"]
       54 CALL                             R7 2 1
       55 MOVE                             R6 R7
       56 RETURN                           R5 2
       57 LOADB                            R5 1
       58 GETTABLEKS                       R6 R4 K19 ["Body"]
       60 RETURN                           R5 2

PROTO_7:
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
       66 JUMPIF                           R6 ; [+29]
       67 GETUPVAL                         R8 1
       68 CALL                             R8 0 1
       69 GETIMPORT                        R10 K14 [string.format]
       71 LOADK                            R11 K15 ["No matches for '%s' in %s — skip this doc."]
       72 MOVE                             R12 R3
       73 GETTABLEKS                       R13 R0 K0 ["url"]
       75 CALL                             R10 3 -1
       76 NAMECALL                         R8 R8 K2 ["addText"]
       78 CALL                             R8 -1 1
       79 DUPTABLE                         R10 K17 [{"url", "query", "found"}]
       80 GETTABLEKS                       R11 R0 K0 ["url"]
       82 SETTABLEKS                       R11 R10 K0 ["url"]
       84 SETTABLEKS                       R3 R10 K6 ["query"]
       86 LOADB                            R11 0
       87 SETTABLEKS                       R11 R10 K16 ["found"]
       89 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
       91 CALL                             R8 2 1
       92 NAMECALL                         R8 R8 K5 ["build"]
       94 CALL                             R8 1 -1
       95 RETURN                           R8 -1
       96 GETUPVAL                         R8 1
       97 CALL                             R8 0 1
       98 MOVE                             R10 R7
       99 NAMECALL                         R8 R8 K2 ["addText"]
      101 CALL                             R8 2 1
      102 DUPTABLE                         R10 K17 [{"url", "query", "found"}]
      103 GETTABLEKS                       R11 R0 K0 ["url"]
      105 SETTABLEKS                       R11 R10 K0 ["url"]
      107 SETTABLEKS                       R3 R10 K6 ["query"]
      109 LOADB                            R11 1
      110 SETTABLEKS                       R11 R10 K16 ["found"]
      112 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
      114 CALL                             R8 2 1
      115 NAMECALL                         R8 R8 K5 ["build"]
      117 CALL                             R8 1 -1
      118 RETURN                           R8 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R2 1

PROTO_14:
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
       43 DUPTABLE                         R8 K16 [{"type", "description"}]
       44 LOADK                            R9 K17 ["string"]
       45 SETTABLEKS                       R9 R8 K14 ["type"]
       47 LOADK                            R9 K18 ["The full URL to fetch. Must match one of the allowed URL patterns."]
       48 SETTABLEKS                       R9 R8 K15 ["description"]
       50 NAMECALL                         R5 R5 K19 ["addArgument"]
       52 CALL                             R5 3 1
       53 LOADK                            R7 K20 ["query"]
       54 DUPTABLE                         R8 K16 [{"type", "description"}]
       55 LOADK                            R9 K17 ["string"]
       56 SETTABLEKS                       R9 R8 K14 ["type"]
       58 LOADK                            R9 K21 ["Optional keyword to search for in the fetched content (case-insensitive literal match). When provided, only matching sections are returned."]
       59 SETTABLEKS                       R9 R8 K15 ["description"]
       61 NAMECALL                         R5 R5 K22 ["addOptionalArgument"]
       63 CALL                             R5 3 1
       64 LOADK                            R7 K23 ["context_lines"]
       65 DUPTABLE                         R8 K16 [{"type", "description"}]
       66 LOADK                            R9 K24 ["number"]
       67 SETTABLEKS                       R9 R8 K14 ["type"]
       69 LOADK                            R9 K25 ["Lines of surrounding context per match. Only meaningful when query is provided. Default: 3."]
       70 SETTABLEKS                       R9 R8 K15 ["description"]
       72 NAMECALL                         R5 R5 K22 ["addOptionalArgument"]
       74 CALL                             R5 3 1
       75 LOADK                            R7 K26 ["return_full"]
       76 DUPTABLE                         R8 K16 [{"type", "description"}]
       77 LOADK                            R9 K27 ["boolean"]
       78 SETTABLEKS                       R9 R8 K14 ["type"]
       80 LOADK                            R9 K28 ["If true and query matches, return the entire document instead of just matched sections. Only meaningful when query is provided. Default: false."]
       81 SETTABLEKS                       R9 R8 K15 ["description"]
       83 NAMECALL                         R5 R5 K22 ["addOptionalArgument"]
       85 CALL                             R5 3 1
       86 DUPTABLE                         R7 K34 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       87 LOADK                            R8 K35 ["HTTP GET"]
       88 SETTABLEKS                       R8 R7 K29 ["title"]
       90 LOADB                            R8 1
       91 SETTABLEKS                       R8 R7 K30 ["readOnlyHint"]
       93 LOADB                            R8 0
       94 SETTABLEKS                       R8 R7 K31 ["destructiveHint"]
       96 LOADB                            R8 1
       97 SETTABLEKS                       R8 R7 K32 ["idempotentHint"]
       99 LOADB                            R8 1
      100 SETTABLEKS                       R8 R7 K33 ["openWorldHint"]
      102 NAMECALL                         R5 R5 K36 ["setAnnotations"]
      104 CALL                             R5 2 1
      105 MOVE                             R7 R4
      106 NAMECALL                         R5 R5 K37 ["setHandler"]
      108 CALL                             R5 2 1
      109 NAMECALL                         R5 R5 K38 ["build"]
      111 CALL                             R5 1 1
      112 DUPTABLE                         R6 K42 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      113 DUPCLOSURE                       R7 K43 [PROTO_8]
      114 CAPTURE                          UPVAL U7
      115 CAPTURE                          UPVAL U8
      116 SETTABLEKS                       R7 R6 K39 ["transformInitialContent"]
      118 DUPCLOSURE                       R7 K44 [PROTO_11]
      119 CAPTURE                          UPVAL U8
      120 SETTABLEKS                       R7 R6 K40 ["getTransformPreExecuteFn"]
      122 DUPCLOSURE                       R7 K45 [PROTO_13]
      123 CAPTURE                          UPVAL U8
      124 SETTABLEKS                       R7 R6 K41 ["getTransformResultFn"]
      126 DUPTABLE                         R7 K49 [{"definition", "contentWidgets", "streamTransform"}]
      127 SETTABLEKS                       R5 R7 K46 ["definition"]
      129 NEWTABLE                         R8 0 1
      131 GETUPVAL                         R9 7
      132 SETLIST                          R8 R9 1 [1]
      134 SETTABLEKS                       R8 R7 K47 ["contentWidgets"]
      136 SETTABLEKS                       R6 R7 K48 ["streamTransform"]
      138 RETURN                           R7 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R4 K11 ["SummarizedContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Tools"]
       32 GETTABLEKS                       R5 R5 K13 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Resources"]
       39 GETTABLEKS                       R6 R6 K15 ["Localization"]
       41 GETTABLEKS                       R6 R6 K16 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K17 ["Util"]
       46 GETTABLEKS                       R6 R6 K18 ["ToolBuilder"]
       48 GETTABLEKS                       R7 R2 K17 ["Util"]
       50 GETTABLEKS                       R7 R7 K19 ["ToolResult"]
       52 GETTABLEKS                       R8 R4 K20 ["ToolNames"]
       54 GETTABLEKS                       R9 R1 K21 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       56 NEWTABLE                         R10 0 2
       58 DUPTABLE                         R11 K25 [{"base", "description", "validate"}]
       59 SETTABLEKS                       R9 R11 K22 ["base"]
       61 LOADK                            R12 K26 ["Roblox Engine API docs — URLs must end with .md or be llms.txt"]
       62 SETTABLEKS                       R12 R11 K23 ["description"]
       64 DUPCLOSURE                       R12 K27 [PROTO_0]
       65 SETTABLEKS                       R12 R11 K24 ["validate"]
       67 DUPTABLE                         R12 K25 [{"base", "description", "validate"}]
       68 LOADK                            R13 K28 ["https://create.roblox.com/docs/cloud"]
       69 SETTABLEKS                       R13 R12 K22 ["base"]
       71 LOADK                            R13 K29 ["Roblox Cloud API docs — URLs must end with .md or be llms.txt"]
       72 SETTABLEKS                       R13 R12 K23 ["description"]
       74 DUPCLOSURE                       R13 K30 [PROTO_1]
       75 SETTABLEKS                       R13 R12 K24 ["validate"]
       77 SETLIST                          R10 R11 2 [1]
       79 DUPCLOSURE                       R11 K31 [PROTO_2]
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R12 K32 [PROTO_3]
       82 CAPTURE                          VAL R10
       83 DUPCLOSURE                       R13 K33 [PROTO_4]
       84 DUPCLOSURE                       R14 K34 [PROTO_5]
       85 CAPTURE                          VAL R13
       86 DUPCLOSURE                       R15 K35 [PROTO_14]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R5
       96 RETURN                           R15 1
