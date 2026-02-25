PROTO_0:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["Level"]
        8 GETUPVAL                         R11 0
        9 GETTABLEKS                       R10 R11 K1 ["Warning"]
       11 GETTABLEKS                       R9 R10 K2 ["rawValue"]
       13 CALL                             R9 0 1
       14 JUMPIFNOTEQ                      R8 R9 ; [+3]
       16 ADDK                             R2 R2 K3 [1]
       17 JUMP                             ; [+11]
       18 GETTABLEKS                       R8 R7 K0 ["Level"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K4 ["Error"]
       23 GETTABLEKS                       R9 R10 K2 ["rawValue"]
       25 CALL                             R9 0 1
       26 JUMPIFNOTEQ                      R8 R9 ; [+2]
       28 ADDK                             R1 R1 K3 [1]
       29 FORGLOOP                         R3 2 ; [-24]
       31 DUPTABLE                         R3 K7 [{"errors", "warnings"}]
       32 SETTABLEKS                       R1 R3 K5 ["errors"]
       34 SETTABLEKS                       R2 R3 K6 ["warnings"]
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["StatusLevel"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
