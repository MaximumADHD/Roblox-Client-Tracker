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
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETIMPORT                        R2 K1 [pcall]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["getDisplayNameAsync"]
       10 GETUPVAL                         R4 2
       11 CALL                             R2 2 2
       12 MOVE                             R0 R2
       13 MOVE                             R1 R3
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K3 ["current"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["Type"]
       20 GETTABLE                         R2 R3 R4
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K5 ["Id"]
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K2 ["getDisplayNameAsync"]
       30 GETUPVAL                         R3 2
       31 CALL                             R2 1 1
       32 MOVE                             R1 R2
       33 JUMPIFNOTEQKNIL                  R1 ; [+2]
       35 LOADB                            R0 0 +1
       36 LOADB                            R0 1
       37 JUMPIFNOT                        R0 ; [+7]
       38 JUMPIFNOT                        R1 ; [+6]
       39 GETUPVAL                         R2 4
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          REF R1
       43 CAPTURE                          UPVAL U5
       44 CALL                             R2 1 0
       45 CLOSEUPVALS                      R1
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Type"]
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R3 R0 K1 ["Id"]
        6 GETTABLE                         R1 R2 R3
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+14]
       10 LOADB                            R2 0
       11 JUMPIFNOTEQKNIL                  R1 ; [+16]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K2 ["current"]
       16 GETTABLEKS                       R6 R0 K0 ["Type"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R5 R0 K1 ["Id"]
       21 GETTABLE                         R3 R4 R5
       22 NOT                              R2 R3
       23 JUMP                             ; [+4]
       24 JUMPIFEQKNIL                     R1 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMPIFNOT                        R2 ; [+23]
       29 GETUPVAL                         R3 1
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+10]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K2 ["current"]
       35 GETTABLEKS                       R5 R0 K0 ["Type"]
       37 GETTABLE                         R3 R4 R5
       38 GETTABLEKS                       R4 R0 K1 ["Id"]
       40 LOADB                            R5 1
       41 SETTABLE                         R5 R3 R4
       42 GETIMPORT                        R3 K5 [task.spawn]
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CALL                             R3 1 0
       52 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"GetDisplayName"}]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R3 R2 K0 ["GetDisplayName"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

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
       17 GETTABLEKS                       R3 R4 K7 ["useRef"]
       19 NEWTABLE                         R4 2 0
       21 GETIMPORT                        R5 K4 [Enum.CreatorType.User]
       23 NEWTABLE                         R6 0 0
       25 SETTABLE                         R6 R4 R5
       26 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
       28 NEWTABLE                         R6 0 0
       30 SETTABLE                         R6 R4 R5
       31 CALL                             R3 1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K8 ["useContext"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K9 ["Context"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K10 ["createElement"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R7 R8 K9 ["Context"]
       45 GETTABLEKS                       R6 R7 K11 ["Provider"]
       47 DUPTABLE                         R7 K13 [{"value"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K14 ["useMemo"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R10 0 2
       61 MOVE                             R11 R4
       62 MOVE                             R12 R1
       63 SETLIST                          R10 R11 2 [1]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K12 ["value"]
       68 GETTABLEKS                       R8 R0 K15 ["children"]
       70 CALL                             R5 3 -1
       71 RETURN                           R5 -1

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
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R11 R0 K9 ["Src"]
       41 GETTABLEKS                       R10 R11 K14 ["Flags"]
       43 GETTABLEKS                       R9 R10 K15 ["getFFlagToolboxDedupeCollaboratorFetch"]
       45 CALL                             R8 1 1
       46 DUPCLOSURE                       R9 K16 [PROTO_0]
       47 DUPCLOSURE                       R10 K17 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 DUPTABLE                         R11 K20 [{"GetDisplayName", "GetThumbnail"}]
       51 DUPCLOSURE                       R12 K21 [PROTO_2]
       52 SETTABLEKS                       R12 R11 K18 ["GetDisplayName"]
       54 SETTABLEKS                       R10 R11 K19 ["GetThumbnail"]
       56 DUPTABLE                         R12 K24 [{"Context", "getDisplayNameAsync"}]
       57 GETTABLEKS                       R13 R2 K25 ["createContext"]
       59 MOVE                             R14 R11
       60 CALL                             R13 1 1
       61 SETTABLEKS                       R13 R12 K22 ["Context"]
       63 SETTABLEKS                       R9 R12 K23 ["getDisplayNameAsync"]
       65 DUPCLOSURE                       R13 K26 [PROTO_7]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R13 R12 K27 ["AsyncCache"]
       72 RETURN                           R12 1
