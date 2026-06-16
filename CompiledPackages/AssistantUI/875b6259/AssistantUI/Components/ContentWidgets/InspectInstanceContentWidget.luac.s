PROTO_0:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R4 R1
        5 GETTABLE                         R3 R1 R4
        6 OR                               R2 R3 R0
        7 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Pending", "Inspecting", "Inspected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["InspectInstance"]
        3 LOADK                            R4 K0 ["Pending"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pending"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["InspectInstance"]
       11 LOADK                            R4 K1 ["Inspecting"]
       12 DUPTABLE                         R5 K7 [{"path"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K6 ["path"]
       16 NAMECALL                         R1 R1 K5 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["Inspecting"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K4 ["InspectInstance"]
       23 LOADK                            R4 K2 ["Inspected"]
       24 DUPTABLE                         R5 K7 [{"path"}]
       25 GETUPVAL                         R6 2
       26 SETTABLEKS                       R6 R5 K6 ["path"]
       28 NAMECALL                         R1 R1 K5 ["getText"]
       30 CALL                             R1 4 1
       31 SETTABLEKS                       R1 R0 K2 ["Inspected"]
       33 RETURN                           R0 1

PROTO_2:
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
       19 GETTABLEKS                       R3 R1 K4 ["path"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADK                            R3 K5 [""]
       23 LOADK                            R7 K6 ["."]
       24 NAMECALL                         R5 R3 K7 ["split"]
       26 CALL                             R5 2 1
       27 LENGTH                           R7 R5
       28 GETTABLE                         R6 R5 R7
       29 OR                               R4 R6 R3
       30 JUMPIFNOT                        R2 ; [+3]
       31 GETTABLEKS                       R5 R2 K8 ["instanceName"]
       33 JUMPIF                           R5 ; [+1]
       34 LOADK                            R5 K5 [""]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R8 0 3
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K10 ["locale"]
       47 MOVE                             R10 R4
       48 MOVE                             R11 R5
       49 SETLIST                          R8 R9 3 [1]
       51 CALL                             R6 2 1
       52 LOADK                            R7 K5 [""]
       53 GETTABLEKS                       R8 R0 K2 ["toolResult"]
       55 JUMPIFNOT                        R8 ; [+3]
       56 GETTABLEKS                       R7 R6 K11 ["Inspected"]
       58 JUMP                             ; [+8]
       59 GETTABLEKS                       R8 R0 K0 ["toolUse"]
       61 JUMPIFNOT                        R8 ; [+3]
       62 GETTABLEKS                       R7 R6 K12 ["Inspecting"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R7 R6 K13 ["Pending"]
       67 GETUPVAL                         R8 2
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K14 ["ContentWidget"]
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R10 R10 K15 ["join"]
       74 MOVE                             R11 R0
       75 DUPTABLE                         R12 K19 [{"type", "summary", "noExpand"}]
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K20 ["Type"]
       79 SETTABLEKS                       R13 R12 K16 ["type"]
       81 SETTABLEKS                       R7 R12 K17 ["summary"]
       83 LOADB                            R13 1
       84 SETTABLEKS                       R13 R12 K18 ["noExpand"]
       86 CALL                             R10 2 -1
       87 CALL                             R8 -1 -1
       88 RETURN                           R8 -1

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
       46 DUPCLOSURE                       R7 K17 [PROTO_0]
       47 DUPCLOSURE                       R8 K18 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 DUPTABLE                         R9 K22 [{"Type", "ContentWidget", "Serialization"}]
       54 LOADK                            R10 K23 ["InspectInstance"]
       55 SETTABLEKS                       R10 R9 K19 ["Type"]
       57 GETTABLEKS                       R10 R2 K24 ["memo"]
       59 MOVE                             R11 R8
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K20 ["ContentWidget"]
       63 LOADNIL                          R10
       64 SETTABLEKS                       R10 R9 K21 ["Serialization"]
       66 RETURN                           R9 1
