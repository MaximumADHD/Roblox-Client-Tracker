PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["search"]
        2 JUMPIFNOT                        R2 ; [+29]
        3 GETTABLEKS                       R3 R1 K1 ["notes"]
        5 GETTABLEKS                       R2 R3 K2 ["title"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 GETIMPORT                        R3 K5 [string.find]
       12 GETIMPORT                        R4 K7 [string.lower]
       14 GETTABLEKS                       R6 R1 K1 ["notes"]
       16 GETTABLEKS                       R5 R6 K2 ["title"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K7 [string.lower]
       21 GETTABLEKS                       R6 R0 K0 ["search"]
       23 CALL                             R5 1 1
       24 LOADN                            R6 1
       25 LOADB                            R7 1
       26 CALL                             R3 4 1
       27 JUMPIFNOTEQKNIL                  R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["hasNotes"]
        2 JUMPIFEQKNIL                     R2 ; [+22]
        4 LOADB                            R2 1
        5 GETTABLEKS                       R4 R1 K1 ["notes"]
        7 GETTABLEKS                       R3 R4 K2 ["title"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+9]
       11 GETTABLEKS                       R4 R1 K1 ["notes"]
       13 GETTABLEKS                       R3 R4 K3 ["description"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETTABLEKS                       R3 R0 K0 ["hasNotes"]
       21 JUMPIFEQ                         R3 R2 ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R2 R0 K4 ["isPublished"]
       27 JUMPIFEQKNIL                     R2 ; [+13]
       29 GETTABLEKS                       R2 R0 K4 ["isPublished"]
       31 GETTABLEKS                       R4 R1 K5 ["publishStatus"]
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 JUMPIFEQ                         R2 R3 ; [+3]
       39 LOADB                            R2 0
       40 RETURN                           R2 1
       41 GETTABLEKS                       R2 R0 K6 ["saveType"]
       43 JUMPIFEQKNIL                     R2 ; [+9]
       45 GETTABLEKS                       R2 R0 K6 ["saveType"]
       47 GETTABLEKS                       R3 R1 K6 ["saveType"]
       49 JUMPIFEQ                         R2 R3 ; [+3]
       51 LOADB                            R2 0
       52 RETURN                           R2 1
       53 GETTABLEKS                       R2 R0 K7 ["startDate"]
       55 JUMPIFEQKNIL                     R2 ; [+13]
       57 GETTABLEKS                       R3 R1 K8 ["date"]
       59 GETTABLEKS                       R2 R3 K9 ["UnixTimestamp"]
       61 GETTABLEKS                       R4 R0 K7 ["startDate"]
       63 GETTABLEKS                       R3 R4 K9 ["UnixTimestamp"]
       65 JUMPIFNOTLT                      R2 R3 ; [+3]
       67 LOADB                            R2 0
       68 RETURN                           R2 1
       69 GETTABLEKS                       R2 R0 K10 ["endDate"]
       71 JUMPIFEQKNIL                     R2 ; [+13]
       73 GETTABLEKS                       R3 R1 K8 ["date"]
       75 GETTABLEKS                       R2 R3 K9 ["UnixTimestamp"]
       77 GETTABLEKS                       R4 R0 K10 ["endDate"]
       79 GETTABLEKS                       R3 R4 K9 ["UnixTimestamp"]
       81 JUMPIFNOTLT                      R3 R2 ; [+3]
       83 LOADB                            R2 0
       84 RETURN                           R2 1
       85 GETTABLEKS                       R2 R0 K11 ["contributor"]
       87 JUMPIFEQKNIL                     R2 ; [+15]
       89 GETIMPORT                        R3 K14 [table.find]
       91 GETTABLEKS                       R4 R1 K15 ["contributors"]
       93 GETTABLEKS                       R5 R0 K11 ["contributor"]
       95 CALL                             R3 2 1
       96 JUMPIFNOTEQKNIL                  R3 ; [+2]
       98 LOADB                            R2 0 +1
       99 LOADB                            R2 1
      100 JUMPIF                           R2 ; [+2]
      101 LOADB                            R3 0
      102 RETURN                           R3 1
      103 LOADB                            R2 1
      104 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K5 [{"page", "cursor", "hasMore"}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["cursor"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["hasMore"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["places"]
       26 SETTABLEKS                       R3 R2 K2 ["page"]
       28 MOVE                             R3 R0
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K5 [{"page", "cursor", "hasMore"}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["cursor"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["hasMore"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["usernames"]
       26 SETTABLEKS                       R3 R2 K2 ["page"]
       28 MOVE                             R3 R0
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K5 [{"page", "cursor", "hasMore"}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["cursor"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["hasMore"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K3 ["cursor"]
       26 JUMPIFNOT                        R4 ; [+8]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K3 ["cursor"]
       30 FASTCALL1                        TONUMBER R4 ; [+2]
       31 GETIMPORT                        R3 K7 [tonumber]
       33 CALL                             R3 1 1
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K8 ["versionHistory"]
       38 LENGTH                           R3 R4
       39 LOADN                            R4 0
       40 JUMPIFNOTLT                      R4 R3 ; [+63]
       42 GETTABLEKS                       R5 R2 K2 ["page"]
       44 LENGTH                           R4 R5
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K9 ["pageSize"]
       48 JUMPIFEQ                         R4 R5 ; [+55]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K8 ["versionHistory"]
       53 GETTABLE                         R4 R5 R3
       54 SUBK                             R3 R3 K10 [1]
       55 GETUPVAL                         R5 2
       56 GETUPVAL                         R6 1
       57 MOVE                             R7 R4
       58 CALL                             R5 2 1
       59 JUMPIFNOT                        R5 ; [+43]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R7 R6 K11 ["search"]
       63 JUMPIFNOT                        R7 ; [+29]
       64 GETTABLEKS                       R8 R4 K12 ["notes"]
       66 GETTABLEKS                       R7 R8 K13 ["title"]
       68 JUMPIF                           R7 ; [+2]
       69 LOADB                            R5 0
       70 JUMP                             ; [+23]
       71 GETIMPORT                        R7 K16 [string.find]
       73 GETIMPORT                        R8 K18 [string.lower]
       75 GETTABLEKS                       R10 R4 K12 ["notes"]
       77 GETTABLEKS                       R9 R10 K13 ["title"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K18 [string.lower]
       82 GETTABLEKS                       R10 R6 K11 ["search"]
       84 CALL                             R9 1 1
       85 LOADN                            R10 1
       86 LOADB                            R11 1
       87 CALL                             R7 4 1
       88 JUMPIFNOTEQKNIL                  R7 ; [+2]
       90 LOADB                            R5 0 +1
       91 LOADB                            R5 1
       92 JUMP                             ; [+1]
       93 LOADB                            R5 1
       94 JUMPIFNOT                        R5 ; [+8]
       95 GETTABLEKS                       R6 R2 K2 ["page"]
       97 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       99 MOVE                             R7 R4
      100 GETIMPORT                        R5 K21 [table.insert]
      102 CALL                             R5 2 0
      103 JUMPBACK                         ; [-65]
      104 LOADN                            R5 0
      105 JUMPIFLT                         R5 R3 ; [+2]
      107 LOADB                            R4 0 +1
      108 LOADB                            R4 1
      109 SETTABLEKS                       R4 R2 K4 ["hasMore"]
      111 FASTCALL1                        TOSTRING R3 ; [+3]
      112 MOVE                             R5 R3
      113 GETIMPORT                        R4 K23 [tostring]
      115 CALL                             R4 1 1
      116 SETTABLEKS                       R4 R2 K3 ["cursor"]
      118 MOVE                             R4 R0
      119 MOVE                             R5 R2
      120 CALL                             R4 1 -1
      121 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["version"]
       15 JUMPIF                           R2 ; [+52]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K3 ["versionHistory"]
       19 DUPTABLE                         R4 K10 [{"version", "saveType", "published", "date", "contributors", "notes", "saver"}]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K3 ["versionHistory"]
       23 LENGTH                           R6 R7
       24 ADDK                             R5 R6 K11 [1]
       25 SETTABLEKS                       R5 R4 K2 ["version"]
       27 LOADK                            R5 K12 ["Manual"]
       28 SETTABLEKS                       R5 R4 K4 ["saveType"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K5 ["published"]
       33 GETIMPORT                        R5 K15 [DateTime.now]
       35 CALL                             R5 0 1
       36 SETTABLEKS                       R5 R4 K6 ["date"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K16 ["users"]
       41 SETTABLEKS                       R5 R4 K7 ["contributors"]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R5 R6 K8 ["notes"]
       46 SETTABLEKS                       R5 R4 K8 ["notes"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K16 ["users"]
       51 GETIMPORT                        R7 K19 [math.random]
       53 LOADN                            R8 1
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K16 ["users"]
       57 LENGTH                           R9 R10
       58 CALL                             R7 2 1
       59 GETTABLE                         R5 R6 R7
       60 SETTABLEKS                       R5 R4 K9 ["saver"]
       62 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       64 GETIMPORT                        R2 K22 [table.insert]
       66 CALL                             R2 2 0
       67 JUMP                             ; [+12]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K3 ["versionHistory"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R4 R5 K2 ["version"]
       74 GETTABLE                         R2 R3 R4
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R3 R4 K8 ["notes"]
       78 SETTABLEKS                       R3 R2 K8 ["notes"]
       80 MOVE                             R2 R0
       81 CALL                             R2 0 -1
       82 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 1
       13 JUMPIFNOTEQKN                    R2 K2 [0] ; [+5]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K3 ["<DeletedUser>"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["usernames"]
       22 GETUPVAL                         R4 1
       23 GETTABLE                         R2 R3 R4
       24 JUMPIF                           R2 ; [+3]
       25 MOVE                             R3 R1
       26 CALL                             R3 0 -1
       27 RETURN                           R3 -1
       28 MOVE                             R3 R0
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["places"]
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFNOT                        R2 ; [+4]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R2
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1
       22 MOVE                             R3 R0
       23 LOADK                            R5 K3 ["Place %*"]
       24 GETUPVAL                         R7 1
       25 NAMECALL                         R5 R5 K4 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R3 1
       13 JUMPIFNOTEQKS                    R3 K2 ["BAD"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 MOVE                             R3 R0
       18 MOVE                             R4 R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R3 2
        2 GETTABLEKS                       R2 R3 K0 ["mockNetworkConfig"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["mockNetworkConfig"]
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R3 0 0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K1 ["createElement"]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R2 R3 K2 ["Provider"]
       17 DUPTABLE                         R3 K4 [{"value"}]
       18 DUPTABLE                         R4 K12 [{"getPlaces", "getContributors", "getVersionHistory", "saveVersionNotes", "getUserName", "getPlaceName", "getNotesValidation"}]
       19 GETUPVAL                         R5 5
       20 SETTABLEKS                       R5 R4 K5 ["getPlaces"]
       22 GETUPVAL                         R5 6
       23 SETTABLEKS                       R5 R4 K6 ["getContributors"]
       25 GETUPVAL                         R5 7
       26 SETTABLEKS                       R5 R4 K7 ["getVersionHistory"]
       28 GETUPVAL                         R5 8
       29 SETTABLEKS                       R5 R4 K8 ["saveVersionNotes"]
       31 GETUPVAL                         R5 9
       32 SETTABLEKS                       R5 R4 K9 ["getUserName"]
       34 GETUPVAL                         R5 10
       35 SETTABLEKS                       R5 R4 K10 ["getPlaceName"]
       37 GETUPVAL                         R5 11
       38 SETTABLEKS                       R5 R4 K11 ["getNotesValidation"]
       40 SETTABLEKS                       R4 R3 K3 ["value"]
       42 GETTABLEKS                       R4 R0 K13 ["children"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["NetworkContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R4 R5 K12 ["TestUtil"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["MockNetwork"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Types"]
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K18 [{"numVersions", "latencySec", "failureRate"}]
       47 LOADN                            R8 231
       48 SETTABLEKS                       R8 R7 K15 ["numVersions"]
       50 LOADN                            R8 1
       51 SETTABLEKS                       R8 R7 K16 ["latencySec"]
       53 LOADN                            R8 0
       54 SETTABLEKS                       R8 R7 K17 ["failureRate"]
       56 LOADNIL                          R8
       57 DUPCLOSURE                       R9 K19 [PROTO_0]
       58 DUPCLOSURE                       R10 K20 [PROTO_1]
       59 NEWCLOSURE                       R11 P2
       60 CAPTURE                          VAL R2
       61 CAPTURE                          REF R8
       62 NEWCLOSURE                       R12 P3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R8
       65 NEWCLOSURE                       R13 P4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          REF R8
       68 CAPTURE                          VAL R10
       69 NEWCLOSURE                       R14 P5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R8
       72 NEWCLOSURE                       R15 P6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          REF R8
       75 NEWCLOSURE                       R16 P7
       76 CAPTURE                          VAL R2
       77 CAPTURE                          REF R8
       78 NEWCLOSURE                       R17 P8
       79 CAPTURE                          VAL R2
       80 CAPTURE                          REF R8
       81 NEWCLOSURE                       R18 P9
       82 CAPTURE                          VAL R1
       83 CAPTURE                          REF R8
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R17
       94 CLOSEUPVALS                      R8
       95 RETURN                           R18 1
