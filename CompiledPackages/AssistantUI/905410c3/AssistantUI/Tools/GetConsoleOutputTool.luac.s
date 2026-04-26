PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+40]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["getLogHistory"]
        6 CALL                             R0 0 1
        7 LOADK                            R1 K1 [""]
        8 LOADB                            R2 0
        9 MOVE                             R3 R0
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETUPVAL                         R8 2
       14 MOVE                             R10 R7
       15 NAMECALL                         R8 R8 K2 ["JSONEncode"]
       17 CALL                             R8 2 1
       18 LENGTH                           R10 R1
       19 LENGTH                           R11 R8
       20 ADD                              R9 R10 R11
       21 GETUPVAL                         R10 3
       22 CALL                             R10 0 1
       23 JUMPIFNOTLT                      R10 R9 ; [+3]
       25 LOADB                            R2 1
       26 JUMP                             ; [+11]
       27 LENGTH                           R9 R1
       28 JUMPIFNOTEQKN                    R9 K3 [0] ; [+3]
       30 MOVE                             R1 R8
       31 JUMP                             ; [+4]
       32 MOVE                             R9 R1
       33 LOADK                            R10 K4 ["\n"]
       34 MOVE                             R11 R8
       35 CONCAT                           R1 R9 R11
       36 FORGLOOP                         R3 2 ; [-24]
       38 JUMPIFNOT                        R2 ; [+3]
       39 MOVE                             R3 R1
       40 LOADK                            R4 K5 ["\n[TRUNCATED DUE TO LENGTH LIMIT]"]
       41 CONCAT                           R1 R3 R4
       42 RETURN                           R1 1
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R0 R1 K6 ["outputMessage"]
       46 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["addText"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K1 ["build"]
       10 CALL                             R2 1 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GetConsoleOutput"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U4
       11 GETUPVAL                         R5 0
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 LOADK                            R4 K1 ["Get the console output from the Studio output log."]
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K2 ["Get the console output of the game while it is playing."]
       17 GETUPVAL                         R6 5
       18 GETTABLEKS                       R5 R6 K3 ["define"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R8 6
       22 GETTABLEKS                       R7 R8 K4 ["GetConsoleOutput"]
       24 NAMECALL                         R5 R5 K5 ["setName"]
       26 CALL                             R5 2 1
       27 MOVE                             R7 R4
       28 NAMECALL                         R5 R5 K6 ["setDescription"]
       30 CALL                             R5 2 1
       31 MOVE                             R7 R3
       32 NAMECALL                         R5 R5 K7 ["setHandler"]
       34 CALL                             R5 2 1
       35 NAMECALL                         R5 R5 K8 ["build"]
       37 CALL                             R5 1 1
       38 DUPTABLE                         R6 K11 [{"definition", "displayNameFunction"}]
       39 SETTABLEKS                       R5 R6 K9 ["definition"]
       41 DUPCLOSURE                       R7 K12 [PROTO_2]
       42 CAPTURE                          UPVAL U7
       43 SETTABLEKS                       R7 R6 K10 ["displayNameFunction"]
       45 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Tools"]
       24 GETTABLEKS                       R4 R5 K13 ["ToolTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R0 K14 ["Resources"]
       31 GETTABLEKS                       R6 R7 K15 ["Localization"]
       33 GETTABLEKS                       R5 R6 K16 ["Translator"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R2 K17 ["Util"]
       38 GETTABLEKS                       R5 R6 K18 ["ToolBuilder"]
       40 GETTABLEKS                       R7 R2 K17 ["Util"]
       42 GETTABLEKS                       R6 R7 K19 ["ToolResult"]
       44 GETIMPORT                        R7 K9 [require]
       46 GETTABLEKS                       R9 R0 K17 ["Util"]
       48 GETTABLEKS                       R8 R9 K20 ["ConsoleOutput"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R10 R0 K21 ["Flags"]
       55 GETTABLEKS                       R9 R10 K22 ["FFlagAssistantGetConsoleOutputUsesFullLogHistory"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R11 R0 K21 ["Flags"]
       62 GETTABLEKS                       R10 R11 K23 ["FIntAssistantDebugToolMaxOutput"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R3 K24 ["ToolNames"]
       67 DUPCLOSURE                       R11 K25 [PROTO_3]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 RETURN                           R11 1
