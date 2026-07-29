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
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["type"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["withDefault"]
       20 GETTABLEKS                       R4 R1 K5 ["key"]
       22 LOADK                            R5 K4 [""]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R6 0 3
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["locale"]
       36 MOVE                             R8 R2
       37 MOVE                             R9 R3
       38 SETLIST                          R6 R7 3 [1]
       40 CALL                             R4 2 1
       41 LOADK                            R5 K4 [""]
       42 GETTABLEKS                       R6 R0 K8 ["toolResult"]
       44 JUMPIFNOT                        R6 ; [+16]
       45 GETTABLEKS                       R6 R0 K8 ["toolResult"]
       47 GETTABLEKS                       R6 R6 K9 ["structuredContent"]
       49 JUMPIFNOT                        R6 ; [+8]
       50 GETTABLEKS                       R6 R0 K8 ["toolResult"]
       52 GETTABLEKS                       R6 R6 K10 ["isError"]
       54 JUMPIF                           R6 ; [+3]
       55 GETTABLEKS                       R5 R4 K11 ["Retrieved"]
       57 JUMP                             ; [+5]
       58 GETTABLEKS                       R5 R4 K12 ["Failed"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R5 R4 K13 ["Pending"]
       63 GETUPVAL                         R6 3
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R7 R7 K14 ["ContentWidget"]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K15 ["join"]
       70 MOVE                             R9 R0
       71 DUPTABLE                         R10 K17 [{"type", "summary"}]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K18 ["Type"]
       75 SETTABLEKS                       R11 R10 K3 ["type"]
       77 SETTABLEKS                       R5 R10 K16 ["summary"]
       79 CALL                             R8 2 -1
       80 CALL                             R6 -1 -1
       81 RETURN                           R6 -1

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
       60 DUPTABLE                         R9 K25 [{["Type"] = "FromHistory", ["ContentWidget"], ["Serialization"] = }]
       61 GETTABLEKS                       R10 R2 K26 ["memo"]
       63 MOVE                             R11 R8
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K22 ["ContentWidget"]
       67 RETURN                           R9 1
