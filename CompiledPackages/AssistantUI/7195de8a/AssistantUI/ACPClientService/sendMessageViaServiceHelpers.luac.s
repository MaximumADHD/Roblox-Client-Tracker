PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSystemReminder"]
        3 LOADK                            R1 K1 ["The slash command's skill tool has already been executed and its result is above. Follow that result without invoking the skill tool again."]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R1 R0 K3 ["isError"]
        9 JUMPIF                           R1 ; [+8]
       10 GETTABLEKS                       R2 R0 K4 ["content"]
       12 FASTCALL1                        TYPEOF R2 ; [+2]
       13 GETIMPORT                        R1 K1 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       18 LOADNIL                          R1
       19 RETURN                           R1 1
       20 NEWTABLE                         R1 0 0
       22 GETTABLEKS                       R2 R0 K4 ["content"]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 FASTCALL1                        TYPEOF R6 ; [+3]
       28 MOVE                             R8 R6
       29 GETIMPORT                        R7 K1 [typeof]
       31 CALL                             R7 1 1
       32 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+21]
       34 GETTABLEKS                       R7 R6 K5 ["type"]
       36 JUMPIFNOTEQKS                    R7 K6 ["text"] ; [+17]
       38 GETTABLEKS                       R8 R6 K6 ["text"]
       40 FASTCALL1                        TYPEOF R8 ; [+2]
       41 GETIMPORT                        R7 K1 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFNOTEQKS                    R7 K7 ["string"] ; [+9]
       46 GETTABLEKS                       R9 R6 K6 ["text"]
       48 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       50 MOVE                             R8 R1
       51 GETIMPORT                        R7 K9 [table.insert]
       53 CALL                             R7 2 0
       54 FORGLOOP                         R2 2 ; [-28]
       56 LENGTH                           R2 R1
       57 JUMPIFNOTEQKN                    R2 K10 [0] ; [+3]
       59 LOADNIL                          R2
       60 RETURN                           R2 1
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K11 ["getSystemReminder"]
       64 LOADK                            R4 K12 ["The slash command's skill tool has already been executed. "]
       65 LOADK                            R5 K13 ["Follow the tool result below without invoking the skill tool again.\n\n"]
       66 GETIMPORT                        R6 K15 [table.concat]
       68 MOVE                             R7 R1
       69 LOADK                            R8 K16 ["\n"]
       70 CALL                             R6 2 1
       71 CONCAT                           R3 R4 R6
       72 CALL                             R2 1 -1
       73 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 DUPTABLE                         R1 K3 [{"role", "hidden", "threadId"}]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K4 ["ROLE"]
       10 GETTABLEKS                       R2 R2 K5 ["User"]
       12 SETTABLEKS                       R2 R1 K0 ["role"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K1 ["hidden"]
       17 JUMPIFEQKB                       R3 TRUE ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K1 ["hidden"]
       23 GETUPVAL                         R2 4
       24 SETTABLEKS                       R2 R1 K2 ["threadId"]
       26 CALL                             R0 1 1
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K6 ["images"]
       30 JUMPIFNOT                        R1 ; [+28]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K6 ["images"]
       34 LENGTH                           R1 R2
       35 LOADN                            R2 0
       36 JUMPIFNOTLT                      R2 R1 ; [+22]
       38 GETUPVAL                         R1 5
       39 DUPTABLE                         R2 K9 [{"messageId", "threadId", "content"}]
       40 SETTABLEKS                       R0 R2 K7 ["messageId"]
       42 GETUPVAL                         R3 4
       43 SETTABLEKS                       R3 R2 K2 ["threadId"]
       45 DUPTABLE                         R3 K14 [{["type"], ["imageContents"], ["expanded"] = False}]
       46 GETUPVAL                         R4 6
       47 GETTABLEKS                       R4 R4 K15 ["Type"]
       49 SETTABLEKS                       R4 R3 K10 ["type"]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K6 ["images"]
       54 SETTABLEKS                       R4 R3 K11 ["imageContents"]
       56 SETTABLEKS                       R3 R2 K8 ["content"]
       58 CALL                             R1 1 0
       59 GETUPVAL                         R2 3
       60 GETTABLEKS                       R2 R2 K16 ["text"]
       62 LENGTH                           R1 R2
       63 LOADN                            R2 0
       64 JUMPIFNOTLT                      R2 R1 ; [+22]
       66 GETUPVAL                         R1 5
       67 DUPTABLE                         R2 K9 [{"messageId", "threadId", "content"}]
       68 SETTABLEKS                       R0 R2 K7 ["messageId"]
       70 GETUPVAL                         R3 4
       71 SETTABLEKS                       R3 R2 K2 ["threadId"]
       73 DUPTABLE                         R3 K17 [{"type", "text"}]
       74 GETUPVAL                         R4 7
       75 GETTABLEKS                       R4 R4 K15 ["Type"]
       77 SETTABLEKS                       R4 R3 K10 ["type"]
       79 GETUPVAL                         R4 3
       80 GETTABLEKS                       R4 R4 K16 ["text"]
       82 SETTABLEKS                       R4 R3 K16 ["text"]
       84 SETTABLEKS                       R3 R2 K8 ["content"]
       86 CALL                             R1 1 0
       87 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADB                            R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R4
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 MOVE                             R6 R5
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          REF R4
       13 CLOSEUPVALS                      R4
       14 RETURN                           R6 2

PROTO_5:
        0 MOVE                             R1 R0
        1 DUPTABLE                         R2 K1 [{"tools"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["tools"]
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 MOVE                             R9 R2
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K2 ["getSystemReminder"]
       17 MOVE                             R11 R7
       18 CALL                             R10 1 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R8 K5 [table.insert]
       22 CALL                             R8 -1 0
       23 FORGLOOP                         R3 2 ; [-11]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["ContentWidgets"]
       22 GETTABLEKS                       R3 R3 K9 ["TextContentWidget"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Types"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K12 ["buildSkillContinuationReminder"]
       36 DUPCLOSURE                       R5 K13 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K14 ["buildSkillResultContext"]
       40 DUPCLOSURE                       R5 K15 [PROTO_4]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R5 R4 K16 ["createSlashCommandUserMessageRenderer"]
       46 DUPCLOSURE                       R5 K17 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K18 ["buildFramedSystemReminders"]
       50 RETURN                           R4 1
