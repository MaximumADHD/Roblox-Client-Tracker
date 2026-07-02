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
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["query"]
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
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K2 ["withDefault"]
       37 GETTABLEKS                       R6 R3 K8 ["noMatch"]
       39 LOADB                            R7 0
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R8 0 3
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K10 ["locale"]
       53 MOVE                             R10 R2
       54 MOVE                             R11 R4
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 1
       58 LOADK                            R7 K4 [""]
       59 LOADNIL                          R8
       60 GETTABLEKS                       R9 R0 K5 ["toolResult"]
       62 JUMPIFNOT                        R9 ; [+22]
       63 GETTABLEKS                       R9 R0 K5 ["toolResult"]
       65 GETTABLEKS                       R9 R9 K6 ["structuredContent"]
       67 JUMPIFNOT                        R9 ; [+12]
       68 GETTABLEKS                       R9 R0 K5 ["toolResult"]
       70 GETTABLEKS                       R9 R9 K11 ["isError"]
       72 JUMPIF                           R9 ; [+7]
       73 JUMPIFNOT                        R5 ; [+3]
       74 GETTABLEKS                       R7 R6 K12 ["NoneFound"]
       76 JUMP                             ; [+5]
       77 GETTABLEKS                       R7 R6 K13 ["FoundCount"]
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R7 R6 K14 ["Failed"]
       82 GETTABLEKS                       R8 R6 K15 ["Grepped"]
       84 JUMP                             ; [+8]
       85 GETTABLEKS                       R9 R0 K0 ["toolUse"]
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R7 R6 K16 ["SearchingFor"]
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R7 R6 K17 ["Pending"]
       93 GETUPVAL                         R9 3
       94 GETUPVAL                         R10 4
       95 GETTABLEKS                       R10 R10 K18 ["ContentWidget"]
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R11 R11 K19 ["join"]
      100 MOVE                             R12 R0
      101 DUPTABLE                         R13 K23 [{"type", "summary", "subtitle"}]
      102 GETUPVAL                         R14 4
      103 GETTABLEKS                       R14 R14 K24 ["Type"]
      105 SETTABLEKS                       R14 R13 K20 ["type"]
      107 SETTABLEKS                       R7 R13 K21 ["summary"]
      109 SETTABLEKS                       R8 R13 K22 ["subtitle"]
      111 CALL                             R11 2 -1
      112 CALL                             R9 -1 -1
      113 RETURN                           R9 -1

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
       60 DUPTABLE                         R9 K25 [{["Type"] = "GrepSearch", ["ContentWidget"], ["Serialization"] = }]
       61 GETTABLEKS                       R10 R2 K26 ["memo"]
       63 MOVE                             R11 R8
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K22 ["ContentWidget"]
       67 RETURN                           R9 1
