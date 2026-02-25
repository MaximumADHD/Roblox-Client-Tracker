PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETTABLEKS                       R3 R1 K3 ["roles"]
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETUPVAL                         R8 1
       12 NEWTABLE                         R9 4 0
       14 GETUPVAL                         R11 2
       15 GETTABLEKS                       R10 R11 K4 ["RoleName"]
       17 GETTABLEKS                       R11 R6 K5 ["name"]
       19 SETTABLE                         R11 R9 R10
       20 GETUPVAL                         R11 2
       21 GETTABLEKS                       R10 R11 K6 ["RoleId"]
       23 GETTABLEKS                       R11 R6 K7 ["id"]
       25 SETTABLE                         R11 R9 R10
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R10 R11 K8 ["RoleRank"]
       29 GETTABLEKS                       R11 R6 K9 ["rank"]
       31 SETTABLE                         R11 R9 R10
       32 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       34 GETIMPORT                        R7 K12 [table.insert]
       36 CALL                             R7 2 0
       37 FORGLOOP                         R2 2 ; [-27]
       39 GETUPVAL                         R2 1
       40 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K2 [{"Url", "Method"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["BuildRobloxUrl"]
        6 LOADK                            R4 K4 ["groups"]
        7 LOADK                            R5 K5 ["v1/groups/%d/roles"]
        8 MOVE                             R6 R0
        9 CALL                             R3 3 1
       10 SETTABLEKS                       R3 R2 K0 ["Url"]
       12 LOADK                            R3 K6 ["GET"]
       13 SETTABLEKS                       R3 R2 K1 ["Method"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K7 ["Request"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R3 R3 K8 ["andThen"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Networking"]
       23 GETTABLEKS                       R3 R4 K11 ["Http"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETIMPORT                        R6 K5 [script]
       30 GETTABLEKS                       R5 R6 K6 ["Parent"]
       32 GETTABLEKS                       R4 R5 K12 ["Constants"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K13 ["webKeys"]
       37 NEWTABLE                         R5 1 0
       39 DUPCLOSURE                       R6 K14 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R6 R5 K15 ["Get"]
       45 RETURN                           R5 1
