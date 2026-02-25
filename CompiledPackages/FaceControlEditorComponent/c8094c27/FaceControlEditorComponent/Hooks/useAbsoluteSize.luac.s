PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 LOADK                            R4 K1 ["AbsoluteSize"]
        8 GETIMPORT                        R5 K4 [Vector2.new]
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 CALL                             R5 2 -1
       13 CALL                             R2 -1 1
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R6 R2
       16 GETIMPORT                        R5 K6 [typeof]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K2 ["Vector2"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["Expected absoluteSize to be a Vector2"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 DUPTABLE                         R3 K12 [{"setFrame", "absoluteSize"}]
       30 SETTABLEKS                       R1 R3 K10 ["setFrame"]
       32 SETTABLEKS                       R2 R3 K11 ["absoluteSize"]
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R4 R5 K9 ["useProperty"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 RETURN                           R4 1
