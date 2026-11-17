PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["getMouseTarget"]
        2 JUMPIFEQKNIL                     R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["You accidentally called schema:addUndoWaypoint intead of schema.addUndoWaypoint"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R0 K4 ["addWaypoint"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
