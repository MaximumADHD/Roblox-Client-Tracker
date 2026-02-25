PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 LENGTH                           R4 R0
        3 ADD                              R2 R3 R4
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOTLE                      R2 R3 ; [+12]
        8 GETUPVAL                         R3 0
        9 LENGTH                           R2 R3
       10 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 LOADK                            R4 K1 ["\n"]
       16 MOVE                             R5 R0
       17 CONCAT                           R2 R3 R5
       18 SETUPVAL                         R2 0
       19 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R0 K0 [""]
        1 LOADB                            R1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["subscribeGameLoaded"]
        9 GETUPVAL                         R4 2
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R1
       12 CAPTURE                          VAL R2
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["subscribeOutput"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          REF R0
       19 CAPTURE                          UPVAL U3
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K4 ["startStopPlayAsync"]
       24 LOADB                            R6 1
       25 CALL                             R5 1 0
       26 JUMPIF                           R1 ; [+3]
       27 NAMECALL                         R5 R2 K5 ["Wait"]
       29 CALL                             R5 1 0
       30 MOVE                             R5 R3
       31 CALL                             R5 0 0
       32 GETIMPORT                        R5 K8 [task.wait]
       34 LOADN                            R6 1
       35 CALL                             R5 1 0
       36 NAMECALL                         R5 R4 K9 ["Disconnect"]
       38 CALL                             R5 1 0
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K4 ["startStopPlayAsync"]
       42 LOADB                            R6 0
       43 CALL                             R5 1 0
       44 CLOSEUPVALS                      R0
       45 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["TestGame"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["define"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R7 R8 K3 ["TestGame"]
       19 NAMECALL                         R5 R5 K4 ["setName"]
       21 CALL                             R5 2 1
       22 LOADK                            R7 K5 ["Start play the game and then stop the play, returning the debug output."]
       23 NAMECALL                         R5 R5 K6 ["setDescription"]
       25 CALL                             R5 2 1
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R5 K7 ["setHandler"]
       29 CALL                             R5 2 1
       30 NAMECALL                         R5 R5 K8 ["build"]
       32 CALL                             R5 1 1
       33 DUPTABLE                         R6 K12 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       34 SETTABLEKS                       R5 R6 K9 ["definition"]
       36 DUPCLOSURE                       R7 K13 [PROTO_4]
       37 SETTABLEKS                       R7 R6 K10 ["getPreExecuteWarning"]
       39 DUPCLOSURE                       R7 K14 [PROTO_5]
       40 CAPTURE                          UPVAL U5
       41 SETTABLEKS                       R7 R6 K11 ["displayNameFunction"]
       43 RETURN                           R6 1

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
       40 GETTABLEKS                       R8 R0 K6 ["Parent"]
       42 GETTABLEKS                       R7 R8 K16 ["Signal"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K17 ["Flags"]
       49 GETTABLEKS                       R8 R9 K18 ["FIntAssistantDebugToolMaxOutput"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K19 ["ToolNames"]
       54 DUPCLOSURE                       R9 K20 [PROTO_6]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R3
       61 RETURN                           R9 1
