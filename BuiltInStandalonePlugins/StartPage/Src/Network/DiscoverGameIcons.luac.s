PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["targetId"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["imageUrl"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R2 K5 [{"Id", "CDNUrl", "ImageUrl"}]
        8 GETTABLEKS                       R3 R1 K0 ["targetId"]
       10 SETTABLEKS                       R3 R2 K2 ["Id"]
       12 GETTABLEKS                       R3 R1 K1 ["imageUrl"]
       14 SETTABLEKS                       R3 R2 K3 ["CDNUrl"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["tempUrls"]
       19 GETTABLEKS                       R5 R1 K1 ["imageUrl"]
       21 GETTABLE                         R3 R4 R5
       22 SETTABLEKS                       R3 R2 K4 ["ImageUrl"]
       24 RETURN                           R2 1

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
       13 GETUPVAL                         R3 2
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K2 ["upsertItems"]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R1 K0 ["data"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETTABLEKS                       R8 R7 K3 ["imageUrl"]
       25 JUMPIFNOT                        R8 ; [+6]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R10 R7 K3 ["imageUrl"]
       29 NAMECALL                         R8 R8 K4 ["generateTempUrlInContentProvider"]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-10]
       34 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["CDNUrl"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 DUPTABLE                         R1 K3 [{"Id", "NoLoadableImage"}]
        5 GETTABLEKS                       R2 R0 K1 ["Id"]
        7 SETTABLEKS                       R2 R1 K1 ["Id"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["NoLoadableImage"]
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["DiscoverGameIcons batch load failed, loading thumbnails individually"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["universeIds"]
        9 JUMPIFNOT                        R0 ; [+31]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["universeIds"]
       13 LENGTH                           R0 R1
       14 LOADN                            R1 1
       15 JUMPIFNOTLT                      R1 R0 ; [+25]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K3 ["universeIds"]
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 GETIMPORT                        R5 K6 [table.clone]
       25 GETUPVAL                         R6 1
       26 CALL                             R5 1 1
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R4
       30 SETLIST                          R6 R7 1 [1]
       32 SETTABLEKS                       R6 R5 K3 ["universeIds"]
       34 GETUPVAL                         R6 2
       35 MOVE                             R7 R5
       36 GETUPVAL                         R8 3
       37 CALL                             R6 2 0
       38 FORGLOOP                         R0 2 ; [-16]
       40 RETURN                           R0 0
       41 GETUPVAL                         R0 4
       42 GETUPVAL                         R2 3
       43 DUPCLOSURE                       R3 K7 [PROTO_2]
       44 NAMECALL                         R0 R0 K8 ["updateItemsInListByFilter"]
       46 CALL                             R0 3 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverGameIcons experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["composeUrl"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["EXPERIENCES_ICON_URL"]
        9 GETTABLEKS                       R4 R4 K3 ["Prefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["EXPERIENCES_ICON_URL"]
       14 GETTABLEKS                       R5 R5 K4 ["Url"]
       16 CALL                             R5 0 1
       17 MOVE                             R6 R0
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K5 ["get"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 MOVE                             R7 R4
       26 NAMECALL                         R5 R5 K6 ["parseJson"]
       28 CALL                             R5 2 1
       29 DUPCLOSURE                       R7 K7 [PROTO_1]
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R5 R5 K8 ["andThen"]
       36 CALL                             R5 2 1
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U5
       43 NAMECALL                         R5 R5 K9 ["catch"]
       45 CALL                             R5 2 1
       46 DUPCLOSURE                       R7 K10 [PROTO_4]
       47 NAMECALL                         R5 R5 K9 ["catch"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0

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
       17 GETIMPORT                        R2 K10 [game]
       19 LOADK                            R4 K11 ["RemoveWarningForIconFailures"]
       20 LOADB                            R5 0
       21 NAMECALL                         R2 R2 K12 ["DefineFastFlag"]
       23 CALL                             R2 3 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K13 ["Packages"]
       28 GETTABLEKS                       R4 R4 K14 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K13 ["Packages"]
       35 GETTABLEKS                       R5 R5 K15 ["Dash"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K16 ["collectArray"]
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R7 K17 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Src"]
       51 GETTABLEKS                       R8 R8 K18 ["Models"]
       53 GETTABLEKS                       R8 R8 K19 ["ApiArrayResponseThumbnailResponse"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Src"]
       60 GETTABLEKS                       R9 R9 K20 ["Network"]
       62 GETTABLEKS                       R9 R9 K21 ["Urls"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Src"]
       69 GETTABLEKS                       R10 R10 K22 ["Util"]
       71 GETTABLEKS                       R10 R10 K23 ["Services"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R9 R9 K24 ["Networking"]
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Src"]
       80 GETTABLEKS                       R11 R11 K22 ["Util"]
       82 GETTABLEKS                       R11 R11 K25 ["createResponseValidator"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R3 K26 ["RobloxAPI"]
       87 GETTABLEKS                       R11 R11 K27 ["Url"]
       89 GETTABLEKS                       R12 R9 K28 ["new"]
       91 DUPTABLE                         R13 K31 [{"isInternal", "loggingLevel"}]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K29 ["isInternal"]
       95 SETTABLEKS                       R1 R13 K30 ["loggingLevel"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K6 ["Src"]
      102 GETTABLEKS                       R14 R14 K20 ["Network"]
      104 GETTABLEKS                       R14 R14 K32 ["GameCache"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K6 ["Src"]
      111 GETTABLEKS                       R15 R15 K22 ["Util"]
      113 GETTABLEKS                       R15 R15 K23 ["Services"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R14 K33 ["StartPageManager"]
      118 MOVE                             R16 R10
      119 GETTABLEKS                       R17 R7 K34 ["validate"]
      121 CALL                             R16 1 1
      122 DUPCLOSURE                       R17 K35 [PROTO_5]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R17
      132 RETURN                           R17 1
