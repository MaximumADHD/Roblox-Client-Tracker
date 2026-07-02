PROTO_0:
        0 DUPTABLE                         R2 K4 [{"Name", "Id", "UniverseId", "Description"}]
        1 GETTABLEKS                       R3 R1 K5 ["name"]
        3 SETTABLEKS                       R3 R2 K0 ["Name"]
        5 GETTABLEKS                       R3 R1 K6 ["id"]
        7 SETTABLEKS                       R3 R2 K1 ["Id"]
        9 GETTABLEKS                       R3 R1 K7 ["universeId"]
       11 SETTABLEKS                       R3 R2 K2 ["UniverseId"]
       13 GETTABLEKS                       R3 R1 K8 ["description"]
       15 SETTABLEKS                       R3 R2 K3 ["Description"]
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["data"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K0 ["data"]
       10 DUPCLOSURE                       R4 K1 [PROTO_0]
       11 CALL                             R2 2 1
       12 LENGTH                           R3 R2
       13 LOADN                            R4 1
       14 JUMPIFNOTLT                      R4 R3 ; [+11]
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R5 K4 [{"Id", "Children"}]
       18 GETUPVAL                         R6 3
       19 SETTABLEKS                       R6 R5 K2 ["Id"]
       21 SETTABLEKS                       R2 R5 K3 ["Children"]
       23 NAMECALL                         R3 R3 K5 ["upsertItem"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverPlaces experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K4 [{[1] = 50, ["SortOrder"] = "Asc"}]
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K5 ["new"]
        8 CALL                             R7 0 1
        9 GETTABLEKS                       R8 R7 K6 ["composeUrl"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K7 ["PLACES_SEARCH_URL"]
       14 GETTABLEKS                       R9 R9 K8 ["Prefix"]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K7 ["PLACES_SEARCH_URL"]
       19 GETTABLEKS                       R10 R10 K9 ["Url"]
       21 MOVE                             R11 R6
       22 CALL                             R10 1 1
       23 MOVE                             R11 R1
       24 CALL                             R8 3 1
       25 GETUPVAL                         R9 2
       26 GETUPVAL                         R11 2
       27 MOVE                             R13 R8
       28 NAMECALL                         R11 R11 K10 ["get"]
       30 CALL                             R11 2 -1
       31 NAMECALL                         R9 R9 K11 ["parseJson"]
       33 CALL                             R9 -1 1
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R9 R9 K12 ["andThen"]
       41 CALL                             R9 2 1
       42 DUPCLOSURE                       R11 K13 [PROTO_2]
       43 NAMECALL                         R9 R9 K14 ["catch"]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R2 2 ; [-42]
       48 RETURN                           R0 0

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
       30 GETTABLEKS                       R4 R4 K11 ["ApiArrayResponsePlaceModel"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K12 ["Packages"]
       37 GETTABLEKS                       R5 R5 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Network"]
       46 GETTABLEKS                       R6 R6 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Src"]
       53 GETTABLEKS                       R7 R7 K16 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["Services"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R6 R6 K18 ["Networking"]
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K16 ["Util"]
       66 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K6 ["Src"]
       73 GETTABLEKS                       R9 R9 K14 ["Network"]
       75 GETTABLEKS                       R9 R9 K20 ["GameCache"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R4 K21 ["RobloxAPI"]
       80 GETTABLEKS                       R9 R9 K22 ["Url"]
       82 GETTABLEKS                       R10 R6 K23 ["new"]
       84 DUPTABLE                         R11 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       85 SETTABLEKS                       R1 R11 K26 ["loggingLevel"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K12 ["Packages"]
       92 GETTABLEKS                       R12 R12 K28 ["Dash"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R12 R11 K29 ["collectArray"]
       97 MOVE                             R13 R7
       98 GETTABLEKS                       R14 R3 K30 ["validate"]
      100 CALL                             R13 1 1
      101 DUPCLOSURE                       R14 K31 [PROTO_3]
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R8
      108 RETURN                           R14 1
