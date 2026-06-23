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
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["keywords"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R4 R0 K5 ["toolResult"]
       19 JUMPIFNOT                        R4 ; [+5]
       20 GETTABLEKS                       R3 R0 K5 ["toolResult"]
       22 GETTABLEKS                       R3 R3 K6 ["structuredContent"]
       24 JUMPIF                           R3 ; [+2]
       25 NEWTABLE                         R3 0 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K2 ["withDefault"]
       30 GETTABLEKS                       R5 R3 K7 ["count"]
       32 LOADN                            R6 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R7 0 3
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K9 ["locale"]
       46 MOVE                             R9 R2
       47 MOVE                             R10 R4
       48 SETLIST                          R7 R8 3 [1]
       50 CALL                             R5 2 1
       51 LOADK                            R6 K4 [""]
       52 LOADNIL                          R7
       53 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       55 JUMPIFNOT                        R8 ; [+18]
       56 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       58 GETTABLEKS                       R8 R8 K6 ["structuredContent"]
       60 JUMPIFNOT                        R8 ; [+10]
       61 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       63 GETTABLEKS                       R8 R8 K10 ["isError"]
       65 JUMPIF                           R8 ; [+5]
       66 GETTABLEKS                       R6 R5 K11 ["Complete"]
       68 GETTABLEKS                       R7 R5 K12 ["Searched"]
       70 JUMP                             ; [+11]
       71 GETTABLEKS                       R6 R5 K13 ["Failed"]
       73 JUMP                             ; [+8]
       74 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       76 JUMPIFNOT                        R8 ; [+3]
       77 GETTABLEKS                       R6 R5 K14 ["SearchingFor"]
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R6 R5 K15 ["Pending"]
       82 GETUPVAL                         R8 3
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K16 ["ContentWidget"]
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K17 ["join"]
       89 MOVE                             R11 R0
       90 DUPTABLE                         R12 K21 [{"type", "summary", "subtitle"}]
       91 GETUPVAL                         R13 4
       92 GETTABLEKS                       R13 R13 K22 ["Type"]
       94 SETTABLEKS                       R13 R12 K18 ["type"]
       96 SETTABLEKS                       R6 R12 K19 ["summary"]
       98 SETTABLEKS                       R7 R12 K20 ["subtitle"]
      100 CALL                             R10 2 -1
      101 CALL                             R8 -1 -1
      102 RETURN                           R8 -1

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
       61 LOADK                            R10 K24 ["FileSearch"]
       62 SETTABLEKS                       R10 R9 K20 ["Type"]
       64 GETTABLEKS                       R10 R2 K25 ["memo"]
       66 MOVE                             R11 R8
       67 CALL                             R10 1 1
       68 SETTABLEKS                       R10 R9 K21 ["ContentWidget"]
       70 LOADNIL                          R10
       71 SETTABLEKS                       R10 R9 K22 ["Serialization"]
       73 RETURN                           R9 1
