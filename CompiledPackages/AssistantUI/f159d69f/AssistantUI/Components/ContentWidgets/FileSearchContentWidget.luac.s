PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Pending", "SearchingFor", "Searched", "Complete", "Failed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["FileSearch"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["FileSearch"]
       11 LOADK                            R4 K1 ["SearchingFor"]
       12 DUPTABLE                         R5 K9 [{"keywords"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K8 ["keywords"]
       16 NAMECALL                         R1 R1 K7 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["SearchingFor"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K6 ["FileSearch"]
       23 LOADK                            R4 K2 ["Searched"]
       24 DUPTABLE                         R5 K9 [{"keywords"}]
       25 GETUPVAL                         R6 1
       26 SETTABLEKS                       R6 R5 K8 ["keywords"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 4 1
       31 SETTABLEKS                       R1 R0 K2 ["Searched"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["FileSearch"]
       35 LOADK                            R4 K3 ["Complete"]
       36 DUPTABLE                         R5 K11 [{"count"}]
       37 GETUPVAL                         R6 2
       38 SETTABLEKS                       R6 R5 K10 ["count"]
       40 NAMECALL                         R1 R1 K7 ["getText"]
       42 CALL                             R1 4 1
       43 SETTABLEKS                       R1 R0 K3 ["Complete"]
       45 GETUPVAL                         R1 0
       46 LOADK                            R3 K6 ["FileSearch"]
       47 LOADK                            R4 K4 ["Failed"]
       48 DUPTABLE                         R5 K9 [{"keywords"}]
       49 GETUPVAL                         R6 1
       50 SETTABLEKS                       R6 R5 K8 ["keywords"]
       52 NAMECALL                         R1 R1 K7 ["getText"]
       54 CALL                             R1 4 1
       55 SETTABLEKS                       R1 R0 K4 ["Failed"]
       57 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["keywords"]
        9 ORK                              R3 R4 K2 [""]
       10 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K5 ["structuredContent"]
       15 JUMPIF                           R5 ; [+1]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R7 R5 K7 ["count"]
       19 ORK                              R6 R7 K6 [0]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R6
       27 NEWTABLE                         R9 0 3
       29 GETUPVAL                         R10 3
       30 GETTABLEKS                       R10 R10 K9 ["locale"]
       32 MOVE                             R11 R3
       33 MOVE                             R12 R6
       34 SETLIST                          R9 R10 3 [1]
       36 CALL                             R7 2 1
       37 LOADK                            R8 K2 [""]
       38 LOADNIL                          R9
       39 GETTABLEKS                       R10 R0 K4 ["toolResult"]
       41 JUMPIFNOT                        R10 ; [+18]
       42 GETTABLEKS                       R10 R0 K4 ["toolResult"]
       44 GETTABLEKS                       R10 R10 K5 ["structuredContent"]
       46 JUMPIFNOT                        R10 ; [+10]
       47 GETTABLEKS                       R10 R0 K4 ["toolResult"]
       49 GETTABLEKS                       R10 R10 K10 ["isError"]
       51 JUMPIF                           R10 ; [+5]
       52 GETTABLEKS                       R8 R7 K11 ["Complete"]
       54 GETTABLEKS                       R9 R7 K12 ["Searched"]
       56 JUMP                             ; [+11]
       57 GETTABLEKS                       R8 R7 K13 ["Failed"]
       59 JUMP                             ; [+8]
       60 GETTABLEKS                       R10 R0 K0 ["toolUse"]
       62 JUMPIFNOT                        R10 ; [+3]
       63 GETTABLEKS                       R8 R7 K14 ["SearchingFor"]
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R8 R7 K15 ["Pending"]
       68 GETUPVAL                         R10 4
       69 GETUPVAL                         R11 5
       70 GETTABLEKS                       R11 R11 K16 ["ContentWidget"]
       72 GETUPVAL                         R12 6
       73 GETTABLEKS                       R12 R12 K17 ["join"]
       75 MOVE                             R13 R0
       76 DUPTABLE                         R14 K21 [{"type", "summary", "subtitle"}]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R15 R15 K22 ["Type"]
       80 SETTABLEKS                       R15 R14 K18 ["type"]
       82 SETTABLEKS                       R8 R14 K19 ["summary"]
       84 SETTABLEKS                       R9 R14 K20 ["subtitle"]
       86 CALL                             R12 2 -1
       87 CALL                             R10 -1 -1
       88 RETURN                           R10 -1

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
       58 DUPTABLE                         R10 K21 [{["Type"] = "FileSearch", ["ContentWidget"]}]
       59 GETTABLEKS                       R11 R2 K22 ["memo"]
       61 MOVE                             R12 R9
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K20 ["ContentWidget"]
       65 RETURN                           R10 1
