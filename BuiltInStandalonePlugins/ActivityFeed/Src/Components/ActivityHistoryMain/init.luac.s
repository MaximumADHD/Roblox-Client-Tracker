PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K2 [pairs]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 ADDK                             R0 R0 K3 [1]
       13 FORGLOOP                         R2 2 ; [-2]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["bubblesSeenOnSessionEnd"]
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 2
       19 GETUPVAL                         R7 3
       20 NAMECALL                         R2 R2 K5 ["report"]
       22 CALL                             R2 5 0
       23 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["current"]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K2 ["current"]
       13 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R4
       11 GETIMPORT                        R6 K4 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-8]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["fetchUsernames"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["responseBody"]
        6 GETTABLEKS                       R3 R3 K3 ["events"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETTABLEKS                       R7 R6 K4 ["userId"]
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 FORGLOOP                         R2 2 ; [-5]
       16 GETUPVAL                         R2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       23 GETTABLEKS                       R2 R2 K3 ["events"]
       25 GETUPVAL                         R4 2
       26 JUMPIF                           R4 ; [+14]
       27 GETTABLEKS                       R4 R0 K2 ["responseBody"]
       29 GETTABLEKS                       R4 R4 K5 ["hasMore"]
       31 JUMPIFNOT                        R4 ; [+9]
       32 LENGTH                           R4 R2
       33 LOADN                            R5 0
       34 JUMPIFNOTLT                      R5 R4 ; [+6]
       36 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       38 GETTABLEKS                       R3 R3 K6 ["nextCursor"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R3
       42 GETUPVAL                         R5 2
       43 JUMPIFNOT                        R5 ; [+14]
       44 GETTABLEKS                       R5 R0 K2 ["responseBody"]
       46 GETTABLEKS                       R5 R5 K5 ["hasMore"]
       48 JUMPIFNOT                        R5 ; [+9]
       49 LENGTH                           R5 R2
       50 LOADN                            R6 0
       51 JUMPIFNOTLT                      R6 R5 ; [+6]
       53 GETTABLEKS                       R4 R0 K2 ["responseBody"]
       55 GETTABLEKS                       R4 R4 K6 ["nextCursor"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R4
       59 GETUPVAL                         R5 3
       60 JUMPIFEQKNIL                     R5 ; [+46]
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K7 ["DaysAgo"]
       65 JUMPIFEQKNIL                     R5 ; [+41]
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R5 R5 K7 ["DaysAgo"]
       70 LOADN                            R6 0
       71 JUMPIFNOTLT                      R6 R5 ; [+35]
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R5 R5 K8 ["FirstFetch"]
       76 JUMPIFNOT                        R5 ; [+14]
       77 GETUPVAL                         R5 3
       78 LOADB                            R6 0
       79 SETTABLEKS                       R6 R5 K8 ["FirstFetch"]
       81 GETTABLEN                        R5 R2 1
       82 JUMPIFEQKNIL                     R5 ; [+24]
       84 GETTABLEN                        R5 R2 1
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K9 ["Middle"]
       88 SETTABLEKS                       R6 R5 K10 ["headerType"]
       90 JUMP                             ; [+16]
       91 GETTABLEKS                       R5 R0 K2 ["responseBody"]
       93 GETTABLEKS                       R5 R5 K5 ["hasMore"]
       95 JUMPIF                           R5 ; [+11]
       96 GETUPVAL                         R5 2
       97 JUMPIFNOT                        R5 ; [+9]
       98 GETTABLEN                        R5 R2 1
       99 JUMPIFEQKNIL                     R5 ; [+7]
      101 GETTABLEN                        R5 R2 1
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K11 ["Top"]
      105 SETTABLEKS                       R6 R5 K10 ["headerType"]
      107 GETUPVAL                         R5 5
      108 MOVE                             R6 R2
      109 MOVE                             R7 R3
      110 MOVE                             R8 R4
      111 GETUPVAL                         R9 2
      112 GETUPVAL                         R10 6
      113 CALL                             R5 5 0
      114 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["activityHistoryClient"]
        3 GETTABLEKS                       R6 R6 K1 ["fetchActivityHistory"]
        5 GETUPVAL                         R7 1
        6 GETUPVAL                         R8 2
        7 JUMPIFEQKS                       R1 K2 [""] ; [+3]
        9 MOVE                             R9 R1
       10 JUMPIF                           R9 ; [+1]
       11 LOADNIL                          R9
       12 MOVE                             R10 R2
       13 MOVE                             R11 R3
       14 NEWCLOSURE                       R12 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R4
       22 CALL                             R6 6 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFilterEmptyState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["cache"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_12:
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R2 R0 K0 ["userId"]
        4 LOADB                            R3 1
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["addNewEvent"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mergeFilterOptions"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["getUnixMsFromDateIndex"]
        9 GETTABLEKS                       R2 R0 K2 ["JumpToDateIndex"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["getNumDaysFromDateIndex"]
       15 GETTABLEKS                       R3 R0 K2 ["JumpToDateIndex"]
       17 CALL                             R2 1 1
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+10]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K4 ["jumpToDate"]
       24 MOVE                             R4 R1
       25 DUPTABLE                         R5 K8 [{["DaysAgo"], ["FirstFetch"] = True}]
       26 SETTABLEKS                       R2 R5 K5 ["DaysAgo"]
       28 CALL                             R3 2 0
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K4 ["jumpToDate"]
       33 LOADNIL                          R4
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 4
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K9 ["filterOptionsToStrings"]
       45 MOVE                             R4 R0
       46 GETUPVAL                         R5 6
       47 GETUPVAL                         R6 7
       48 GETTABLEKS                       R6 R6 K10 ["cache"]
       50 CALL                             R3 3 1
       51 GETTABLEKS                       R5 R3 K11 ["shortString"]
       53 LENGTH                           R4 R5
       54 JUMPIFNOTEQKN                    R4 K12 [0] ; [+17]
       56 GETUPVAL                         R4 8
       57 DUPTABLE                         R5 K14 [{"shortString", "descriptiveStrings"}]
       58 GETUPVAL                         R6 6
       59 LOADK                            R8 K15 ["ActivityHistoryMain"]
       60 LOADK                            R9 K16 ["AllEvents"]
       61 NAMECALL                         R6 R6 K17 ["getText"]
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K11 ["shortString"]
       66 NEWTABLE                         R6 0 0
       68 SETTABLEKS                       R6 R5 K13 ["descriptiveStrings"]
       70 CALL                             R4 1 0
       71 JUMP                             ; [+3]
       72 GETUPVAL                         R4 8
       73 MOVE                             R5 R3
       74 CALL                             R4 1 0
       75 LOADN                            R4 0
       76 LOADN                            R5 0
       77 LOADN                            R6 0
       78 LOADN                            R7 0
       79 LOADK                            R8 K18 [""]
       80 GETIMPORT                        R9 K20 [pairs]
       82 GETTABLEKS                       R10 R0 K21 ["EventCategories"]
       84 CALL                             R9 1 3
       85 FORGPREP_NEXT                    R9
       86 GETTABLEKS                       R15 R0 K21 ["EventCategories"]
       88 GETTABLE                         R14 R15 R12
       89 JUMPIFNOT                        R14 ; [+11]
       90 LENGTH                           R14 R8
       91 LOADN                            R15 0
       92 JUMPIFNOTLT                      R15 R14 ; [+4]
       94 MOVE                             R14 R8
       95 LOADK                            R15 K22 [","]
       96 CONCAT                           R8 R14 R15
       97 ADDK                             R6 R6 K23 [1]
       98 MOVE                             R14 R8
       99 MOVE                             R15 R12
      100 CONCAT                           R8 R14 R15
      101 ADDK                             R7 R7 K23 [1]
      102 FORGLOOP                         R9 2 ; [-17]
      104 GETIMPORT                        R9 K20 [pairs]
      106 GETTABLEKS                       R10 R0 K24 ["Collaborators"]
      108 CALL                             R9 1 3
      109 FORGPREP_NEXT                    R9
      110 GETTABLEKS                       R15 R0 K24 ["Collaborators"]
      112 GETTABLE                         R14 R15 R12
      113 JUMPIFNOT                        R14 ; [+1]
      114 ADDK                             R4 R4 K23 [1]
      115 ADDK                             R5 R5 K23 [1]
      116 FORGLOOP                         R9 2 ; [-7]
      118 GETUPVAL                         R9 9
      119 LOADK                            R11 K25 ["applyFilters"]
      120 MOVE                             R12 R4
      121 MOVE                             R13 R5
      122 MOVE                             R14 R6
      123 MOVE                             R15 R7
      124 MOVE                             R16 R8
      125 MOVE                             R17 R2
      126 GETUPVAL                         R18 5
      127 GETUPVAL                         R19 10
      128 NAMECALL                         R9 R9 K26 ["report"]
      130 CALL                             R9 10 0
      131 GETUPVAL                         R9 11
      132 LOADK                            R10 K27 ["All Events"]
      133 CALL                             R9 1 0
      134 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["compareFilterOptions"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+29]
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 5
       15 DUPTABLE                         R2 K3 [{"shortString", "descriptiveStrings"}]
       16 GETUPVAL                         R3 4
       17 LOADK                            R5 K4 ["ActivityHistoryMain"]
       18 LOADK                            R6 K5 ["AllEvents"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 3 1
       22 SETTABLEKS                       R3 R2 K1 ["shortString"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K2 ["descriptiveStrings"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 6
       30 GETTABLEKS                       R1 R1 K7 ["jumpToDate"]
       32 LOADNIL                          R2
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 1
       35 RETURN                           R1 1
       36 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["clearFilters"]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K1 ["report"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 3
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 10
       18 LOADK                            R1 K2 ["All Events"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["compareFilterOptions"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["mergeFilterOptions"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Filter Menu"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Filter Menu"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 NAMECALL                         R3 R3 K1 ["use"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 LOADK                            R5 K3 ["All Events"]
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K2 ["useState"]
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 2
       24 GETTABLEKS                       R8 R1 K4 ["usePlaceAndUniverseId"]
       26 CALL                             R8 0 2
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K5 ["useRef"]
       30 NEWTABLE                         R11 0 0
       32 CALL                             R10 1 1
       33 GETUPVAL                         R11 4
       34 LOADB                            R12 0
       35 CALL                             R11 1 1
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       39 NEWCLOSURE                       R13 P0
       40 CAPTURE                          VAL R10
       41 NEWTABLE                         R14 0 0
       43 CALL                             R12 2 1
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       47 NEWCLOSURE                       R14 P1
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R15 0 3
       54 MOVE                             R16 R10
       55 MOVE                             R17 R8
       56 MOVE                             R18 R9
       57 SETLIST                          R15 R16 3 [1]
       59 CALL                             R13 2 1
       60 GETTABLEKS                       R14 R1 K7 ["useConnectToDataModelSessionEffect"]
       62 MOVE                             R15 R12
       63 MOVE                             R16 R13
       64 CALL                             R14 2 0
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       68 NEWCLOSURE                       R15 P2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          UPVAL U5
       71 NEWTABLE                         R16 0 1
       73 MOVE                             R17 R10
       74 SETLIST                          R16 R17 1 [1]
       76 CALL                             R14 2 1
       77 GETUPVAL                         R15 6
       78 CALL                             R15 0 1
       79 GETUPVAL                         R16 0
       80 GETTABLEKS                       R16 R16 K9 ["useEffect"]
       82 NEWCLOSURE                       R17 P3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R15
       85 NEWTABLE                         R18 0 2
       87 MOVE                             R19 R6
       88 GETTABLEKS                       R20 R15 K10 ["fetchUsernames"]
       90 SETLIST                          R18 R19 2 [1]
       92 CALL                             R16 2 0
       93 LOADNIL                          R16
       94 GETUPVAL                         R17 0
       95 GETTABLEKS                       R17 R17 K8 ["useCallback"]
       97 NEWCLOSURE                       R18 P4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U7
      104 NEWTABLE                         R19 0 3
      106 GETTABLEKS                       R20 R1 K11 ["activityHistoryClient"]
      108 MOVE                             R21 R8
      109 MOVE                             R22 R9
      110 SETLIST                          R19 R20 3 [1]
      112 CALL                             R17 2 1
      113 MOVE                             R16 R17
      114 GETUPVAL                         R17 0
      115 GETTABLEKS                       R17 R17 K6 ["useMemo"]
      117 NEWCLOSURE                       R18 P5
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R2
      121 NEWTABLE                         R19 0 2
      123 GETTABLEKS                       R20 R15 K12 ["cache"]
      125 MOVE                             R21 R2
      126 SETLIST                          R19 R20 2 [1]
      128 CALL                             R17 2 1
      129 GETUPVAL                         R18 0
      130 GETTABLEKS                       R18 R18 K2 ["useState"]
      132 MOVE                             R19 R17
      133 CALL                             R18 1 2
      134 GETUPVAL                         R20 0
      135 GETTABLEKS                       R20 R20 K2 ["useState"]
      137 NEWCLOSURE                       R21 P6
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R2
      142 CALL                             R20 1 2
      143 GETUPVAL                         R22 0
      144 GETTABLEKS                       R22 R22 K2 ["useState"]
      146 DUPTABLE                         R23 K15 [{"shortString", "descriptiveStrings"}]
      147 LOADK                            R26 K16 ["ActivityHistoryMain"]
      148 LOADK                            R27 K17 ["AllEvents"]
      149 NAMECALL                         R24 R2 K18 ["getText"]
      151 CALL                             R24 3 1
      152 SETTABLEKS                       R24 R23 K13 ["shortString"]
      154 NEWTABLE                         R24 0 0
      156 SETTABLEKS                       R24 R23 K14 ["descriptiveStrings"]
      158 CALL                             R22 1 2
      159 GETTABLEKS                       R26 R22 K14 ["descriptiveStrings"]
      161 LENGTH                           R25 R26
      162 LOADN                            R26 0
      163 JUMPIFLT                         R26 R25 ; [+2]
      165 LOADB                            R24 0 +1
      166 LOADB                            R24 1
      167 GETUPVAL                         R25 9
      168 MOVE                             R26 R16
      169 MOVE                             R27 R20
      170 GETUPVAL                         R28 10
      171 GETUPVAL                         R29 11
      172 GETUPVAL                         R30 12
      173 CALL                             R25 5 1
      174 GETUPVAL                         R26 0
      175 GETTABLEKS                       R26 R26 K8 ["useCallback"]
      177 NEWCLOSURE                       R27 P7
      178 CAPTURE                          VAL R7
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          VAL R25
      181 NEWTABLE                         R28 0 1
      183 GETTABLEKS                       R29 R25 K19 ["addNewEvent"]
      185 SETLIST                          R28 R29 1 [1]
      187 CALL                             R26 2 1
      188 GETUPVAL                         R27 0
      189 GETTABLEKS                       R27 R27 K9 ["useEffect"]
      191 GETTABLEKS                       R28 R1 K11 ["activityHistoryClient"]
      193 GETTABLEKS                       R28 R28 K20 ["activityFeedRTEEffect"]
      195 MOVE                             R29 R1
      196 MOVE                             R30 R9
      197 MOVE                             R31 R26
      198 CALL                             R28 3 1
      199 NEWTABLE                         R29 0 3
      201 MOVE                             R30 R1
      202 MOVE                             R31 R9
      203 MOVE                             R32 R26
      204 SETLIST                          R29 R30 3 [1]
      206 CALL                             R27 2 0
      207 GETUPVAL                         R27 0
      208 GETTABLEKS                       R27 R27 K8 ["useCallback"]
      210 NEWCLOSURE                       R28 P8
      211 CAPTURE                          UPVAL U8
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R5
      223 NEWTABLE                         R29 0 9
      225 MOVE                             R30 R18
      226 GETTABLEKS                       R31 R25 K21 ["jumpToDate"]
      228 MOVE                             R32 R21
      229 MOVE                             R33 R2
      230 GETTABLEKS                       R34 R15 K12 ["cache"]
      232 MOVE                             R35 R23
      233 MOVE                             R36 R17
      234 MOVE                             R37 R8
      235 MOVE                             R38 R9
      236 SETLIST                          R29 R30 9 [1]
      238 CALL                             R27 2 1
      239 GETUPVAL                         R28 0
      240 GETTABLEKS                       R28 R28 K8 ["useCallback"]
      242 NEWCLOSURE                       R29 P9
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R19
      247 CAPTURE                          UPVAL U8
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R5
      254 NEWTABLE                         R30 0 8
      256 MOVE                             R31 R19
      257 MOVE                             R32 R21
      258 MOVE                             R33 R23
      259 MOVE                             R34 R2
      260 MOVE                             R35 R8
      261 MOVE                             R36 R9
      262 GETTABLEKS                       R37 R25 K21 ["jumpToDate"]
      264 MOVE                             R38 R17
      265 SETLIST                          R30 R31 8 [1]
      267 CALL                             R28 2 1
      268 GETUPVAL                         R29 0
      269 GETTABLEKS                       R29 R29 K8 ["useCallback"]
      271 NEWCLOSURE                       R30 P10
      272 CAPTURE                          VAL R19
      273 CAPTURE                          UPVAL U8
      274 NEWTABLE                         R31 0 1
      276 MOVE                             R32 R19
      277 SETLIST                          R31 R32 1 [1]
      279 CALL                             R29 2 1
      280 GETUPVAL                         R30 0
      281 GETTABLEKS                       R30 R30 K9 ["useEffect"]
      283 NEWCLOSURE                       R31 P11
      284 CAPTURE                          VAL R27
      285 NEWTABLE                         R32 0 2
      287 MOVE                             R33 R8
      288 MOVE                             R34 R9
      289 SETLIST                          R32 R33 2 [1]
      291 CALL                             R30 2 0
      292 GETTABLEKS                       R31 R0 K22 ["enabled"]
      294 JUMPIFNOT                        R31 ; [+401]
      295 GETUPVAL                         R30 0
      296 GETTABLEKS                       R30 R30 K23 ["createElement"]
      298 LOADK                            R31 K24 ["Frame"]
      299 NEWTABLE                         R32 1 0
      301 GETUPVAL                         R33 0
      302 GETTABLEKS                       R33 R33 K25 ["Tag"]
      304 GETUPVAL                         R34 13
      305 LOADK                            R35 K26 ["X-Column"]
      306 LOADK                            R36 K27 ["Component-ActivityHistoryMain"]
      307 CALL                             R34 2 1
      308 SETTABLE                         R34 R32 R33
      309 DUPTABLE                         R33 K30 [{"EventList", "FilterMenu"}]
      310 GETUPVAL                         R34 0
      311 GETTABLEKS                       R34 R34 K23 ["createElement"]
      313 LOADK                            R35 K24 ["Frame"]
      314 NEWTABLE                         R36 4 0
      316 GETUPVAL                         R37 0
      317 GETTABLEKS                       R37 R37 K25 ["Tag"]
      319 GETUPVAL                         R38 13
      320 LOADK                            R39 K26 ["X-Column"]
      321 LOADK                            R40 K31 ["CX-Invisible"]
      322 CALL                             R38 2 1
      323 SETTABLE                         R38 R36 R37
      324 GETUPVAL                         R37 14
      325 NAMECALL                         R37 R37 K32 ["getNextOrder"]
      327 CALL                             R37 1 1
      328 SETTABLEKS                       R37 R36 K33 ["LayoutOrder"]
      330 JUMPIFEQKS                       R4 K3 ["All Events"] ; [+2]
      332 LOADB                            R37 0 +1
      333 LOADB                            R37 1
      334 SETTABLEKS                       R37 R36 K34 ["Visible"]
      336 DUPTABLE                         R37 K37 [{"Header", "ActivityHistoryBubbleListContainer"}]
      337 GETUPVAL                         R38 0
      338 GETTABLEKS                       R38 R38 K23 ["createElement"]
      340 LOADK                            R39 K24 ["Frame"]
      341 NEWTABLE                         R40 4 0
      343 GETUPVAL                         R41 0
      344 GETTABLEKS                       R41 R41 K25 ["Tag"]
      346 GETUPVAL                         R42 13
      347 GETTABLEKS                       R44 R11 K22 ["enabled"]
      349 JUMPIFNOT                        R44 ; [+2]
      350 LOADK                            R43 K38 ["HeaderHovered"]
      351 JUMP                             ; [+1]
      352 LOADNIL                          R43
      353 GETTABLEKS                       R45 R0 K39 ["isPublishedGame"]
      355 JUMPIF                           R45 ; [+2]
      356 LOADK                            R44 K40 ["HeaderDisabled"]
      357 JUMP                             ; [+1]
      358 LOADNIL                          R44
      359 CALL                             R42 2 1
      360 SETTABLE                         R42 R40 R41
      361 GETUPVAL                         R41 0
      362 GETTABLEKS                       R41 R41 K41 ["Event"]
      364 GETTABLEKS                       R41 R41 K42 ["MouseEnter"]
      366 GETTABLEKS                       R42 R11 K43 ["enable"]
      368 SETTABLE                         R42 R40 R41
      369 GETUPVAL                         R41 0
      370 GETTABLEKS                       R41 R41 K41 ["Event"]
      372 GETTABLEKS                       R41 R41 K44 ["MouseLeave"]
      374 GETTABLEKS                       R42 R11 K45 ["disable"]
      376 SETTABLE                         R42 R40 R41
      377 DUPTABLE                         R41 K48 [{"Tooltip", "FilterHeader"}]
      378 GETTABLEKS                       R43 R11 K22 ["enabled"]
      380 JUMPIFNOT                        R43 ; [+1]
      381 JUMPIF                           R24 ; [+2]
      382 LOADNIL                          R42
      383 JUMP                             ; [+10]
      384 GETUPVAL                         R42 0
      385 GETTABLEKS                       R42 R42 K23 ["createElement"]
      387 GETUPVAL                         R43 15
      388 DUPTABLE                         R44 K50 [{"Fragments"}]
      389 GETTABLEKS                       R45 R22 K14 ["descriptiveStrings"]
      391 SETTABLEKS                       R45 R44 K49 ["Fragments"]
      393 CALL                             R42 2 1
      394 SETTABLEKS                       R42 R41 K46 ["Tooltip"]
      396 GETUPVAL                         R42 0
      397 GETTABLEKS                       R42 R42 K23 ["createElement"]
      399 LOADK                            R43 K51 ["TextButton"]
      400 NEWTABLE                         R44 4 0
      402 GETUPVAL                         R45 0
      403 GETTABLEKS                       R45 R45 K25 ["Tag"]
      405 GETUPVAL                         R46 13
      406 LOADK                            R47 K52 ["X-Row"]
      407 LOADK                            R48 K31 ["CX-Invisible"]
      408 CALL                             R46 2 1
      409 SETTABLE                         R46 R44 R45
      410 GETUPVAL                         R45 0
      411 GETTABLEKS                       R45 R45 K41 ["Event"]
      413 GETTABLEKS                       R45 R45 K53 ["Activated"]
      415 NEWCLOSURE                       R46 P12
      416 CAPTURE                          VAL R5
      417 SETTABLE                         R46 R44 R45
      418 LOADK                            R45 K54 [""]
      419 SETTABLEKS                       R45 R44 K55 ["Text"]
      421 GETUPVAL                         R45 14
      422 NAMECALL                         R45 R45 K32 ["getNextOrder"]
      424 CALL                             R45 1 1
      425 SETTABLEKS                       R45 R44 K33 ["LayoutOrder"]
      427 DUPTABLE                         R45 K58 [{"FilterHeaderText", "HeaderIcons"}]
      428 GETUPVAL                         R46 0
      429 GETTABLEKS                       R46 R46 K23 ["createElement"]
      431 LOADK                            R47 K59 ["TextLabel"]
      432 NEWTABLE                         R48 4 0
      434 GETUPVAL                         R49 0
      435 GETTABLEKS                       R49 R49 K25 ["Tag"]
      437 GETUPVAL                         R50 13
      438 LOADK                            R51 K60 ["X-Fit"]
      439 LOADK                            R52 K31 ["CX-Invisible"]
      440 CALL                             R50 2 1
      441 SETTABLE                         R50 R48 R49
      442 GETTABLEKS                       R49 R22 K13 ["shortString"]
      444 SETTABLEKS                       R49 R48 K55 ["Text"]
      446 GETUPVAL                         R49 14
      447 NAMECALL                         R49 R49 K32 ["getNextOrder"]
      449 CALL                             R49 1 1
      450 SETTABLEKS                       R49 R48 K33 ["LayoutOrder"]
      452 CALL                             R46 2 1
      453 SETTABLEKS                       R46 R45 K56 ["FilterHeaderText"]
      455 GETUPVAL                         R46 0
      456 GETTABLEKS                       R46 R46 K23 ["createElement"]
      458 LOADK                            R47 K24 ["Frame"]
      459 NEWTABLE                         R48 2 0
      461 GETUPVAL                         R49 0
      462 GETTABLEKS                       R49 R49 K25 ["Tag"]
      464 GETUPVAL                         R50 13
      465 LOADK                            R51 K52 ["X-Row"]
      466 LOADK                            R52 K31 ["CX-Invisible"]
      467 CALL                             R50 2 1
      468 SETTABLE                         R50 R48 R49
      469 GETUPVAL                         R49 14
      470 NAMECALL                         R49 R49 K32 ["getNextOrder"]
      472 CALL                             R49 1 1
      473 SETTABLEKS                       R49 R48 K33 ["LayoutOrder"]
      475 DUPTABLE                         R49 K63 [{"ClearFiltersIconContainer", "FilterHeaderIconContainer"}]
      476 JUMPIF                           R24 ; [+2]
      477 LOADNIL                          R50
      478 JUMP                             ; [+43]
      479 GETUPVAL                         R50 0
      480 GETTABLEKS                       R50 R50 K23 ["createElement"]
      482 LOADK                            R51 K24 ["Frame"]
      483 NEWTABLE                         R52 2 0
      485 GETUPVAL                         R53 0
      486 GETTABLEKS                       R53 R53 K25 ["Tag"]
      488 GETUPVAL                         R54 13
      489 LOADK                            R55 K31 ["CX-Invisible"]
      490 LOADK                            R56 K64 ["HeaderIcon"]
      491 CALL                             R54 2 1
      492 SETTABLE                         R54 R52 R53
      493 GETUPVAL                         R53 14
      494 NAMECALL                         R53 R53 K32 ["getNextOrder"]
      496 CALL                             R53 1 1
      497 SETTABLEKS                       R53 R52 K33 ["LayoutOrder"]
      499 DUPTABLE                         R53 K66 [{"ClearFiltersIcon"}]
      500 GETUPVAL                         R54 0
      501 GETTABLEKS                       R54 R54 K23 ["createElement"]
      503 LOADK                            R55 K67 ["ImageButton"]
      504 NEWTABLE                         R56 2 0
      506 GETUPVAL                         R57 0
      507 GETTABLEKS                       R57 R57 K41 ["Event"]
      509 GETTABLEKS                       R57 R57 K53 ["Activated"]
      511 SETTABLE                         R28 R56 R57
      512 GETUPVAL                         R57 14
      513 NAMECALL                         R57 R57 K32 ["getNextOrder"]
      515 CALL                             R57 1 1
      516 SETTABLEKS                       R57 R56 K33 ["LayoutOrder"]
      518 CALL                             R54 2 1
      519 SETTABLEKS                       R54 R53 K65 ["ClearFiltersIcon"]
      521 CALL                             R50 3 1
      522 SETTABLEKS                       R50 R49 K61 ["ClearFiltersIconContainer"]
      524 GETUPVAL                         R50 0
      525 GETTABLEKS                       R50 R50 K23 ["createElement"]
      527 LOADK                            R51 K24 ["Frame"]
      528 NEWTABLE                         R52 2 0
      530 GETUPVAL                         R53 0
      531 GETTABLEKS                       R53 R53 K25 ["Tag"]
      533 GETUPVAL                         R54 13
      534 LOADK                            R55 K31 ["CX-Invisible"]
      535 LOADK                            R56 K64 ["HeaderIcon"]
      536 CALL                             R54 2 1
      537 SETTABLE                         R54 R52 R53
      538 GETUPVAL                         R53 14
      539 NAMECALL                         R53 R53 K32 ["getNextOrder"]
      541 CALL                             R53 1 1
      542 SETTABLEKS                       R53 R52 K33 ["LayoutOrder"]
      544 DUPTABLE                         R53 K69 [{"FilterHeaderIcon"}]
      545 GETUPVAL                         R54 0
      546 GETTABLEKS                       R54 R54 K23 ["createElement"]
      548 LOADK                            R55 K70 ["ImageLabel"]
      549 DUPTABLE                         R56 K71 [{"LayoutOrder"}]
      550 GETUPVAL                         R57 14
      551 NAMECALL                         R57 R57 K32 ["getNextOrder"]
      553 CALL                             R57 1 1
      554 SETTABLEKS                       R57 R56 K33 ["LayoutOrder"]
      556 CALL                             R54 2 1
      557 SETTABLEKS                       R54 R53 K68 ["FilterHeaderIcon"]
      559 CALL                             R50 3 1
      560 SETTABLEKS                       R50 R49 K62 ["FilterHeaderIconContainer"]
      562 CALL                             R46 3 1
      563 SETTABLEKS                       R46 R45 K57 ["HeaderIcons"]
      565 CALL                             R42 3 1
      566 SETTABLEKS                       R42 R41 K47 ["FilterHeader"]
      568 CALL                             R38 3 1
      569 SETTABLEKS                       R38 R37 K35 ["Header"]
      571 GETUPVAL                         R38 0
      572 GETTABLEKS                       R38 R38 K23 ["createElement"]
      574 LOADK                            R39 K24 ["Frame"]
      575 NEWTABLE                         R40 2 0
      577 GETUPVAL                         R41 0
      578 GETTABLEKS                       R41 R41 K25 ["Tag"]
      580 GETUPVAL                         R42 13
      581 LOADK                            R43 K31 ["CX-Invisible"]
      582 CALL                             R42 1 1
      583 SETTABLE                         R42 R40 R41
      584 GETUPVAL                         R41 14
      585 NAMECALL                         R41 R41 K32 ["getNextOrder"]
      587 CALL                             R41 1 1
      588 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      590 DUPTABLE                         R41 K73 [{"ActivityHistoryBubbleList"}]
      591 GETTABLEKS                       R43 R0 K39 ["isPublishedGame"]
      593 JUMPIF                           R43 ; [+8]
      594 GETUPVAL                         R42 0
      595 GETTABLEKS                       R42 R42 K23 ["createElement"]
      597 GETUPVAL                         R43 16
      598 NEWTABLE                         R44 0 0
      600 CALL                             R42 2 1
      601 JUMP                             ; [+41]
      602 GETUPVAL                         R42 0
      603 GETTABLEKS                       R42 R42 K23 ["createElement"]
      605 GETUPVAL                         R43 17
      606 NEWTABLE                         R44 16 0
      608 GETUPVAL                         R45 0
      609 GETTABLEKS                       R45 R45 K25 ["Tag"]
      611 LOADK                            R46 K74 [".ActivityHistoryBubbleList"]
      612 SETTABLE                         R46 R44 R45
      613 GETTABLEKS                       R45 R25 K75 ["vlref"]
      615 SETTABLEKS                       R45 R44 K76 ["Vlref"]
      617 GETTABLEKS                       R45 R25 K77 ["eventList"]
      619 SETTABLEKS                       R45 R44 K78 ["Events"]
      621 LOADK                            R45 K79 [∞]
      622 SETTABLEKS                       R45 R44 K80 ["IndexOffset"]
      624 SETTABLEKS                       R14 R44 K81 ["OnViewableItemsChanged"]
      626 GETTABLEKS                       R45 R25 K82 ["onScroll"]
      628 SETTABLEKS                       R45 R44 K83 ["OnScroll"]
      630 GETTABLEKS                       R45 R25 K84 ["fetchPreviousPageInProgress"]
      632 SETTABLEKS                       R45 R44 K85 ["ShowHeaderLoadingIndicator"]
      634 GETTABLEKS                       R45 R25 K86 ["fetchNextPageInProgress"]
      636 SETTABLEKS                       R45 R44 K87 ["ShowFooterLoadingIndicator"]
      638 NEWCLOSURE                       R45 P13
      639 CAPTURE                          VAL R5
      640 SETTABLEKS                       R45 R44 K88 ["OpenFiltersFn"]
      642 CALL                             R42 2 1
      643 SETTABLEKS                       R42 R41 K72 ["ActivityHistoryBubbleList"]
      645 CALL                             R38 3 1
      646 SETTABLEKS                       R38 R37 K36 ["ActivityHistoryBubbleListContainer"]
      648 CALL                             R34 3 1
      649 SETTABLEKS                       R34 R33 K28 ["EventList"]
      651 GETUPVAL                         R34 0
      652 GETTABLEKS                       R34 R34 K23 ["createElement"]
      654 LOADK                            R35 K24 ["Frame"]
      655 DUPTABLE                         R36 K89 [{"LayoutOrder", "Visible"}]
      656 GETUPVAL                         R37 14
      657 NAMECALL                         R37 R37 K32 ["getNextOrder"]
      659 CALL                             R37 1 1
      660 SETTABLEKS                       R37 R36 K33 ["LayoutOrder"]
      662 JUMPIFNOTEQKS                    R4 K3 ["All Events"] ; [+2]
      664 LOADB                            R37 0 +1
      665 LOADB                            R37 1
      666 SETTABLEKS                       R37 R36 K34 ["Visible"]
      668 DUPTABLE                         R37 K90 [{"FilterMenu"}]
      669 GETUPVAL                         R38 0
      670 GETTABLEKS                       R38 R38 K23 ["createElement"]
      672 GETUPVAL                         R39 8
      673 GETTABLEKS                       R39 R39 K29 ["FilterMenu"]
      675 DUPTABLE                         R40 K96 [{"collaborators", "selectedFilters", "onApply", "onClear", "onChange"}]
      676 GETTABLEKS                       R41 R15 K12 ["cache"]
      678 SETTABLEKS                       R41 R40 K91 ["collaborators"]
      680 SETTABLEKS                       R18 R40 K92 ["selectedFilters"]
      682 SETTABLEKS                       R27 R40 K93 ["onApply"]
      684 SETTABLEKS                       R28 R40 K94 ["onClear"]
      686 SETTABLEKS                       R29 R40 K95 ["onChange"]
      688 CALL                             R38 2 1
      689 SETTABLEKS                       R38 R37 K29 ["FilterMenu"]
      691 CALL                             R34 3 1
      692 SETTABLEKS                       R34 R33 K29 ["FilterMenu"]
      694 CALL                             R30 3 1
      695 JUMPIF                           R30 ; [+1]
      696 LOADNIL                          R30
      697 RETURN                           R30 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["ReactUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K12 ["SharedTypes"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       48 GETTABLEKS                       R6 R6 K14 ["Analytics"]
       50 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       52 GETTABLEKS                       R7 R7 K15 ["Localization"]
       54 GETTABLEKS                       R8 R3 K11 ["Util"]
       56 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       58 GETTABLEKS                       R9 R8 K17 ["new"]
       60 CALL                             R9 0 1
       61 GETTABLEKS                       R10 R3 K18 ["Styling"]
       63 GETTABLEKS                       R10 R10 K19 ["joinTags"]
       65 GETTABLEKS                       R11 R2 K20 ["useToggleState"]
       67 GETTABLEKS                       R12 R5 K21 ["SectionHeaderType"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETTABLEKS                       R14 R0 K10 ["Src"]
       73 GETTABLEKS                       R14 R14 K22 ["Contexts"]
       75 GETTABLEKS                       R14 R14 K23 ["ActivityHistoryContext"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R15 R0 K10 ["Src"]
       82 GETTABLEKS                       R15 R15 K24 ["Components"]
       84 GETTABLEKS                       R15 R15 K25 ["FilterMenu"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K4 [require]
       89 GETTABLEKS                       R16 R0 K10 ["Src"]
       91 GETTABLEKS                       R16 R16 K24 ["Components"]
       93 GETTABLEKS                       R16 R16 K26 ["ActivityHistoryBubbleList"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K4 [require]
       98 GETTABLEKS                       R17 R0 K10 ["Src"]
      100 GETTABLEKS                       R17 R17 K24 ["Components"]
      102 GETTABLEKS                       R17 R17 K27 ["Tooltip"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K4 [require]
      107 GETTABLEKS                       R18 R0 K10 ["Src"]
      109 GETTABLEKS                       R18 R18 K24 ["Components"]
      111 GETTABLEKS                       R18 R18 K28 ["EnableTeamCreate"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K4 [require]
      116 GETTABLEKS                       R19 R0 K10 ["Src"]
      118 GETTABLEKS                       R19 R19 K29 ["Hooks"]
      120 GETTABLEKS                       R19 R19 K30 ["BidirectionalInfiniteScroll"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K4 [require]
      125 GETTABLEKS                       R20 R0 K10 ["Src"]
      127 GETTABLEKS                       R20 R20 K29 ["Hooks"]
      129 GETTABLEKS                       R20 R20 K31 ["UsernameCache"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K33 [game]
      134 LOADK                            R22 K34 ["ActivityFeedBDISFetchSensitivity"]
      135 NAMECALL                         R20 R20 K35 ["GetFastInt"]
      137 CALL                             R20 2 1
      138 GETIMPORT                        R21 K33 [game]
      140 LOADK                            R23 K36 ["ActivityFeedBDISMinEvents"]
      141 NAMECALL                         R21 R21 K35 ["GetFastInt"]
      143 CALL                             R21 2 1
      144 GETIMPORT                        R22 K33 [game]
      146 LOADK                            R24 K37 ["ActivityFeedRefreshMs"]
      147 NAMECALL                         R22 R22 K35 ["GetFastInt"]
      149 CALL                             R22 2 1
      150 DUPTABLE                         R23 K41 [{["AllEvents"] = "All Events", ["FilterMenu"] = "Filter Menu"}]
      151 DUPCLOSURE                       R24 K42 [PROTO_23]
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R15
      170 RETURN                           R24 1
