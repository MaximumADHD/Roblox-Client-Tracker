PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[ACP] setMCPDestructing: value=%*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 LOADB                            R2 0
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R2
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R2
       18 DUPTABLE                         R5 K9 [{"isMCPDestructing", "setMCPDestructing"}]
       19 SETTABLEKS                       R3 R5 K7 ["isMCPDestructing"]
       21 SETTABLEKS                       R4 R5 K8 ["setMCPDestructing"]
       23 CLOSEUPVALS                      R2
       24 RETURN                           R5 1
