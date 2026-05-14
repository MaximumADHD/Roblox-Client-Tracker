PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["target"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["string"] ; [+5]
        9 GETIMPORT                        R3 K5 [error]
       11 LOADK                            R4 K6 ["OpenLink action triggered without a target"]
       12 CALL                             R3 1 0
       13 LOADN                            R5 1
       14 LOADN                            R6 4
       15 NAMECALL                         R3 R2 K7 ["sub"]
       17 CALL                             R3 3 1
       18 JUMPIFEQKS                       R3 K8 ["http"] ; [+10]
       20 GETIMPORT                        R3 K5 [error]
       22 LOADK                            R5 K9 ["OpenLink action triggered with invalid target: %*"]
       23 MOVE                             R7 R2
       24 NAMECALL                         R5 R5 K10 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 0
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K11 ["openLink"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

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
       23 GETTABLEKS                       R3 R2 K10 ["StartPageService"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
