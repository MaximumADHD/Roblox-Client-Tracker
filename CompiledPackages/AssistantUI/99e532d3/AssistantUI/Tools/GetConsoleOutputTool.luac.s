PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["outputMessage"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["outputMessage"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["addText"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K2 ["build"]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GetConsoleOutput"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R2 K1 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K2 ["define"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K3 ["GetConsoleOutput"]
       12 NAMECALL                         R3 R3 K4 ["setName"]
       14 CALL                             R3 2 1
       15 LOADK                            R5 K5 ["Get the console output of the game while it is playing."]
       16 NAMECALL                         R3 R3 K6 ["setDescription"]
       18 CALL                             R3 2 1
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K7 ["setHandler"]
       22 CALL                             R3 2 1
       23 NAMECALL                         R3 R3 K8 ["build"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K11 [{"definition", "displayNameFunction"}]
       27 SETTABLEKS                       R3 R4 K9 ["definition"]
       29 DUPCLOSURE                       R5 K12 [PROTO_2]
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R5 R4 K10 ["displayNameFunction"]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Resources"]
       25 GETTABLEKS                       R5 R6 K11 ["Localization"]
       27 GETTABLEKS                       R4 R5 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K13 ["Util"]
       32 GETTABLEKS                       R4 R5 K14 ["ToolBuilder"]
       34 GETTABLEKS                       R6 R1 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K15 ["ToolResult"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Util"]
       42 GETTABLEKS                       R7 R8 K16 ["ConsoleOutput"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R2 K17 ["ToolNames"]
       47 DUPCLOSURE                       R8 K18 [PROTO_3]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 RETURN                           R8 1
