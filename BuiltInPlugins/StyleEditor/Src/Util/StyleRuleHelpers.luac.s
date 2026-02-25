PROTO_0:
        0 LOADK                            R5 K0 ["StyleBase"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R3 K2 ["GetStyleRules"]
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K5 [table.find]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R0
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 LENGTH                           R6 R4
       20 JUMPIFEQ                         R5 R6 ; [+5]
       22 JUMPIFNOTEQKB                    R1 FALSE ; [+5]
       24 JUMPIFNOTEQKN                    R5 K6 [1] ; [+3]
       26 LOADB                            R6 0
       27 RETURN                           R6 1
       28 JUMPIFNOT                        R2 ; [+2]
       29 LOADB                            R6 1
       30 RETURN                           R6 1
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADN                            R8 1
       33 JUMP                             ; [+1]
       34 LOADN                            R8 255
       35 ADD                              R7 R5 R8
       36 GETTABLE                         R6 R4 R7
       37 GETTABLEKS                       R7 R0 K7 ["Priority"]
       39 GETTABLEKS                       R8 R6 K7 ["Priority"]
       41 JUMPIFNOTEQ                      R7 R8 ; [+11]
       43 GETTABLEKS                       R7 R0 K7 ["Priority"]
       45 JUMPIFNOT                        R1 ; [+2]
       46 LOADN                            R8 1
       47 JUMP                             ; [+1]
       48 LOADN                            R8 255
       49 ADD                              R7 R7 R8
       50 SETTABLEKS                       R7 R0 K7 ["Priority"]
       52 JUMP                             ; [+8]
       53 GETTABLEKS                       R7 R6 K7 ["Priority"]
       55 GETTABLEKS                       R8 R0 K7 ["Priority"]
       57 SETTABLEKS                       R7 R0 K7 ["Priority"]
       59 SETTABLEKS                       R8 R6 K7 ["Priority"]
       61 LOADB                            R7 1
       62 RETURN                           R7 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 NAMECALL                         R2 R0 K1 ["GetStyleRules"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.sort]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["changeStyleRulePriority"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 SETTABLEKS                       R1 R0 K3 ["getOrderedStyleRules"]
        9 RETURN                           R0 1
