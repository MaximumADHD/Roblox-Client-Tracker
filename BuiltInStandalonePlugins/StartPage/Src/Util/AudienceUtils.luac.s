PROTO_0:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 JUMPIFNOTEQKN                    R2 K0 [1] ; [+9]
        4 GETTABLEN                        R2 R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["Editors"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 GETTABLEKS                       R2 R2 K8 ["Audience"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["audienceIsPrivate"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K12 ["audienceIncludes"]
       25 RETURN                           R2 1
