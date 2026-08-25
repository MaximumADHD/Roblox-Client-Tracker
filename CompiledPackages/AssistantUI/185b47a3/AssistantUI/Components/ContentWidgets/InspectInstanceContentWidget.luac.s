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
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["path"]
        9 ORK                              R3 R4 K2 [""]
       10 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K5 ["structuredContent"]
       15 JUMPIF                           R5 ; [+1]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R7 R5 K6 ["instanceName"]
       19 ORK                              R6 R7 K2 [""]
       20 LOADK                            R10 K7 ["."]
       21 NAMECALL                         R8 R3 K8 ["split"]
       23 CALL                             R8 2 1
       24 LENGTH                           R10 R8
       25 GETTABLE                         R9 R8 R10
       26 OR                               R7 R9 R3
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R6
       34 NEWTABLE                         R10 0 3
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K10 ["locale"]
       39 MOVE                             R12 R7
       40 MOVE                             R13 R6
       41 SETLIST                          R10 R11 3 [1]
       43 CALL                             R8 2 1
       44 LOADK                            R9 K2 [""]
       45 JUMPIFNOT                        R4 ; [+12]
       46 GETTABLEKS                       R10 R4 K5 ["structuredContent"]
       48 JUMPIFNOT                        R10 ; [+6]
       49 GETTABLEKS                       R10 R4 K11 ["isError"]
       51 JUMPIF                           R10 ; [+3]
       52 GETTABLEKS                       R9 R8 K12 ["Inspected"]
       54 JUMP                             ; [+9]
       55 GETTABLEKS                       R9 R8 K13 ["Failed"]
       57 JUMP                             ; [+6]
       58 JUMPIFNOT                        R1 ; [+3]
       59 GETTABLEKS                       R9 R8 K14 ["Inspecting"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R9 R8 K15 ["Pending"]
       64 GETUPVAL                         R10 4
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R11 R11 K16 ["ContentWidget"]
       68 GETUPVAL                         R12 6
       69 GETTABLEKS                       R12 R12 K17 ["join"]
       71 MOVE                             R13 R0
       72 DUPTABLE                         R14 K22 [{["type"], ["summary"], ["noExpand"] = True}]
       73 GETUPVAL                         R15 5
       74 GETTABLEKS                       R15 R15 K23 ["Type"]
       76 SETTABLEKS                       R15 R14 K18 ["type"]
       78 SETTABLEKS                       R9 R14 K19 ["summary"]
       80 CALL                             R12 2 -1
       81 CALL                             R10 -1 -1
       82 RETURN                           R10 -1

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
       50 DUPCLOSURE                       R9 K17 [PROTO_0]
       51 DUPCLOSURE                       R10 K18 [PROTO_2]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 DUPTABLE                         R11 K24 [{["Type"] = "InspectInstance", ["ContentWidget"], ["Serialization"] = }]
       60 GETTABLEKS                       R12 R2 K25 ["memo"]
       62 MOVE                             R13 R10
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R11 K21 ["ContentWidget"]
       66 RETURN                           R11 1
