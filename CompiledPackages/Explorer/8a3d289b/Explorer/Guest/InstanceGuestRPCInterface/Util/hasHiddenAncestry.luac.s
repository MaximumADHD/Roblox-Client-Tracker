PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["root"]
        2 GETTABLEKS                       R3 R1 K1 ["Parent"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADB                            R4 0
        7 RETURN                           R4 1
        8 JUMPIFNOTEQ                      R3 R2 ; [+18]
       10 LOADK                            R6 K2 ["DataModel"]
       11 NAMECALL                         R4 R2 K3 ["IsA"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+10]
       15 GETTABLEKS                       R4 R0 K4 ["isServiceVisible"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 MOVE                             R6 R4
       19 MOVE                             R7 R1
       20 CALL                             R6 1 1
       21 NOT                              R5 R6
       22 RETURN                           R5 1
       23 LOADB                            R5 0
       24 RETURN                           R5 1
       25 LOADB                            R4 0
       26 RETURN                           R4 1
       27 MOVE                             R1 R3
       28 JUMPBACK                         ; [-27]
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 RETURN                           R2 1
