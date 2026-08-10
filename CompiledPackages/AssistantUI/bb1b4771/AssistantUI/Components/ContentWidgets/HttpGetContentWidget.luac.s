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
       10 GETTABLEKS                       R5 R2 K4 ["query"]
       12 ORK                              R4 R5 K2 [""]
       13 GETTABLEKS                       R5 R0 K5 ["toolResult"]
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R6 R5 K6 ["structuredContent"]
       18 JUMPIF                           R6 ; [+1]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R8 R6 K8 ["found"]
       22 ORK                              R7 R8 K7 [False]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R10 0 3
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K10 ["locale"]
       35 MOVE                             R12 R3
       36 MOVE                             R13 R4
       37 SETLIST                          R10 R11 3 [1]
       39 CALL                             R8 2 1
       40 LOADK                            R9 K2 [""]
       41 JUMPIFNOT                        R5 ; [+21]
       42 GETTABLEKS                       R10 R5 K6 ["structuredContent"]
       44 JUMPIFNOT                        R10 ; [+15]
       45 GETTABLEKS                       R10 R5 K11 ["isError"]
       47 JUMPIF                           R10 ; [+12]
       48 JUMPIFEQKS                       R4 K2 [""] ; [+8]
       50 JUMPIFNOT                        R7 ; [+3]
       51 GETTABLEKS                       R9 R8 K12 ["Found"]
       53 JUMP                             ; [+20]
       54 GETTABLEKS                       R9 R8 K13 ["NotFound"]
       56 JUMP                             ; [+17]
       57 GETTABLEKS                       R9 R8 K14 ["Fetched"]
       59 JUMP                             ; [+14]
       60 GETTABLEKS                       R9 R8 K15 ["Failed"]
       62 JUMP                             ; [+11]
       63 JUMPIFNOT                        R1 ; [+8]
       64 JUMPIFEQKS                       R4 K2 [""] ; [+4]
       66 GETTABLEKS                       R9 R8 K16 ["Searching"]
       68 JUMP                             ; [+5]
       69 GETTABLEKS                       R9 R8 K17 ["Fetching"]
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R9 R8 K18 ["Pending"]
       74 GETUPVAL                         R10 4
       75 GETUPVAL                         R11 5
       76 GETTABLEKS                       R11 R11 K19 ["ContentWidget"]
       78 GETUPVAL                         R12 6
       79 GETTABLEKS                       R12 R12 K20 ["join"]
       81 MOVE                             R13 R0
       82 DUPTABLE                         R14 K24 [{"type", "summary", "icon"}]
       83 GETUPVAL                         R15 5
       84 GETTABLEKS                       R15 R15 K25 ["Type"]
       86 SETTABLEKS                       R15 R14 K21 ["type"]
       88 SETTABLEKS                       R9 R14 K22 ["summary"]
       90 GETUPVAL                         R15 5
       91 GETTABLEKS                       R15 R15 K26 ["Icons"]
       93 GETTABLEKS                       R15 R15 K27 ["Search"]
       95 SETTABLEKS                       R15 R14 K23 ["icon"]
       97 CALL                             R12 2 -1
       98 CALL                             R10 -1 -1
       99 RETURN                           R10 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K11 ["SummarizedContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Resources"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R5 R5 K14 ["Translator"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K16 ["createElement"]
       46 NEWTABLE                         R7 0 0
       48 NEWTABLE                         R8 0 0
       50 DUPCLOSURE                       R9 K17 [PROTO_1]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 DUPTABLE                         R10 K23 [{["Type"] = "HttpGet", ["ContentWidget"], ["Serialization"] = }]
       59 GETTABLEKS                       R11 R2 K24 ["memo"]
       61 MOVE                             R12 R9
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K20 ["ContentWidget"]
       65 RETURN                           R10 1
