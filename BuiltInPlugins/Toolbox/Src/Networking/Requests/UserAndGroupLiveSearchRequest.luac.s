PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+71]
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 GETIMPORT                        R8 K4 [string.find]
       10 GETTABLEKS                       R9 R7 K5 ["name"]
       12 NAMECALL                         R9 R9 K6 ["lower"]
       14 CALL                             R9 1 1
       15 NAMECALL                         R10 R0 K6 ["lower"]
       17 CALL                             R10 1 -1
       18 CALL                             R8 -1 1
       19 GETTABLEKS                       R10 R7 K7 ["id"]
       21 FASTCALL1                        TONUMBER R10 ; [+2]
       22 GETIMPORT                        R9 K9 [tonumber]
       24 CALL                             R9 1 1
       25 JUMPIF                           R9 ; [+13]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K10 ["shouldDebugWarnings"]
       29 CALL                             R10 0 1
       30 JUMPIFNOT                        R10 ; [+8]
       31 GETIMPORT                        R10 K12 [warn]
       33 LOADK                            R12 K13 ["Toolbox: Group Id ("]
       34 GETTABLEKS                       R13 R7 K7 ["id"]
       36 LOADK                            R14 K14 [") could not be converted to number. Using 0 instead."]
       37 CONCAT                           R11 R12 R14
       38 CALL                             R10 1 0
       39 JUMPIFNOT                        R8 ; [+32]
       40 DUPTABLE                         R12 K19 [{"Name", "Id", "Thumbnail", "Type"}]
       41 GETTABLEKS                       R13 R7 K5 ["name"]
       43 SETTABLEKS                       R13 R12 K15 ["Name"]
       45 ORK                              R13 R9 K20 [0]
       46 SETTABLEKS                       R13 R12 K16 ["Id"]
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K21 ["constructRBXThumbUrl"]
       51 GETUPVAL                         R14 2
       52 GETTABLEKS                       R14 R14 K22 ["Icon"]
       54 GETTABLEKS                       R14 R14 K23 ["GroupIcon"]
       56 GETTABLEKS                       R15 R7 K7 ["id"]
       58 LOADN                            R16 150
       59 CALL                             R13 3 1
       60 SETTABLEKS                       R13 R12 K17 ["Thumbnail"]
       62 GETIMPORT                        R13 K27 [Enum.CreatorType.Group]
       64 SETTABLEKS                       R13 R12 K18 ["Type"]
       66 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       68 MOVE                             R11 R2
       69 GETIMPORT                        R10 K30 [table.insert]
       71 CALL                             R10 2 0
       72 FORGLOOP                         R3 2 ; [-65]
       74 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K4 [{"Name", "Id", "Thumbnail", "Type"}]
        7 GETTABLEKS                       R10 R6 K0 ["Name"]
        9 SETTABLEKS                       R10 R9 K0 ["Name"]
       11 GETTABLEKS                       R10 R6 K5 ["UserId"]
       13 SETTABLEKS                       R10 R9 K1 ["Id"]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R10 R10 K6 ["constructUserThumbnailUrl"]
       18 GETTABLEKS                       R11 R6 K5 ["UserId"]
       20 CALL                             R10 1 1
       21 SETTABLEKS                       R10 R9 K2 ["Thumbnail"]
       23 GETIMPORT                        R10 K10 [Enum.CreatorType.User]
       25 SETTABLEKS                       R10 R9 K3 ["Type"]
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K13 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-28]
       35 GETUPVAL                         R2 1
       36 GETUPVAL                         R3 2
       37 GETUPVAL                         R4 3
       38 CALL                             R2 2 1
       39 LENGTH                           R3 R2
       40 LOADN                            R4 0
       41 JUMPIFNOTLT                      R4 R3 ; [+11]
       43 GETUPVAL                         R3 4
       44 GETTABLEKS                       R3 R3 K14 ["List"]
       46 GETTABLEKS                       R3 R3 K15 ["join"]
       48 MOVE                             R4 R1
       49 MOVE                             R5 R2
       50 CALL                             R3 2 1
       51 MOVE                             R1 R3
       52 RETURN                           R1 1
       53 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Toolbox: Error in user endpoint"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 NEWTABLE                         R1 0 0
       18 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R1 K0 ["getUsers"]
        3 CALL                             R4 2 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 NEWCLOSURE                       R7 P1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R4 R4 K1 ["andThen"]
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETIMPORT                        R1 K1 [next]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 3
        3 JUMPIFNOTLT                      R1 R2 ; [+10]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 0
        7 NEWTABLE                         R5 0 0
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R0 K0 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 0
       18 GETUPVAL                         R5 4
       19 CALL                             R1 4 1
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 NAMECALL                         R1 R1 K1 ["andThen"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["DebugFlags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Urls"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K12 ["Actions"]
       38 GETTABLEKS                       R6 R6 K13 ["SetLiveSearch"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Actions"]
       47 GETTABLEKS                       R7 R7 K14 ["NetworkError"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R8 K15 ["Types"]
       56 GETTABLEKS                       R8 R8 K16 ["CreatorTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R9 K15 ["Types"]
       65 GETTABLEKS                       R9 R9 K17 ["GroupTypes"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R10 K15 ["Types"]
       74 GETTABLEKS                       R10 R10 K18 ["ThumbnailTypes"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K19 [PROTO_0]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 DUPCLOSURE                       R11 K20 [PROTO_3]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R12 K21 [PROTO_6]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R11
       90 RETURN                           R12 1
