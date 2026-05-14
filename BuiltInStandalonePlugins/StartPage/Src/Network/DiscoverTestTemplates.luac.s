PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Name", "Description", "RootPlaceId"}]
        1 GETTABLEKS                       R3 R1 K4 ["name"]
        3 SETTABLEKS                       R3 R2 K0 ["Name"]
        5 GETTABLEKS                       R3 R1 K5 ["description"]
        7 SETTABLEKS                       R3 R2 K1 ["Description"]
        9 GETTABLEKS                       R4 R1 K6 ["url"]
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K8 [tonumber]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["RootPlaceId"]
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 DUPCLOSURE                       R4 K0 [PROTO_0]
        6 CALL                             R2 2 1
        7 DUPTABLE                         R3 K3 [{"templates", "targetResults"}]
        8 SETTABLEKS                       R2 R3 K1 ["templates"]
       10 LENGTH                           R4 R2
       11 SETTABLEKS                       R4 R3 K2 ["targetResults"]
       13 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["placeId"]
        2 GETTABLEKS                       R3 R1 K1 ["universeId"]
        4 RETURN                           R2 2

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["universeId"]
        2 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["RootPlaceId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 DUPTABLE                         R3 K4 [{"Id", "Name", "RootPlaceId", "Description"}]
        7 SETTABLEKS                       R2 R3 K1 ["Id"]
        9 GETTABLEKS                       R4 R1 K2 ["Name"]
       11 SETTABLEKS                       R4 R3 K2 ["Name"]
       13 GETTABLEKS                       R4 R1 K0 ["RootPlaceId"]
       15 SETTABLEKS                       R4 R3 K0 ["RootPlaceId"]
       17 GETTABLEKS                       R4 R1 K3 ["Description"]
       19 SETTABLEKS                       R4 R3 K3 ["Description"]
       21 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 DUPCLOSURE                       R4 K0 [PROTO_3]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 DUPCLOSURE                       R5 K1 [PROTO_4]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 NEWCLOSURE                       R6 P2
       14 CAPTURE                          VAL R2
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R7 5
       18 GETUPVAL                         R8 6
       19 MOVE                             R9 R4
       20 NAMECALL                         R5 R5 K2 ["setItemsForPage"]
       22 CALL                             R5 4 0
       23 GETUPVAL                         R5 4
       24 GETUPVAL                         R7 5
       25 GETUPVAL                         R8 7
       26 NAMECALL                         R5 R5 K3 ["setTargetCount"]
       28 CALL                             R5 3 0
       29 GETUPVAL                         R5 8
       30 MOVE                             R6 R3
       31 GETUPVAL                         R7 5
       32 CALL                             R5 2 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverTestTemplates failed: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["templates"]
        2 GETTABLEKS                       R2 R0 K1 ["targetResults"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 DUPCLOSURE                       R5 K2 [PROTO_2]
        7 CALL                             R3 2 1
        8 LOADK                            R4 K3 ["?"]
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 MOVE                             R10 R4
       14 GETIMPORT                        R11 K6 [string.format]
       16 LOADK                            R12 K7 ["placeIds=%s"]
       17 MOVE                             R13 R9
       18 CALL                             R11 2 1
       19 CONCAT                           R4 R10 R11
       20 LENGTH                           R10 R3
       21 JUMPIFEQ                         R8 R10 ; [+4]
       23 MOVE                             R10 R4
       24 LOADK                            R11 K8 ["&"]
       25 CONCAT                           R4 R10 R11
       26 FORGLOOP                         R5 2 ; [-14]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K9 ["composeUrl"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K10 ["MULTIGET_PLACES"]
       34 GETTABLEKS                       R9 R9 K11 ["Prefix"]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K10 ["MULTIGET_PLACES"]
       39 GETTABLEKS                       R10 R10 K12 ["Url"]
       41 CALL                             R10 0 -1
       42 CALL                             R8 -1 1
       43 MOVE                             R6 R8
       44 MOVE                             R7 R4
       45 CONCAT                           R5 R6 R7
       46 GETUPVAL                         R6 3
       47 GETUPVAL                         R8 3
       48 MOVE                             R10 R5
       49 GETUPVAL                         R11 4
       50 NAMECALL                         R8 R8 K13 ["get"]
       52 CALL                             R8 3 -1
       53 NAMECALL                         R6 R6 K14 ["parseJson"]
       55 CALL                             R6 -1 1
       56 NEWCLOSURE                       R8 P1
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U11
       66 NAMECALL                         R6 R6 K15 ["andThen"]
       68 CALL                             R6 2 1
       69 DUPCLOSURE                       R8 K16 [PROTO_7]
       70 NAMECALL                         R6 R6 K17 ["catch"]
       72 CALL                             R6 2 0
       73 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+4]
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["HasInternalPermission"]
        5 CALL                             R4 1 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["Must enabled FFlagLuaStartPageStudioTestTemplates and have internal permission to use DiscoverTestTemplates"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["new"]
       15 CALL                             R3 0 1
       16 GETTABLEKS                       R4 R3 K5 ["composeUrl"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K6 ["TEST_TEMPLATES"]
       21 GETTABLEKS                       R5 R5 K7 ["Prefix"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K6 ["TEST_TEMPLATES"]
       26 GETTABLEKS                       R6 R6 K8 ["Url"]
       28 CALL                             R6 0 -1
       29 CALL                             R4 -1 1
       30 GETUPVAL                         R5 4
       31 GETUPVAL                         R7 4
       32 MOVE                             R9 R4
       33 GETUPVAL                         R10 5
       34 NAMECALL                         R7 R7 K9 ["get"]
       36 CALL                             R7 3 -1
       37 NAMECALL                         R5 R5 K10 ["parseJson"]
       39 CALL                             R5 -1 1
       40 DUPCLOSURE                       R7 K11 [PROTO_1]
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 NAMECALL                         R5 R5 K12 ["andThen"]
       45 CALL                             R5 2 1
       46 NEWCLOSURE                       R8 P1
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U12
       59 NAMECALL                         R6 R5 K12 ["andThen"]
       61 CALL                             R6 2 0
       62 RETURN                           R0 0

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
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["collect"]
       33 GETTABLEKS                       R5 R3 K13 ["collectArray"]
       35 GETTABLEKS                       R6 R3 K14 ["map"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R8 R8 K15 ["Types"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R9 R9 K16 ["Network"]
       50 GETTABLEKS                       R9 R9 K17 ["Urls"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R10 R10 K18 ["Util"]
       59 GETTABLEKS                       R10 R10 K19 ["Services"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K20 ["Networking"]
       64 GETTABLEKS                       R11 R9 K21 ["StudioService"]
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K6 ["Src"]
       70 GETTABLEKS                       R13 R13 K18 ["Util"]
       72 GETTABLEKS                       R13 R13 K22 ["createResponseValidator"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R0 K6 ["Src"]
       79 GETTABLEKS                       R14 R14 K23 ["Models"]
       81 GETTABLEKS                       R14 R14 K24 ["TestTemplateResponse"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R15 R0 K6 ["Src"]
       88 GETTABLEKS                       R15 R15 K23 ["Models"]
       90 GETTABLEKS                       R15 R15 K25 ["MultiGetPlaceDetailsResponse"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K6 ["Src"]
       97 GETTABLEKS                       R16 R16 K7 ["SharedFlags"]
       99 GETTABLEKS                       R16 R16 K26 ["getFFlagLuaStartPageStudioTestTemplates"]
      101 CALL                             R15 1 1
      102 CALL                             R15 0 1
      103 GETTABLEKS                       R16 R2 K27 ["RobloxAPI"]
      105 GETTABLEKS                       R16 R16 K28 ["Url"]
      107 GETTABLEKS                       R17 R10 K29 ["new"]
      109 DUPTABLE                         R18 K32 [{"isInternal", "loggingLevel"}]
      110 LOADB                            R19 1
      111 SETTABLEKS                       R19 R18 K30 ["isInternal"]
      113 SETTABLEKS                       R1 R18 K31 ["loggingLevel"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K6 ["Src"]
      120 GETTABLEKS                       R19 R19 K16 ["Network"]
      122 GETTABLEKS                       R19 R19 K33 ["GameCache"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K5 [require]
      127 GETTABLEKS                       R20 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R20 K16 ["Network"]
      131 GETTABLEKS                       R20 R20 K34 ["DiscoverPlaceholderIcons"]
      133 CALL                             R19 1 1
      134 MOVE                             R20 R12
      135 GETTABLEKS                       R21 R13 K35 ["validate"]
      137 CALL                             R20 1 1
      138 MOVE                             R21 R12
      139 GETTABLEKS                       R22 R14 K35 ["validate"]
      141 CALL                             R21 1 1
      142 NEWTABLE                         R22 1 0
      144 LOADK                            R23 K36 ["application/json"]
      145 SETTABLEKS                       R23 R22 K37 ["Content-Type"]
      147 DUPCLOSURE                       R23 K38 [PROTO_9]
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R19
      161 RETURN                           R23 1
