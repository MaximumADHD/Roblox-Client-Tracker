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
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["ImageImportedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Network"]
       13 GETTABLEKS                       R2 R3 K8 ["NetworkCache"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["Services"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["StartPageManager"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Dash"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["collectArray"]
       36 GETTABLEKS                       R6 R4 K15 ["includes"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R9 R0 K6 ["Src"]
       42 GETTABLEKS                       R8 R9 K16 ["Types"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K17 [PROTO_0]
       46 DUPCLOSURE                       R9 K18 [PROTO_2]
       47 GETTABLEKS                       R10 R1 K19 ["new"]
       49 MOVE                             R11 R8
       50 MOVE                             R12 R9
       51 CALL                             R10 2 1
       52 NEWTABLE                         R11 0 0
       54 LOADNIL                          R12
       55 SETTABLEKS                       R11 R10 K20 ["tempUrls"]
       57 NEWCLOSURE                       R13 P2
       58 CAPTURE                          REF R12
       59 CAPTURE                          VAL R3
       60 CAPTURE                          REF R11
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R13 R10 K21 ["load"]
       66 NEWCLOSURE                       R13 P3
       67 CAPTURE                          VAL R10
       68 CAPTURE                          REF R11
       69 CAPTURE                          REF R12
       70 SETTABLEKS                       R13 R10 K22 ["unload"]
       72 CLOSEUPVALS                      R11
       73 RETURN                           R10 1
