PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFEQKNIL                     R2 ; [+5]
        8 GETTABLEKS                       R3 R2 K0 ["selectedUniqueId"]
       10 JUMPIFEQ                         R3 R1 ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R3 0 0
       14 DUPTABLE                         R4 K9 [{["__mode"] = "k"}]
       15 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       17 GETIMPORT                        R2 K11 [setmetatable]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 2 0
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K13 ["attach"]
       26 DUPCLOSURE                       R4 K14 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K15 ["get"]
       30 RETURN                           R3 1
