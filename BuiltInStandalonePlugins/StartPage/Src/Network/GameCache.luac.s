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
        0 DUPTABLE                         R1 K3 [{"pageSize", "alwaysRefetch", "sortFn"}]
        1 GETTABLEKS                       R3 R0 K0 ["pageSize"]
        3 ORK                              R2 R3 K4 [10]
        4 SETTABLEKS                       R2 R1 K0 ["pageSize"]
        6 GETTABLEKS                       R3 R0 K5 ["isTemplates"]
        8 NOT                              R2 R3
        9 SETTABLEKS                       R2 R1 K1 ["alwaysRefetch"]
       11 GETTABLEKS                       R3 R0 K6 ["searchKey"]
       13 JUMPIFNOTEQKS                    R3 K7 ["Recents"] ; [+3]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K2 ["sortFn"]
       20 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Services"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["StartPageManager"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       33 GETTABLEKS                       R5 R5 K13 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
       35 CALL                             R4 1 1
       36 CALL                             R4 0 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagLuaStartPageAutoRefresh"]
       45 CALL                             R5 1 1
       46 CALL                             R5 0 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K15 ["Packages"]
       51 GETTABLEKS                       R7 R7 K16 ["Dash"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R6 K17 ["collectArray"]
       56 GETTABLEKS                       R8 R6 K18 ["includes"]
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Src"]
       62 GETTABLEKS                       R10 R10 K19 ["Types"]
       64 CALL                             R9 1 1
       65 DUPCLOSURE                       R10 K20 [PROTO_0]
       66 DUPCLOSURE                       R11 K21 [PROTO_2]
       67 GETTABLEKS                       R12 R1 K22 ["new"]
       69 MOVE                             R13 R10
       70 MOVE                             R14 R11
       71 CALL                             R12 2 1
       72 NEWTABLE                         R13 0 0
       74 LOADNIL                          R14
       75 SETTABLEKS                       R13 R12 K23 ["tempUrls"]
       77 NEWCLOSURE                       R15 P2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R12
       80 CAPTURE                          REF R14
       81 CAPTURE                          VAL R3
       82 CAPTURE                          REF R13
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R15 R12 K24 ["load"]
       87 NEWCLOSURE                       R15 P3
       88 CAPTURE                          VAL R12
       89 CAPTURE                          REF R13
       90 CAPTURE                          REF R14
       91 SETTABLEKS                       R15 R12 K25 ["unload"]
       93 DUPCLOSURE                       R15 K26 [PROTO_8]
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R15 R12 K27 ["invalidateRecentsLists"]
       97 CLOSEUPVALS                      R13
       98 RETURN                           R12 1
