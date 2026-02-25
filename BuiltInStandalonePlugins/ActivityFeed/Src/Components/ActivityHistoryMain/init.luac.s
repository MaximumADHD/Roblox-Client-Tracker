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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R3 K1 ["join"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["current"]
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
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K5 ["fetchUsernames"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R5 R0 K2 ["responseBody"]
        6 GETTABLEKS                       R3 R5 K3 ["events"]
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
       21 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       23 GETTABLEKS                       R2 R3 K3 ["events"]
       25 GETUPVAL                         R4 2
       26 JUMPIF                           R4 ; [+14]
       27 GETTABLEKS                       R5 R0 K2 ["responseBody"]
       29 GETTABLEKS                       R4 R5 K5 ["hasMore"]
       31 JUMPIFNOT                        R4 ; [+9]
       32 LENGTH                           R4 R2
       33 LOADN                            R5 0
       34 JUMPIFNOTLT                      R5 R4 ; [+6]
       36 GETTABLEKS                       R4 R0 K2 ["responseBody"]
       38 GETTABLEKS                       R3 R4 K6 ["nextCursor"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R3
       42 GETUPVAL                         R5 2
       43 JUMPIFNOT                        R5 ; [+14]
       44 GETTABLEKS                       R6 R0 K2 ["responseBody"]
       46 GETTABLEKS                       R5 R6 K5 ["hasMore"]
       48 JUMPIFNOT                        R5 ; [+9]
       49 LENGTH                           R5 R2
       50 LOADN                            R6 0
       51 JUMPIFNOTLT                      R6 R5 ; [+6]
       53 GETTABLEKS                       R5 R0 K2 ["responseBody"]
       55 GETTABLEKS                       R4 R5 K6 ["nextCursor"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R4
       59 GETUPVAL                         R5 3
       60 JUMPIFEQKNIL                     R5 ; [+46]
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R5 R6 K7 ["DaysAgo"]
       65 JUMPIFEQKNIL                     R5 ; [+41]
       67 GETUPVAL                         R6 3
       68 GETTABLEKS                       R5 R6 K7 ["DaysAgo"]
       70 LOADN                            R6 0
       71 JUMPIFNOTLT                      R6 R5 ; [+35]
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R5 R6 K8 ["FirstFetch"]
       76 JUMPIFNOT                        R5 ; [+14]
       77 GETUPVAL                         R5 3
       78 LOADB                            R6 0
       79 SETTABLEKS                       R6 R5 K8 ["FirstFetch"]
       81 GETTABLEN                        R5 R2 1
       82 JUMPIFEQKNIL                     R5 ; [+24]
       84 GETTABLEN                        R5 R2 1
       85 GETUPVAL                         R7 4
       86 GETTABLEKS                       R6 R7 K9 ["Middle"]
       88 SETTABLEKS                       R6 R5 K10 ["headerType"]
       90 JUMP                             ; [+16]
       91 GETTABLEKS                       R6 R0 K2 ["responseBody"]
       93 GETTABLEKS                       R5 R6 K5 ["hasMore"]
       95 JUMPIF                           R5 ; [+11]
       96 GETUPVAL                         R5 2
       97 JUMPIFNOT                        R5 ; [+9]
       98 GETTABLEN                        R5 R2 1
       99 JUMPIFEQKNIL                     R5 ; [+7]
      101 GETTABLEN                        R5 R2 1
      102 GETUPVAL                         R7 4
      103 GETTABLEKS                       R6 R7 K11 ["Top"]
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
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["activityHistoryClient"]
        3 GETTABLEKS                       R6 R7 K1 ["fetchActivityHistory"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilterEmptyState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["cache"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K1 ["addNewEvent"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mergeFilterOptions"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["getUnixMsFromDateIndex"]
        9 GETTABLEKS                       R2 R0 K2 ["JumpToDateIndex"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["getNumDaysFromDateIndex"]
       15 GETTABLEKS                       R3 R0 K2 ["JumpToDateIndex"]
       17 CALL                             R2 1 1
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+13]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K4 ["jumpToDate"]
       24 MOVE                             R4 R1
       25 DUPTABLE                         R5 K7 [{"DaysAgo", "FirstFetch"}]
       26 SETTABLEKS                       R2 R5 K5 ["DaysAgo"]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K6 ["FirstFetch"]
       31 CALL                             R3 2 0
       32 JUMP                             ; [+5]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R3 R4 K4 ["jumpToDate"]
       36 LOADNIL                          R4
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 4
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CALL                             R3 1 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K8 ["filterOptionsToStrings"]
       48 MOVE                             R4 R0
       49 GETUPVAL                         R5 6
       50 GETUPVAL                         R7 7
       51 GETTABLEKS                       R6 R7 K9 ["cache"]
       53 CALL                             R3 3 1
       54 GETTABLEKS                       R5 R3 K10 ["shortString"]
       56 LENGTH                           R4 R5
       57 JUMPIFNOTEQKN                    R4 K11 [0] ; [+17]
       59 GETUPVAL                         R4 8
       60 DUPTABLE                         R5 K13 [{"shortString", "descriptiveStrings"}]
       61 GETUPVAL                         R6 6
       62 LOADK                            R8 K14 ["ActivityHistoryMain"]
       63 LOADK                            R9 K15 ["AllEvents"]
       64 NAMECALL                         R6 R6 K16 ["getText"]
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K10 ["shortString"]
       69 NEWTABLE                         R6 0 0
       71 SETTABLEKS                       R6 R5 K12 ["descriptiveStrings"]
       73 CALL                             R4 1 0
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R4 8
       76 MOVE                             R5 R3
       77 CALL                             R4 1 0
       78 LOADN                            R4 0
       79 LOADN                            R5 0
       80 LOADN                            R6 0
       81 LOADN                            R7 0
       82 LOADK                            R8 K17 [""]
       83 GETIMPORT                        R9 K19 [pairs]
       85 GETTABLEKS                       R10 R0 K20 ["EventCategories"]
       87 CALL                             R9 1 3
       88 FORGPREP_NEXT                    R9
       89 GETTABLEKS                       R15 R0 K20 ["EventCategories"]
       91 GETTABLE                         R14 R15 R12
       92 JUMPIFNOT                        R14 ; [+11]
       93 LENGTH                           R14 R8
       94 LOADN                            R15 0
       95 JUMPIFNOTLT                      R15 R14 ; [+4]
       97 MOVE                             R14 R8
       98 LOADK                            R15 K21 [","]
       99 CONCAT                           R8 R14 R15
      100 ADDK                             R6 R6 K22 [1]
      101 MOVE                             R14 R8
      102 MOVE                             R15 R12
      103 CONCAT                           R8 R14 R15
      104 ADDK                             R7 R7 K22 [1]
      105 FORGLOOP                         R9 2 ; [-17]
      107 GETIMPORT                        R9 K19 [pairs]
      109 GETTABLEKS                       R10 R0 K23 ["Collaborators"]
      111 CALL                             R9 1 3
      112 FORGPREP_NEXT                    R9
      113 GETTABLEKS                       R15 R0 K23 ["Collaborators"]
      115 GETTABLE                         R14 R15 R12
      116 JUMPIFNOT                        R14 ; [+1]
      117 ADDK                             R4 R4 K22 [1]
      118 ADDK                             R5 R5 K22 [1]
      119 FORGLOOP                         R9 2 ; [-7]
      121 GETUPVAL                         R9 9
      122 LOADK                            R11 K24 ["applyFilters"]
      123 MOVE                             R12 R4
      124 MOVE                             R13 R5
      125 MOVE                             R14 R6
      126 MOVE                             R15 R7
      127 MOVE                             R16 R8
      128 MOVE                             R17 R2
      129 GETUPVAL                         R18 5
      130 GETUPVAL                         R19 10
      131 NAMECALL                         R9 R9 K25 ["report"]
      133 CALL                             R9 10 0
      134 GETUPVAL                         R9 11
      135 GETUPVAL                         R11 12
      136 GETTABLEKS                       R10 R11 K15 ["AllEvents"]
      138 CALL                             R9 1 0
      139 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filterOptionsToFilterFn"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["compareFilterOptions"]
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
       29 GETUPVAL                         R2 6
       30 GETTABLEKS                       R1 R2 K7 ["jumpToDate"]
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
       18 GETUPVAL                         R2 11
       19 GETTABLEKS                       R1 R2 K2 ["AllEvents"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["compareFilterOptions"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["mergeFilterOptions"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["FilterMenu"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["FilterMenu"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 NAMECALL                         R3 R3 K1 ["use"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["useState"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K3 ["AllEvents"]
       19 CALL                             R4 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K2 ["useState"]
       23 NEWTABLE                         R7 0 0
       25 CALL                             R6 1 2
       26 GETTABLEKS                       R8 R1 K4 ["usePlaceAndUniverseId"]
       28 CALL                             R8 0 2
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K5 ["useRef"]
       32 NEWTABLE                         R11 0 0
       34 CALL                             R10 1 1
       35 GETUPVAL                         R11 5
       36 LOADB                            R12 0
       37 CALL                             R11 1 1
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       41 NEWCLOSURE                       R13 P0
       42 CAPTURE                          VAL R10
       43 NEWTABLE                         R14 0 0
       45 CALL                             R12 2 1
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R13 R14 K6 ["useMemo"]
       49 NEWCLOSURE                       R14 P1
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R15 0 3
       56 MOVE                             R16 R10
       57 MOVE                             R17 R8
       58 MOVE                             R18 R9
       59 SETLIST                          R15 R16 3 [1]
       61 CALL                             R13 2 1
       62 GETTABLEKS                       R14 R1 K7 ["useConnectToDataModelSessionEffect"]
       64 MOVE                             R15 R12
       65 MOVE                             R16 R13
       66 CALL                             R14 2 0
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       70 NEWCLOSURE                       R15 P2
       71 CAPTURE                          VAL R10
       72 CAPTURE                          UPVAL U6
       73 NEWTABLE                         R16 0 1
       75 MOVE                             R17 R10
       76 SETLIST                          R16 R17 1 [1]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R15 7
       80 CALL                             R15 0 1
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R16 R17 K9 ["useEffect"]
       84 NEWCLOSURE                       R17 P3
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R15
       87 NEWTABLE                         R18 0 2
       89 MOVE                             R19 R6
       90 GETTABLEKS                       R20 R15 K10 ["fetchUsernames"]
       92 SETLIST                          R18 R19 2 [1]
       94 CALL                             R16 2 0
       95 LOADNIL                          R16
       96 GETUPVAL                         R18 0
       97 GETTABLEKS                       R17 R18 K8 ["useCallback"]
       99 NEWCLOSURE                       R18 P4
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R7
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U8
      106 NEWTABLE                         R19 0 3
      108 GETTABLEKS                       R20 R1 K11 ["activityHistoryClient"]
      110 MOVE                             R21 R8
      111 MOVE                             R22 R9
      112 SETLIST                          R19 R20 3 [1]
      114 CALL                             R17 2 1
      115 MOVE                             R16 R17
      116 GETUPVAL                         R18 0
      117 GETTABLEKS                       R17 R18 K6 ["useMemo"]
      119 NEWCLOSURE                       R18 P5
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R2
      123 NEWTABLE                         R19 0 2
      125 GETTABLEKS                       R20 R15 K12 ["cache"]
      127 MOVE                             R21 R2
      128 SETLIST                          R19 R20 2 [1]
      130 CALL                             R17 2 1
      131 GETUPVAL                         R19 0
      132 GETTABLEKS                       R18 R19 K2 ["useState"]
      134 MOVE                             R19 R17
      135 CALL                             R18 1 2
      136 GETUPVAL                         R21 0
      137 GETTABLEKS                       R20 R21 K2 ["useState"]
      139 NEWCLOSURE                       R21 P6
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R2
      144 CALL                             R20 1 2
      145 GETUPVAL                         R23 0
      146 GETTABLEKS                       R22 R23 K2 ["useState"]
      148 DUPTABLE                         R23 K15 [{"shortString", "descriptiveStrings"}]
      149 LOADK                            R26 K16 ["ActivityHistoryMain"]
      150 LOADK                            R27 K3 ["AllEvents"]
      151 NAMECALL                         R24 R2 K17 ["getText"]
      153 CALL                             R24 3 1
      154 SETTABLEKS                       R24 R23 K13 ["shortString"]
      156 NEWTABLE                         R24 0 0
      158 SETTABLEKS                       R24 R23 K14 ["descriptiveStrings"]
      160 CALL                             R22 1 2
      161 GETTABLEKS                       R26 R22 K14 ["descriptiveStrings"]
      163 LENGTH                           R25 R26
      164 LOADN                            R26 0
      165 JUMPIFLT                         R26 R25 ; [+2]
      167 LOADB                            R24 0 +1
      168 LOADB                            R24 1
      169 GETUPVAL                         R25 10
      170 MOVE                             R26 R16
      171 MOVE                             R27 R20
      172 GETUPVAL                         R28 11
      173 GETUPVAL                         R29 12
      174 GETUPVAL                         R30 13
      175 CALL                             R25 5 1
      176 GETUPVAL                         R27 0
      177 GETTABLEKS                       R26 R27 K8 ["useCallback"]
      179 NEWCLOSURE                       R27 P7
      180 CAPTURE                          VAL R7
      181 CAPTURE                          UPVAL U6
      182 CAPTURE                          VAL R25
      183 NEWTABLE                         R28 0 1
      185 GETTABLEKS                       R29 R25 K18 ["addNewEvent"]
      187 SETLIST                          R28 R29 1 [1]
      189 CALL                             R26 2 1
      190 GETUPVAL                         R28 0
      191 GETTABLEKS                       R27 R28 K9 ["useEffect"]
      193 GETTABLEKS                       R29 R1 K11 ["activityHistoryClient"]
      195 GETTABLEKS                       R28 R29 K19 ["activityFeedRTEEffect"]
      197 MOVE                             R29 R1
      198 MOVE                             R30 R9
      199 MOVE                             R31 R26
      200 CALL                             R28 3 1
      201 NEWTABLE                         R29 0 3
      203 MOVE                             R30 R1
      204 MOVE                             R31 R9
      205 MOVE                             R32 R26
      206 SETLIST                          R29 R30 3 [1]
      208 CALL                             R27 2 0
      209 GETUPVAL                         R28 0
      210 GETTABLEKS                       R27 R28 K8 ["useCallback"]
      212 NEWCLOSURE                       R28 P8
      213 CAPTURE                          UPVAL U9
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R5
      225 CAPTURE                          UPVAL U4
      226 NEWTABLE                         R29 0 9
      228 MOVE                             R30 R18
      229 GETTABLEKS                       R31 R25 K20 ["jumpToDate"]
      231 MOVE                             R32 R21
      232 MOVE                             R33 R2
      233 GETTABLEKS                       R34 R15 K12 ["cache"]
      235 MOVE                             R35 R23
      236 MOVE                             R36 R17
      237 MOVE                             R37 R8
      238 MOVE                             R38 R9
      239 SETLIST                          R29 R30 9 [1]
      241 CALL                             R27 2 1
      242 GETUPVAL                         R29 0
      243 GETTABLEKS                       R28 R29 K8 ["useCallback"]
      245 NEWCLOSURE                       R29 P9
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R8
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R19
      250 CAPTURE                          UPVAL U9
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R5
      257 CAPTURE                          UPVAL U4
      258 NEWTABLE                         R30 0 8
      260 MOVE                             R31 R19
      261 MOVE                             R32 R21
      262 MOVE                             R33 R23
      263 MOVE                             R34 R2
      264 MOVE                             R35 R8
      265 MOVE                             R36 R9
      266 GETTABLEKS                       R37 R25 K20 ["jumpToDate"]
      268 MOVE                             R38 R17
      269 SETLIST                          R30 R31 8 [1]
      271 CALL                             R28 2 1
      272 GETUPVAL                         R30 0
      273 GETTABLEKS                       R29 R30 K8 ["useCallback"]
      275 NEWCLOSURE                       R30 P10
      276 CAPTURE                          VAL R19
      277 CAPTURE                          UPVAL U9
      278 NEWTABLE                         R31 0 1
      280 MOVE                             R32 R19
      281 SETLIST                          R31 R32 1 [1]
      283 CALL                             R29 2 1
      284 GETUPVAL                         R31 0
      285 GETTABLEKS                       R30 R31 K9 ["useEffect"]
      287 NEWCLOSURE                       R31 P11
      288 CAPTURE                          VAL R27
      289 NEWTABLE                         R32 0 2
      291 MOVE                             R33 R8
      292 MOVE                             R34 R9
      293 SETLIST                          R32 R33 2 [1]
      295 CALL                             R30 2 0
      296 GETTABLEKS                       R31 R0 K21 ["enabled"]
      298 JUMPIFNOT                        R31 ; [+409]
      299 GETUPVAL                         R31 0
      300 GETTABLEKS                       R30 R31 K22 ["createElement"]
      302 LOADK                            R31 K23 ["Frame"]
      303 NEWTABLE                         R32 1 0
      305 GETUPVAL                         R34 0
      306 GETTABLEKS                       R33 R34 K24 ["Tag"]
      308 GETUPVAL                         R34 14
      309 LOADK                            R35 K25 ["X-Column"]
      310 LOADK                            R36 K26 ["Component-ActivityHistoryMain"]
      311 CALL                             R34 2 1
      312 SETTABLE                         R34 R32 R33
      313 DUPTABLE                         R33 K29 [{"EventList", "FilterMenu"}]
      314 GETUPVAL                         R35 0
      315 GETTABLEKS                       R34 R35 K22 ["createElement"]
      317 LOADK                            R35 K23 ["Frame"]
      318 NEWTABLE                         R36 4 0
      320 GETUPVAL                         R38 0
      321 GETTABLEKS                       R37 R38 K24 ["Tag"]
      323 GETUPVAL                         R38 14
      324 LOADK                            R39 K25 ["X-Column"]
      325 LOADK                            R40 K30 ["CX-Invisible"]
      326 CALL                             R38 2 1
      327 SETTABLE                         R38 R36 R37
      328 GETUPVAL                         R37 15
      329 NAMECALL                         R37 R37 K31 ["getNextOrder"]
      331 CALL                             R37 1 1
      332 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      334 GETUPVAL                         R39 4
      335 GETTABLEKS                       R38 R39 K3 ["AllEvents"]
      337 JUMPIFEQ                         R4 R38 ; [+2]
      339 LOADB                            R37 0 +1
      340 LOADB                            R37 1
      341 SETTABLEKS                       R37 R36 K33 ["Visible"]
      343 DUPTABLE                         R37 K36 [{"Header", "ActivityHistoryBubbleListContainer"}]
      344 GETUPVAL                         R39 0
      345 GETTABLEKS                       R38 R39 K22 ["createElement"]
      347 LOADK                            R39 K23 ["Frame"]
      348 NEWTABLE                         R40 4 0
      350 GETUPVAL                         R42 0
      351 GETTABLEKS                       R41 R42 K24 ["Tag"]
      353 GETUPVAL                         R42 14
      354 GETTABLEKS                       R44 R11 K21 ["enabled"]
      356 JUMPIFNOT                        R44 ; [+2]
      357 LOADK                            R43 K37 ["HeaderHovered"]
      358 JUMP                             ; [+1]
      359 LOADNIL                          R43
      360 GETTABLEKS                       R45 R0 K38 ["isPublishedGame"]
      362 JUMPIF                           R45 ; [+2]
      363 LOADK                            R44 K39 ["HeaderDisabled"]
      364 JUMP                             ; [+1]
      365 LOADNIL                          R44
      366 CALL                             R42 2 1
      367 SETTABLE                         R42 R40 R41
      368 GETUPVAL                         R43 0
      369 GETTABLEKS                       R42 R43 K40 ["Event"]
      371 GETTABLEKS                       R41 R42 K41 ["MouseEnter"]
      373 GETTABLEKS                       R42 R11 K42 ["enable"]
      375 SETTABLE                         R42 R40 R41
      376 GETUPVAL                         R43 0
      377 GETTABLEKS                       R42 R43 K40 ["Event"]
      379 GETTABLEKS                       R41 R42 K43 ["MouseLeave"]
      381 GETTABLEKS                       R42 R11 K44 ["disable"]
      383 SETTABLE                         R42 R40 R41
      384 DUPTABLE                         R41 K47 [{"Tooltip", "FilterHeader"}]
      385 GETTABLEKS                       R43 R11 K21 ["enabled"]
      387 JUMPIFNOT                        R43 ; [+1]
      388 JUMPIF                           R24 ; [+2]
      389 LOADNIL                          R42
      390 JUMP                             ; [+10]
      391 GETUPVAL                         R43 0
      392 GETTABLEKS                       R42 R43 K22 ["createElement"]
      394 GETUPVAL                         R43 16
      395 DUPTABLE                         R44 K49 [{"Fragments"}]
      396 GETTABLEKS                       R45 R22 K14 ["descriptiveStrings"]
      398 SETTABLEKS                       R45 R44 K48 ["Fragments"]
      400 CALL                             R42 2 1
      401 SETTABLEKS                       R42 R41 K45 ["Tooltip"]
      403 GETUPVAL                         R43 0
      404 GETTABLEKS                       R42 R43 K22 ["createElement"]
      406 LOADK                            R43 K50 ["TextButton"]
      407 NEWTABLE                         R44 4 0
      409 GETUPVAL                         R46 0
      410 GETTABLEKS                       R45 R46 K24 ["Tag"]
      412 GETUPVAL                         R46 14
      413 LOADK                            R47 K51 ["X-Row"]
      414 LOADK                            R48 K30 ["CX-Invisible"]
      415 CALL                             R46 2 1
      416 SETTABLE                         R46 R44 R45
      417 GETUPVAL                         R47 0
      418 GETTABLEKS                       R46 R47 K40 ["Event"]
      420 GETTABLEKS                       R45 R46 K52 ["Activated"]
      422 NEWCLOSURE                       R46 P12
      423 CAPTURE                          VAL R5
      424 CAPTURE                          UPVAL U4
      425 SETTABLE                         R46 R44 R45
      426 LOADK                            R45 K53 [""]
      427 SETTABLEKS                       R45 R44 K54 ["Text"]
      429 GETUPVAL                         R45 15
      430 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      432 CALL                             R45 1 1
      433 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      435 DUPTABLE                         R45 K57 [{"FilterHeaderText", "HeaderIcons"}]
      436 GETUPVAL                         R47 0
      437 GETTABLEKS                       R46 R47 K22 ["createElement"]
      439 LOADK                            R47 K58 ["TextLabel"]
      440 NEWTABLE                         R48 4 0
      442 GETUPVAL                         R50 0
      443 GETTABLEKS                       R49 R50 K24 ["Tag"]
      445 GETUPVAL                         R50 14
      446 LOADK                            R51 K59 ["X-Fit"]
      447 LOADK                            R52 K30 ["CX-Invisible"]
      448 CALL                             R50 2 1
      449 SETTABLE                         R50 R48 R49
      450 GETTABLEKS                       R49 R22 K13 ["shortString"]
      452 SETTABLEKS                       R49 R48 K54 ["Text"]
      454 GETUPVAL                         R49 15
      455 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      457 CALL                             R49 1 1
      458 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      460 CALL                             R46 2 1
      461 SETTABLEKS                       R46 R45 K55 ["FilterHeaderText"]
      463 GETUPVAL                         R47 0
      464 GETTABLEKS                       R46 R47 K22 ["createElement"]
      466 LOADK                            R47 K23 ["Frame"]
      467 NEWTABLE                         R48 2 0
      469 GETUPVAL                         R50 0
      470 GETTABLEKS                       R49 R50 K24 ["Tag"]
      472 GETUPVAL                         R50 14
      473 LOADK                            R51 K51 ["X-Row"]
      474 LOADK                            R52 K30 ["CX-Invisible"]
      475 CALL                             R50 2 1
      476 SETTABLE                         R50 R48 R49
      477 GETUPVAL                         R49 15
      478 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      480 CALL                             R49 1 1
      481 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      483 DUPTABLE                         R49 K62 [{"ClearFiltersIconContainer", "FilterHeaderIconContainer"}]
      484 JUMPIF                           R24 ; [+2]
      485 LOADNIL                          R50
      486 JUMP                             ; [+43]
      487 GETUPVAL                         R51 0
      488 GETTABLEKS                       R50 R51 K22 ["createElement"]
      490 LOADK                            R51 K23 ["Frame"]
      491 NEWTABLE                         R52 2 0
      493 GETUPVAL                         R54 0
      494 GETTABLEKS                       R53 R54 K24 ["Tag"]
      496 GETUPVAL                         R54 14
      497 LOADK                            R55 K30 ["CX-Invisible"]
      498 LOADK                            R56 K63 ["HeaderIcon"]
      499 CALL                             R54 2 1
      500 SETTABLE                         R54 R52 R53
      501 GETUPVAL                         R53 15
      502 NAMECALL                         R53 R53 K31 ["getNextOrder"]
      504 CALL                             R53 1 1
      505 SETTABLEKS                       R53 R52 K32 ["LayoutOrder"]
      507 DUPTABLE                         R53 K65 [{"ClearFiltersIcon"}]
      508 GETUPVAL                         R55 0
      509 GETTABLEKS                       R54 R55 K22 ["createElement"]
      511 LOADK                            R55 K66 ["ImageButton"]
      512 NEWTABLE                         R56 2 0
      514 GETUPVAL                         R59 0
      515 GETTABLEKS                       R58 R59 K40 ["Event"]
      517 GETTABLEKS                       R57 R58 K52 ["Activated"]
      519 SETTABLE                         R28 R56 R57
      520 GETUPVAL                         R57 15
      521 NAMECALL                         R57 R57 K31 ["getNextOrder"]
      523 CALL                             R57 1 1
      524 SETTABLEKS                       R57 R56 K32 ["LayoutOrder"]
      526 CALL                             R54 2 1
      527 SETTABLEKS                       R54 R53 K64 ["ClearFiltersIcon"]
      529 CALL                             R50 3 1
      530 SETTABLEKS                       R50 R49 K60 ["ClearFiltersIconContainer"]
      532 GETUPVAL                         R51 0
      533 GETTABLEKS                       R50 R51 K22 ["createElement"]
      535 LOADK                            R51 K23 ["Frame"]
      536 NEWTABLE                         R52 2 0
      538 GETUPVAL                         R54 0
      539 GETTABLEKS                       R53 R54 K24 ["Tag"]
      541 GETUPVAL                         R54 14
      542 LOADK                            R55 K30 ["CX-Invisible"]
      543 LOADK                            R56 K63 ["HeaderIcon"]
      544 CALL                             R54 2 1
      545 SETTABLE                         R54 R52 R53
      546 GETUPVAL                         R53 15
      547 NAMECALL                         R53 R53 K31 ["getNextOrder"]
      549 CALL                             R53 1 1
      550 SETTABLEKS                       R53 R52 K32 ["LayoutOrder"]
      552 DUPTABLE                         R53 K68 [{"FilterHeaderIcon"}]
      553 GETUPVAL                         R55 0
      554 GETTABLEKS                       R54 R55 K22 ["createElement"]
      556 LOADK                            R55 K69 ["ImageLabel"]
      557 DUPTABLE                         R56 K70 [{"LayoutOrder"}]
      558 GETUPVAL                         R57 15
      559 NAMECALL                         R57 R57 K31 ["getNextOrder"]
      561 CALL                             R57 1 1
      562 SETTABLEKS                       R57 R56 K32 ["LayoutOrder"]
      564 CALL                             R54 2 1
      565 SETTABLEKS                       R54 R53 K67 ["FilterHeaderIcon"]
      567 CALL                             R50 3 1
      568 SETTABLEKS                       R50 R49 K61 ["FilterHeaderIconContainer"]
      570 CALL                             R46 3 1
      571 SETTABLEKS                       R46 R45 K56 ["HeaderIcons"]
      573 CALL                             R42 3 1
      574 SETTABLEKS                       R42 R41 K46 ["FilterHeader"]
      576 CALL                             R38 3 1
      577 SETTABLEKS                       R38 R37 K34 ["Header"]
      579 GETUPVAL                         R39 0
      580 GETTABLEKS                       R38 R39 K22 ["createElement"]
      582 LOADK                            R39 K23 ["Frame"]
      583 NEWTABLE                         R40 2 0
      585 GETUPVAL                         R42 0
      586 GETTABLEKS                       R41 R42 K24 ["Tag"]
      588 GETUPVAL                         R42 14
      589 LOADK                            R43 K30 ["CX-Invisible"]
      590 CALL                             R42 1 1
      591 SETTABLE                         R42 R40 R41
      592 GETUPVAL                         R41 15
      593 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      595 CALL                             R41 1 1
      596 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      598 DUPTABLE                         R41 K72 [{"ActivityHistoryBubbleList"}]
      599 GETTABLEKS                       R43 R0 K38 ["isPublishedGame"]
      601 JUMPIF                           R43 ; [+8]
      602 GETUPVAL                         R43 0
      603 GETTABLEKS                       R42 R43 K22 ["createElement"]
      605 GETUPVAL                         R43 17
      606 NEWTABLE                         R44 0 0
      608 CALL                             R42 2 1
      609 JUMP                             ; [+42]
      610 GETUPVAL                         R43 0
      611 GETTABLEKS                       R42 R43 K22 ["createElement"]
      613 GETUPVAL                         R43 18
      614 NEWTABLE                         R44 16 0
      616 GETUPVAL                         R46 0
      617 GETTABLEKS                       R45 R46 K24 ["Tag"]
      619 LOADK                            R46 K73 [".ActivityHistoryBubbleList"]
      620 SETTABLE                         R46 R44 R45
      621 GETTABLEKS                       R45 R25 K74 ["vlref"]
      623 SETTABLEKS                       R45 R44 K75 ["Vlref"]
      625 GETTABLEKS                       R45 R25 K76 ["eventList"]
      627 SETTABLEKS                       R45 R44 K77 ["Events"]
      629 LOADK                            R45 K78 [∞]
      630 SETTABLEKS                       R45 R44 K79 ["IndexOffset"]
      632 SETTABLEKS                       R14 R44 K80 ["OnViewableItemsChanged"]
      634 GETTABLEKS                       R45 R25 K81 ["onScroll"]
      636 SETTABLEKS                       R45 R44 K82 ["OnScroll"]
      638 GETTABLEKS                       R45 R25 K83 ["fetchPreviousPageInProgress"]
      640 SETTABLEKS                       R45 R44 K84 ["ShowHeaderLoadingIndicator"]
      642 GETTABLEKS                       R45 R25 K85 ["fetchNextPageInProgress"]
      644 SETTABLEKS                       R45 R44 K86 ["ShowFooterLoadingIndicator"]
      646 NEWCLOSURE                       R45 P13
      647 CAPTURE                          VAL R5
      648 CAPTURE                          UPVAL U4
      649 SETTABLEKS                       R45 R44 K87 ["OpenFiltersFn"]
      651 CALL                             R42 2 1
      652 SETTABLEKS                       R42 R41 K71 ["ActivityHistoryBubbleList"]
      654 CALL                             R38 3 1
      655 SETTABLEKS                       R38 R37 K35 ["ActivityHistoryBubbleListContainer"]
      657 CALL                             R34 3 1
      658 SETTABLEKS                       R34 R33 K27 ["EventList"]
      660 GETUPVAL                         R35 0
      661 GETTABLEKS                       R34 R35 K22 ["createElement"]
      663 LOADK                            R35 K23 ["Frame"]
      664 DUPTABLE                         R36 K88 [{"LayoutOrder", "Visible"}]
      665 GETUPVAL                         R37 15
      666 NAMECALL                         R37 R37 K31 ["getNextOrder"]
      668 CALL                             R37 1 1
      669 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      671 GETUPVAL                         R39 4
      672 GETTABLEKS                       R38 R39 K3 ["AllEvents"]
      674 JUMPIFNOTEQ                      R4 R38 ; [+2]
      676 LOADB                            R37 0 +1
      677 LOADB                            R37 1
      678 SETTABLEKS                       R37 R36 K33 ["Visible"]
      680 DUPTABLE                         R37 K89 [{"FilterMenu"}]
      681 GETUPVAL                         R39 0
      682 GETTABLEKS                       R38 R39 K22 ["createElement"]
      684 GETUPVAL                         R40 9
      685 GETTABLEKS                       R39 R40 K28 ["FilterMenu"]
      687 DUPTABLE                         R40 K95 [{"collaborators", "selectedFilters", "onApply", "onClear", "onChange"}]
      688 GETTABLEKS                       R41 R15 K12 ["cache"]
      690 SETTABLEKS                       R41 R40 K90 ["collaborators"]
      692 SETTABLEKS                       R18 R40 K91 ["selectedFilters"]
      694 SETTABLEKS                       R27 R40 K92 ["onApply"]
      696 SETTABLEKS                       R28 R40 K93 ["onClear"]
      698 SETTABLEKS                       R29 R40 K94 ["onChange"]
      700 CALL                             R38 2 1
      701 SETTABLEKS                       R38 R37 K28 ["FilterMenu"]
      703 CALL                             R34 3 1
      704 SETTABLEKS                       R34 R33 K28 ["FilterMenu"]
      706 CALL                             R30 3 1
      707 JUMPIF                           R30 ; [+1]
      708 LOADNIL                          R30
      709 RETURN                           R30 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["ReactUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K12 ["SharedTypes"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       48 GETTABLEKS                       R6 R7 K14 ["Analytics"]
       50 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       52 GETTABLEKS                       R7 R8 K15 ["Localization"]
       54 GETTABLEKS                       R9 R3 K11 ["Util"]
       56 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       58 GETTABLEKS                       R9 R8 K17 ["new"]
       60 CALL                             R9 0 1
       61 GETTABLEKS                       R11 R3 K18 ["Styling"]
       63 GETTABLEKS                       R10 R11 K19 ["joinTags"]
       65 GETTABLEKS                       R11 R2 K20 ["useToggleState"]
       67 GETTABLEKS                       R12 R5 K21 ["SectionHeaderType"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETTABLEKS                       R16 R0 K10 ["Src"]
       73 GETTABLEKS                       R15 R16 K22 ["Contexts"]
       75 GETTABLEKS                       R14 R15 K23 ["ActivityHistoryContext"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R17 R0 K10 ["Src"]
       82 GETTABLEKS                       R16 R17 K24 ["Components"]
       84 GETTABLEKS                       R15 R16 K25 ["FilterMenu"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K4 [require]
       89 GETTABLEKS                       R18 R0 K10 ["Src"]
       91 GETTABLEKS                       R17 R18 K24 ["Components"]
       93 GETTABLEKS                       R16 R17 K26 ["ActivityHistoryBubbleList"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K4 [require]
       98 GETTABLEKS                       R19 R0 K10 ["Src"]
      100 GETTABLEKS                       R18 R19 K24 ["Components"]
      102 GETTABLEKS                       R17 R18 K27 ["Tooltip"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K4 [require]
      107 GETTABLEKS                       R20 R0 K10 ["Src"]
      109 GETTABLEKS                       R19 R20 K24 ["Components"]
      111 GETTABLEKS                       R18 R19 K28 ["EnableTeamCreate"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K4 [require]
      116 GETTABLEKS                       R21 R0 K10 ["Src"]
      118 GETTABLEKS                       R20 R21 K29 ["Hooks"]
      120 GETTABLEKS                       R19 R20 K30 ["BidirectionalInfiniteScroll"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K4 [require]
      125 GETTABLEKS                       R22 R0 K10 ["Src"]
      127 GETTABLEKS                       R21 R22 K29 ["Hooks"]
      129 GETTABLEKS                       R20 R21 K31 ["UsernameCache"]
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
      150 DUPTABLE                         R23 K39 [{"AllEvents", "FilterMenu"}]
      151 LOADK                            R24 K40 ["All Events"]
      152 SETTABLEKS                       R24 R23 K38 ["AllEvents"]
      154 LOADK                            R24 K41 ["Filter Menu"]
      155 SETTABLEKS                       R24 R23 K25 ["FilterMenu"]
      157 DUPCLOSURE                       R24 K42 [PROTO_23]
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R15
      177 RETURN                           R24 1
