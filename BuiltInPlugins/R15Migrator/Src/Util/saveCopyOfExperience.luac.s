PROTO_0:
        0 MOVE                             R3 R1
        1 LOADK                            R4 K0 [" HTTP "]
        2 GETTABLEKS                       R5 R0 K1 ["responseCode"]
        4 CONCAT                           R2 R3 R5
        5 GETIMPORT                        R3 K3 [warn]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K5 [pairs]
       11 GETTABLEKS                       R4 R0 K6 ["responseBody"]
       13 GETTABLEKS                       R4 R4 K7 ["errors"]
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETIMPORT                        R8 K3 [warn]
       19 GETTABLEKS                       R9 R7 K8 ["userFacingMessage"]
       21 CALL                             R8 1 0
       22 FORGLOOP                         R3 2 ; [-6]
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 NAMECALL                         R0 R0 K1 ["SetUniverseDisplayName"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K2 ["RefreshDocumentDisplayName"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K3 ["EmitPlacePublishedSignal"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["Error"]
        4 LOADK                            R6 K1 ["SetConfiguration"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["Error"]
        4 LOADK                            R6 K1 ["DeactivatingUniverse"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["GameId"]
        4 GETTABLEKS                       R5 R2 K3 ["teamCreateEnabled"]
        6 JUMPIFNOT                        R5 ; [+2]
        7 LOADB                            R4 1
        8 JUMP                             ; [+1]
        9 LOADB                            R4 0
       10 GETUPVAL                         R5 0
       11 MOVE                             R7 R4
       12 GETTABLEKS                       R8 R2 K4 ["name"]
       14 NAMECALL                         R5 R5 K5 ["SetTeamCreateOnPublishInfo"]
       16 CALL                             R5 3 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R7 R2 K4 ["name"]
       20 GETTABLEKS                       R8 R2 K4 ["name"]
       22 NAMECALL                         R5 R5 K6 ["setUploadNames"]
       24 CALL                             R5 3 0
       25 GETUPVAL                         R5 0
       26 LOADN                            R7 0
       27 LOADN                            R8 0
       28 LOADN                            R9 0
       29 LOADB                            R10 0
       30 LOADNIL                          R11
       31 LOADB                            R12 0
       32 LOADB                            R13 0
       33 NAMECALL                         R5 R5 K7 ["publishAs"]
       35 CALL                             R5 8 0
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K8 ["GamePublishFinished"]
       41 NAMECALL                         R7 R7 K9 ["wait"]
       43 CALL                             R7 1 2
       44 MOVE                             R5 R7
       45 MOVE                             R6 R8
       46 GETIMPORT                        R7 K1 [game]
       48 GETTABLEKS                       R7 R7 K2 ["GameId"]
       50 JUMPIFEQ                         R3 R7 ; [+5]
       52 GETIMPORT                        R7 K10 [wait]
       54 CALL                             R7 0 0
       55 JUMPBACK                         ; [-10]
       56 JUMPIF                           R5 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R7 R1 K11 ["Develop"]
       60 GETTABLEKS                       R7 R7 K12 ["V2"]
       62 GETTABLEKS                       R7 R7 K13 ["Universes"]
       64 GETTABLEKS                       R7 R7 K14 ["configuration"]
       66 MOVE                             R8 R6
       67 MOVE                             R9 R2
       68 CALL                             R7 2 1
       69 NAMECALL                         R7 R7 K15 ["makeRequest"]
       71 CALL                             R7 1 1
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R2
       75 NEWCLOSURE                       R10 P1
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          VAL R0
       78 NAMECALL                         R7 R7 K16 ["andThen"]
       80 CALL                             R7 3 0
       81 GETTABLEKS                       R7 R1 K11 ["Develop"]
       83 GETTABLEKS                       R7 R7 K17 ["V1"]
       85 GETTABLEKS                       R7 R7 K13 ["Universes"]
       87 GETTABLEKS                       R7 R7 K18 ["deactivate"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 1
       91 NAMECALL                         R7 R7 K15 ["makeRequest"]
       93 CALL                             R7 1 1
       94 NEWCLOSURE                       R9 P2
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R7 R7 K19 ["catch"]
       99 CALL                             R7 2 0
      100 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioPublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_4]
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1
