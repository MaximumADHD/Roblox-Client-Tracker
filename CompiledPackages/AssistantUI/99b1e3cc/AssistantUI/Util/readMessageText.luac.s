PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Type"]
        5 JUMPIFEQ                         R1 R2 ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K2 ["text"]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+3]
       18 JUMPIFNOTEQKS                    R1 K6 [""] ; [+3]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 GETIMPORT                        R2 K8 [string.find]
       24 MOVE                             R3 R1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K9 ["SYSTEM_REMINDER_OPEN"]
       28 LOADN                            R5 1
       29 LOADB                            R6 1
       30 CALL                             R2 4 1
       31 JUMPIFNOT                        R2 ; [+2]
       32 LOADB                            R2 0
       33 RETURN                           R2 1
       34 LOADB                            R2 1
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sortContents"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"allowContent"}]
        5 DUPCLOSURE                       R4 K3 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R4 R3 K1 ["allowContent"]
       10 CALL                             R1 2 1
       11 LENGTH                           R2 R1
       12 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETIMPORT                        R2 K7 [table.create]
       18 LENGTH                           R3 R1
       19 CALL                             R2 1 1
       20 MOVE                             R3 R1
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLEKS                       R8 R7 K8 ["text"]
       26 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       28 MOVE                             R10 R2
       29 MOVE                             R11 R8
       30 GETIMPORT                        R9 K10 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R3 2 ; [-10]
       35 GETIMPORT                        R3 K12 [table.concat]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K13 ["\n\n"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["TextContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ThreadReader"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
