PROTO_0:
        0 DUPTABLE                         R2 K1 [{"__networking"}]
        1 SETTABLEKS                       R0 R2 K0 ["__networking"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+12]
        9 GETTABLEKS                       R3 R1 K4 ["shortUrl"]
       11 FASTCALL1                        TYPE R3 ; [+2]
       12 GETIMPORT                        R2 K2 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+4]
       17 GETTABLEKS                       R2 R1 K4 ["shortUrl"]
       19 RETURN                           R2 1
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["apis"]
        3 LOADK                            R5 K2 ["/sharelinks/v1/get-or-create-link"]
        4 DUPTABLE                         R6 K4 [{"Body"}]
        5 DUPTABLE                         R7 K8 [{["linkType"] = "ExperienceDetails", ["data"]}]
        6 GETUPVAL                         R8 0
        7 DUPTABLE                         R10 K10 [{"universeId"}]
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R12 R1
       10 GETIMPORT                        R11 K12 [tostring]
       12 CALL                             R11 1 1
       13 SETTABLEKS                       R11 R10 K9 ["universeId"]
       15 NAMECALL                         R8 R8 K13 ["JSONEncode"]
       17 CALL                             R8 2 1
       18 SETTABLEKS                       R8 R7 K7 ["data"]
       20 SETTABLEKS                       R7 R6 K3 ["Body"]
       22 NAMECALL                         R2 R2 K14 ["post"]
       24 CALL                             R2 4 1
       25 DUPCLOSURE                       R4 K15 [PROTO_1]
       26 NAMECALL                         R2 R2 K16 ["andThen"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K8 ["createPrivateShareLink"]
       19 RETURN                           R1 1
