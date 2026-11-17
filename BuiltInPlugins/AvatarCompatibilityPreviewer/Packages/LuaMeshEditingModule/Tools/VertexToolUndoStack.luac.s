PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 LOADN                            R3 100
        9 SETTABLEKS                       R3 R2 K2 ["_maxStackSize"]
       11 SETTABLEKS                       R0 R2 K3 ["_captureStateCallback"]
       13 SETTABLEKS                       R1 R2 K4 ["_restoreStateCallback"]
       15 GETUPVAL                         R3 1
       16 SETTABLEKS                       R3 R2 K5 ["_pastStack"]
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R3 R2 K6 ["_futureStack"]
       21 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_captureStateCallback"]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_restoreStateCallback"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_pastStack"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K1 ["_futureStack"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_pastStack"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R0 K1 ["_addToStack"]
        5 CALL                             R2 3 1
        6 SETTABLEKS                       R2 R0 K0 ["_pastStack"]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R0 K2 ["_futureStack"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_pastStack"]
        2 NAMECALL                         R1 R0 K1 ["_removeFromStack"]
        4 CALL                             R1 2 2
        5 SETTABLEKS                       R1 R0 K0 ["_pastStack"]
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETTABLEKS                       R5 R0 K2 ["_futureStack"]
       10 NAMECALL                         R6 R0 K3 ["_captureState"]
       12 CALL                             R6 1 -1
       13 NAMECALL                         R3 R0 K4 ["_addToStack"]
       15 CALL                             R3 -1 1
       16 SETTABLEKS                       R3 R0 K2 ["_futureStack"]
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R0 K5 ["_restoreState"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_futureStack"]
        2 NAMECALL                         R1 R0 K1 ["_removeFromStack"]
        4 CALL                             R1 2 2
        5 SETTABLEKS                       R1 R0 K0 ["_futureStack"]
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETTABLEKS                       R5 R0 K2 ["_pastStack"]
       10 NAMECALL                         R6 R0 K3 ["_captureState"]
       12 CALL                             R6 1 -1
       13 NAMECALL                         R3 R0 K4 ["_addToStack"]
       15 CALL                             R3 -1 1
       16 SETTABLEKS                       R3 R0 K2 ["_pastStack"]
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R0 K5 ["_restoreState"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_pastStack"]
        2 GETTABLEKS                       R2 R0 K1 ["_futureStack"]
        4 RETURN                           R1 2

PROTO_8:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 LENGTH                           R2 R0
        4 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 DUPCLOSURE                       R3 K0 [PROTO_8]
        1 GETTABLEKS                       R6 R0 K1 ["_pastStack"]
        3 LOADB                            R5 1
        4 JUMPIFEQKNIL                     R6 ; [+6]
        6 LENGTH                           R7 R6
        7 JUMPIFEQKN                       R7 K2 [0] ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 JUMPIF                           R5 ; [+10]
       12 GETTABLEKS                       R6 R0 K3 ["_futureStack"]
       14 LOADB                            R5 1
       15 JUMPIFEQKNIL                     R6 ; [+6]
       17 LENGTH                           R7 R6
       18 JUMPIFEQKN                       R7 K2 [0] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       24 LOADK                            R6 K4 ["Trying to restore edit history when existing edit history is not empty!"]
       25 GETIMPORT                        R4 K6 [assert]
       27 CALL                             R4 2 0
       28 SETTABLEKS                       R1 R0 K1 ["_pastStack"]
       30 SETTABLEKS                       R2 R0 K3 ["_futureStack"]
       32 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 1
        4 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 GETIMPORT                        R4 K4 [table.insert]
       10 CALL                             R4 2 0
       11 LENGTH                           R4 R3
       12 GETTABLEKS                       R5 R0 K5 ["_maxStackSize"]
       14 JUMPIFNOTLE                      R5 R4 ; [+6]
       16 GETIMPORT                        R4 K7 [table.remove]
       18 MOVE                             R5 R3
       19 LOADN                            R6 1
       20 CALL                             R4 2 0
       21 GETIMPORT                        R4 K9 [table.freeze]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 -1
       25 RETURN                           R4 -1

PROTO_11:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+4]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 RETURN                           R2 2
        6 GETIMPORT                        R2 K3 [table.clone]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETIMPORT                        R3 K5 [table.remove]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K7 [table.freeze]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 MOVE                             R5 R3
       19 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 16 0
       14 SETTABLEKS                       R2 R2 K7 ["__index"]
       16 GETIMPORT                        R3 K10 [table.freeze]
       18 NEWTABLE                         R4 0 0
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K11 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R4 R2 K12 ["new"]
       26 DUPCLOSURE                       R4 K13 [PROTO_1]
       27 SETTABLEKS                       R4 R2 K14 ["_captureState"]
       29 DUPCLOSURE                       R4 K15 [PROTO_2]
       30 SETTABLEKS                       R4 R2 K16 ["_restoreState"]
       32 DUPCLOSURE                       R4 K17 [PROTO_3]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R2 K18 ["clear"]
       36 DUPCLOSURE                       R4 K19 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R4 R2 K20 ["addWaypoint"]
       40 DUPCLOSURE                       R4 K21 [PROTO_5]
       41 SETTABLEKS                       R4 R2 K22 ["undo"]
       43 DUPCLOSURE                       R4 K23 [PROTO_6]
       44 SETTABLEKS                       R4 R2 K24 ["redo"]
       46 DUPCLOSURE                       R4 K25 [PROTO_7]
       47 SETTABLEKS                       R4 R2 K26 ["getUndoRedoStack"]
       49 DUPCLOSURE                       R4 K27 [PROTO_9]
       50 SETTABLEKS                       R4 R2 K28 ["restoreUndoRedoStack"]
       52 DUPCLOSURE                       R4 K29 [PROTO_10]
       53 SETTABLEKS                       R4 R2 K30 ["_addToStack"]
       55 DUPCLOSURE                       R4 K31 [PROTO_11]
       56 SETTABLEKS                       R4 R2 K32 ["_removeFromStack"]
       58 RETURN                           R2 1
