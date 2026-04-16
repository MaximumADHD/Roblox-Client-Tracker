PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Script", "LocalScript", "ModuleScript"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["Script"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["LocalScript"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["ModuleScript"]
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K6 [string.gmatch]
       14 MOVE                             R4 R0
       15 LOADK                            R5 K7 ["[^%s,]+"]
       16 CALL                             R3 2 3
       17 FORGPREP                         R3
       18 MOVE                             R9 R2
       19 NAMECALL                         R10 R6 K8 ["lower"]
       21 CALL                             R10 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R8 K11 [table.insert]
       25 CALL                             R8 -1 0
       26 FORGLOOP                         R3 1 ; [-9]
       28 NEWTABLE                         R3 0 0
       30 NEWTABLE                         R4 0 0
       32 GETIMPORT                        R5 K13 [game]
       34 NAMECALL                         R5 R5 K14 ["GetDescendants"]
       36 CALL                             R5 1 3
       37 FORGPREP                         R5
       38 GETTABLEKS                       R11 R9 K15 ["ClassName"]
       40 GETTABLE                         R10 R1 R11
       41 JUMPIFNOT                        R10 ; [+58]
       42 LENGTH                           R10 R4
       43 LOADN                            R11 10
       44 JUMPIFNOTLT                      R10 R11 ; [+55]
       46 NAMECALL                         R10 R9 K16 ["GetFullName"]
       48 CALL                             R10 1 1
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K17 ["isPathExcluded"]
       52 MOVE                             R12 R10
       53 CALL                             R11 1 1
       54 JUMPIF                           R11 ; [+45]
       55 GETTABLEKS                       R11 R9 K18 ["Name"]
       57 NAMECALL                         R11 R11 K8 ["lower"]
       59 CALL                             R11 1 1
       60 MOVE                             R12 R2
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 FORGPREP                         R12
       64 MOVE                             R19 R16
       65 LOADN                            R20 1
       66 LOADB                            R21 1
       67 NAMECALL                         R17 R11 K19 ["find"]
       69 CALL                             R17 4 1
       70 JUMPIFNOT                        R17 ; [+27]
       71 MOVE                             R18 R10
       72 LOADK                            R19 K20 ["|"]
       73 GETTABLEKS                       R20 R9 K15 ["ClassName"]
       75 CONCAT                           R17 R18 R20
       76 GETTABLE                         R18 R3 R17
       77 JUMPIF                           R18 ; [+22]
       78 LOADK                            R19 K21 ["Name: %* | Type: %* | Path: %*"]
       79 GETTABLEKS                       R21 R9 K18 ["Name"]
       81 GETTABLEKS                       R22 R9 K15 ["ClassName"]
       83 MOVE                             R23 R10
       84 NAMECALL                         R19 R19 K22 ["format"]
       86 CALL                             R19 4 1
       87 MOVE                             R18 R19
       88 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       90 MOVE                             R20 R4
       91 MOVE                             R21 R18
       92 GETIMPORT                        R19 K11 [table.insert]
       94 CALL                             R19 2 0
       95 LOADB                            R19 1
       96 SETTABLE                         R19 R3 R17
       97 JUMP                             ; [+2]
       98 FORGLOOP                         R12 2 ; [-35]
      100 FORGLOOP                         R5 2 ; [-63]
      102 LENGTH                           R5 R4
      103 JUMPIFNOTEQKN                    R5 K23 [0] ; [+6]
      105 DUPTABLE                         R5 K25 [{"text"}]
      106 LOADK                            R6 K26 ["No matches found for the given query."]
      107 SETTABLEKS                       R6 R5 K24 ["text"]
      109 RETURN                           R5 1
      110 GETUPVAL                         R6 1
      111 CALL                             R6 0 1
      112 JUMPIFNOT                        R6 ; [+2]
      113 LENGTH                           R5 R4
      114 JUMP                             ; [+1]
      115 LOADNIL                          R5
      116 LENGTH                           R6 R4
      117 LOADN                            R7 10
      118 JUMPIFNOTLE                      R7 R6 ; [+8]
      120 GETUPVAL                         R8 2
      121 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      123 MOVE                             R7 R4
      124 GETIMPORT                        R6 K11 [table.insert]
      126 CALL                             R6 2 0
      127 DUPTABLE                         R6 K28 [{"text", "count"}]
      128 GETIMPORT                        R7 K30 [table.concat]
      130 MOVE                             R8 R4
      131 LOADK                            R9 K31 ["\n"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R6 K24 ["text"]
      135 SETTABLEKS                       R5 R6 K27 ["count"]
      137 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["keywords"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+24]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R1 K0 ["text"]
       11 NAMECALL                         R2 R2 K1 ["addText"]
       13 CALL                             R2 2 1
       14 DUPTABLE                         R4 K4 [{"count", "keywords"}]
       15 GETTABLEKS                       R6 R1 K2 ["count"]
       17 ORK                              R5 R6 K5 [0]
       18 SETTABLEKS                       R5 R4 K2 ["count"]
       20 GETTABLEKS                       R5 R0 K3 ["keywords"]
       22 SETTABLEKS                       R5 R4 K3 ["keywords"]
       24 NAMECALL                         R2 R2 K6 ["setStructuredContent"]
       26 CALL                             R2 2 1
       27 NAMECALL                         R2 R2 K7 ["build"]
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 GETTABLEKS                       R4 R1 K0 ["text"]
       35 NAMECALL                         R2 R2 K1 ["addText"]
       37 CALL                             R2 2 1
       38 NAMECALL                         R2 R2 K7 ["build"]
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["FileSearch"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FileSearch"]
        2 LOADK                            R4 K1 ["SearchingFor"]
        3 DUPTABLE                         R5 K3 [{"keywords"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["keywords"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R3 K2 ["keywords"]
        4 ORK                              R1 R2 K0 [""]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_6:
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
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K7 ["keywords"]
       18 JUMPIFNOT                        R1 ; [+19]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K7 ["keywords"]
       22 JUMPIFEQKS                       R1 K8 [""] ; [+15]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K9 ["FileSearch"]
       26 LOADK                            R4 K10 ["Searched"]
       27 DUPTABLE                         R5 K11 [{"keywords"}]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K7 ["keywords"]
       31 SETTABLEKS                       R6 R5 K7 ["keywords"]
       33 NAMECALL                         R1 R1 K5 ["getText"]
       35 CALL                             R1 4 1
       36 SETTABLEKS                       R1 R0 K12 ["subtitle"]
       38 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R0 K3 [{"type", "icon", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K5 ["Icons"]
        9 GETTABLEKS                       R1 R2 K6 ["Search"]
       11 SETTABLEKS                       R1 R0 K1 ["icon"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["FileSearch"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FileSearch"]
        2 LOADK                            R4 K1 ["Complete"]
        3 DUPTABLE                         R5 K3 [{"count"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["count"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_10:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["content"]
        3 GETTABLEN                        R2 R3 1
        4 GETTABLEKS                       R3 R0 K1 ["isError"]
        6 JUMPIF                           R3 ; [+26]
        7 JUMPIFEQKNIL                     R2 ; [+25]
        9 GETTABLEKS                       R3 R2 K2 ["type"]
       11 JUMPIFNOTEQKS                    R3 K3 ["text"] ; [+21]
       13 GETTABLEKS                       R3 R2 K3 ["text"]
       15 LOADK                            R5 K4 ["\n"]
       16 NAMECALL                         R3 R3 K5 ["split"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K3 ["text"]
       21 JUMPIFNOTEQKS                    R4 K6 ["No matches found for the given query."] ; [+3]
       23 LOADN                            R1 0
       24 JUMP                             ; [+8]
       25 LENGTH                           R5 R3
       26 GETTABLE                         R4 R3 R5
       27 GETUPVAL                         R5 0
       28 JUMPIFNOTEQ                      R4 R5 ; [+3]
       30 LOADN                            R1 10
       31 JUMP                             ; [+1]
       32 LENGTH                           R1 R3
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          REF R1
       36 CLOSEUPVALS                      R1
       37 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["FileSearchTool_searchScript"]
        3 DUPCLOSURE                       R5 K2 [PROTO_1]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R6 R7 K5 ["FileSearch"]
       19 NAMECALL                         R4 R4 K6 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K7 ["Fast script search based on fuzzy matching against script names.\nUse if you know part of the script name but don't know where it's located exactly.\nResponse will be capped to 10 results.\nMake your query more specific if need to filter results further.\nNote: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.\n"]
       23 NAMECALL                         R4 R4 K8 ["setDescription"]
       25 CALL                             R4 2 1
       26 LOADK                            R6 K9 ["keywords"]
       27 DUPTABLE                         R7 K12 [{"type", "description"}]
       28 LOADK                            R8 K13 ["string"]
       29 SETTABLEKS                       R8 R7 K10 ["type"]
       31 LOADK                            R8 K14 ["The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."]
       32 SETTABLEKS                       R8 R7 K11 ["description"]
       34 NAMECALL                         R4 R4 K15 ["addArgument"]
       36 CALL                             R4 3 1
       37 MOVE                             R6 R3
       38 NAMECALL                         R4 R4 K16 ["setHandler"]
       40 CALL                             R4 2 1
       41 NAMECALL                         R4 R4 K17 ["build"]
       43 CALL                             R4 1 1
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 1
       46 CALL                             R6 0 1
       47 JUMPIFNOT                        R6 ; [+16]
       48 DUPTABLE                         R6 K21 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       49 DUPCLOSURE                       R7 K22 [PROTO_3]
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R7 R6 K18 ["transformInitialContent"]
       54 DUPCLOSURE                       R7 K23 [PROTO_5]
       55 CAPTURE                          UPVAL U6
       56 SETTABLEKS                       R7 R6 K19 ["getTransformPreExecuteFn"]
       58 DUPCLOSURE                       R7 K24 [PROTO_7]
       59 CAPTURE                          UPVAL U6
       60 SETTABLEKS                       R7 R6 K20 ["getTransformResultFn"]
       62 MOVE                             R5 R6
       63 JUMP                             ; [+12]
       64 DUPTABLE                         R6 K25 [{"transformInitialContent", "getTransformResultFn"}]
       65 DUPCLOSURE                       R7 K26 [PROTO_8]
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 SETTABLEKS                       R7 R6 K18 ["transformInitialContent"]
       70 DUPCLOSURE                       R7 K27 [PROTO_10]
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U6
       73 SETTABLEKS                       R7 R6 K20 ["getTransformResultFn"]
       75 MOVE                             R5 R6
       76 DUPTABLE                         R6 K31 [{"definition", "contentWidgets", "streamTransform"}]
       77 SETTABLEKS                       R4 R6 K28 ["definition"]
       79 NEWTABLE                         R7 0 1
       81 GETUPVAL                         R8 5
       82 SETLIST                          R7 R8 1 [1]
       84 SETTABLEKS                       R7 R6 K29 ["contentWidgets"]
       86 SETTABLEKS                       R5 R6 K30 ["streamTransform"]
       88 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R4 K10 ["SummarizedContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R5 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["ToolUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K15 ["Resources"]
       41 GETTABLEKS                       R7 R8 K16 ["Localization"]
       43 GETTABLEKS                       R6 R7 K17 ["Translator"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K18 ["Flags"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R8 R6 K19 ["Shared"]
       53 GETTABLEKS                       R7 R8 K20 ["FFlagEnableSubagents"]
       55 GETTABLEKS                       R9 R1 K13 ["Util"]
       57 GETTABLEKS                       R8 R9 K21 ["ToolBuilder"]
       59 GETTABLEKS                       R10 R1 K13 ["Util"]
       61 GETTABLEKS                       R9 R10 K22 ["ToolResult"]
       63 GETTABLEKS                       R10 R3 K23 ["ToolNames"]
       65 LOADK                            R12 K24 ["... Search stopped after reaching the limit of %* matches."]
       66 LOADN                            R14 10
       67 NAMECALL                         R12 R12 K25 ["format"]
       69 CALL                             R12 2 1
       70 MOVE                             R11 R12
       71 DUPCLOSURE                       R12 K26 [PROTO_0]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R11
       75 DUPCLOSURE                       R13 K27 [PROTO_11]
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 RETURN                           R13 1
