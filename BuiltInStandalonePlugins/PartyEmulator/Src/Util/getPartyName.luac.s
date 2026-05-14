PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 ["Unassigned"]
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["UNASSIGNED_PARTY_ID"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADK                            R1 K0 ["Unassigned"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K4 [string.match]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K5 ["(%d+)$"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+16]
       16 FASTCALL1                        TONUMBER R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K7 [tonumber]
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+10]
       22 LOADN                            R3 0
       23 JUMPIFNOTLT                      R3 R2 ; [+8]
       25 LOADK                            R4 K8 ["Party #%*"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R4 R4 K9 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 RETURN                           R3 1
       32 LOADK                            R2 K10 ["Unknown partyId"]
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
