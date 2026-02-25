PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["getRequestCFrame"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["GetRequestMetadata"]
       10 MOVE                             R4 R1
       11 LOADK                            R5 K3 ["PlacementSize"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["addConstraintVisualization"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 GETTABLEKS                       R8 R3 K5 ["X"]
       20 LOADN                            R9 0
       21 GETTABLEKS                       R10 R3 K6 ["Z"]
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R7 K9 [Vector3.new]
       26 CALL                             R7 3 1
       27 LOADB                            R8 1
       28 CALL                             R4 4 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K10 ["startConstraintVisualization"]
       32 MOVE                             R5 R1
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R4 K10 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Utils"]
       31 GETTABLEKS                       R4 R5 K11 ["Utils"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 RETURN                           R4 1
