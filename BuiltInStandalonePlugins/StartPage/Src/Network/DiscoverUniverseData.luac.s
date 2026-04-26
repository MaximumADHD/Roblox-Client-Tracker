PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Id"]
        2 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K12 [{"Id", "Name", "Description", "IsArchived", "RootPlaceId", "PrivacyType", "IsFriendsOnly", "CreatorType", "CreatorTargetId", "CreatorName", "Created", "Updated"}]
        1 GETTABLEKS                       R3 R1 K13 ["id"]
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETTABLEKS                       R3 R1 K14 ["name"]
        7 SETTABLEKS                       R3 R2 K1 ["Name"]
        9 GETTABLEKS                       R3 R1 K15 ["description"]
       11 SETTABLEKS                       R3 R2 K2 ["Description"]
       13 GETTABLEKS                       R3 R1 K16 ["isArchived"]
       15 SETTABLEKS                       R3 R2 K3 ["IsArchived"]
       17 GETTABLEKS                       R3 R1 K17 ["rootPlaceId"]
       19 SETTABLEKS                       R3 R2 K4 ["RootPlaceId"]
       21 GETTABLEKS                       R3 R1 K18 ["privacyType"]
       23 SETTABLEKS                       R3 R2 K5 ["PrivacyType"]
       25 GETTABLEKS                       R3 R1 K19 ["isFriendsOnly"]
       27 SETTABLEKS                       R3 R2 K6 ["IsFriendsOnly"]
       29 GETTABLEKS                       R3 R1 K20 ["creatorType"]
       31 SETTABLEKS                       R3 R2 K7 ["CreatorType"]
       33 GETTABLEKS                       R3 R1 K21 ["creatorTargetId"]
       35 SETTABLEKS                       R3 R2 K8 ["CreatorTargetId"]
       37 GETTABLEKS                       R3 R1 K22 ["creatorName"]
       39 SETTABLEKS                       R3 R2 K9 ["CreatorName"]
       41 GETTABLEKS                       R3 R1 K23 ["created"]
       43 SETTABLEKS                       R3 R2 K10 ["Created"]
       45 GETTABLEKS                       R3 R1 K24 ["updated"]
       47 SETTABLEKS                       R3 R2 K11 ["Updated"]
       49 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["data"]
        3 DUPCLOSURE                       R3 K1 [PROTO_1]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["upsertItems"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverTeamCreateStatus experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 DUPCLOSURE                       R3 K1 [PROTO_0]
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K3 [{"ids"}]
        9 SETTABLEKS                       R1 R2 K2 ["ids"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K4 ["UNIVERSE_DATA"]
       14 GETTABLEKS                       R4 R7 K5 ["Prefix"]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K4 ["UNIVERSE_DATA"]
       19 GETTABLEKS                       R7 R8 K6 ["Url"]
       21 CALL                             R7 0 1
       22 MOVE                             R5 R7
       23 LOADK                            R6 K7 ["?"]
       24 CONCAT                           R3 R4 R6
       25 GETTABLEKS                       R4 R2 K2 ["ids"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 MOVE                             R9 R3
       31 LOADK                            R10 K8 ["ids="]
       32 MOVE                             R11 R8
       33 LOADK                            R12 K9 ["&"]
       34 CONCAT                           R3 R9 R12
       35 FORGLOOP                         R4 2 ; [-6]
       37 GETUPVAL                         R4 2
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K10 ["get"]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 2
       43 MOVE                             R7 R4
       44 NAMECALL                         R5 R5 K11 ["parseJson"]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R7 3
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R8 R9 K12 ["validate"]
       51 CALL                             R7 1 -1
       52 NAMECALL                         R5 R5 K13 ["andThen"]
       54 CALL                             R5 -1 1
       55 DUPCLOSURE                       R7 K14 [PROTO_2]
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R5 R5 K13 ["andThen"]
       60 CALL                             R5 2 1
       61 DUPCLOSURE                       R7 K15 [PROTO_3]
       62 NAMECALL                         R5 R5 K16 ["catch"]
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R4 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R6 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R6 K10 ["Models"]
       30 GETTABLEKS                       R4 R5 K11 ["ApiArrayResponseUniverseModel"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R7 K12 ["Network"]
       39 GETTABLEKS                       R5 R6 K13 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K6 ["Src"]
       46 GETTABLEKS                       R8 R9 K14 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["Services"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R5 R6 K16 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R9 K14 ["Util"]
       59 GETTABLEKS                       R7 R8 K17 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R5 K18 ["new"]
       64 DUPTABLE                         R8 K21 [{"isInternal", "loggingLevel"}]
       65 LOADB                            R9 1
       66 SETTABLEKS                       R9 R8 K19 ["isInternal"]
       68 SETTABLEKS                       R1 R8 K20 ["loggingLevel"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R10 R0 K22 ["Packages"]
       75 GETTABLEKS                       R9 R10 K23 ["Dash"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R8 K24 ["collectArray"]
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K6 ["Src"]
       84 GETTABLEKS                       R12 R13 K12 ["Network"]
       86 GETTABLEKS                       R11 R12 K25 ["GameCache"]
       88 CALL                             R10 1 1
       89 DUPCLOSURE                       R11 K26 [PROTO_4]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R10
       96 RETURN                           R11 1
