PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 LENGTH                           R2 R0
        6 JUMPIFNOTEQKN                    R2 K0 [1] ; [+9]
        8 GETTABLEN                        R2 R0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["EDITORS"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETIMPORT                        R2 K2 [table.find]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["PUBLIC"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PublishPlaceAs"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["AUDIENCE"]
       18 NEWTABLE                         R3 2 0
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K11 ["audiencesAreEditorsOnly"]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K13 ["audiencesIncludePublic"]
       28 RETURN                           R3 1
