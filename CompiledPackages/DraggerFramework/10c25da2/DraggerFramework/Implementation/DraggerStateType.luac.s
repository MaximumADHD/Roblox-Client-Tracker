PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Attempt to get invalid StateType `"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R8 R1
        5 GETIMPORT                        R7 K4 [tostring]
        7 CALL                             R7 1 1
        8 MOVE                             R5 R7
        9 LOADK                            R6 K5 ["`"]
       10 CONCAT                           R3 R4 R6
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R3 K1 [{"__index"}]
        4 DUPCLOSURE                       R4 K2 [PROTO_0]
        5 SETTABLEKS                       R4 R3 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [setmetatable]
       12 CALL                             R1 2 0
       13 LOADK                            R1 K5 ["Ready"]
       14 SETTABLEKS                       R1 R0 K5 ["Ready"]
       16 LOADK                            R1 K6 ["PendingDraggingParts"]
       17 SETTABLEKS                       R1 R0 K6 ["PendingDraggingParts"]
       19 LOADK                            R1 K7 ["PendingSelectNext"]
       20 SETTABLEKS                       R1 R0 K7 ["PendingSelectNext"]
       22 LOADK                            R1 K8 ["DraggingHandle"]
       23 SETTABLEKS                       R1 R0 K8 ["DraggingHandle"]
       25 LOADK                            R1 K9 ["DraggingParts"]
       26 SETTABLEKS                       R1 R0 K9 ["DraggingParts"]
       28 LOADK                            R1 K10 ["DragSelecting"]
       29 SETTABLEKS                       R1 R0 K10 ["DragSelecting"]
       31 LOADK                            R1 K11 ["DraggingFaceInstance"]
       32 SETTABLEKS                       R1 R0 K11 ["DraggingFaceInstance"]
       34 RETURN                           R0 1
