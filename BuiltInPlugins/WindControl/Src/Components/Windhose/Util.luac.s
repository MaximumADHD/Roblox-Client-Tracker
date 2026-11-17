PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R0 R0 K4 ["CameraType"]
        8 GETIMPORT                        R1 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R4 R1
        1 SUB                              R5 R1 R0
        2 MOVE                             R10 R0
        3 NAMECALL                         R8 R2 K0 ["Dot"]
        5 CALL                             R8 2 1
        6 SUB                              R7 R3 R8
        7 MOVE                             R10 R5
        8 NAMECALL                         R8 R2 K0 ["Dot"]
       10 CALL                             R8 2 1
       11 DIV                              R6 R7 R8
       12 LOADN                            R7 0
       13 JUMPIFNOTLE                      R7 R6 ; [+6]
       15 LOADN                            R7 1
       16 JUMPIFNOTLE                      R6 R7 ; [+3]
       18 MUL                              R7 R6 R5
       19 ADD                              R4 R0 R7
       20 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPTABLE                         R2 K4 [{"isInvalidCameraType", "getRayPlaneHit"}]
        4 SETTABLEKS                       R0 R2 K2 ["isInvalidCameraType"]
        6 SETTABLEKS                       R1 R2 K3 ["getRayPlaneHit"]
        8 RETURN                           R2 1
