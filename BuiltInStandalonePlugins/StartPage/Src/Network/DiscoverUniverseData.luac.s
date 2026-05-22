PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Id"]
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+46]
        2 DUPTABLE                         R2 K11 [{"Id", "Name", "Description", "IsArchived", "RootPlaceId", "Audiences", "CreatorType", "CreatorTargetId", "CreatorName", "Created", "Updated"}]
        3 GETTABLEKS                       R3 R1 K12 ["id"]
        5 SETTABLEKS                       R3 R2 K0 ["Id"]
        7 GETTABLEKS                       R3 R1 K13 ["name"]
        9 SETTABLEKS                       R3 R2 K1 ["Name"]
       11 GETTABLEKS                       R3 R1 K14 ["description"]
       13 SETTABLEKS                       R3 R2 K2 ["Description"]
       15 GETTABLEKS                       R3 R1 K15 ["isArchived"]
       17 SETTABLEKS                       R3 R2 K3 ["IsArchived"]
       19 GETTABLEKS                       R3 R1 K16 ["rootPlaceId"]
       21 SETTABLEKS                       R3 R2 K4 ["RootPlaceId"]
       23 GETTABLEKS                       R3 R1 K17 ["audiences"]
       25 SETTABLEKS                       R3 R2 K5 ["Audiences"]
       27 GETTABLEKS                       R3 R1 K18 ["creatorType"]
       29 SETTABLEKS                       R3 R2 K6 ["CreatorType"]
       31 GETTABLEKS                       R3 R1 K19 ["creatorTargetId"]
       33 SETTABLEKS                       R3 R2 K7 ["CreatorTargetId"]
       35 GETTABLEKS                       R3 R1 K20 ["creatorName"]
       37 SETTABLEKS                       R3 R2 K8 ["CreatorName"]
       39 GETTABLEKS                       R3 R1 K21 ["created"]
       41 SETTABLEKS                       R3 R2 K9 ["Created"]
       43 GETTABLEKS                       R3 R1 K22 ["updated"]
       45 SETTABLEKS                       R3 R2 K10 ["Updated"]
       47 RETURN                           R2 1
       48 DUPTABLE                         R2 K25 [{"Id", "Name", "Description", "IsArchived", "RootPlaceId", "PrivacyType", "IsFriendsOnly", "CreatorType", "CreatorTargetId", "CreatorName", "Created", "Updated"}]
       49 GETTABLEKS                       R3 R1 K12 ["id"]
       51 SETTABLEKS                       R3 R2 K0 ["Id"]
       53 GETTABLEKS                       R3 R1 K13 ["name"]
       55 SETTABLEKS                       R3 R2 K1 ["Name"]
       57 GETTABLEKS                       R3 R1 K14 ["description"]
       59 SETTABLEKS                       R3 R2 K2 ["Description"]
       61 GETTABLEKS                       R3 R1 K15 ["isArchived"]
       63 SETTABLEKS                       R3 R2 K3 ["IsArchived"]
       65 GETTABLEKS                       R3 R1 K16 ["rootPlaceId"]
       67 SETTABLEKS                       R3 R2 K4 ["RootPlaceId"]
       69 GETTABLEKS                       R3 R1 K26 ["privacyType"]
       71 SETTABLEKS                       R3 R2 K23 ["PrivacyType"]
       73 GETTABLEKS                       R3 R1 K27 ["isFriendsOnly"]
       75 SETTABLEKS                       R3 R2 K24 ["IsFriendsOnly"]
       77 GETTABLEKS                       R3 R1 K18 ["creatorType"]
       79 SETTABLEKS                       R3 R2 K6 ["CreatorType"]
       81 GETTABLEKS                       R3 R1 K19 ["creatorTargetId"]
       83 SETTABLEKS                       R3 R2 K7 ["CreatorTargetId"]
       85 GETTABLEKS                       R3 R1 K20 ["creatorName"]
       87 SETTABLEKS                       R3 R2 K8 ["CreatorName"]
       89 GETTABLEKS                       R3 R1 K21 ["created"]
       91 SETTABLEKS                       R3 R2 K9 ["Created"]
       93 GETTABLEKS                       R3 R1 K22 ["updated"]
       95 SETTABLEKS                       R3 R2 K10 ["Updated"]
       97 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["data"]
        3 DUPCLOSURE                       R3 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["upsertItems"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

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
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["UNIVERSE_DATA"]
       14 GETTABLEKS                       R4 R4 K5 ["Prefix"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K4 ["UNIVERSE_DATA"]
       19 GETTABLEKS                       R7 R7 K6 ["Url"]
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
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K12 ["validate"]
       51 CALL                             R7 1 -1
       52 NAMECALL                         R5 R5 K13 ["andThen"]
       54 CALL                             R5 -1 1
       55 DUPCLOSURE                       R7 K14 [PROTO_2]
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 NAMECALL                         R5 R5 K13 ["andThen"]
       61 CALL                             R5 2 1
       62 DUPCLOSURE                       R7 K15 [PROTO_3]
       63 NAMECALL                         R5 R5 K16 ["catch"]
       65 CALL                             R5 2 -1
       66 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K10 ["Models"]
       30 GETTABLEKS                       R4 R4 K11 ["ApiArrayResponseUniverseModel"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Network"]
       39 GETTABLEKS                       R5 R5 K13 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K14 ["Util"]
       59 GETTABLEKS                       R7 R7 K17 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R5 K18 ["new"]
       64 DUPTABLE                         R8 K21 [{"isInternal", "loggingLevel"}]
       65 LOADB                            R9 1
       66 SETTABLEKS                       R9 R8 K19 ["isInternal"]
       68 SETTABLEKS                       R1 R8 K20 ["loggingLevel"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R9 R0 K22 ["Packages"]
       75 GETTABLEKS                       R9 R9 K23 ["Dash"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R8 K24 ["collectArray"]
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K12 ["Network"]
       86 GETTABLEKS                       R11 R11 K25 ["GameCache"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K7 ["SharedFlags"]
       95 GETTABLEKS                       R12 R12 K26 ["getFFlagLuaStartPageAudiencesReplacement"]
       97 CALL                             R11 1 1
       98 CALL                             R11 0 1
       99 DUPCLOSURE                       R12 K27 [PROTO_4]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 RETURN                           R12 1
