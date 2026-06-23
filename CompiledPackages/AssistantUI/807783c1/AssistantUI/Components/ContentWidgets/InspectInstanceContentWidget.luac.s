PROTO_0:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R4 R1
        5 GETTABLE                         R3 R1 R4
        6 OR                               R2 R3 R0
        7 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"Pending", "Inspecting", "Inspected", "Failed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["InspectInstance"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["InspectInstance"]
       11 LOADK                            R4 K1 ["Inspecting"]
       12 DUPTABLE                         R5 K8 [{"path"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K7 ["path"]
       16 NAMECALL                         R1 R1 K6 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["Inspecting"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K5 ["InspectInstance"]
       23 LOADK                            R4 K2 ["Inspected"]
       24 DUPTABLE                         R5 K8 [{"path"}]
       25 GETUPVAL                         R6 2
       26 SETTABLEKS                       R6 R5 K7 ["path"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 4 1
       31 SETTABLEKS                       R1 R0 K2 ["Inspected"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K5 ["InspectInstance"]
       35 LOADK                            R4 K3 ["Failed"]
       36 DUPTABLE                         R5 K8 [{"path"}]
       37 GETUPVAL                         R6 1
       38 SETTABLEKS                       R6 R5 K7 ["path"]
       40 NAMECALL                         R1 R1 K6 ["getText"]
       42 CALL                             R1 4 1
       43 SETTABLEKS                       R1 R0 K3 ["Failed"]
       45 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["path"]
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
       30 GETTABLEKS                       R5 R3 K7 ["instanceName"]
       32 LOADK                            R6 K4 [""]
       33 CALL                             R4 2 1
       34 LOADK                            R8 K8 ["."]
       35 NAMECALL                         R6 R2 K9 ["split"]
       37 CALL                             R6 2 1
       38 LENGTH                           R8 R6
       39 GETTABLE                         R7 R6 R8
       40 OR                               R5 R7 R2
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R8 0 3
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K11 ["locale"]
       53 MOVE                             R10 R5
       54 MOVE                             R11 R4
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 1
       58 LOADK                            R7 K4 [""]
       59 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       61 JUMPIFNOT                        R8 ; [+16]
       62 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       64 GETTABLEKS                       R8 R8 K6 ["structuredContent"]
       66 JUMPIFNOT                        R8 ; [+8]
       67 GETTABLEKS                       R8 R0 K5 ["toolResult"]
       69 GETTABLEKS                       R8 R8 K12 ["isError"]
       71 JUMPIF                           R8 ; [+3]
       72 GETTABLEKS                       R7 R6 K13 ["Inspected"]
       74 JUMP                             ; [+11]
       75 GETTABLEKS                       R7 R6 K14 ["Failed"]
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       80 JUMPIFNOT                        R8 ; [+3]
       81 GETTABLEKS                       R7 R6 K15 ["Inspecting"]
       83 JUMP                             ; [+2]
       84 GETTABLEKS                       R7 R6 K16 ["Pending"]
       86 GETUPVAL                         R8 3
       87 GETUPVAL                         R9 4
       88 GETTABLEKS                       R9 R9 K17 ["ContentWidget"]
       90 GETUPVAL                         R10 5
       91 GETTABLEKS                       R10 R10 K18 ["join"]
       93 MOVE                             R11 R0
       94 DUPTABLE                         R12 K22 [{"type", "summary", "noExpand"}]
       95 GETUPVAL                         R13 4
       96 GETTABLEKS                       R13 R13 K23 ["Type"]
       98 SETTABLEKS                       R13 R12 K19 ["type"]
      100 SETTABLEKS                       R7 R12 K20 ["summary"]
      102 LOADB                            R13 1
      103 SETTABLEKS                       R13 R12 K21 ["noExpand"]
      105 CALL                             R10 2 -1
      106 CALL                             R8 -1 -1
      107 RETURN                           R8 -1

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
       53 DUPCLOSURE                       R8 K19 [PROTO_0]
       54 DUPCLOSURE                       R9 K20 [PROTO_2]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 DUPTABLE                         R10 K24 [{"Type", "ContentWidget", "Serialization"}]
       62 LOADK                            R11 K25 ["InspectInstance"]
       63 SETTABLEKS                       R11 R10 K21 ["Type"]
       65 GETTABLEKS                       R11 R2 K26 ["memo"]
       67 MOVE                             R12 R9
       68 CALL                             R11 1 1
       69 SETTABLEKS                       R11 R10 K22 ["ContentWidget"]
       71 LOADNIL                          R11
       72 SETTABLEKS                       R11 R10 K23 ["Serialization"]
       74 RETURN                           R10 1
