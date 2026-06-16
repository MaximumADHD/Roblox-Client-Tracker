PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Pending", "SearchingFor", "Searched", "Found"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["FileSearch"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["FileSearch"]
       11 LOADK                            R4 K1 ["SearchingFor"]
       12 DUPTABLE                         R5 K8 [{"keywords"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K7 ["keywords"]
       16 NAMECALL                         R1 R1 K6 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["SearchingFor"]
       21 GETUPVAL                         R2 1
       22 JUMPIFEQKS                       R2 K9 [""] ; [+12]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K5 ["FileSearch"]
       26 LOADK                            R4 K2 ["Searched"]
       27 DUPTABLE                         R5 K8 [{"keywords"}]
       28 GETUPVAL                         R6 1
       29 SETTABLEKS                       R6 R5 K7 ["keywords"]
       31 NAMECALL                         R1 R1 K6 ["getText"]
       33 CALL                             R1 4 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K2 ["Searched"]
       38 GETUPVAL                         R1 0
       39 LOADK                            R3 K10 ["GameTree"]
       40 LOADK                            R4 K3 ["Found"]
       41 DUPTABLE                         R5 K12 [{"count"}]
       42 GETUPVAL                         R6 2
       43 SETTABLEKS                       R6 R5 K11 ["count"]
       45 NAMECALL                         R1 R1 K6 ["getText"]
       47 CALL                             R1 4 1
       48 SETTABLEKS                       R1 R0 K3 ["Found"]
       50 RETURN                           R0 1

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
       19 GETTABLEKS                       R3 R1 K4 ["keywords"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADK                            R3 K5 [""]
       23 JUMPIFNOT                        R2 ; [+3]
       24 GETTABLEKS                       R4 R2 K6 ["count"]
       26 JUMPIF                           R4 ; [+1]
       27 LOADN                            R4 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R7 0 3
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K8 ["locale"]
       40 MOVE                             R9 R3
       41 MOVE                             R10 R4
       42 SETLIST                          R7 R8 3 [1]
       44 CALL                             R5 2 1
       45 LOADK                            R6 K5 [""]
       46 LOADNIL                          R7
       47 GETTABLEKS                       R8 R0 K2 ["toolResult"]
       49 JUMPIFNOT                        R8 ; [+5]
       50 GETTABLEKS                       R6 R5 K9 ["Found"]
       52 GETTABLEKS                       R7 R5 K10 ["Searched"]
       54 JUMP                             ; [+8]
       55 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       57 JUMPIFNOT                        R8 ; [+3]
       58 GETTABLEKS                       R6 R5 K11 ["SearchingFor"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R6 R5 K12 ["Pending"]
       63 GETUPVAL                         R8 2
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K13 ["ContentWidget"]
       67 GETUPVAL                         R10 4
       68 GETTABLEKS                       R10 R10 K14 ["join"]
       70 MOVE                             R11 R0
       71 DUPTABLE                         R12 K18 [{"type", "summary", "subtitle"}]
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R13 R13 K19 ["Type"]
       75 SETTABLEKS                       R13 R12 K15 ["type"]
       77 SETTABLEKS                       R6 R12 K16 ["summary"]
       79 SETTABLEKS                       R7 R12 K17 ["subtitle"]
       81 CALL                             R10 2 -1
       82 CALL                             R8 -1 -1
       83 RETURN                           R8 -1

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
       53 LOADK                            R9 K22 ["FileSearch"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
