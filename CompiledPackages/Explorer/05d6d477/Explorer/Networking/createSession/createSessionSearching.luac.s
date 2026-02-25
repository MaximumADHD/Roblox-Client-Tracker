PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["uiState"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+11]
        9 GETIMPORT                        R1 K3 [table.freeze]
       11 DUPTABLE                         R2 K5 [{"isExpanded"}]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K4 ["isExpanded"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K0 ["uiState"]
       18 RETURN                           R0 0
       19 GETIMPORT                        R1 K7 [table.clone]
       21 GETTABLEKS                       R2 R0 K0 ["uiState"]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K0 ["uiState"]
       26 GETTABLEKS                       R1 R0 K0 ["uiState"]
       28 LOADB                            R2 1
       29 SETTABLEKS                       R2 R1 K4 ["isExpanded"]
       31 GETIMPORT                        R1 K3 [table.freeze]
       33 GETTABLEKS                       R2 R0 K0 ["uiState"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"id", "resultCount", "searchedIds", "finishedInitialSearch"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["resultCount"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K2 ["searchedIds"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["finishedInitialSearch"]
       13 RETURN                           R1 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 DUPCLOSURE                       R1 K0 [PROTO_2]
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [task.defer]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"queueRootChanged", "instanceIdsToNodes", "instanceIdsToHiddenChildren", "unaddedParentIdsToChildren"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["queueRootChanged"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["instanceIdsToNodes"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["instanceIdsToHiddenChildren"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["unaddedParentIdsToChildren"]
       16 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"costPerResult", "costPerDatum", "budget"}]
        1 GETUPVAL                         R2 0
        2 LOADN                            R3 0
        3 JUMPIFNOTLT                      R3 R2 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 DIV                              R1 R2 R3
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K4 [0.0005]
       10 SETTABLEKS                       R1 R0 K0 ["costPerResult"]
       12 GETUPVAL                         R2 2
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+5]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 2
       18 DIV                              R1 R2 R3
       19 JUMP                             ; [+1]
       20 LOADK                            R1 K4 [0.0005]
       21 SETTABLEKS                       R1 R0 K1 ["costPerDatum"]
       23 GETUPVAL                         R1 4
       24 SETTABLEKS                       R1 R0 K2 ["budget"]
       26 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 3
        4 FORGPREP                         R0
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R7 R8 K1 ["rootState"]
        8 GETTABLEKS                       R6 R7 K2 ["instanceIdsToNodes"]
       10 GETTABLE                         R5 R6 R3
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       17 LOADK                            R8 K3 ["Selecting ID not in root state"]
       18 GETIMPORT                        R6 K5 [assert]
       20 CALL                             R6 2 0
       21 GETTABLEKS                       R7 R5 K6 ["datum"]
       23 GETTABLEKS                       R6 R7 K7 ["parentId"]
       25 JUMPIFEQKNIL                     R6 ; [+7]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K8 ["expandAsync"]
       30 GETUPVAL                         R8 1
       31 MOVE                             R9 R6
       32 CALL                             R7 2 0
       33 FORGLOOP                         R0 1 ; [-29]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K1 ["rootState"]
       38 GETTABLEKS                       R0 R1 K9 ["queueRootChanged"]
       40 CALL                             R0 0 0
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R0 R1 K10 ["searchClearedSignal"]
       44 NAMECALL                         R0 R0 K11 ["Fire"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+9]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K0 ["searchClearedSignal"]
        8 NAMECALL                         R0 R0 K1 ["Fire"]
       10 CALL                             R0 1 0
       11 LOADB                            R0 0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0
       14 GETIMPORT                        R0 K4 [task.spawn]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U4
       20 CALL                             R0 1 0
       21 LOADB                            R0 0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["guestRpcInterface"]
        6 GETTABLEKS                       R0 R1 K1 ["startSearchAsync"]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R4 4
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+27]
       13 DUPTABLE                         R3 K5 [{"costPerResult", "costPerDatum", "budget"}]
       14 GETUPVAL                         R5 5
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+5]
       18 GETUPVAL                         R5 6
       19 GETUPVAL                         R6 5
       20 DIV                              R4 R5 R6
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K6 [0.0005]
       23 SETTABLEKS                       R4 R3 K2 ["costPerResult"]
       25 GETUPVAL                         R5 7
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+5]
       29 GETUPVAL                         R5 8
       30 GETUPVAL                         R6 7
       31 DIV                              R4 R5 R6
       32 JUMP                             ; [+1]
       33 LOADK                            R4 K6 [0.0005]
       34 SETTABLEKS                       R4 R3 K3 ["costPerDatum"]
       36 GETUPVAL                         R4 9
       37 SETTABLEKS                       R4 R3 K4 ["budget"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 CALL                             R0 3 1
       42 JUMPIF                           R0 ; [+48]
       43 GETUPVAL                         R2 10
       44 GETTABLEKS                       R1 R2 K7 ["id"]
       46 GETUPVAL                         R2 2
       47 JUMPIFNOTEQ                      R1 R2 ; [+43]
       49 GETUPVAL                         R1 11
       50 CALL                             R1 0 0
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R2 R3 K0 ["guestRpcInterface"]
       54 GETTABLEKS                       R1 R2 K8 ["continueSearchAsync"]
       56 GETUPVAL                         R2 2
       57 GETUPVAL                         R4 4
       58 CALL                             R4 0 1
       59 JUMPIFNOT                        R4 ; [+27]
       60 DUPTABLE                         R3 K5 [{"costPerResult", "costPerDatum", "budget"}]
       61 GETUPVAL                         R5 5
       62 LOADN                            R6 0
       63 JUMPIFNOTLT                      R6 R5 ; [+5]
       65 GETUPVAL                         R5 6
       66 GETUPVAL                         R6 5
       67 DIV                              R4 R5 R6
       68 JUMP                             ; [+1]
       69 LOADK                            R4 K6 [0.0005]
       70 SETTABLEKS                       R4 R3 K2 ["costPerResult"]
       72 GETUPVAL                         R5 7
       73 LOADN                            R6 0
       74 JUMPIFNOTLT                      R6 R5 ; [+5]
       76 GETUPVAL                         R5 8
       77 GETUPVAL                         R6 7
       78 DIV                              R4 R5 R6
       79 JUMP                             ; [+1]
       80 LOADK                            R4 K6 [0.0005]
       81 SETTABLEKS                       R4 R3 K3 ["costPerDatum"]
       83 GETUPVAL                         R4 9
       84 SETTABLEKS                       R4 R3 K4 ["budget"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R3
       88 CALL                             R1 2 1
       89 MOVE                             R0 R1
       90 JUMPBACK                         ; [-49]
       91 GETUPVAL                         R2 10
       92 GETTABLEKS                       R1 R2 K7 ["id"]
       94 GETUPVAL                         R2 2
       95 JUMPIFNOTEQ                      R1 R2 ; [+13]
       97 GETUPVAL                         R1 12
       98 CALL                             R1 0 1
       99 JUMPIFNOT                        R1 ; [+4]
      100 GETUPVAL                         R1 10
      101 LOADB                            R2 1
      102 SETTABLEKS                       R2 R1 K9 ["finishedInitialSearch"]
      104 GETUPVAL                         R1 0
      105 GETUPVAL                         R3 10
      106 GETTABLEKS                       R2 R3 K10 ["resultCount"]
      108 CALL                             R1 1 0
      109 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R0 ; [+3]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K0 ["id"]
        9 ADDK                             R3 R2 K1 [1]
       10 DUPTABLE                         R4 K5 [{"id", "resultCount", "searchedIds", "finishedInitialSearch"}]
       11 SETTABLEKS                       R3 R4 K0 ["id"]
       13 LOADN                            R5 0
       14 SETTABLEKS                       R5 R4 K2 ["resultCount"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K3 ["searchedIds"]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K4 ["finishedInitialSearch"]
       23 SETUPVAL                         R4 1
       24 JUMPIFNOTEQKS                    R0 K6 [""] ; [+22]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K7 ["guestRpcInterface"]
       29 GETTABLEKS                       R4 R5 K8 ["stopSearching"]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 3
       34 LOADNIL                          R5
       35 CALL                             R4 1 0
       36 GETUPVAL                         R4 2
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K9 ["searchRootState"]
       40 GETUPVAL                         R4 4
       41 NEWTABLE                         R5 0 0
       43 CALL                             R4 1 0
       44 GETUPVAL                         R4 5
       45 CALL                             R4 0 0
       46 RETURN                           R0 0
       47 GETIMPORT                        R4 K12 [table.clone]
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R5 R6 K13 ["emptyDataModelNode"]
       52 CALL                             R4 1 1
       53 GETUPVAL                         R5 7
       54 MOVE                             R6 R4
       55 CALL                             R5 1 0
       56 GETUPVAL                         R5 3
       57 MOVE                             R6 R4
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 9
       60 CALL                             R5 0 1
       61 SETUPVAL                         R5 8
       62 GETUPVAL                         R6 8
       63 GETTABLEKS                       R5 R6 K14 ["instanceIdsToNodes"]
       65 GETUPVAL                         R7 6
       66 GETTABLEKS                       R6 R7 K15 ["rootId"]
       68 SETTABLE                         R4 R5 R6
       69 GETUPVAL                         R5 2
       70 GETUPVAL                         R6 8
       71 SETTABLEKS                       R6 R5 K9 ["searchRootState"]
       73 GETIMPORT                        R5 K18 [task.spawn]
       75 NEWCLOSURE                       R6 P0
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          UPVAL U12
       82 CAPTURE                          UPVAL U13
       83 CAPTURE                          UPVAL U14
       84 CAPTURE                          UPVAL U15
       85 CAPTURE                          UPVAL U16
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          UPVAL U18
       89 CALL                             R5 1 0
       90 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["searchedIds"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADB                            R3 1
        4 JUMPIFEQKNIL                     R2 ; [+46]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["instanceIdsToNodes"]
        9 GETTABLE                         R4 R5 R2
       10 JUMPIFNOTEQKNIL                  R4 ; [+40]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K1 ["rootState"]
       15 GETTABLEKS                       R5 R6 K0 ["instanceIdsToNodes"]
       17 GETTABLE                         R4 R5 R2
       18 JUMPIFNOTEQKNIL                  R4 ; [+10]
       20 GETIMPORT                        R5 K3 [error]
       22 LOADK                            R7 K4 ["Found node we don't know about, this should've been pre-populated from newDatums: %*"]
       23 MOVE                             R9 R2
       24 NAMECALL                         R7 R7 K5 ["format"]
       26 CALL                             R7 2 1
       27 MOVE                             R6 R7
       28 CALL                             R5 1 0
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       31 MOVE                             R6 R1
       32 MOVE                             R7 R4
       33 GETIMPORT                        R5 K8 [table.insert]
       35 CALL                             R5 2 0
       36 GETTABLEKS                       R5 R4 K9 ["parent"]
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETTABLEKS                       R7 R4 K9 ["parent"]
       41 GETTABLEKS                       R6 R7 K10 ["datum"]
       43 GETTABLEKS                       R5 R6 K11 ["id"]
       45 MOVE                             R2 R5
       46 JUMPIFNOTEQKNIL                  R2 ; [+3]
       48 LOADB                            R3 0
       49 JUMP                             ; [+1]
       50 JUMPBACK                         ; [-47]
       51 JUMPIF                           R3 ; [+1]
       52 RETURN                           R0 0
       53 LENGTH                           R6 R1
       54 LOADN                            R4 1
       55 LOADN                            R5 255
       56 FORNPREP                         R4
       57 GETTABLE                         R7 R1 R6
       58 GETTABLEKS                       R8 R7 K10 ["datum"]
       60 GETTABLEKS                       R9 R8 K12 ["hasChildren"]
       62 JUMPIFNOT                        R9 ; [+12]
       63 GETIMPORT                        R9 K14 [table.clone]
       65 MOVE                             R10 R8
       66 CALL                             R9 1 1
       67 MOVE                             R8 R9
       68 LOADB                            R9 0
       69 SETTABLEKS                       R9 R8 K12 ["hasChildren"]
       71 GETIMPORT                        R9 K16 [table.freeze]
       73 MOVE                             R10 R8
       74 CALL                             R9 1 0
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R9 R10 K17 ["instanceAdded"]
       78 GETUPVAL                         R10 0
       79 MOVE                             R11 R8
       80 GETUPVAL                         R12 3
       81 CALL                             R9 3 1
       82 GETUPVAL                         R10 4
       83 MOVE                             R11 R9
       84 CALL                             R10 1 0
       85 FORNLOOP                         R4
       86 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["instanceIdsToNodes"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["rootId"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       15 LOADK                            R4 K2 ["Couldn't find root when selecting all searched IDs"]
       16 GETIMPORT                        R2 K4 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R1
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R8 R9 K5 ["searchedIds"]
       26 GETTABLEKS                       R10 R5 K6 ["datum"]
       28 GETTABLEKS                       R9 R10 K7 ["id"]
       30 GETTABLE                         R7 R8 R9
       31 JUMPIFNOT                        R7 ; [+10]
       32 GETTABLEKS                       R10 R5 K6 ["datum"]
       34 GETTABLEKS                       R9 R10 K7 ["id"]
       36 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       38 MOVE                             R8 R0
       39 GETIMPORT                        R7 K10 [table.insert]
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 1 ; [-20]
       44 GETIMPORT                        R2 K12 [table.freeze]
       46 MOVE                             R3 R0
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 4
       49 MOVE                             R3 R0
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 MOVE                             R4 R2
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R11 R12 K3 ["rootState"]
       10 GETTABLEKS                       R10 R11 K4 ["instanceIdsToNodes"]
       12 GETTABLEKS                       R11 R8 K5 ["id"]
       14 GETTABLE                         R9 R10 R11
       15 JUMPIFNOTEQKNIL                  R9 ; [+11]
       17 GETUPVAL                         R11 1
       18 GETTABLEKS                       R10 R11 K6 ["instanceAdded"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R11 R12 K3 ["rootState"]
       23 MOVE                             R12 R8
       24 GETUPVAL                         R13 2
       25 CALL                             R10 3 0
       26 JUMP                             ; [+16]
       27 GETTABLEKS                       R10 R8 K7 ["parentId"]
       29 GETTABLEKS                       R12 R9 K8 ["datum"]
       31 GETTABLEKS                       R11 R12 K7 ["parentId"]
       33 JUMPIFEQ                         R10 R11 ; [+9]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R10 R11 K9 ["instanceReplaced"]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K3 ["rootState"]
       41 MOVE                             R12 R8
       42 CALL                             R10 2 0
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K10 ["searchRootState"]
       46 JUMPIFEQKNIL                     R10 ; [+27]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K10 ["searchRootState"]
       51 GETTABLEKS                       R11 R12 K4 ["instanceIdsToNodes"]
       53 GETTABLEKS                       R12 R8 K5 ["id"]
       55 GETTABLE                         R10 R11 R12
       56 JUMPIFEQKNIL                     R10 ; [+17]
       58 GETTABLEKS                       R11 R8 K7 ["parentId"]
       60 GETTABLEKS                       R13 R10 K8 ["datum"]
       62 GETTABLEKS                       R12 R13 K7 ["parentId"]
       64 JUMPIFEQ                         R11 R12 ; [+9]
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R11 R12 K9 ["instanceReplaced"]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R12 R13 K10 ["searchRootState"]
       72 MOVE                             R13 R8
       73 CALL                             R11 2 0
       74 FORGLOOP                         R4 2 ; [-68]
       76 GETUPVAL                         R4 3
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+11]
       79 GETUPVAL                         R4 4
       80 GETIMPORT                        R6 K2 [os.clock]
       82 CALL                             R6 0 1
       83 SUB                              R5 R6 R3
       84 ADD                              R4 R4 R5
       85 SETUPVAL                         R4 4
       86 GETUPVAL                         R4 5
       87 LENGTH                           R5 R2
       88 ADD                              R4 R4 R5
       89 SETUPVAL                         R4 5
       90 GETUPVAL                         R5 6
       91 GETTABLEKS                       R4 R5 K5 ["id"]
       93 JUMPIFEQ                         R0 R4 ; [+6]
       95 GETUPVAL                         R4 7
       96 LOADK                            R5 K11 ["Received old search results for %d"]
       97 MOVE                             R6 R0
       98 CALL                             R4 2 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R5 8
      101 GETTABLEKS                       R4 R5 K12 ["get"]
      103 CALL                             R4 0 1
      104 JUMPIFNOTEQKNIL                  R4 ; [+2]
      106 LOADB                            R6 0 +1
      107 LOADB                            R6 1
      108 FASTCALL2K                       ASSERT R6 K13 ; [+4]
      110 LOADK                            R7 K13 ["No search root when receiving search results"]
      111 GETIMPORT                        R5 K15 [assert]
      113 CALL                             R5 2 0
      114 GETIMPORT                        R5 K2 [os.clock]
      116 CALL                             R5 0 1
      117 MOVE                             R6 R1
      118 LOADNIL                          R7
      119 LOADNIL                          R8
      120 FORGPREP                         R6
      121 GETUPVAL                         R12 6
      122 GETTABLEKS                       R11 R12 K16 ["searchedIds"]
      124 LOADB                            R12 1
      125 SETTABLE                         R12 R11 R10
      126 GETUPVAL                         R11 9
      127 MOVE                             R12 R10
      128 CALL                             R11 1 0
      129 FORGLOOP                         R6 2 ; [-9]
      131 GETUPVAL                         R6 3
      132 CALL                             R6 0 1
      133 JUMPIFNOT                        R6 ; [+11]
      134 GETUPVAL                         R6 10
      135 GETIMPORT                        R8 K2 [os.clock]
      137 CALL                             R8 0 1
      138 SUB                              R7 R8 R5
      139 ADD                              R6 R6 R7
      140 SETUPVAL                         R6 10
      141 GETUPVAL                         R6 11
      142 LENGTH                           R7 R1
      143 ADD                              R6 R6 R7
      144 SETUPVAL                         R6 11
      145 GETUPVAL                         R6 6
      146 GETTABLEKS                       R7 R6 K17 ["resultCount"]
      148 LENGTH                           R8 R1
      149 ADD                              R7 R7 R8
      150 SETTABLEKS                       R7 R6 K17 ["resultCount"]
      152 GETUPVAL                         R6 12
      153 CALL                             R6 0 1
      154 JUMPIFNOT                        R6 ; [+5]
      155 GETUPVAL                         R6 13
      156 GETUPVAL                         R8 6
      157 GETTABLEKS                       R7 R8 K17 ["resultCount"]
      159 CALL                             R6 1 0
      160 GETUPVAL                         R7 14
      161 GETTABLEKS                       R6 R7 K18 ["queueRootChanged"]
      163 CALL                             R6 0 0
      164 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["id"]
        3 JUMPIFEQ                         R0 R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K1 ["Received old search suggestions for %d"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["instanceIdsToNodes"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOTEQKNIL                  R1 ; [+13]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["searchedIds"]
       11 GETTABLEKS                       R4 R0 K1 ["id"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R3 R0 K1 ["id"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R1 K3 ["datum"]
       22 GETTABLEKS                       R2 R3 K4 ["parentId"]
       24 GETTABLEKS                       R3 R0 K4 ["parentId"]
       26 JUMPIFEQ                         R2 R3 ; [+140]
       28 GETTABLEKS                       R3 R1 K3 ["datum"]
       30 GETTABLEKS                       R2 R3 K4 ["parentId"]
       32 GETTABLEKS                       R4 R0 K4 ["parentId"]
       34 JUMPIFEQKNIL                     R4 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 NEWTABLE                         R4 0 0
       40 GETTABLEKS                       R5 R0 K4 ["parentId"]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K5 ["rootId"]
       45 JUMPIFEQ                         R5 R6 ; [+34]
       47 JUMPIFNOTEQKNIL                  R5 ; [+3]
       49 LOADB                            R3 1
       50 JUMP                             ; [+29]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R8 R9 K6 ["rootState"]
       54 GETTABLEKS                       R7 R8 K0 ["instanceIdsToNodes"]
       56 GETTABLE                         R6 R7 R5
       57 JUMPIFNOTEQKNIL                  R6 ; [+3]
       59 LOADB                            R3 1
       60 JUMP                             ; [+19]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K0 ["instanceIdsToNodes"]
       64 GETTABLE                         R7 R8 R5
       65 JUMPIFNOTEQKNIL                  R7 ; [+9]
       67 GETTABLEKS                       R9 R6 K3 ["datum"]
       69 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
       71 MOVE                             R8 R4
       72 GETIMPORT                        R7 K9 [table.insert]
       74 CALL                             R7 2 0
       75 GETTABLEKS                       R7 R6 K3 ["datum"]
       77 GETTABLEKS                       R5 R7 K4 ["parentId"]
       79 JUMPBACK                         ; [-38]
       80 JUMPIFNOT                        R3 ; [+73]
       81 GETUPVAL                         R7 5
       82 GETTABLEKS                       R6 R7 K10 ["remove"]
       84 GETUPVAL                         R7 0
       85 MOVE                             R8 R1
       86 CALL                             R6 2 0
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R6 R7 K0 ["instanceIdsToNodes"]
       90 GETTABLEKS                       R8 R1 K3 ["datum"]
       92 GETTABLEKS                       R7 R8 K1 ["id"]
       94 LOADNIL                          R8
       95 SETTABLE                         R8 R6 R7
       96 MOVE                             R6 R2
       97 JUMPIFEQKNIL                     R6 ; [+55]
       99 GETUPVAL                         R8 3
      100 GETTABLEKS                       R7 R8 K5 ["rootId"]
      102 JUMPIFEQ                         R6 R7 ; [+50]
      104 MOVE                             R8 R6
      105 GETUPVAL                         R11 1
      106 GETTABLEKS                       R10 R11 K2 ["searchedIds"]
      108 GETTABLE                         R9 R10 R8
      109 JUMPIFEQKB                       R9 TRUE ; [+2]
      111 LOADB                            R7 0 +1
      112 LOADB                            R7 1
      113 JUMPIF                           R7 ; [+39]
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R8 R9 K0 ["instanceIdsToNodes"]
      117 GETTABLE                         R7 R8 R6
      118 JUMPIFEQKNIL                     R7 ; [+34]
      120 GETUPVAL                         R9 6
      121 GETTABLEKS                       R8 R9 K11 ["isEmpty"]
      123 GETTABLEKS                       R9 R7 K12 ["children"]
      125 CALL                             R8 1 1
      126 JUMPIFNOT                        R8 ; [+26]
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R9 R10 K13 ["instanceIdsToHiddenChildren"]
      130 GETTABLE                         R8 R9 R6
      131 JUMPIFNOTEQKNIL                  R8 ; [+21]
      133 GETTABLEKS                       R8 R7 K3 ["datum"]
      135 GETTABLEKS                       R6 R8 K4 ["parentId"]
      137 GETUPVAL                         R9 5
      138 GETTABLEKS                       R8 R9 K10 ["remove"]
      140 GETUPVAL                         R9 0
      141 MOVE                             R10 R7
      142 CALL                             R8 2 0
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R8 R9 K0 ["instanceIdsToNodes"]
      146 GETTABLEKS                       R10 R7 K3 ["datum"]
      148 GETTABLEKS                       R9 R10 K1 ["id"]
      150 LOADNIL                          R10
      151 SETTABLE                         R10 R8 R9
      152 JUMPBACK                         ; [-56]
      153 RETURN                           R0 0
      154 LENGTH                           R8 R4
      155 LOADN                            R6 1
      156 LOADN                            R7 255
      157 FORNPREP                         R6
      158 GETTABLE                         R9 R4 R8
      159 GETUPVAL                         R11 7
      160 GETTABLEKS                       R10 R11 K14 ["instanceAdded"]
      162 GETUPVAL                         R11 0
      163 MOVE                             R12 R9
      164 GETUPVAL                         R13 8
      165 CALL                             R10 3 0
      166 FORNLOOP                         R6
      167 GETUPVAL                         R3 7
      168 GETTABLEKS                       R2 R3 K15 ["instanceReplaced"]
      170 GETUPVAL                         R3 0
      171 MOVE                             R4 R0
      172 CALL                             R2 2 0
      173 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETIMPORT                        R0 K2 [task.cancel]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["create"]
        3 LOADNIL                          R6
        4 CALL                             R5 1 2
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K0 ["create"]
        8 NEWTABLE                         R8 0 0
       10 CALL                             R7 1 2
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K0 ["create"]
       14 LOADNIL                          R10
       15 CALL                             R9 1 2
       16 LOADNIL                          R11
       17 NEWCLOSURE                       R12 P0
       18 CAPTURE                          REF R11
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U1
       21 NEWCLOSURE                       R13 P1
       22 CAPTURE                          REF R11
       23 CAPTURE                          VAL R12
       24 NEWCLOSURE                       R14 P2
       25 CAPTURE                          VAL R13
       26 MOVE                             R15 R14
       27 CALL                             R15 0 1
       28 DUPTABLE                         R16 K5 [{"id", "resultCount", "searchedIds", "finishedInitialSearch"}]
       29 LOADN                            R17 0
       30 SETTABLEKS                       R17 R16 K1 ["id"]
       32 LOADN                            R17 0
       33 SETTABLEKS                       R17 R16 K2 ["resultCount"]
       35 NEWTABLE                         R17 0 0
       37 SETTABLEKS                       R17 R16 K3 ["searchedIds"]
       39 LOADB                            R17 0
       40 SETTABLEKS                       R17 R16 K4 ["finishedInitialSearch"]
       42 LOADK                            R17 K6 [""]
       43 LOADN                            R18 0
       44 LOADN                            R19 0
       45 LOADN                            R20 0
       46 LOADN                            R21 0
       47 NEWCLOSURE                       R22 P3
       48 CAPTURE                          REF R19
       49 CAPTURE                          REF R18
       50 CAPTURE                          REF R21
       51 CAPTURE                          REF R20
       52 CAPTURE                          UPVAL U2
       53 LOADB                            R23 0
       54 GETTABLEKS                       R24 R4 K7 ["changedSignal"]
       56 NEWCLOSURE                       R26 P4
       57 CAPTURE                          REF R17
       58 CAPTURE                          REF R23
       59 NAMECALL                         R24 R24 K8 ["Connect"]
       61 CALL                             R24 2 0
       62 NEWCLOSURE                       R24 P5
       63 CAPTURE                          REF R23
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U3
       68 NEWCLOSURE                       R25 P6
       69 CAPTURE                          REF R17
       70 CAPTURE                          REF R16
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R24
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          REF R15
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R10
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          REF R19
       82 CAPTURE                          REF R18
       83 CAPTURE                          REF R21
       84 CAPTURE                          REF R20
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U7
       88 NEWCLOSURE                       R26 P7
       89 CAPTURE                          REF R17
       90 NEWCLOSURE                       R27 P8
       91 CAPTURE                          REF R16
       92 NEWCLOSURE                       R28 P9
       93 CAPTURE                          REF R15
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          REF R17
       97 CAPTURE                          UPVAL U5
       98 NEWCLOSURE                       R29 P10
       99 CAPTURE                          REF R15
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          REF R16
      103 CAPTURE                          VAL R1
      104 NEWCLOSURE                       R30 P11
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          REF R17
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          REF R20
      110 CAPTURE                          REF R21
      111 CAPTURE                          REF R16
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R28
      115 CAPTURE                          REF R18
      116 CAPTURE                          REF R19
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          REF R15
      120 NEWCLOSURE                       R31 P12
      121 CAPTURE                          REF R16
      122 CAPTURE                          UPVAL U10
      123 CAPTURE                          VAL R8
      124 NEWCLOSURE                       R32 P13
      125 CAPTURE                          REF R15
      126 CAPTURE                          REF R16
      127 CAPTURE                          VAL R28
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          UPVAL U12
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          REF R17
      134 NEWCLOSURE                       R33 P14
      135 CAPTURE                          REF R11
      136 DUPTABLE                         R34 K21 [{"setSearch", "getSearch", "receiveSearchResults", "receiveSearchSuggestions", "searchRootObservable", "searchSuggestionsObservable", "searchResultCountObservable", "isInstanceIdSearched", "selectAllSearchedIds", "processInstanceReplaced", "flushRootChanges", "destroy"}]
      137 SETTABLEKS                       R25 R34 K9 ["setSearch"]
      139 SETTABLEKS                       R26 R34 K10 ["getSearch"]
      141 GETUPVAL                         R35 13
      142 MOVE                             R36 R30
      143 CALL                             R35 1 1
      144 SETTABLEKS                       R35 R34 K11 ["receiveSearchResults"]
      146 GETUPVAL                         R35 13
      147 MOVE                             R36 R31
      148 CALL                             R35 1 1
      149 SETTABLEKS                       R35 R34 K12 ["receiveSearchSuggestions"]
      151 SETTABLEKS                       R5 R34 K13 ["searchRootObservable"]
      153 SETTABLEKS                       R7 R34 K14 ["searchSuggestionsObservable"]
      155 SETTABLEKS                       R9 R34 K15 ["searchResultCountObservable"]
      157 SETTABLEKS                       R27 R34 K16 ["isInstanceIdSearched"]
      159 SETTABLEKS                       R29 R34 K17 ["selectAllSearchedIds"]
      161 SETTABLEKS                       R32 R34 K18 ["processInstanceReplaced"]
      163 GETUPVAL                         R35 13
      164 MOVE                             R36 R12
      165 CALL                             R35 1 1
      166 SETTABLEKS                       R35 R34 K19 ["flushRootChanges"]
      168 SETTABLEKS                       R33 R34 K20 ["destroy"]
      170 CLOSEUPVALS                      R11
      171 RETURN                           R34 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Networking"]
       18 GETTABLEKS                       R4 R5 K9 ["createSession"]
       20 GETTABLEKS                       R3 R4 K10 ["Expanding"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["ExplorerNodeChildrenMutable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Observable"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Networking"]
       41 GETTABLEKS                       R7 R8 K9 ["createSession"]
       43 GETTABLEKS                       R6 R7 K13 ["RootStateUpdating"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K8 ["Networking"]
       55 GETTABLEKS                       R9 R10 K9 ["createSession"]
       57 GETTABLEKS                       R8 R9 K15 ["SessionChildren"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R10 K16 ["createDebugLogger"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K8 ["Networking"]
       71 GETTABLEKS                       R11 R12 K9 ["createSession"]
       73 GETTABLEKS                       R10 R11 K17 ["createSessionTypes"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K18 ["Flags"]
       80 GETTABLEKS                       R11 R12 K19 ["getFFlagExplorerFastSearch"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K18 ["Flags"]
       87 GETTABLEKS                       R12 R13 K20 ["getFFlagExplorerSynchronizeAllMessages"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K6 ["Util"]
       94 GETTABLEKS                       R13 R14 K21 ["isExpanded"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K6 ["Util"]
      101 GETTABLEKS                       R14 R15 K22 ["iterateExplorerNodeDescendants"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K6 ["Util"]
      108 GETTABLEKS                       R15 R16 K23 ["profile"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K6 ["Util"]
      115 GETTABLEKS                       R16 R17 K24 ["validateExplorerNodeSanity"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R17 K27 [game]
      120 LOADK                            R19 K28 ["ExplorerHostSearchBudgetMs"]
      121 LOADN                            R20 10
      122 NAMECALL                         R17 R17 K29 ["DefineFastInt"]
      124 CALL                             R17 3 1
      125 DIVK                             R16 R17 K25 [1000]
      126 MOVE                             R17 R8
      127 LOADK                            R18 K30 ["createSessionHoverTracker"]
      128 CALL                             R17 1 1
      129 DUPCLOSURE                       R18 K31 [PROTO_0]
      130 CAPTURE                          VAL R12
      131 DUPCLOSURE                       R19 K32 [PROTO_1]
      132 DUPCLOSURE                       R20 K33 [PROTO_20]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 RETURN                           R20 1
