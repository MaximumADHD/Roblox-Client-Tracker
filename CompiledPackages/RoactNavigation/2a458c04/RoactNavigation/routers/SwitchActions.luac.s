PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of SwitchActions"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1], ["preserveFocus"] = True}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["assign"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 MOVE                             R2 R1
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Object"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K2 ["Parent"]
       24 GETTABLEKS                       R5 R5 K7 ["NavigationSymbol"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R4
       28 LOADK                            R6 K8 ["JUMP_TO"]
       29 CALL                             R5 1 1
       30 DUPTABLE                         R6 K10 [{"JumpTo"}]
       31 SETTABLEKS                       R5 R6 K9 ["JumpTo"]
       33 DUPTABLE                         R9 K12 [{"__index"}]
       34 DUPCLOSURE                       R10 K13 [PROTO_0]
       35 SETTABLEKS                       R10 R9 K11 ["__index"]
       37 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
       39 MOVE                             R8 R6
       40 GETIMPORT                        R7 K15 [setmetatable]
       42 CALL                             R7 2 0
       43 DUPCLOSURE                       R7 K16 [PROTO_1]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R7 R6 K17 ["jumpTo"]
       48 RETURN                           R6 1
