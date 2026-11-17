PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["getMouseTarget"]
        2 JUMPIFEQKNIL                     R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["You accidentally called schema:addUndoWaypoint intead of schema.addUndoWaypoint"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R0 K4 ["addUndoWaypoint"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["DraggerFramework"]
       11 CALL                             R2 1 1
       12 DUPCLOSURE                       R3 K6 [PROTO_0]
       13 RETURN                           R3 1
