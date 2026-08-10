PROTO_0:
        0 DUPTABLE                         R0 K6 [{"Pending", "SearchingFor", "Grepped", "NoneFound", "FoundCount", "Failed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K7 ["GrepSearch"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K8 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K7 ["GrepSearch"]
       11 LOADK                            R4 K1 ["SearchingFor"]
       12 DUPTABLE                         R5 K10 [{"query"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K9 ["query"]
       16 NAMECALL                         R1 R1 K8 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["SearchingFor"]
       21 GETUPVAL                         R2 1
       22 JUMPIFNOT                        R2 ; [+14]
       23 GETUPVAL                         R2 1
       24 JUMPIFEQKS                       R2 K11 [""] ; [+12]
       26 GETUPVAL                         R1 0
       27 LOADK                            R3 K7 ["GrepSearch"]
       28 LOADK                            R4 K2 ["Grepped"]
       29 DUPTABLE                         R5 K10 [{"query"}]
       30 GETUPVAL                         R6 1
       31 SETTABLEKS                       R6 R5 K9 ["query"]
       33 NAMECALL                         R1 R1 K8 ["getText"]
       35 CALL                             R1 4 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K2 ["Grepped"]
       40 GETUPVAL                         R1 0
       41 LOADK                            R3 K7 ["GrepSearch"]
       42 LOADK                            R4 K3 ["NoneFound"]
       43 NAMECALL                         R1 R1 K8 ["getText"]
       45 CALL                             R1 3 1
       46 SETTABLEKS                       R1 R0 K3 ["NoneFound"]
       48 GETUPVAL                         R1 0
       49 LOADK                            R3 K7 ["GrepSearch"]
       50 LOADK                            R4 K4 ["FoundCount"]
       51 DUPTABLE                         R5 K13 [{"count"}]
       52 GETUPVAL                         R6 2
       53 SETTABLEKS                       R6 R5 K12 ["count"]
       55 NAMECALL                         R1 R1 K8 ["getText"]
       57 CALL                             R1 4 1
       58 SETTABLEKS                       R1 R0 K4 ["FoundCount"]
       60 GETUPVAL                         R1 0
       61 LOADK                            R3 K7 ["GrepSearch"]
       62 LOADK                            R4 K5 ["Failed"]
       63 NAMECALL                         R1 R1 K8 ["getText"]
       65 CALL                             R1 3 1
       66 SETTABLEKS                       R1 R0 K5 ["Failed"]
       68 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["query"]
        9 ORK                              R3 R4 K2 [""]
       10 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K5 ["structuredContent"]
       15 JUMPIF                           R5 ; [+1]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R7 R5 K7 ["count"]
       19 ORK                              R6 R7 K6 [0]
       20 GETTABLEKS                       R8 R5 K9 ["noMatch"]
       22 ORK                              R7 R8 K8 [False]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R6
       30 NEWTABLE                         R10 0 3
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K11 ["locale"]
       35 MOVE                             R12 R3
       36 MOVE                             R13 R6
       37 SETLIST                          R10 R11 3 [1]
       39 CALL                             R8 2 1
       40 LOADK                            R9 K2 [""]
       41 LOADNIL                          R10
       42 JUMPIFNOT                        R4 ; [+18]
       43 GETTABLEKS                       R11 R4 K5 ["structuredContent"]
       45 JUMPIFNOT                        R11 ; [+10]
       46 GETTABLEKS                       R11 R4 K12 ["isError"]
       48 JUMPIF                           R11 ; [+7]
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETTABLEKS                       R9 R8 K13 ["NoneFound"]
       52 JUMP                             ; [+5]
       53 GETTABLEKS                       R9 R8 K14 ["FoundCount"]
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R9 R8 K15 ["Failed"]
       58 GETTABLEKS                       R10 R8 K16 ["Grepped"]
       60 JUMP                             ; [+6]
       61 JUMPIFNOT                        R1 ; [+3]
       62 GETTABLEKS                       R9 R8 K17 ["SearchingFor"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R9 R8 K18 ["Pending"]
       67 GETUPVAL                         R11 4
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R12 R12 K19 ["ContentWidget"]
       71 GETUPVAL                         R13 6
       72 GETTABLEKS                       R13 R13 K20 ["join"]
       74 MOVE                             R14 R0
       75 DUPTABLE                         R15 K24 [{"type", "summary", "subtitle"}]
       76 GETUPVAL                         R16 5
       77 GETTABLEKS                       R16 R16 K25 ["Type"]
       79 SETTABLEKS                       R16 R15 K21 ["type"]
       81 SETTABLEKS                       R9 R15 K22 ["summary"]
       83 SETTABLEKS                       R10 R15 K23 ["subtitle"]
       85 CALL                             R13 2 -1
       86 CALL                             R11 -1 -1
       87 RETURN                           R11 -1

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
       58 DUPTABLE                         R10 K23 [{["Type"] = "GrepSearch", ["ContentWidget"], ["Serialization"] = }]
       59 GETTABLEKS                       R11 R2 K24 ["memo"]
       61 MOVE                             R12 R9
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K20 ["ContentWidget"]
       65 RETURN                           R10 1
