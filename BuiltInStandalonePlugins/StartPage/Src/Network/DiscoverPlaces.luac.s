PROTO_0:
        0 DUPTABLE                         R2 K6 [{"Name", "Id", "UniverseId", "Description", "Created", "Updated"}]
        1 GETTABLEKS                       R3 R1 K7 ["name"]
        3 SETTABLEKS                       R3 R2 K0 ["Name"]
        5 GETTABLEKS                       R3 R1 K8 ["id"]
        7 SETTABLEKS                       R3 R2 K1 ["Id"]
        9 GETTABLEKS                       R3 R1 K9 ["universeId"]
       11 SETTABLEKS                       R3 R2 K2 ["UniverseId"]
       13 GETTABLEKS                       R3 R1 K10 ["description"]
       15 SETTABLEKS                       R3 R2 K3 ["Description"]
       17 GETUPVAL                         R4 0
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R1 K11 ["created"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K4 ["Created"]
       25 GETUPVAL                         R4 0
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R3 R1 K12 ["updated"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K5 ["Updated"]
       33 RETURN                           R2 1

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
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 2 1
       13 LENGTH                           R3 R2
       14 LOADN                            R4 1
       15 JUMPIFNOTLT                      R4 R3 ; [+11]
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R5 K4 [{"Id", "Children"}]
       19 GETUPVAL                         R6 4
       20 SETTABLEKS                       R6 R5 K2 ["Id"]
       22 SETTABLEKS                       R2 R5 K3 ["Children"]
       24 NAMECALL                         R3 R3 K5 ["upsertItem"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K3 [{[1], ["SortOrder"] = "Asc"}]
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 100
        4 JUMP                             ; [+1]
        5 LOADN                            R2 50
        6 SETTABLEKS                       R2 R1 K0 ["limit"]
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K4 ["new"]
       15 CALL                             R7 0 1
       16 GETTABLEKS                       R8 R7 K5 ["composeUrl"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K6 ["PLACES_SEARCH_URL"]
       21 GETTABLEKS                       R9 R9 K7 ["Prefix"]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K6 ["PLACES_SEARCH_URL"]
       26 GETTABLEKS                       R10 R10 K8 ["Url"]
       28 MOVE                             R11 R6
       29 CALL                             R10 1 1
       30 MOVE                             R11 R1
       31 CALL                             R8 3 1
       32 GETUPVAL                         R9 3
       33 GETUPVAL                         R11 3
       34 MOVE                             R13 R8
       35 NAMECALL                         R11 R11 K9 ["get"]
       37 CALL                             R11 2 -1
       38 NAMECALL                         R9 R9 K10 ["parseJson"]
       40 CALL                             R9 -1 1
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R6
       47 NAMECALL                         R9 R9 K11 ["andThen"]
       49 CALL                             R9 2 1
       50 DUPCLOSURE                       R11 K12 [PROTO_2]
       51 NAMECALL                         R9 R9 K13 ["catch"]
       53 CALL                             R9 2 0
       54 FORGLOOP                         R2 2 ; [-43]
       56 RETURN                           R0 0

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
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPageViewPlacesDialog"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Types"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Models"]
       40 GETTABLEKS                       R5 R5 K12 ["ApiArrayResponsePlaceModel"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["Framework"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Network"]
       56 GETTABLEKS                       R7 R7 K16 ["Urls"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K17 ["Util"]
       65 GETTABLEKS                       R8 R8 K18 ["Services"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R7 R7 K19 ["Networking"]
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K17 ["Util"]
       76 GETTABLEKS                       R9 R9 K20 ["createResponseValidator"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R10 K15 ["Network"]
       85 GETTABLEKS                       R10 R10 K21 ["GameCache"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R5 K22 ["RobloxAPI"]
       90 GETTABLEKS                       R10 R10 K23 ["Url"]
       92 GETTABLEKS                       R11 R7 K24 ["new"]
       94 DUPTABLE                         R12 K28 [{["isInternal"] = True, ["loggingLevel"]}]
       95 SETTABLEKS                       R1 R12 K27 ["loggingLevel"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K13 ["Packages"]
      102 GETTABLEKS                       R13 R13 K29 ["Dash"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R12 K30 ["collectArray"]
      107 MOVE                             R14 R8
      108 GETTABLEKS                       R15 R4 K31 ["validate"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K32 [PROTO_3]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R9
      119 RETURN                           R15 1
