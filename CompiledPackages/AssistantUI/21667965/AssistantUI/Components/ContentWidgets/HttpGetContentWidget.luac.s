PROTO_0:
        0 DUPTABLE                         R0 K7 [{"Pending", "Fetching", "Searching", "Fetched", "Failed", "Found", "NotFound"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["HttpGet"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["HttpGet"]
       11 LOADK                            R4 K1 ["Fetching"]
       12 DUPTABLE                         R5 K11 [{"url"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K10 ["url"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["Fetching"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K8 ["HttpGet"]
       23 LOADK                            R4 K2 ["Searching"]
       24 DUPTABLE                         R5 K13 [{"url", "query"}]
       25 GETUPVAL                         R6 1
       26 SETTABLEKS                       R6 R5 K10 ["url"]
       28 GETUPVAL                         R6 2
       29 SETTABLEKS                       R6 R5 K12 ["query"]
       31 NAMECALL                         R1 R1 K9 ["getText"]
       33 CALL                             R1 4 1
       34 SETTABLEKS                       R1 R0 K2 ["Searching"]
       36 GETUPVAL                         R1 0
       37 LOADK                            R3 K8 ["HttpGet"]
       38 LOADK                            R4 K3 ["Fetched"]
       39 DUPTABLE                         R5 K11 [{"url"}]
       40 GETUPVAL                         R6 1
       41 SETTABLEKS                       R6 R5 K10 ["url"]
       43 NAMECALL                         R1 R1 K9 ["getText"]
       45 CALL                             R1 4 1
       46 SETTABLEKS                       R1 R0 K3 ["Fetched"]
       48 GETUPVAL                         R1 0
       49 LOADK                            R3 K8 ["HttpGet"]
       50 LOADK                            R4 K4 ["Failed"]
       51 DUPTABLE                         R5 K11 [{"url"}]
       52 GETUPVAL                         R6 1
       53 SETTABLEKS                       R6 R5 K10 ["url"]
       55 NAMECALL                         R1 R1 K9 ["getText"]
       57 CALL                             R1 4 1
       58 SETTABLEKS                       R1 R0 K4 ["Failed"]
       60 GETUPVAL                         R1 0
       61 LOADK                            R3 K8 ["HttpGet"]
       62 LOADK                            R4 K5 ["Found"]
       63 DUPTABLE                         R5 K13 [{"url", "query"}]
       64 GETUPVAL                         R6 1
       65 SETTABLEKS                       R6 R5 K10 ["url"]
       67 GETUPVAL                         R6 2
       68 SETTABLEKS                       R6 R5 K12 ["query"]
       70 NAMECALL                         R1 R1 K9 ["getText"]
       72 CALL                             R1 4 1
       73 SETTABLEKS                       R1 R0 K5 ["Found"]
       75 GETUPVAL                         R1 0
       76 LOADK                            R3 K8 ["HttpGet"]
       77 LOADK                            R4 K6 ["NotFound"]
       78 DUPTABLE                         R5 K13 [{"url", "query"}]
       79 GETUPVAL                         R6 1
       80 SETTABLEKS                       R6 R5 K10 ["url"]
       82 GETUPVAL                         R6 2
       83 SETTABLEKS                       R6 R5 K12 ["query"]
       85 NAMECALL                         R1 R1 K9 ["getText"]
       87 CALL                             R1 4 1
       88 SETTABLEKS                       R1 R0 K6 ["NotFound"]
       90 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["url"]
        9 ORK                              R3 R4 K2 [""]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["effectiveQuery"]
       13 GETTABLEKS                       R6 R2 K5 ["query"]
       15 CALL                             R5 1 1
       16 ORK                              R4 R5 K2 [""]
       17 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K7 ["structuredContent"]
       22 JUMPIF                           R6 ; [+1]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R8 R6 K9 ["found"]
       26 ORK                              R7 R8 K8 [False]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R10 0 3
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K11 ["locale"]
       39 MOVE                             R12 R3
       40 MOVE                             R13 R4
       41 SETLIST                          R10 R11 3 [1]
       43 CALL                             R8 2 1
       44 LOADK                            R9 K2 [""]
       45 JUMPIFNOT                        R5 ; [+21]
       46 GETTABLEKS                       R10 R5 K7 ["structuredContent"]
       48 JUMPIFNOT                        R10 ; [+15]
       49 GETTABLEKS                       R10 R5 K12 ["isError"]
       51 JUMPIF                           R10 ; [+12]
       52 JUMPIFEQKS                       R4 K2 [""] ; [+8]
       54 JUMPIFNOT                        R7 ; [+3]
       55 GETTABLEKS                       R9 R8 K13 ["Found"]
       57 JUMP                             ; [+20]
       58 GETTABLEKS                       R9 R8 K14 ["NotFound"]
       60 JUMP                             ; [+17]
       61 GETTABLEKS                       R9 R8 K15 ["Fetched"]
       63 JUMP                             ; [+14]
       64 GETTABLEKS                       R9 R8 K16 ["Failed"]
       66 JUMP                             ; [+11]
       67 JUMPIFNOT                        R1 ; [+8]
       68 JUMPIFEQKS                       R4 K2 [""] ; [+4]
       70 GETTABLEKS                       R9 R8 K17 ["Searching"]
       72 JUMP                             ; [+5]
       73 GETTABLEKS                       R9 R8 K18 ["Fetching"]
       75 JUMP                             ; [+2]
       76 GETTABLEKS                       R9 R8 K19 ["Pending"]
       78 GETUPVAL                         R10 5
       79 GETUPVAL                         R11 6
       80 GETTABLEKS                       R11 R11 K20 ["ContentWidget"]
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R12 R12 K21 ["join"]
       85 MOVE                             R13 R0
       86 DUPTABLE                         R14 K25 [{"type", "summary", "icon"}]
       87 GETUPVAL                         R15 6
       88 GETTABLEKS                       R15 R15 K26 ["Type"]
       90 SETTABLEKS                       R15 R14 K22 ["type"]
       92 SETTABLEKS                       R9 R14 K23 ["summary"]
       94 GETUPVAL                         R15 6
       95 GETTABLEKS                       R15 R15 K27 ["Icons"]
       97 GETTABLEKS                       R15 R15 K28 ["Search"]
       99 SETTABLEKS                       R15 R14 K24 ["icon"]
      101 CALL                             R12 2 -1
      102 CALL                             R10 -1 -1
      103 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["HttpGetQuery"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K13 ["SummarizedContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Resources"]
       41 GETTABLEKS                       R6 R6 K15 ["Localization"]
       43 GETTABLEKS                       R6 R6 K16 ["Translator"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K18 ["createElement"]
       53 NEWTABLE                         R8 0 0
       55 NEWTABLE                         R9 0 0
       57 DUPCLOSURE                       R10 K19 [PROTO_1]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 DUPTABLE                         R11 K23 [{["Type"] = "HttpGet", ["ContentWidget"]}]
       67 GETTABLEKS                       R12 R3 K24 ["memo"]
       69 MOVE                             R13 R10
       70 CALL                             R12 1 1
       71 SETTABLEKS                       R12 R11 K22 ["ContentWidget"]
       73 RETURN                           R11 1
