PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 LOADK                            R4 K1 ["AbsolutePosition"]
        8 GETIMPORT                        R5 K4 [Vector2.new]
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 CALL                             R5 2 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 LOADK                            R5 K5 ["AbsoluteSize"]
       17 GETIMPORT                        R6 K4 [Vector2.new]
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 CALL                             R6 2 -1
       22 CALL                             R3 -1 1
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K7 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFEQKS                       R6 K2 ["Vector2"] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       34 LOADK                            R6 K8 ["Expected absolutePosition to be a Vector2"]
       35 GETIMPORT                        R4 K10 [assert]
       37 CALL                             R4 2 0
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K7 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFEQKS                       R6 K2 ["Vector2"] ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       49 LOADK                            R6 K11 ["Expected absoluteSize to be a Vector2"]
       50 GETIMPORT                        R4 K10 [assert]
       52 CALL                             R4 2 0
       53 DUPTABLE                         R4 K15 [{"setFrame", "absolutePosition", "absoluteSize"}]
       54 SETTABLEKS                       R1 R4 K12 ["setFrame"]
       56 SETTABLEKS                       R2 R4 K13 ["absolutePosition"]
       58 SETTABLEKS                       R3 R4 K14 ["absoluteSize"]
       60 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useProperty"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
