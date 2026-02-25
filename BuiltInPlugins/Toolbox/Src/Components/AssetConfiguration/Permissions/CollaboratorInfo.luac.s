PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETIMPORT                        R2 K4 [Enum.CreatorType.User]
        4 JUMPIFNOTEQ                      R1 R2 ; [+13]
        6 GETIMPORT                        R1 K6 [game]
        8 LOADK                            R3 K7 ["Players"]
        9 NAMECALL                         R1 R1 K8 ["GetService"]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R3 R0 K9 ["Id"]
       14 NAMECALL                         R1 R1 K10 ["GetNameFromUserIdAsync"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 GETTABLEKS                       R3 R0 K0 ["Type"]
       20 GETIMPORT                        R4 K12 [Enum.CreatorType.Group]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 LOADK                            R4 K13 ["Unrecognized subject type: "]
       27 GETTABLEKS                       R6 R0 K0 ["Type"]
       29 FASTCALL1                        TOSTRING R6 ; [+2]
       30 GETIMPORT                        R5 K15 [tostring]
       32 CALL                             R5 1 1
       33 CONCAT                           R3 R4 R5
       34 FASTCALL2                        ASSERT R2 R3 ; [+3]
       36 GETIMPORT                        R1 K17 [assert]
       38 CALL                             R1 2 0
       39 GETIMPORT                        R2 K6 [game]
       41 LOADK                            R4 K18 ["GroupService"]
       42 NAMECALL                         R2 R2 K8 ["GetService"]
       44 CALL                             R2 2 1
       45 GETTABLEKS                       R4 R0 K9 ["Id"]
       47 NAMECALL                         R2 R2 K19 ["GetGroupInfoAsync"]
       49 CALL                             R2 2 1
       50 GETTABLEKS                       R1 R2 K20 ["Name"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETIMPORT                        R2 K4 [Enum.CreatorType.User]
        4 JUMPIFNOTEQ                      R1 R2 ; [+18]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K5 ["constructRBXThumbUrl"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K6 ["rbxThumbTypes"]
       12 GETTABLEKS                       R2 R3 K7 ["AvatarHeadShot"]
       14 GETTABLEKS                       R3 R0 K8 ["Id"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K9 ["rbxThumbSizes"]
       19 GETTABLEKS                       R4 R5 K10 ["AvatarHeadshotImageSize"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1
       23 GETTABLEKS                       R3 R0 K0 ["Type"]
       25 GETIMPORT                        R4 K12 [Enum.CreatorType.Group]
       27 JUMPIFEQ                         R3 R4 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 LOADK                            R4 K13 ["Unrecognized creator type for thumbnail url: "]
       32 GETTABLEKS                       R6 R0 K0 ["Type"]
       34 FASTCALL1                        TOSTRING R6 ; [+2]
       35 GETIMPORT                        R5 K15 [tostring]
       37 CALL                             R5 1 1
       38 CONCAT                           R3 R4 R5
       39 FASTCALL2                        ASSERT R2 R3 ; [+3]
       41 GETIMPORT                        R1 K17 [assert]
       43 CALL                             R1 2 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K5 ["constructRBXThumbUrl"]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R3 R4 K6 ["rbxThumbTypes"]
       50 GETTABLEKS                       R2 R3 K18 ["GroupIcon"]
       52 GETTABLEKS                       R3 R0 K8 ["Id"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K9 ["rbxThumbSizes"]
       57 GETTABLEKS                       R4 R5 K19 ["GroupIconImageSize"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Type"]
        3 GETTABLE                         R1 R0 R2
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["Id"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 NEWTABLE                         R3 1 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["Type"]
       16 NEWTABLE                         R5 1 0
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K1 ["Id"]
       21 GETUPVAL                         R7 1
       22 SETTABLE                         R7 R5 R6
       23 SETTABLE                         R5 R3 R4
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 2
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Type"]
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R3 R0 K1 ["Id"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+9]
        9 GETIMPORT                        R2 K4 [task.spawn]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R2 1 0
       17 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"GetDisplayName"}]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R3 R2 K0 ["GetDisplayName"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 2 0
        5 GETIMPORT                        R3 K4 [Enum.CreatorType.User]
        7 NEWTABLE                         R4 0 0
        9 SETTABLE                         R4 R2 R3
       10 GETIMPORT                        R3 K6 [Enum.CreatorType.Group]
       12 NEWTABLE                         R4 0 0
       14 SETTABLE                         R4 R2 R3
       15 CALL                             R1 1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K7 ["useContext"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K8 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K9 ["createElement"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K8 ["Context"]
       29 GETTABLEKS                       R5 R6 K10 ["Provider"]
       31 DUPTABLE                         R6 K12 [{"value"}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K13 ["useMemo"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R3
       44 MOVE                             R11 R1
       45 SETLIST                          R9 R10 2 [1]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K11 ["value"]
       50 GETTABLEKS                       R7 R0 K14 ["children"]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["AssetConfigConstants"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["Urls"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R8 R3 K10 ["Util"]
       35 GETTABLEKS                       R7 R8 K13 ["deepJoin"]
       37 DUPCLOSURE                       R8 K14 [PROTO_0]
       38 DUPCLOSURE                       R9 K15 [PROTO_1]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 DUPTABLE                         R10 K18 [{"GetDisplayName", "GetThumbnail"}]
       42 DUPCLOSURE                       R11 K19 [PROTO_2]
       43 SETTABLEKS                       R11 R10 K16 ["GetDisplayName"]
       45 SETTABLEKS                       R9 R10 K17 ["GetThumbnail"]
       47 DUPTABLE                         R11 K22 [{"Context", "getDisplayNameAsync"}]
       48 GETTABLEKS                       R12 R2 K23 ["createContext"]
       50 MOVE                             R13 R10
       51 CALL                             R12 1 1
       52 SETTABLEKS                       R12 R11 K20 ["Context"]
       54 SETTABLEKS                       R8 R11 K21 ["getDisplayNameAsync"]
       56 DUPCLOSURE                       R12 K24 [PROTO_7]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R12 R11 K25 ["AsyncCache"]
       63 RETURN                           R11 1
