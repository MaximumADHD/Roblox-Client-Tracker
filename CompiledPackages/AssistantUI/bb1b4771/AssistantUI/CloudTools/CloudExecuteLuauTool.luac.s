PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["code"] = "", ["expanded"] = False}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseJSONForCode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["code"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["OutputParser"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R5 K13 ["RunCodeContentWidget"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K14 ["Engine"]
       37 GETTABLEKS                       R5 R5 K15 ["Providers"]
       39 GETTABLEKS                       R5 R5 K16 ["ToolNames"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Resources"]
       45 GETTABLEKS                       R7 R7 K18 ["Localization"]
       47 GETTABLEKS                       R7 R7 K19 ["Translator"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Components"]
       54 GETTABLEKS                       R8 R8 K20 ["UIToolRegistry"]
       56 CALL                             R7 1 1
       57 LOADNIL                          R8
       58 GETTABLEKS                       R9 R2 K21 ["FFlagAssistantSplitToolsAndWidgets"]
       60 JUMPIF                           R9 ; [+13]
       61 DUPTABLE                         R9 K25 [{"transformInitialContent", "getTransformDeltaFn", "getTransformPreExecuteFn"}]
       62 DUPCLOSURE                       R10 K26 [PROTO_0]
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R10 R9 K22 ["transformInitialContent"]
       66 DUPCLOSURE                       R10 K27 [PROTO_2]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R10 R9 K23 ["getTransformDeltaFn"]
       70 DUPCLOSURE                       R10 K28 [PROTO_4]
       71 SETTABLEKS                       R10 R9 K24 ["getTransformPreExecuteFn"]
       73 MOVE                             R8 R9
       74 DUPTABLE                         R9 K32 [{"name", "streamTransform", "displayNameFunction"}]
       75 GETTABLEKS                       R10 R5 K33 ["CloudExecuteLuau"]
       77 SETTABLEKS                       R10 R9 K29 ["name"]
       79 SETTABLEKS                       R8 R9 K30 ["streamTransform"]
       81 GETTABLEKS                       R11 R2 K21 ["FFlagAssistantSplitToolsAndWidgets"]
       83 JUMPIFNOT                        R11 ; [+2]
       84 LOADNIL                          R10
       85 JUMP                             ; [+2]
       86 DUPCLOSURE                       R10 K34 [PROTO_5]
       87 CAPTURE                          VAL R6
       88 SETTABLEKS                       R10 R9 K31 ["displayNameFunction"]
       90 RETURN                           R9 1
