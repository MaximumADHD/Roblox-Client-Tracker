PROTO_0:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K2 ["Get"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 3
        7 FORGPREP_INEXT                   R0
        8 GETTABLEKS                       R5 R4 K3 ["Name"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K4 ["data"]
       13 GETTABLEKS                       R6 R6 K5 ["path"]
       15 JUMPIFNOTEQ                      R5 R6 ; [+5]
       17 GETUPVAL                         R5 1
       18 NAMECALL                         R5 R5 K6 ["complete"]
       20 CALL                             R5 1 0
       21 FORGLOOP                         R0 2 [inext] ; [-14]
       23 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R1 K1 ["dataModel"]
        4 LOADK                            R4 K2 ["Selection"]
        5 NAMECALL                         R2 R1 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K4 ["SelectionChanged"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R3 K5 ["Connect"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R0 K6 ["connection"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["Select"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["showComplete"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K10 ["bind"]
       20 DUPCLOSURE                       R2 K11 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K12 ["unbind"]
       23 RETURN                           R1 1
