PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R4 R2 K1 ["ClassName"]
       15 JUMPIFEQKS                       R4 K2 ["StringValue"] ; [+12]
       17 LOADB                            R3 1
       18 GETTABLEKS                       R4 R2 K1 ["ClassName"]
       20 JUMPIFEQKS                       R4 K3 ["BoolValue"] ; [+7]
       22 GETTABLEKS                       R4 R2 K1 ["ClassName"]
       24 JUMPIFEQKS                       R4 K4 ["IntValue"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 JUMPIFNOT                        R3 ; [+3]
       29 GETTABLEKS                       R4 R2 K5 ["Value"]
       31 RETURN                           R4 1
       32 LOADNIL                          R4
       33 RETURN                           R4 1

PROTO_1:
        0 ORK                              R1 R0 K0 [""]
        1 GETUPVAL                         R2 0
        2 MOVE                             R5 R1
        3 LOADK                            R6 K1 ["Flags"]
        4 CONCAT                           R4 R5 R6
        5 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+7]
        9 GETUPVAL                         R2 0
       10 MOVE                             R5 R1
       11 LOADK                            R6 K3 ["DebugFlags"]
       12 CONCAT                           R4 R5 R6
       13 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       15 CALL                             R2 2 1
       16 NEWTABLE                         R4 0 0
       18 DUPTABLE                         R5 K5 [{"__index"}]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R6 R5 K4 ["__index"]
       23 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       25 GETIMPORT                        R3 K7 [setmetatable]
       27 CALL                             R3 2 1
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K7 [game]
       12 LOADK                            R4 K8 ["Workspace"]
       13 NAMECALL                         R2 R2 K9 ["GetService"]
       15 CALL                             R2 2 1
       16 DUPCLOSURE                       R3 K10 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
