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
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["url"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["withDefault"]
       20 GETTABLEKS                       R4 R1 K5 ["query"]
       22 LOADK                            R5 K4 [""]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       26 JUMPIFNOT                        R5 ; [+5]
       27 GETTABLEKS                       R4 R0 K6 ["toolResult"]
       29 GETTABLEKS                       R4 R4 K7 ["structuredContent"]
       31 JUMPIF                           R4 ; [+2]
       32 NEWTABLE                         R4 0 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K2 ["withDefault"]
       37 GETTABLEKS                       R6 R4 K8 ["found"]
       39 LOADB                            R7 0
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R8 0 3
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K10 ["locale"]
       53 MOVE                             R10 R2
       54 MOVE                             R11 R3
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 1
       58 LOADK                            R7 K4 [""]
       59 GETTABLEKS                       R8 R0 K6 ["toolResult"]
       61 JUMPIFNOT                        R8 ; [+25]
       62 GETTABLEKS                       R8 R0 K6 ["toolResult"]
       64 GETTABLEKS                       R8 R8 K7 ["structuredContent"]
       66 JUMPIFNOT                        R8 ; [+17]
       67 GETTABLEKS                       R8 R0 K6 ["toolResult"]
       69 GETTABLEKS                       R8 R8 K11 ["isError"]
       71 JUMPIF                           R8 ; [+12]
       72 JUMPIFEQKS                       R3 K4 [""] ; [+8]
       74 JUMPIFNOT                        R5 ; [+3]
       75 GETTABLEKS                       R7 R6 K12 ["Found"]
       77 JUMP                             ; [+22]
       78 GETTABLEKS                       R7 R6 K13 ["NotFound"]
       80 JUMP                             ; [+19]
       81 GETTABLEKS                       R7 R6 K14 ["Fetched"]
       83 JUMP                             ; [+16]
       84 GETTABLEKS                       R7 R6 K15 ["Failed"]
       86 JUMP                             ; [+13]
       87 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       89 JUMPIFNOT                        R8 ; [+8]
       90 JUMPIFEQKS                       R3 K4 [""] ; [+4]
       92 GETTABLEKS                       R7 R6 K16 ["Searching"]
       94 JUMP                             ; [+5]
       95 GETTABLEKS                       R7 R6 K17 ["Fetching"]
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R7 R6 K18 ["Pending"]
      100 GETUPVAL                         R8 3
      101 GETUPVAL                         R9 4
      102 GETTABLEKS                       R9 R9 K19 ["ContentWidget"]
      104 GETUPVAL                         R10 5
      105 GETTABLEKS                       R10 R10 K20 ["join"]
      107 MOVE                             R11 R0
      108 DUPTABLE                         R12 K24 [{"type", "summary", "icon"}]
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R13 R13 K25 ["Type"]
      112 SETTABLEKS                       R13 R12 K21 ["type"]
      114 SETTABLEKS                       R7 R12 K22 ["summary"]
      116 GETUPVAL                         R13 4
      117 GETTABLEKS                       R13 R13 K26 ["Icons"]
      119 GETTABLEKS                       R13 R13 K27 ["Search"]
      121 SETTABLEKS                       R13 R12 K23 ["icon"]
      123 CALL                             R10 2 -1
      124 CALL                             R8 -1 -1
      125 RETURN                           R8 -1

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
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["WidgetUtils"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K18 ["createElement"]
       53 DUPCLOSURE                       R8 K19 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R9 K23 [{"Type", "ContentWidget", "Serialization"}]
       61 LOADK                            R10 K24 ["HttpGet"]
       62 SETTABLEKS                       R10 R9 K20 ["Type"]
       64 GETTABLEKS                       R10 R2 K25 ["memo"]
       66 MOVE                             R11 R8
       67 CALL                             R10 1 1
       68 SETTABLEKS                       R10 R9 K21 ["ContentWidget"]
       70 LOADNIL                          R10
       71 SETTABLEKS                       R10 R9 K22 ["Serialization"]
       73 RETURN                           R9 1
