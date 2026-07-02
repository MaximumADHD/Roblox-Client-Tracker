PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["search"]
        2 JUMPIFNOT                        R2 ; [+29]
        3 GETTABLEKS                       R2 R1 K1 ["notes"]
        5 GETTABLEKS                       R2 R2 K2 ["title"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 GETIMPORT                        R3 K5 [string.find]
       12 GETIMPORT                        R4 K7 [string.lower]
       14 GETTABLEKS                       R5 R1 K1 ["notes"]
       16 GETTABLEKS                       R5 R5 K2 ["title"]
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
        5 GETTABLEKS                       R3 R1 K1 ["notes"]
        7 GETTABLEKS                       R3 R3 K2 ["title"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+9]
       11 GETTABLEKS                       R3 R1 K1 ["notes"]
       13 GETTABLEKS                       R3 R3 K3 ["description"]
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
       57 GETTABLEKS                       R2 R1 K8 ["date"]
       59 GETTABLEKS                       R2 R2 K9 ["UnixTimestamp"]
       61 GETTABLEKS                       R3 R0 K7 ["startDate"]
       63 GETTABLEKS                       R3 R3 K9 ["UnixTimestamp"]
       65 JUMPIFNOTLT                      R2 R3 ; [+3]
       67 LOADB                            R2 0
       68 RETURN                           R2 1
       69 GETTABLEKS                       R2 R0 K10 ["endDate"]
       71 JUMPIFEQKNIL                     R2 ; [+13]
       73 GETTABLEKS                       R2 R1 K8 ["date"]
       75 GETTABLEKS                       R2 R2 K9 ["UnixTimestamp"]
       77 GETTABLEKS                       R3 R0 K10 ["endDate"]
       79 GETTABLEKS                       R3 R3 K9 ["UnixTimestamp"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K7 [{["page"], ["cursor"] = , ["hasMore"] = False}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K8 ["places"]
       20 SETTABLEKS                       R3 R2 K2 ["page"]
       22 MOVE                             R3 R0
       23 MOVE                             R4 R2
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K7 [{["page"], ["cursor"] = , ["hasMore"] = False}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K8 ["usernames"]
       20 SETTABLEKS                       R3 R2 K2 ["page"]
       22 MOVE                             R3 R0
       23 MOVE                             R4 R2
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 DUPTABLE                         R2 K7 [{["page"], ["cursor"] = , ["hasMore"] = False}]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K2 ["page"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["cursor"]
       20 JUMPIFNOT                        R4 ; [+8]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K3 ["cursor"]
       24 FASTCALL1                        TONUMBER R4 ; [+2]
       25 GETIMPORT                        R3 K9 [tonumber]
       27 CALL                             R3 1 1
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K10 ["versionHistory"]
       32 LENGTH                           R3 R4
       33 LOADN                            R4 0
       34 JUMPIFNOTLT                      R4 R3 ; [+63]
       36 GETTABLEKS                       R5 R2 K2 ["page"]
       38 LENGTH                           R4 R5
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K11 ["pageSize"]
       42 JUMPIFEQ                         R4 R5 ; [+55]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K10 ["versionHistory"]
       47 GETTABLE                         R4 R5 R3
       48 SUBK                             R3 R3 K12 [1]
       49 GETUPVAL                         R5 2
       50 GETUPVAL                         R6 1
       51 MOVE                             R7 R4
       52 CALL                             R5 2 1
       53 JUMPIFNOT                        R5 ; [+43]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R7 R6 K13 ["search"]
       57 JUMPIFNOT                        R7 ; [+29]
       58 GETTABLEKS                       R7 R4 K14 ["notes"]
       60 GETTABLEKS                       R7 R7 K15 ["title"]
       62 JUMPIF                           R7 ; [+2]
       63 LOADB                            R5 0
       64 JUMP                             ; [+23]
       65 GETIMPORT                        R7 K18 [string.find]
       67 GETIMPORT                        R8 K20 [string.lower]
       69 GETTABLEKS                       R9 R4 K14 ["notes"]
       71 GETTABLEKS                       R9 R9 K15 ["title"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K20 [string.lower]
       76 GETTABLEKS                       R10 R6 K13 ["search"]
       78 CALL                             R9 1 1
       79 LOADN                            R10 1
       80 LOADB                            R11 1
       81 CALL                             R7 4 1
       82 JUMPIFNOTEQKNIL                  R7 ; [+2]
       84 LOADB                            R5 0 +1
       85 LOADB                            R5 1
       86 JUMP                             ; [+1]
       87 LOADB                            R5 1
       88 JUMPIFNOT                        R5 ; [+8]
       89 GETTABLEKS                       R6 R2 K2 ["page"]
       91 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       93 MOVE                             R7 R4
       94 GETIMPORT                        R5 K23 [table.insert]
       96 CALL                             R5 2 0
       97 JUMPBACK                         ; [-65]
       98 LOADN                            R5 0
       99 JUMPIFLT                         R5 R3 ; [+2]
      101 LOADB                            R4 0 +1
      102 LOADB                            R4 1
      103 SETTABLEKS                       R4 R2 K5 ["hasMore"]
      105 FASTCALL1                        TOSTRING R3 ; [+3]
      106 MOVE                             R5 R3
      107 GETIMPORT                        R4 K25 [tostring]
      109 CALL                             R4 1 1
      110 SETTABLEKS                       R4 R2 K3 ["cursor"]
      112 MOVE                             R4 R0
      113 MOVE                             R5 R2
      114 CALL                             R4 1 -1
      115 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["version"]
       15 JUMPIF                           R2 ; [+46]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["versionHistory"]
       19 DUPTABLE                         R4 K12 [{["version"], ["saveType"] = "Manual", ["published"] = False, ["date"], ["contributors"], ["notes"], ["saver"]}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K3 ["versionHistory"]
       23 LENGTH                           R6 R7
       24 ADDK                             R5 R6 K13 [1]
       25 SETTABLEKS                       R5 R4 K2 ["version"]
       27 GETIMPORT                        R5 K16 [DateTime.now]
       29 CALL                             R5 0 1
       30 SETTABLEKS                       R5 R4 K8 ["date"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K17 ["users"]
       35 SETTABLEKS                       R5 R4 K9 ["contributors"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K10 ["notes"]
       40 SETTABLEKS                       R5 R4 K10 ["notes"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K17 ["users"]
       45 GETIMPORT                        R7 K20 [math.random]
       47 LOADN                            R8 1
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K17 ["users"]
       51 LENGTH                           R9 R10
       52 CALL                             R7 2 1
       53 GETTABLE                         R5 R6 R7
       54 SETTABLEKS                       R5 R4 K11 ["saver"]
       56 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       58 GETIMPORT                        R2 K23 [table.insert]
       60 CALL                             R2 2 0
       61 JUMP                             ; [+12]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K3 ["versionHistory"]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K2 ["version"]
       68 GETTABLE                         R2 R3 R4
       69 GETUPVAL                         R3 1
       70 GETTABLEKS                       R3 R3 K10 ["notes"]
       72 SETTABLEKS                       R3 R2 K10 ["notes"]
       74 MOVE                             R2 R0
       75 CALL                             R2 0 -1
       76 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
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
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["usernames"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["places"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETTABLEKS                       R1 R1 K0 ["mockNetworkConfig"]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["createElement"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["Provider"]
       16 DUPTABLE                         R3 K4 [{"value"}]
       17 DUPTABLE                         R4 K12 [{"getPlaces", "getContributors", "getVersionHistory", "saveVersionNotes", "getUserName", "getPlaceName", "getNotesValidation"}]
       18 GETUPVAL                         R5 4
       19 SETTABLEKS                       R5 R4 K5 ["getPlaces"]
       21 GETUPVAL                         R5 5
       22 SETTABLEKS                       R5 R4 K6 ["getContributors"]
       24 GETUPVAL                         R5 6
       25 SETTABLEKS                       R5 R4 K7 ["getVersionHistory"]
       27 GETUPVAL                         R5 7
       28 SETTABLEKS                       R5 R4 K8 ["saveVersionNotes"]
       30 GETUPVAL                         R5 8
       31 SETTABLEKS                       R5 R4 K9 ["getUserName"]
       33 GETUPVAL                         R5 9
       34 SETTABLEKS                       R5 R4 K10 ["getPlaceName"]
       36 GETUPVAL                         R5 10
       37 SETTABLEKS                       R5 R4 K11 ["getNotesValidation"]
       39 SETTABLEKS                       R4 R3 K3 ["value"]
       41 GETTABLEKS                       R4 R0 K13 ["children"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["NetworkContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K9 ["Src"]
       32 GETTABLEKS                       R4 R4 K12 ["TestUtil"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["MockNetwork"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 LOADNIL                          R7
       47 DUPCLOSURE                       R8 K15 [PROTO_0]
       48 DUPCLOSURE                       R9 K16 [PROTO_1]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R7
       52 NEWCLOSURE                       R11 P3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          REF R7
       55 NEWCLOSURE                       R12 P4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          REF R7
       58 CAPTURE                          VAL R9
       59 NEWCLOSURE                       R13 P5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          REF R7
       62 NEWCLOSURE                       R14 P6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R7
       65 NEWCLOSURE                       R15 P7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          REF R7
       68 NEWCLOSURE                       R16 P8
       69 CAPTURE                          VAL R2
       70 CAPTURE                          REF R7
       71 NEWCLOSURE                       R17 P9
       72 CAPTURE                          VAL R1
       73 CAPTURE                          REF R7
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R16
       83 CLOSEUPVALS                      R7
       84 RETURN                           R17 1
