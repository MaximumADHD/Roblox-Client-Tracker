PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_persistedTitleBySession"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_persistedTitleBySession"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+44]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+42]
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+40]
        7 LOADB                            R3 0
        8 GETTABLEKS                       R4 R2 K0 ["ephemeral"]
       10 JUMPIFNOTEQKB                    R4 FALSE ; [+35]
       12 LOADB                            R3 0
       13 GETTABLEKS                       R4 R2 K1 ["isDirty"]
       15 JUMPIFNOTEQKB                    R4 TRUE ; [+30]
       17 LOADB                            R3 0
       18 GETTABLEKS                       R5 R2 K2 ["acpSessionId"]
       20 FASTCALL1                        TYPEOF R5 ; [+2]
       21 GETIMPORT                        R4 K4 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+21]
       26 LOADB                            R3 0
       27 GETTABLEKS                       R4 R2 K2 ["acpSessionId"]
       29 JUMPIFEQKS                       R4 K6 [""] ; [+16]
       31 LOADB                            R3 0
       32 GETTABLEKS                       R5 R2 K7 ["title"]
       34 FASTCALL1                        TYPEOF R5 ; [+2]
       35 GETIMPORT                        R4 K4 [typeof]
       37 CALL                             R4 1 1
       38 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+7]
       40 GETTABLEKS                       R4 R2 K7 ["title"]
       42 JUMPIFNOTEQKS                    R4 K6 [""] ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_persistedTitleBySession"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQ                      R1 R2 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["_persistedTitleBySession"]
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R1 R2
       14 GETIMPORT                        R1 K2 [warn]
       16 LOADK                            R3 K3 ["[Assistant] Failed to persist generated ACP session title: %*"]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K5 [tostring]
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K6 ["format"]
       24 CALL                             R3 2 1
       25 MOVE                             R2 R3
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["_persistedTitleBySession"]
        2 GETTABLE                         R4 R5 R2
        3 JUMPIFNOTEQ                      R4 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R0 K0 ["_persistedTitleBySession"]
        8 SETTABLE                         R3 R4 R2
        9 MOVE                             R4 R1
       10 DUPTABLE                         R5 K3 [{"sessionId", "title"}]
       11 SETTABLEKS                       R2 R5 K1 ["sessionId"]
       13 SETTABLEKS                       R3 R5 K2 ["title"]
       15 CALL                             R4 1 1
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 NAMECALL                         R4 R4 K4 ["catch"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

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
       14 NEWTABLE                         R2 4 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K12 ["shouldSync"]
       25 DUPCLOSURE                       R3 K13 [PROTO_3]
       26 SETTABLEKS                       R3 R2 K14 ["sync"]
       28 RETURN                           R2 1
