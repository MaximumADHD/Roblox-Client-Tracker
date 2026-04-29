PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R4 0
        6 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 0
       10 SETTABLE                         R2 R3 R0
       11 GETUPVAL                         R3 2
       12 SETTABLE                         R0 R3 R2
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+9]
        3 GETIMPORT                        R2 K1 [error]
        5 LOADK                            R4 K2 ["tried to get instance that wasn't registered with id: %*"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R4 R4 K3 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 CALL                             R2 1 0
       12 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K1 [{"__mode"}]
        3 LOADK                            R3 K2 ["kv"]
        4 SETTABLEKS                       R3 R2 K0 ["__mode"]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K4 [setmetatable]
       10 CALL                             R0 2 1
       11 NEWTABLE                         R2 0 0
       13 DUPTABLE                         R3 K1 [{"__mode"}]
       14 LOADK                            R4 K2 ["kv"]
       15 SETTABLEKS                       R4 R3 K0 ["__mode"]
       17 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       19 GETIMPORT                        R1 K4 [setmetatable]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R1
       28 DUPTABLE                         R4 K7 [{"getIdByInstance", "getInstanceById"}]
       29 SETTABLEKS                       R2 R4 K5 ["getIdByInstance"]
       31 SETTABLEKS                       R3 R4 K6 ["getInstanceById"]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["PropertyEditorTypes"]
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K11 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 DUPCLOSURE                       R4 K12 [PROTO_3]
       21 CAPTURE                          VAL R1
       22 RETURN                           R4 1
