PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 GETIMPORT                        R1 K6 [ipairs]
       15 GETIMPORT                        R2 K9 [Enum.CreatorType]
       17 NAMECALL                         R2 R2 K10 ["GetEnumItems"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 3
       21 FORGPREP_INEXT                   R1
       22 GETTABLEKS                       R6 R5 K11 ["Name"]
       24 JUMPIFNOTEQ                      R6 R0 ; [+4]
       26 GETTABLEKS                       R6 R5 K12 ["Value"]
       28 RETURN                           R6 1
       29 FORGLOOP                         R1 2 [inext] ; [-8]
       31 GETIMPORT                        R1 K14 [error]
       33 LOADK                            R2 K15 ["'%s' is not a valid Enum.CreatorType"]
       34 MOVE                             R4 R0
       35 NAMECALL                         R2 R2 K16 ["format"]
       37 CALL                             R2 2 -1
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETIMPORT                        R2 K4 [Enum.CreatorType]
        4 NAMECALL                         R2 R2 K5 ["GetEnumItems"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K6 ["Value"]
       11 JUMPIFNOTEQ                      R6 R0 ; [+3]
       13 LOADB                            R6 1
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 [inext] ; [-7]
       17 LOADB                            R1 0
       18 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+6]
        2 GETIMPORT                        R1 K4 [Enum.CreatorType.User]
        4 GETTABLEKS                       R1 R1 K5 ["Value"]
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKN                    R0 K6 [2] ; [+6]
        9 GETIMPORT                        R1 K8 [Enum.CreatorType.Group]
       11 GETTABLEKS                       R1 R1 K5 ["Value"]
       13 RETURN                           R1 1
       14 GETIMPORT                        R1 K10 [error]
       16 LOADK                            R3 K11 ["Unknown backendCreatorType received "]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K13 [tostring]
       21 CALL                             R4 1 1
       22 CONCAT                           R2 R3 R4
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K3 [Enum.CreatorType.User]
        2 GETTABLEKS                       R1 R1 K4 ["Value"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADN                            R1 1
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K6 [Enum.CreatorType.Group]
       10 GETTABLEKS                       R1 R1 K4 ["Value"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+3]
       14 LOADN                            R1 2
       15 RETURN                           R1 1
       16 GETIMPORT                        R1 K8 [error]
       18 LOADK                            R3 K9 ["Unknown creatorType received "]
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K11 [tostring]
       23 CALL                             R4 1 1
       24 CONCAT                           R2 R3 R4
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isValidCreatorType"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 GETTABLEKS                       R2 R0 K3 ["responseBody"]
       11 GETIMPORT                        R3 K7 [Enum.CreatorType.Group]
       13 GETTABLEKS                       R3 R3 K8 ["Value"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+4]
       17 GETTABLEKS                       R3 R2 K9 ["Name"]
       19 RETURN                           R3 1
       20 GETIMPORT                        R3 K11 [Enum.CreatorType.User]
       22 GETTABLEKS                       R3 R3 K8 ["Value"]
       24 JUMPIFNOTEQ                      R1 R3 ; [+4]
       26 GETTABLEKS                       R3 R2 K12 ["name"]
       28 RETURN                           R3 1
       29 GETIMPORT                        R3 K14 [error]
       31 LOADK                            R4 K15 ["Unknown creatorType: '%s'"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R4 R4 K16 ["format"]
       35 CALL                             R4 2 -1
       36 CALL                             R3 -1 0
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isValidCreatorType"]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 -1 0
        9 NAMECALL                         R3 R0 K3 ["getState"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R3 R3 K4 ["assets"]
       14 GETTABLEKS                       R3 R3 K5 ["cachedCreatorInfo"]
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 GETTABLEKS                       R4 R3 K6 ["Id"]
       21 JUMPIF                           R4 ; [+2]
       22 LOADB                            R4 0
       23 RETURN                           R4 1
       24 LOADB                            R4 0
       25 GETTABLEKS                       R5 R3 K6 ["Id"]
       27 JUMPIFNOTEQ                      R5 R1 ; [+7]
       29 GETTABLEKS                       R5 R3 K7 ["Type"]
       31 JUMPIFEQ                         R5 R2 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 NEWTABLE                         R1 8 0
       11 DUPCLOSURE                       R2 K3 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K4 ["getCreatorTypeValueFromName"]
       14 DUPCLOSURE                       R2 K5 [PROTO_1]
       15 SETTABLEKS                       R2 R1 K6 ["isValidCreatorType"]
       17 DUPCLOSURE                       R2 K7 [PROTO_2]
       18 SETTABLEKS                       R2 R1 K8 ["backendToClient"]
       20 DUPCLOSURE                       R2 K9 [PROTO_3]
       21 SETTABLEKS                       R2 R1 K10 ["clientToBackend"]
       23 DUPCLOSURE                       R2 K11 [PROTO_4]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R1 K12 ["getNameFromResult"]
       27 DUPCLOSURE                       R2 K13 [PROTO_5]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R2 R1 K14 ["isCached"]
       31 RETURN                           R1 1
