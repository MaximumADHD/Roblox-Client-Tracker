PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["target"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["string"] ; [+5]
        9 GETIMPORT                        R3 K5 [error]
       11 LOADK                            R4 K6 ["Spotlight action triggered without a target"]
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R4 R0 K7 ["showWidgets"]
       15 FASTCALL1                        TYPE R4 ; [+2]
       16 GETIMPORT                        R3 K2 [type]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+7]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R5 R0 K7 ["showWidgets"]
       24 NAMECALL                         R3 R3 K7 ["showWidgets"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K8 ["applyTargetId"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K9 ["SpotlightManager"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
