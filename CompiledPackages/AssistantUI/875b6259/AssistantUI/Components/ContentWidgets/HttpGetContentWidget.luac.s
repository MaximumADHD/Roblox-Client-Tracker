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
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETTABLEKS                       R3 R0 K2 ["toolResult"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R2 R0 K2 ["toolResult"]
       14 GETTABLEKS                       R2 R2 K3 ["structuredContent"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R3 R1 K4 ["url"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADK                            R3 K5 [""]
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R4 R1 K6 ["query"]
       26 JUMPIF                           R4 ; [+1]
       27 LOADK                            R4 K5 [""]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R5 R2 K7 ["found"]
       31 JUMPIF                           R5 ; [+1]
       32 LOADB                            R5 0
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R8 0 3
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K9 ["locale"]
       45 MOVE                             R10 R3
       46 MOVE                             R11 R4
       47 SETLIST                          R8 R9 3 [1]
       49 CALL                             R6 2 1
       50 LOADK                            R7 K5 [""]
       51 GETTABLEKS                       R8 R0 K2 ["toolResult"]
       53 JUMPIFNOT                        R8 ; [+20]
       54 GETTABLEKS                       R8 R0 K2 ["toolResult"]
       56 GETTABLEKS                       R8 R8 K10 ["isError"]
       58 JUMPIFNOT                        R8 ; [+3]
       59 GETTABLEKS                       R7 R6 K11 ["Failed"]
       61 JUMP                             ; [+25]
       62 JUMPIFEQKS                       R4 K5 [""] ; [+8]
       64 JUMPIFNOT                        R5 ; [+3]
       65 GETTABLEKS                       R7 R6 K12 ["Found"]
       67 JUMP                             ; [+19]
       68 GETTABLEKS                       R7 R6 K13 ["NotFound"]
       70 JUMP                             ; [+16]
       71 GETTABLEKS                       R7 R6 K14 ["Fetched"]
       73 JUMP                             ; [+13]
       74 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       76 JUMPIFNOT                        R8 ; [+8]
       77 JUMPIFEQKS                       R4 K5 [""] ; [+4]
       79 GETTABLEKS                       R7 R6 K15 ["Searching"]
       81 JUMP                             ; [+5]
       82 GETTABLEKS                       R7 R6 K16 ["Fetching"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R7 R6 K17 ["Pending"]
       87 GETUPVAL                         R8 2
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R9 R9 K18 ["ContentWidget"]
       91 GETUPVAL                         R10 4
       92 GETTABLEKS                       R10 R10 K19 ["join"]
       94 MOVE                             R11 R0
       95 DUPTABLE                         R12 K23 [{"type", "summary", "icon"}]
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R13 R13 K24 ["Type"]
       99 SETTABLEKS                       R13 R12 K20 ["type"]
      101 SETTABLEKS                       R7 R12 K21 ["summary"]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R13 R13 K25 ["Icons"]
      106 GETTABLEKS                       R13 R13 K26 ["Search"]
      108 SETTABLEKS                       R13 R12 K22 ["icon"]
      110 CALL                             R10 2 -1
      111 CALL                             R8 -1 -1
      112 RETURN                           R8 -1

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
       46 DUPCLOSURE                       R7 K17 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 DUPTABLE                         R8 K21 [{"Type", "ContentWidget", "Serialization"}]
       53 LOADK                            R9 K22 ["HttpGet"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
