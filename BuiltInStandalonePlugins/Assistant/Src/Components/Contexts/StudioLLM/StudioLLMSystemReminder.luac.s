PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["assistantMode"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["Types"]
        7 GETTABLEKS                       R4 R5 K2 ["AssistantMode"]
        9 GETTABLEKS                       R3 R4 K3 ["Test"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+17]
       13 LOADK                            R2 K4 [""]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K5 ["getStudioPlayState"]
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADK                            R2 K6 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K7 ["- Current Studio Mode: Stop\n- Available DataModels: Edit\n"]
       22 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       24 MOVE                             R4 R1
       25 MOVE                             R5 R2
       26 GETIMPORT                        R3 K10 [table.insert]
       28 CALL                             R3 2 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["StudioState"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 DUPTABLE                         R4 K13 [{"getSystemReminders"}]
       27 SETTABLEKS                       R3 R4 K12 ["getSystemReminders"]
       29 RETURN                           R4 1
