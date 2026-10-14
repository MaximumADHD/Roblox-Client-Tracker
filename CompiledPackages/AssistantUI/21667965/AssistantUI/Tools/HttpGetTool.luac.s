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
        6 LOADK                            R8 K0 ["- %* (%*)"]
        7 GETTABLEKS                       R10 R5 K1 ["base"]
        9 GETTABLEKS                       R11 R5 K2 ["description"]
       11 NAMECALL                         R8 R8 K3 ["format"]
       13 CALL                             R8 3 1
       14 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K6 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-15]
       22 GETIMPORT                        R1 K8 [table.concat]
       24 MOVE                             R2 R0
       25 LOADK                            R3 K9 ["\n"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

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
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        3 LOADB                            R1 0
        4 LOADK                            R2 K1 ["url is required"]
        5 RETURN                           R1 2
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+6]
       10 LOADB                            R1 0
       11 LOADK                            R3 K2 ["URL not allowed. Only these patterns are permitted:\n"]
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 CONCAT                           R2 R3 R4
       15 RETURN                           R1 2
       16 GETIMPORT                        R1 K4 [pcall]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["http"]
       21 GETTABLEKS                       R2 R2 K6 ["requestAsync"]
       23 DUPTABLE                         R3 K10 [{["Url"], ["Method"] = "GET"}]
       24 SETTABLEKS                       R0 R3 K7 ["Url"]
       26 CALL                             R1 2 2
       27 JUMPIF                           R1 ; [+11]
       28 LOADB                            R3 0
       29 LOADK                            R4 K11 ["HTTP GET request failed: %*"]
       30 FASTCALL1                        TOSTRING R2 ; [+3]
       31 MOVE                             R7 R2
       32 GETIMPORT                        R6 K13 [tostring]
       34 CALL                             R6 1 1
       35 NAMECALL                         R4 R4 K14 ["format"]
       37 CALL                             R4 2 1
       38 RETURN                           R3 2
       39 GETTABLEKS                       R3 R2 K15 ["Success"]
       41 JUMPIF                           R3 ; [+8]
       42 LOADB                            R3 0
       43 LOADK                            R4 K16 ["HTTP GET request failed with status %*"]
       44 GETTABLEKS                       R6 R2 K17 ["StatusCode"]
       46 NAMECALL                         R4 R4 K14 ["format"]
       48 CALL                             R4 2 1
       49 RETURN                           R3 2
       50 LOADB                            R3 1
       51 GETTABLEKS                       R4 R2 K18 ["Body"]
       53 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["url"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["url"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_9:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantHttpGetOnStandaloneDM"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R0 K1 ["url"]
        9 CALL                             R3 1 2
       10 MOVE                             R1 R3
       11 MOVE                             R2 R4
       12 JUMP                             ; [+29]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantUseNewDMNetworking"]
       16 JUMPIFNOT                        R3 ; [+15]
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K3 ["FOCUSED"]
       21 DUPTABLE                         R6 K4 [{"url"}]
       22 GETTABLEKS                       R7 R0 K1 ["url"]
       24 SETTABLEKS                       R7 R6 K1 ["url"]
       26 NAMECALL                         R3 R3 K5 ["InvokeAsync"]
       28 CALL                             R3 3 2
       29 MOVE                             R1 R3
       30 MOVE                             R2 R4
       31 JUMP                             ; [+10]
       32 GETUPVAL                         R3 4
       33 LOADNIL                          R4
       34 DUPTABLE                         R5 K4 [{"url"}]
       35 GETTABLEKS                       R6 R0 K1 ["url"]
       37 SETTABLEKS                       R6 R5 K1 ["url"]
       39 CALL                             R3 2 2
       40 MOVE                             R1 R3
       41 MOVE                             R2 R4
       42 JUMPIF                           R1 ; [+22]
       43 GETUPVAL                         R3 5
       44 CALL                             R3 0 1
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R3 K6 ["addText"]
       48 CALL                             R3 2 1
       49 DUPTABLE                         R5 K4 [{"url"}]
       50 GETTABLEKS                       R6 R0 K1 ["url"]
       52 SETTABLEKS                       R6 R5 K1 ["url"]
       54 NAMECALL                         R3 R3 K7 ["setStructuredContent"]
       56 CALL                             R3 2 1
       57 LOADB                            R5 1
       58 NAMECALL                         R3 R3 K8 ["setError"]
       60 CALL                             R3 2 1
       61 NAMECALL                         R3 R3 K9 ["build"]
       63 CALL                             R3 1 -1
       64 RETURN                           R3 -1
       65 GETUPVAL                         R3 6
       66 GETTABLEKS                       R3 R3 K10 ["effectiveQuery"]
       68 GETTABLEKS                       R4 R0 K11 ["query"]
       70 CALL                             R3 1 1
       71 JUMPIF                           R3 ; [+18]
       72 GETUPVAL                         R4 5
       73 CALL                             R4 0 1
       74 MOVE                             R6 R2
       75 NAMECALL                         R4 R4 K6 ["addText"]
       77 CALL                             R4 2 1
       78 DUPTABLE                         R6 K4 [{"url"}]
       79 GETTABLEKS                       R7 R0 K1 ["url"]
       81 SETTABLEKS                       R7 R6 K1 ["url"]
       83 NAMECALL                         R4 R4 K7 ["setStructuredContent"]
       85 CALL                             R4 2 1
       86 NAMECALL                         R4 R4 K9 ["build"]
       88 CALL                             R4 1 -1
       89 RETURN                           R4 -1
       90 GETTABLEKS                       R5 R0 K13 ["context_lines"]
       92 ORK                              R4 R5 K12 [3]
       93 GETTABLEKS                       R6 R0 K15 ["return_full"]
       95 ORK                              R5 R6 K14 [False]
       96 GETUPVAL                         R6 7
       97 MOVE                             R7 R2
       98 MOVE                             R8 R3
       99 MOVE                             R9 R4
      100 MOVE                             R10 R5
      101 CALL                             R6 4 2
      102 JUMPIF                           R6 ; [+26]
      103 GETUPVAL                         R8 5
      104 CALL                             R8 0 1
      105 GETIMPORT                        R10 K18 [string.format]
      107 LOADK                            R11 K19 ["No matches for '%s' in %s — skip this doc."]
      108 MOVE                             R12 R3
      109 GETTABLEKS                       R13 R0 K1 ["url"]
      111 CALL                             R10 3 -1
      112 NAMECALL                         R8 R8 K6 ["addText"]
      114 CALL                             R8 -1 1
      115 DUPTABLE                         R10 K21 [{["url"], ["query"], ["found"] = False}]
      116 GETTABLEKS                       R11 R0 K1 ["url"]
      118 SETTABLEKS                       R11 R10 K1 ["url"]
      120 SETTABLEKS                       R3 R10 K11 ["query"]
      122 NAMECALL                         R8 R8 K7 ["setStructuredContent"]
      124 CALL                             R8 2 1
      125 NAMECALL                         R8 R8 K9 ["build"]
      127 CALL                             R8 1 -1
      128 RETURN                           R8 -1
      129 GETUPVAL                         R8 5
      130 CALL                             R8 0 1
      131 MOVE                             R10 R7
      132 NAMECALL                         R8 R8 K6 ["addText"]
      134 CALL                             R8 2 1
      135 DUPTABLE                         R10 K23 [{["url"], ["query"], ["found"] = True}]
      136 GETTABLEKS                       R11 R0 K1 ["url"]
      138 SETTABLEKS                       R11 R10 K1 ["url"]
      140 SETTABLEKS                       R3 R10 K11 ["query"]
      142 NAMECALL                         R8 R8 K7 ["setStructuredContent"]
      144 CALL                             R8 2 1
      145 NAMECALL                         R8 R8 K9 ["build"]
      147 CALL                             R8 1 -1
      148 RETURN                           R8 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIFNOT                        R7 ; [+35]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K4 ["invoke"]
       19 MOVE                             R8 R2
       20 LOADK                            R9 K5 ["HttpGetTool.httpGet"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K6 ["new"]
       26 CALL                             R7 0 1
       27 NAMECALL                         R8 R2 K7 ["GetIdentity"]
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 5
       31 GETTABLEKS                       R9 R9 K8 ["Identity"]
       33 GETTABLEKS                       R9 R9 K9 ["Standalone"]
       35 JUMPIFEQ                         R8 R9 ; [+9]
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R4
       39 NAMECALL                         R10 R6 K10 ["Connect"]
       41 CALL                             R10 2 -1
       42 NAMECALL                         R8 R7 K11 ["Add"]
       44 CALL                             R8 -1 0
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          VAL R7
       47 NAMECALL                         R8 R3 K12 ["Once"]
       49 CALL                             R8 2 0
       50 JUMP                             ; [+9]
       51 GETTABLEKS                       R7 R0 K13 ["networkingOLD"]
       53 LOADK                            R10 K14 ["HttpGetTool_httpGet"]
       54 NEWCLOSURE                       R11 P3
       55 CAPTURE                          VAL R4
       56 NAMECALL                         R8 R7 K15 ["OnHostInvokeAsync"]
       58 CALL                             R8 3 1
       59 MOVE                             R5 R8
       60 NEWCLOSURE                       R7 P4
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          REF R6
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U8
       69 GETUPVAL                         R8 9
       70 GETTABLEKS                       R8 R8 K16 ["define"]
       72 CALL                             R8 0 1
       73 GETUPVAL                         R10 10
       74 GETTABLEKS                       R10 R10 K17 ["HttpGet"]
       76 NAMECALL                         R8 R8 K18 ["setName"]
       78 CALL                             R8 2 1
       79 GETUPVAL                         R10 10
       80 GETTABLEKS                       R10 R10 K19 ["replaceTokens"]
       82 LOADK                            R11 K20 ["Fetches the content of a URL via HTTP GET request. Returns the response body as text.\n\nOptionally searches the fetched content for a keyword (query parameter). When a query is provided:\n- Returns only the matching sections with surrounding context lines, saving context window space.\n- Returns a short \"no match\" message if the keyword isn't found.\n- Use context_lines to control how many lines of context around each match (default: 3).\n- Use return_full: true to get the entire document when the keyword matches.\n\nWithout a query, the full response body is returned.\n\nOnly the following URL patterns are allowed:\n{ALLOWED_URLS}\n\nAny URL that does not match one of the above rules will be rejected.\nOnly GET requests are supported. The full URL must be provided.\n\nExamples:\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/BasePart.md\", query: \"Position\", context_lines: 10)\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\", return_full: true)\n"]
       83 DUPTABLE                         R12 K23 [{"ALLOWED_URLS", "ENGINE_DOCS_URL"}]
       84 GETUPVAL                         R13 1
       85 CALL                             R13 0 1
       86 SETTABLEKS                       R13 R12 K21 ["ALLOWED_URLS"]
       88 GETUPVAL                         R13 11
       89 SETTABLEKS                       R13 R12 K22 ["ENGINE_DOCS_URL"]
       91 CALL                             R10 2 -1
       92 NAMECALL                         R8 R8 K24 ["setDescription"]
       94 CALL                             R8 -1 1
       95 LOADK                            R10 K25 ["url"]
       96 DUPTABLE                         R11 K30 [{["type"] = "string", ["description"] = "The full URL to fetch. Must match one of the allowed URL patterns."}]
       97 NAMECALL                         R8 R8 K31 ["addArgument"]
       99 CALL                             R8 3 1
      100 LOADK                            R10 K32 ["query"]
      101 DUPTABLE                         R11 K34 [{["type"] = "string", ["description"] = "Optional keyword to search for in the fetched content (case-insensitive literal match). When provided, only matching sections are returned."}]
      102 NAMECALL                         R8 R8 K35 ["addOptionalArgument"]
      104 CALL                             R8 3 1
      105 LOADK                            R10 K36 ["context_lines"]
      106 DUPTABLE                         R11 K39 [{["type"] = "number", ["description"] = "Lines of surrounding context per match. Only meaningful when query is provided. Default: 3."}]
      107 NAMECALL                         R8 R8 K35 ["addOptionalArgument"]
      109 CALL                             R8 3 1
      110 LOADK                            R10 K40 ["return_full"]
      111 DUPTABLE                         R11 K43 [{["type"] = "boolean", ["description"] = "If true and query matches, return the entire document instead of just matched sections. Only meaningful when query is provided. Default: false."}]
      112 NAMECALL                         R8 R8 K35 ["addOptionalArgument"]
      114 CALL                             R8 3 1
      115 DUPTABLE                         R10 K52 [{["title"] = "HTTP GET", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
      116 NAMECALL                         R8 R8 K53 ["setAnnotations"]
      118 CALL                             R8 2 1
      119 MOVE                             R10 R7
      120 NAMECALL                         R8 R8 K54 ["setHandler"]
      122 CALL                             R8 2 1
      123 NAMECALL                         R8 R8 K55 ["build"]
      125 CALL                             R8 1 1
      126 DUPTABLE                         R9 K57 [{"definition"}]
      127 SETTABLEKS                       R8 R9 K56 ["definition"]
      129 CLOSEUPVALS                      R5
      130 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K6 ["Util"]
       35 GETTABLEKS                       R6 R6 K12 ["HttpGetQuery"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["ModelContextProtocol"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Tools"]
       49 GETTABLEKS                       R8 R8 K15 ["ToolTypes"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R3 K16 ["Remote"]
       54 GETTABLEKS                       R9 R6 K6 ["Util"]
       56 GETTABLEKS                       R9 R9 K17 ["ToolBuilder"]
       58 GETTABLEKS                       R10 R6 K6 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["ToolResult"]
       62 GETTABLEKS                       R11 R7 K19 ["ToolNames"]
       64 GETTABLEKS                       R12 R2 K20 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       66 GETTABLEKS                       R13 R2 K21 ["ROBLOX_CREATOR_DOCS_BASE_URL"]
       68 DUPCLOSURE                       R14 K22 [PROTO_0]
       69 NEWTABLE                         R15 0 5
       71 DUPTABLE                         R16 K27 [{["base"], ["description"] = "Roblox Engine API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       72 SETTABLEKS                       R12 R16 K23 ["base"]
       74 SETTABLEKS                       R14 R16 K26 ["validate"]
       76 DUPTABLE                         R17 K30 [{["base"] = "https://create.roblox.com/docs/cloud", ["description"] = "Roblox Cloud API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       77 SETTABLEKS                       R14 R17 K26 ["validate"]
       79 DUPTABLE                         R18 K33 [{["base"] = "https://create.roblox.com/docs/performance-optimization", ["description"] = "Roblox Performance Optimization docs — URLs must end with .md or be llms.txt", ["validate"]}]
       80 SETTABLEKS                       R14 R18 K26 ["validate"]
       82 DUPTABLE                         R19 K36 [{["base"] = "https://github.com/Roblox/libmp", ["description"] = "Roblox LibMP repository — URLs must end with .md or be llms.txt", ["validate"]}]
       83 SETTABLEKS                       R14 R19 K26 ["validate"]
       85 DUPTABLE                         R20 K38 [{["base"], ["description"] = "Roblox Creator docs (guides, tutorials, etc.) — URLs must end with .md or be llms.txt", ["validate"]}]
       86 SETTABLEKS                       R13 R20 K23 ["base"]
       88 SETTABLEKS                       R14 R20 K26 ["validate"]
       90 SETLIST                          R15 R16 5 [1]
       92 DUPCLOSURE                       R16 K39 [PROTO_1]
       93 CAPTURE                          VAL R15
       94 DUPCLOSURE                       R17 K40 [PROTO_2]
       95 CAPTURE                          VAL R15
       96 DUPCLOSURE                       R18 K41 [PROTO_3]
       97 DUPCLOSURE                       R19 K42 [PROTO_4]
       98 CAPTURE                          VAL R18
       99 DUPCLOSURE                       R20 K43 [PROTO_10]
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R12
      112 RETURN                           R20 1
