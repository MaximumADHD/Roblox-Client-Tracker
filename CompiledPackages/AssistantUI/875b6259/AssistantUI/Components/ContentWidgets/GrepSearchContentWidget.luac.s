PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Pending", "SearchingFor", "Grepped", "NoneFound", "FoundCount"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["GrepSearch"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["GrepSearch"]
       11 LOADK                            R4 K1 ["SearchingFor"]
       12 DUPTABLE                         R5 K9 [{"query"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K8 ["query"]
       16 NAMECALL                         R1 R1 K7 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["SearchingFor"]
       21 GETUPVAL                         R2 1
       22 JUMPIFEQKS                       R2 K10 [""] ; [+12]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K6 ["GrepSearch"]
       26 LOADK                            R4 K2 ["Grepped"]
       27 DUPTABLE                         R5 K9 [{"query"}]
       28 GETUPVAL                         R6 1
       29 SETTABLEKS                       R6 R5 K8 ["query"]
       31 NAMECALL                         R1 R1 K7 ["getText"]
       33 CALL                             R1 4 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K2 ["Grepped"]
       38 GETUPVAL                         R1 0
       39 LOADK                            R3 K6 ["GrepSearch"]
       40 LOADK                            R4 K3 ["NoneFound"]
       41 NAMECALL                         R1 R1 K7 ["getText"]
       43 CALL                             R1 3 1
       44 SETTABLEKS                       R1 R0 K3 ["NoneFound"]
       46 GETUPVAL                         R1 0
       47 LOADK                            R3 K6 ["GrepSearch"]
       48 LOADK                            R4 K4 ["FoundCount"]
       49 DUPTABLE                         R5 K12 [{"count"}]
       50 GETUPVAL                         R6 2
       51 SETTABLEKS                       R6 R5 K11 ["count"]
       53 NAMECALL                         R1 R1 K7 ["getText"]
       55 CALL                             R1 4 1
       56 SETTABLEKS                       R1 R0 K4 ["FoundCount"]
       58 RETURN                           R0 1

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
       19 GETTABLEKS                       R3 R1 K4 ["query"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADK                            R3 K5 [""]
       23 JUMPIFNOT                        R2 ; [+3]
       24 GETTABLEKS                       R4 R2 K6 ["count"]
       26 JUMPIF                           R4 ; [+1]
       27 LOADN                            R4 0
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R5 R2 K7 ["noMatch"]
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
       51 LOADNIL                          R8
       52 GETTABLEKS                       R9 R0 K2 ["toolResult"]
       54 JUMPIFNOT                        R9 ; [+9]
       55 JUMPIFNOT                        R5 ; [+3]
       56 GETTABLEKS                       R7 R6 K10 ["NoneFound"]
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R7 R6 K11 ["FoundCount"]
       61 GETTABLEKS                       R8 R6 K12 ["Grepped"]
       63 JUMP                             ; [+8]
       64 GETTABLEKS                       R9 R0 K0 ["toolUse"]
       66 JUMPIFNOT                        R9 ; [+3]
       67 GETTABLEKS                       R7 R6 K13 ["SearchingFor"]
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R7 R6 K14 ["Pending"]
       72 GETUPVAL                         R9 2
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K15 ["ContentWidget"]
       76 GETUPVAL                         R11 4
       77 GETTABLEKS                       R11 R11 K16 ["join"]
       79 MOVE                             R12 R0
       80 DUPTABLE                         R13 K20 [{"type", "summary", "subtitle"}]
       81 GETUPVAL                         R14 3
       82 GETTABLEKS                       R14 R14 K21 ["Type"]
       84 SETTABLEKS                       R14 R13 K17 ["type"]
       86 SETTABLEKS                       R7 R13 K18 ["summary"]
       88 SETTABLEKS                       R8 R13 K19 ["subtitle"]
       90 CALL                             R11 2 -1
       91 CALL                             R9 -1 -1
       92 RETURN                           R9 -1

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
       53 LOADK                            R9 K22 ["GrepSearch"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
