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
        0 DUPTABLE                         R1 K3 [{"pageSize", "alwaysRefetch", "sortFn"}]
        1 GETTABLEKS                       R3 R0 K0 ["pageSize"]
        3 ORK                              R2 R3 K4 [10]
        4 SETTABLEKS                       R2 R1 K0 ["pageSize"]
        6 GETTABLEKS                       R3 R0 K5 ["isTemplates"]
        8 NOT                              R2 R3
        9 SETTABLEKS                       R2 R1 K1 ["alwaysRefetch"]
       11 GETTABLEKS                       R3 R0 K6 ["searchKey"]
       13 JUMPIFNOTEQKS                    R3 K7 ["Recents"] ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["recencySortFn"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["sortFn"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       58 GETTABLEKS                       R8 R0 K16 ["Packages"]
       60 GETTABLEKS                       R8 R8 K17 ["Dash"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R7 K18 ["collectArray"]
       65 GETTABLEKS                       R9 R7 K19 ["includes"]
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Src"]
       71 GETTABLEKS                       R11 R11 K20 ["Types"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K21 [PROTO_0]
       75 DUPCLOSURE                       R12 K22 [PROTO_1]
       76 CAPTURE                          VAL R2
       77 GETTABLEKS                       R13 R1 K23 ["new"]
       79 MOVE                             R14 R11
       80 MOVE                             R15 R12
       81 CALL                             R13 2 1
       82 NEWTABLE                         R14 0 0
       84 LOADNIL                          R15
       85 SETTABLEKS                       R14 R13 K24 ["tempUrls"]
       87 NEWCLOSURE                       R16 P2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R13
       90 CAPTURE                          REF R15
       91 CAPTURE                          VAL R4
       92 CAPTURE                          REF R14
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R16 R13 K25 ["load"]
       97 NEWCLOSURE                       R16 P3
       98 CAPTURE                          VAL R13
       99 CAPTURE                          REF R14
      100 CAPTURE                          REF R15
      101 SETTABLEKS                       R16 R13 K26 ["unload"]
      103 DUPCLOSURE                       R16 K27 [PROTO_7]
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R16 R13 K28 ["invalidateRecentsLists"]
      107 DUPCLOSURE                       R16 K29 [PROTO_8]
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R16 R13 K30 ["refreshRecentsLists"]
      111 CLOSEUPVALS                      R14
      112 RETURN                           R13 1
