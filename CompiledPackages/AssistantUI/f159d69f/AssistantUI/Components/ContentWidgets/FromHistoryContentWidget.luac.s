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
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["type"]
        9 ORK                              R3 R4 K2 [""]
       10 GETTABLEKS                       R5 R2 K4 ["key"]
       12 ORK                              R4 R5 K2 [""]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 3
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K6 ["locale"]
       25 MOVE                             R9 R3
       26 MOVE                             R10 R4
       27 SETLIST                          R7 R8 3 [1]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R6 R0 K7 ["toolResult"]
       32 LOADK                            R7 K2 [""]
       33 JUMPIFNOT                        R6 ; [+12]
       34 GETTABLEKS                       R8 R6 K8 ["structuredContent"]
       36 JUMPIFNOT                        R8 ; [+6]
       37 GETTABLEKS                       R8 R6 K9 ["isError"]
       39 JUMPIF                           R8 ; [+3]
       40 GETTABLEKS                       R7 R5 K10 ["Retrieved"]
       42 JUMP                             ; [+5]
       43 GETTABLEKS                       R7 R5 K11 ["Failed"]
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R7 R5 K12 ["Pending"]
       48 GETUPVAL                         R8 3
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R9 R9 K13 ["ContentWidget"]
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R10 R10 K14 ["join"]
       55 MOVE                             R11 R0
       56 DUPTABLE                         R12 K16 [{"type", "summary"}]
       57 GETUPVAL                         R13 4
       58 GETTABLEKS                       R13 R13 K17 ["Type"]
       60 SETTABLEKS                       R13 R12 K3 ["type"]
       62 SETTABLEKS                       R7 R12 K15 ["summary"]
       64 CALL                             R10 2 -1
       65 CALL                             R8 -1 -1
       66 RETURN                           R8 -1

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
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 DUPTABLE                         R9 K21 [{["Type"] = "FromHistory", ["ContentWidget"]}]
       56 GETTABLEKS                       R10 R2 K22 ["memo"]
       58 MOVE                             R11 R8
       59 CALL                             R10 1 1
       60 SETTABLEKS                       R10 R9 K20 ["ContentWidget"]
       62 RETURN                           R9 1
