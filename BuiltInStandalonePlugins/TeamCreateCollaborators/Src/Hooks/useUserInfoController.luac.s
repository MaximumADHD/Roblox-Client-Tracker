PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+5]
        7 JUMPIFNOT                        R3 ; [+4]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R3
       10 CALL                             R4 1 0
       11 RETURN                           R0 0
       12 MOVE                             R4 R1
       13 ORK                              R5 R3 K2 ["GetUserInfosByUserIdsAsync failed"]
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Id"]
        8 FASTCALL1                        TYPE R7 ; [+3]
        9 MOVE                             R9 R7
       10 GETIMPORT                        R8 K2 [type]
       12 CALL                             R8 1 1
       13 JUMPIFNOTEQKS                    R8 K3 ["number"] ; [+13]
       15 DUPTABLE                         R8 K6 [{"username", "displayName"}]
       16 GETTABLEKS                       R10 R6 K8 ["Username"]
       18 ORK                              R9 R10 K7 [""]
       19 SETTABLEKS                       R9 R8 K4 ["username"]
       21 GETTABLEKS                       R10 R6 K9 ["DisplayName"]
       23 ORK                              R9 R10 K7 [""]
       24 SETTABLEKS                       R9 R8 K5 ["displayName"]
       26 SETTABLE                         R8 R1 R7
       27 FORGLOOP                         R2 2 ; [-22]
       29 GETUPVAL                         R2 0
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R3 K2 ["Failed to fetch user info: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["userIds"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+6]
        7 GETUPVAL                         R1 1
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["new"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 1
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U1
       21 NAMECALL                         R1 R1 K3 ["andThen"]
       23 CALL                             R1 2 1
       24 DUPCLOSURE                       R3 K4 [PROTO_3]
       25 NAMECALL                         R1 R1 K5 ["catch"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R2 R1
        7 JUMP                             ; [+6]
        8 GETIMPORT                        R2 K2 [game]
       10 LOADK                            R4 K3 ["UserService"]
       11 NAMECALL                         R2 R2 K4 ["GetService"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["useState"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R7 0 1
       30 GETTABLEKS                       R8 R0 K7 ["userIds"]
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 0
       35 DUPTABLE                         R5 K9 [{"userInfoByUserId"}]
       36 SETTABLEKS                       R3 R5 K8 ["userInfoByUserId"]
       38 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["UserServiceContext"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_5]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
