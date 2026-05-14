PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["target"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["string"] ; [+5]
        9 GETIMPORT                        R3 K5 [error]
       11 LOADK                            R4 K6 ["SelectInstance action triggered without a target"]
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R4 R0 K7 ["targetClass"]
       15 JUMPIFNOT                        R4 ; [+7]
       16 GETTABLEKS                       R4 R0 K7 ["targetClass"]
       18 FASTCALL1                        TOSTRING R4 ; [+2]
       19 GETIMPORT                        R3 K9 [tostring]
       21 CALL                             R3 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 0
       25 MOVE                             R5 R2
       26 MOVE                             R6 R3
       27 CALL                             R4 2 1
       28 JUMPIF                           R4 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 1
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R4
       34 SETLIST                          R7 R8 1 [1]
       36 NAMECALL                         R5 R5 K10 ["Set"]
       38 CALL                             R5 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Selection"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K8 ["Util"]
       31 GETTABLEKS                       R5 R5 K11 ["findInstance"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 RETURN                           R5 1
