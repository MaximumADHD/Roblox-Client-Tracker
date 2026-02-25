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
        0 DUPTABLE                         R1 K2 [{"limit", "SortOrder"}]
        1 LOADN                            R2 50
        2 SETTABLEKS                       R2 R1 K0 ["limit"]
        4 LOADK                            R2 K3 ["Asc"]
        5 SETTABLEKS                       R2 R1 K1 ["SortOrder"]
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K4 ["new"]
       14 CALL                             R7 0 1
       15 GETTABLEKS                       R8 R7 K5 ["composeUrl"]
       17 GETUPVAL                         R11 1
       18 GETTABLEKS                       R10 R11 K6 ["PLACES_SEARCH_URL"]
       20 GETTABLEKS                       R9 R10 K7 ["Prefix"]
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R11 R12 K6 ["PLACES_SEARCH_URL"]
       25 GETTABLEKS                       R10 R11 K8 ["Url"]
       27 MOVE                             R11 R6
       28 CALL                             R10 1 1
       29 MOVE                             R11 R1
       30 CALL                             R8 3 1
       31 GETUPVAL                         R9 2
       32 GETUPVAL                         R11 2
       33 MOVE                             R13 R8
       34 NAMECALL                         R11 R11 K9 ["get"]
       36 CALL                             R11 2 -1
       37 NAMECALL                         R9 R9 K10 ["parseJson"]
       39 CALL                             R9 -1 1
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R6
       45 NAMECALL                         R9 R9 K11 ["andThen"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R11 K12 [PROTO_2]
       49 NAMECALL                         R9 R9 K13 ["catch"]
       51 CALL                             R9 2 0
       52 FORGLOOP                         R2 2 ; [-42]
       54 RETURN                           R0 0

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
       30 GETTABLEKS                       R4 R5 K11 ["ApiArrayResponsePlaceModel"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Packages"]
       37 GETTABLEKS                       R5 R6 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R8 K14 ["Network"]
       46 GETTABLEKS                       R6 R7 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Src"]
       53 GETTABLEKS                       R9 R10 K16 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["Services"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R6 R7 K18 ["Networking"]
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R10 K16 ["Util"]
       66 GETTABLEKS                       R8 R9 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R11 K14 ["Network"]
       75 GETTABLEKS                       R9 R10 K20 ["GameCache"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R10 R4 K21 ["RobloxAPI"]
       80 GETTABLEKS                       R9 R10 K22 ["Url"]
       82 GETTABLEKS                       R10 R6 K23 ["new"]
       84 DUPTABLE                         R11 K26 [{"isInternal", "loggingLevel"}]
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K24 ["isInternal"]
       88 SETTABLEKS                       R1 R11 K25 ["loggingLevel"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K12 ["Packages"]
       95 GETTABLEKS                       R12 R13 K27 ["Dash"]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R12 R11 K28 ["collectArray"]
      100 MOVE                             R13 R7
      101 GETTABLEKS                       R14 R3 K29 ["validate"]
      103 CALL                             R13 1 1
      104 DUPCLOSURE                       R14 K30 [PROTO_3]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R8
      111 RETURN                           R14 1
