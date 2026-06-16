PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Pending", "Retrieved", "Failed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["FromHistory"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["FromHistory"]
       11 LOADK                            R4 K1 ["Retrieved"]
       12 DUPTABLE                         R5 K8 [{"type", "key"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K6 ["type"]
       16 GETUPVAL                         R6 2
       17 SETTABLEKS                       R6 R5 K7 ["key"]
       19 NAMECALL                         R1 R1 K5 ["getText"]
       21 CALL                             R1 4 1
       22 SETTABLEKS                       R1 R0 K1 ["Retrieved"]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K4 ["FromHistory"]
       26 LOADK                            R4 K2 ["Failed"]
       27 NAMECALL                         R1 R1 K5 ["getText"]
       29 CALL                             R1 3 1
       30 SETTABLEKS                       R1 R0 K2 ["Failed"]
       32 RETURN                           R0 1

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
       19 GETTABLEKS                       R3 R1 K4 ["type"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADK                            R3 K5 [""]
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R4 R1 K6 ["key"]
       26 JUMPIF                           R4 ; [+1]
       27 LOADK                            R4 K5 [""]
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
       46 GETTABLEKS                       R7 R0 K2 ["toolResult"]
       48 JUMPIFNOT                        R7 ; [+12]
       49 JUMPIFNOT                        R2 ; [+8]
       50 GETTABLEKS                       R7 R0 K2 ["toolResult"]
       52 GETTABLEKS                       R7 R7 K9 ["isError"]
       54 JUMPIF                           R7 ; [+3]
       55 GETTABLEKS                       R6 R5 K10 ["Retrieved"]
       57 JUMP                             ; [+5]
       58 GETTABLEKS                       R6 R5 K11 ["Failed"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R6 R5 K12 ["Pending"]
       63 GETUPVAL                         R7 2
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K13 ["ContentWidget"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K14 ["join"]
       70 MOVE                             R10 R0
       71 DUPTABLE                         R11 K16 [{"type", "summary"}]
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K17 ["Type"]
       75 SETTABLEKS                       R12 R11 K4 ["type"]
       77 SETTABLEKS                       R6 R11 K15 ["summary"]
       79 CALL                             R9 2 -1
       80 CALL                             R7 -1 -1
       81 RETURN                           R7 -1

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
       53 LOADK                            R9 K22 ["FromHistory"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
