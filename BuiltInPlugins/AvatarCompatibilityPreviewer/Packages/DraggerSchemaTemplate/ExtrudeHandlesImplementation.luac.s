PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R3 R2 K0 ["getBoundingBox"]
        2 CALL                             R3 1 -1
        3 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R4 R4 K1 ["isCtrlKeyDown"]
        4 CALL                             R4 1 -1
        5 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R3 K4 [{[1] = True, ["Y"] = True, ["Z"] = True}]
        1 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R1 K0 [{0, 0, 0}]
        1 LOADK                            R3 K2 [{1, 1, 1}]
        2 MULK                             R2 R3 K1 [∞]
        3 RETURN                           R1 2

PROTO_5:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 NAMECALL                         R4 R0 K0 ["getBoundingBox"]
        4 CALL                             R4 3 3
        5 GETIMPORT                        R8 K3 [CFrame.new]
        7 MOVE                             R9 R5
        8 CALL                             R8 1 1
        9 MUL                              R7 R4 R8
       10 SETTABLEKS                       R7 R0 K4 ["_originalBoundingBoxCFrame"]
       12 SETTABLEKS                       R6 R0 K5 ["_originalBoundingBoxSize"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_originalBoundingBoxCFrame"]
        2 GETIMPORT                        R5 K3 [CFrame.new]
        4 MOVE                             R6 R2
        5 CALL                             R5 1 1
        6 MUL                              R3 R4 R5
        7 GETTABLEKS                       R5 R0 K4 ["_originalBoundingBoxSize"]
        9 ADD                              R4 R5 R1
       10 GETTABLEKS                       R6 R0 K4 ["_originalBoundingBoxSize"]
       12 DIV                              R5 R4 R6
       13 RETURN                           R1 2

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 RETURN                           R1 1

PROTO_9:
        0 LOADNIL                          R3
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["getBoundingBox"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["shouldScaleFromCenter"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["axesToScale"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["getMinMaxSizes"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["beginScale"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["updateScale"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["endScale"]
       30 DUPCLOSURE                       R1 K17 [PROTO_8]
       31 SETTABLEKS                       R1 R0 K18 ["getPriority"]
       33 DUPCLOSURE                       R1 K19 [PROTO_9]
       34 SETTABLEKS                       R1 R0 K20 ["render"]
       36 RETURN                           R0 1
