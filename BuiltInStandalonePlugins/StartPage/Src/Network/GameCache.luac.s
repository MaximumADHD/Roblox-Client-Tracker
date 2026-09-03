PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIF                           R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K1 ["FilePath"]
        5 JUMPIF                           R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K2 ["ContentId"]
        8 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K3 ["Item has no Id or FilePath or ContentId"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [tostring]
       19 CALL                             R2 1 1
       20 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["LastViewed"]
        2 JUMPIF                           R2 ; [+6]
        3 GETIMPORT                        R2 K2 [warn]
        5 LOADK                            R3 K3 ["Game must have an updated date value"]
        6 CALL                             R2 1 0
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K0 ["LastViewed"]
       11 JUMPIF                           R2 ; [+6]
       12 GETIMPORT                        R2 K2 [warn]
       14 LOADK                            R3 K3 ["Game must have an updated date value"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETIMPORT                        R2 K6 [DateTime.fromIsoDate]
       20 GETTABLEKS                       R3 R0 K0 ["LastViewed"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [DateTime.fromIsoDate]
       25 GETTABLEKS                       R4 R1 K0 ["LastViewed"]
       27 CALL                             R3 1 1
       28 JUMPIF                           R2 ; [+11]
       29 GETIMPORT                        R4 K2 [warn]
       31 LOADK                            R6 K7 ["LastViewed of game must be converted to DateTime: %*"]
       32 MOVE                             R8 R2
       33 NAMECALL                         R6 R6 K8 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 CALL                             R4 1 0
       38 LOADB                            R4 0
       39 RETURN                           R4 1
       40 JUMPIF                           R3 ; [+11]
       41 GETIMPORT                        R4 K2 [warn]
       43 LOADK                            R6 K7 ["LastViewed of game must be converted to DateTime: %*"]
       44 MOVE                             R8 R3
       45 NAMECALL                         R6 R6 K8 ["format"]
       47 CALL                             R6 2 1
       48 MOVE                             R5 R6
       49 CALL                             R4 1 0
       50 LOADB                            R4 0
       51 RETURN                           R4 1
       52 GETTABLEKS                       R5 R2 K9 ["UnixTimestampMillis"]
       54 GETTABLEKS                       R6 R3 K9 ["UnixTimestampMillis"]
       56 JUMPIFLT                         R6 R5 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["recencySortFn"]
        5 JUMP                             ; [+1]
        6 GETUPVAL                         R1 2
        7 DUPTABLE                         R2 K4 [{"pageSize", "alwaysRefetch", "sortFn"}]
        8 GETTABLEKS                       R4 R0 K1 ["pageSize"]
       10 ORK                              R3 R4 K5 [10]
       11 SETTABLEKS                       R3 R2 K1 ["pageSize"]
       13 GETTABLEKS                       R4 R0 K6 ["isTemplates"]
       15 NOT                              R3 R4
       16 SETTABLEKS                       R3 R2 K2 ["alwaysRefetch"]
       18 GETTABLEKS                       R4 R0 K7 ["searchKey"]
       20 JUMPIFNOTEQKS                    R4 K8 ["Recents"] ; [+3]
       22 MOVE                             R3 R1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K3 ["sortFn"]
       27 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["CDNUrl"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K0 ["CDNUrl"]
        6 GETTABLE                         R1 R2 R3
        7 GETTABLEKS                       R2 R0 K1 ["ImageUrl"]
        9 JUMPIFEQ                         R2 R1 ; [+9]
       11 DUPTABLE                         R2 K3 [{"Id", "ImageUrl"}]
       12 GETTABLEKS                       R3 R0 K2 ["Id"]
       14 SETTABLEKS                       R3 R2 K2 ["Id"]
       16 SETTABLEKS                       R1 R2 K1 ["ImageUrl"]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R1 R0 K4 ["TeamCreateCDNUrls"]
       21 JUMPIFNOT                        R1 ; [+6]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R2 R0 K4 ["TeamCreateCDNUrls"]
       25 GETUPVAL                         R3 2
       26 CALL                             R1 2 1
       27 JUMPIF                           R1 ; [+2]
       28 LOADNIL                          R1
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R2 R0 K4 ["TeamCreateCDNUrls"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U0
       35 CALL                             R1 2 1
       36 DUPTABLE                         R2 K6 [{"Id", "TeamCreatePresence"}]
       37 GETTABLEKS                       R3 R0 K2 ["Id"]
       39 SETTABLEKS                       R3 R2 K2 ["Id"]
       41 SETTABLEKS                       R1 R2 K5 ["TeamCreatePresence"]
       43 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 SETTABLE                         R1 R2 R0
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R2 R2 K0 ["updateItemsByFilter"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["focusChangedSignal"]
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K1 ["ImageImportedSignal"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 NAMECALL                         R1 R1 K2 ["Connect"]
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 2
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["reset"]
        3 CALL                             R0 1 0
        4 NEWTABLE                         R0 0 0
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K1 ["tempUrls"]
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K2 ["Disconnect"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagLuaStartPageRefreshRecentsOnRegistryUpdate is not enabled"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["lists"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETIMPORT                        R6 K6 [string.find]
       14 MOVE                             R7 R4
       15 LOADK                            R8 K7 ["^Recents"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+4]
       18 MOVE                             R8 R4
       19 NAMECALL                         R6 R0 K8 ["invalidateList"]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 1 ; [-11]
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagLuaStartPageRefreshRecentsOnRegistryUpdate is not enabled"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["lists"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETIMPORT                        R6 K6 [string.find]
       14 MOVE                             R7 R4
       15 LOADK                            R8 K7 ["^Recents"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+4]
       18 MOVE                             R8 R4
       19 NAMECALL                         R6 R0 K8 ["refreshList"]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 1 ; [-11]
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Network"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkCache"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Network"]
       22 GETTABLEKS                       R3 R3 K9 ["RecentsSort"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["Services"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["StartPageManager"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["SharedFlags"]
       42 GETTABLEKS                       R6 R6 K14 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
       44 CALL                             R5 1 1
       45 CALL                             R5 0 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K15 ["getFFlagLuaStartPageAutoRefresh"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K6 ["Src"]
       60 GETTABLEKS                       R8 R8 K13 ["SharedFlags"]
       62 GETTABLEKS                       R8 R8 K16 ["getFFlagStartPageBackfillRecentsFromCloud"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Packages"]
       70 GETTABLEKS                       R9 R9 K18 ["Dash"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R8 K19 ["collectArray"]
       75 GETTABLEKS                       R10 R8 K20 ["includes"]
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Src"]
       81 GETTABLEKS                       R12 R12 K21 ["Types"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K22 [PROTO_0]
       85 DUPCLOSURE                       R13 K23 [PROTO_1]
       86 DUPCLOSURE                       R14 K24 [PROTO_2]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R13
       90 GETTABLEKS                       R15 R1 K25 ["new"]
       92 MOVE                             R16 R12
       93 MOVE                             R17 R14
       94 CALL                             R15 2 1
       95 NEWTABLE                         R16 0 0
       97 LOADNIL                          R17
       98 SETTABLEKS                       R16 R15 K26 ["tempUrls"]
      100 NEWCLOSURE                       R18 P3
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R15
      103 CAPTURE                          REF R17
      104 CAPTURE                          VAL R4
      105 CAPTURE                          REF R16
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R18 R15 K27 ["load"]
      110 NEWCLOSURE                       R18 P4
      111 CAPTURE                          VAL R15
      112 CAPTURE                          REF R16
      113 CAPTURE                          REF R17
      114 SETTABLEKS                       R18 R15 K28 ["unload"]
      116 DUPCLOSURE                       R18 K29 [PROTO_8]
      117 CAPTURE                          VAL R5
      118 SETTABLEKS                       R18 R15 K30 ["invalidateRecentsLists"]
      120 DUPCLOSURE                       R18 K31 [PROTO_9]
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R18 R15 K32 ["refreshRecentsLists"]
      124 CLOSEUPVALS                      R16
      125 RETURN                           R15 1
