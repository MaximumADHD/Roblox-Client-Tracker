PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R2 R2 K1 ["creatorType"]
        4 GETTABLEKS                       R3 R0 K0 ["GameOwnerMetadata"]
        6 GETTABLEKS                       R3 R3 K2 ["creatorFriends"]
        8 GETIMPORT                        R4 K6 [Enum.CreatorType.User]
       10 JUMPIFNOTEQ                      R2 R4 ; [+12]
       12 GETIMPORT                        R4 K8 [ipairs]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 JUMPIFNOTEQ                      R8 R1 ; [+3]
       19 LOADB                            R9 1
       20 RETURN                           R9 1
       21 FORGLOOP                         R4 2 [inext] ; [-5]
       23 LOADB                            R4 0
       24 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
