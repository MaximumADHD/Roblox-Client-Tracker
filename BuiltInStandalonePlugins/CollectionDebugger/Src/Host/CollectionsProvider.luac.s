PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 NEWTABLE                         R2 0 0
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R4 R4 K1 ["getSources"]
        9 CALL                             R4 1 1
       10 GETTABLE                         R3 R4 R1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["convertCollectionNodes"]
       15 MOVE                             R5 R3
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 MOVE                             R2 R4
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["applyPending"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K0 ["current"]
       25 MOVE                             R5 R2
       26 CALL                             R3 2 0
       27 JUMPIFNOT                        R0 ; [+7]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K4 ["ageTtls"]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K0 ["current"]
       34 CALL                             R3 1 0
       35 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 NEWTABLE                         R3 0 0
        6 JUMPIFNOT                        R2 ; [+13]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R5 R5 K1 ["getSources"]
       10 CALL                             R5 1 1
       11 GETTABLE                         R4 R5 R2
       12 JUMPIFNOT                        R4 ; [+7]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K2 ["convertCollectionNodes"]
       16 MOVE                             R6 R4
       17 MOVE                             R7 R2
       18 CALL                             R5 2 1
       19 MOVE                             R3 R5
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K3 ["applyPending"]
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R5 R5 K0 ["current"]
       26 MOVE                             R6 R3
       27 CALL                             R4 2 0
       28 MOVE                             R1 R3
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["hostCommand"]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 NAMECALL                         R2 R2 K1 ["Invoke"]
        8 CALL                             R2 4 0
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["current"]
        5 GETTABLE                         R2 R5 R0
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R5
       16 GETIMPORT                        R7 K3 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 1 ; [-8]
       21 DUPTABLE                         R2 K7 [{["type"] = "setHighlights", ["collectionIds"]}]
       22 SETTABLEKS                       R1 R2 K6 ["collectionIds"]
       24 GETUPVAL                         R3 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K8 ["hostCommand"]
       28 MOVE                             R6 R0
       29 MOVE                             R7 R2
       30 NAMECALL                         R3 R3 K9 ["Invoke"]
       32 CALL                             R3 4 0
       33 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["parse"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R2 K1 ["kind"]
       10 JUMPIFNOTEQKS                    R4 K2 ["contains"] ; [+4]
       12 GETTABLEKS                       R3 R2 K3 ["mode"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETTABLEKS                       R5 R2 K1 ["kind"]
       18 JUMPIFNOTEQKS                    R5 K2 ["contains"] ; [+4]
       20 GETTABLEKS                       R4 R2 K4 ["path"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 DUPTABLE                         R5 K7 [{["type"] = "setContainsFilter", ["mode"], ["path"]}]
       25 SETTABLEKS                       R3 R5 K3 ["mode"]
       27 SETTABLEKS                       R4 R5 K4 ["path"]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K8 ["hostCommand"]
       33 MOVE                             R9 R0
       34 MOVE                             R10 R5
       35 NAMECALL                         R6 R6 K9 ["Invoke"]
       37 CALL                             R6 4 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIF                           R1 ; [+1]
        9 LOADN                            R1 0
       10 GETUPVAL                         R2 2
       11 LOADN                            R4 0
       12 JUMPIFLT                         R4 R1 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADN                            R9 1
        7 GETUPVAL                         R11 0
        8 LENGTH                           R10 R11
        9 FASTCALL3                        STRING_SUB R5 R9 R10
       11 MOVE                             R8 R5
       12 GETIMPORT                        R7 K2 [string.sub]
       14 CALL                             R7 3 1
       15 GETUPVAL                         R8 0
       16 JUMPIFEQ                         R7 R8 ; [+2]
       18 SETTABLE                         R6 R1 R5
       19 FORGLOOP                         R2 2 ; [-14]
       21 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SOURCE_IDENTIFIERS"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K1 ["dataItemKey"]
       11 MOVE                             R10 R6
       12 CALL                             R9 1 1
       13 LOADNIL                          R10
       14 NAMECALL                         R7 R7 K2 ["GetItem"]
       16 CALL                             R7 3 1
       17 FASTCALL1                        TYPEOF R7 ; [+3]
       18 MOVE                             R10 R7
       19 GETIMPORT                        R9 K4 [typeof]
       21 CALL                             R9 1 1
       22 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+4]
       24 GETTABLEKS                       R8 R7 K6 ["seq"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R8
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K7 ["current"]
       31 GETTABLE                         R9 R10 R6
       32 JUMPIFEQ                         R8 R9 ; [+78]
       34 LOADB                            R1 1
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K7 ["current"]
       38 SETTABLE                         R8 R10 R6
       39 JUMPIFNOTEQKNIL                  R8 ; [+37]
       41 GETUPVAL                         R10 3
       42 MOVE                             R12 R6
       43 NAMECALL                         R10 R10 K8 ["forgetSource"]
       45 CALL                             R10 2 0
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K7 ["current"]
       49 LOADNIL                          R11
       50 SETTABLE                         R11 R10 R6
       51 GETUPVAL                         R10 5
       52 GETTABLEKS                       R10 R10 K7 ["current"]
       54 LOADN                            R11 0
       55 SETTABLE                         R11 R10 R6
       56 GETUPVAL                         R10 6
       57 GETTABLEKS                       R10 R10 K9 ["forgetPending"]
       59 GETUPVAL                         R11 7
       60 GETTABLEKS                       R11 R11 K7 ["current"]
       62 MOVE                             R12 R6
       63 CALL                             R10 2 0
       64 FASTCALL1                        TOSTRING R6 ; [+3]
       65 MOVE                             R14 R6
       66 GETIMPORT                        R13 K11 [tostring]
       68 CALL                             R13 1 1
       69 MOVE                             R11 R13
       70 LOADK                            R12 K12 ["|"]
       71 CONCAT                           R10 R11 R12
       72 GETUPVAL                         R11 8
       73 NEWCLOSURE                       R12 P0
       74 CAPTURE                          VAL R10
       75 CALL                             R11 1 0
       76 JUMP                             ; [+34]
       77 GETUPVAL                         R10 3
       78 MOVE                             R12 R6
       79 GETTABLEKS                       R13 R7 K13 ["entries"]
       81 JUMPIF                           R13 ; [+2]
       82 NEWTABLE                         R13 0 0
       84 GETTABLEKS                       R14 R7 K14 ["sample"]
       86 NAMECALL                         R10 R10 K15 ["ingest"]
       88 CALL                             R10 4 0
       89 GETUPVAL                         R10 5
       90 GETTABLEKS                       R10 R10 K7 ["current"]
       92 GETTABLEKS                       R12 R7 K17 ["selectionCount"]
       94 ORK                              R11 R12 K16 [0]
       95 SETTABLE                         R11 R10 R6
       96 JUMPIFEQKNIL                     R9 ; [+3]
       98 JUMPIFNOTLT                      R8 R9 ; [+12]
      100 GETUPVAL                         R10 9
      101 GETTABLEKS                       R10 R10 K7 ["current"]
      103 JUMPIFNOTEQ                      R6 R10 ; [+7]
      105 GETUPVAL                         R10 10
      106 MOVE                             R11 R6
      107 GETUPVAL                         R12 11
      108 GETTABLEKS                       R12 R12 K7 ["current"]
      110 CALL                             R10 2 0
      111 FORGLOOP                         R2 2 ; [-105]
      113 JUMPIFNOT                        R1 ; [+22]
      114 GETUPVAL                         R2 12
      115 GETUPVAL                         R3 13
      116 MOVE                             R4 R0
      117 CALL                             R3 1 1
      118 CALL                             R2 1 0
      119 GETUPVAL                         R2 9
      120 GETTABLEKS                       R2 R2 K7 ["current"]
      122 JUMPIFNOT                        R2 ; [+5]
      123 GETUPVAL                         R4 5
      124 GETTABLEKS                       R4 R4 K7 ["current"]
      126 GETTABLE                         R3 R4 R2
      127 JUMPIF                           R3 ; [+1]
      128 LOADN                            R3 0
      129 GETUPVAL                         R4 14
      130 LOADN                            R6 0
      131 JUMPIFLT                         R6 R3 ; [+2]
      133 LOADB                            R5 0 +1
      134 LOADB                            R5 1
      135 CALL                             R4 1 0
      136 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R2 K0 [0.5]
        5 JUMPIFNOTLT                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R1 0
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 CAPTURE                          UPVAL U11
       13 CAPTURE                          UPVAL U12
       14 CAPTURE                          UPVAL U13
       15 CAPTURE                          UPVAL U14
       16 LOADN                            R1 0
       17 GETUPVAL                         R2 15
       18 GETTABLEKS                       R2 R2 K0 ["Heartbeat"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R2 R2 K1 ["Connect"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 1
       27 GETUPVAL                         R5 16
       28 GETTABLEKS                       R5 R5 K2 ["guestSnapshotPublished"]
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R3 R3 K3 ["OnInvokeSuspendOverride"]
       34 CALL                             R3 3 1
       35 NEWCLOSURE                       R4 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CLOSEUPVALS                      R1
       39 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFEQKNIL                     R0 ; [+8]
        7 GETUPVAL                         R1 2
        8 JUMPIFEQ                         R0 R1 ; [+5]
       10 GETUPVAL                         R1 3
       11 MOVE                             R2 R0
       12 LOADK                            R3 K1 [""]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 2
       16 SETTABLEKS                       R2 R1 K0 ["current"]
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K0 ["current"]
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETUPVAL                         R3 6
       29 GETTABLEKS                       R3 R3 K0 ["current"]
       31 GETTABLE                         R2 R3 R1
       32 JUMPIF                           R2 ; [+1]
       33 LOADN                            R2 0
       34 GETUPVAL                         R3 7
       35 LOADN                            R5 0
       36 JUMPIFLT                         R5 R2 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETIMPORT                        R7 K2 [next]
        9 MOVE                             R8 R6
       10 CALL                             R7 1 1
       11 JUMPIFEQKNIL                     R7 ; [+22]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["current"]
       16 NEWTABLE                         R8 0 0
       18 SETTABLE                         R8 R7 R5
       19 DUPTABLE                         R7 K6 [{["type"] = "setHighlights", ["collectionIds"]}]
       20 NEWTABLE                         R8 0 0
       22 SETTABLEKS                       R8 R7 K5 ["collectionIds"]
       24 GETUPVAL                         R8 1
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R10 R10 K7 ["hostCommand"]
       28 MOVE                             R11 R5
       29 MOVE                             R12 R7
       30 NAMECALL                         R8 R8 K8 ["Invoke"]
       32 CALL                             R8 4 0
       33 LOADB                            R1 1
       34 FORGLOOP                         R2 2 ; [-28]
       36 JUMPIFNOT                        R1 ; [+2]
       37 GETUPVAL                         R2 3
       38 CALL                             R2 0 0
       39 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["guestSelectionCleared"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R0 R0 K1 ["OnInvokeSuspendOverride"]
       11 CALL                             R0 3 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolveToggle"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["current"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K2 ["setPending"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K1 ["current"]
       15 GETTABLEKS                       R8 R5 K3 ["node"]
       17 GETTABLEKS                       R9 R5 K4 ["want"]
       19 CALL                             R6 3 0
       20 GETTABLEKS                       R6 R5 K3 ["node"]
       22 GETTABLEKS                       R6 R6 K5 ["source"]
       24 DUPTABLE                         R7 K11 [{["type"] = "toggleEnabled", ["collectionId"], ["callbackName"], ["enabled"]}]
       25 GETTABLEKS                       R8 R5 K3 ["node"]
       27 GETTABLEKS                       R8 R8 K8 ["collectionId"]
       29 SETTABLEKS                       R8 R7 K8 ["collectionId"]
       31 GETTABLEKS                       R8 R5 K3 ["node"]
       33 GETTABLEKS                       R8 R8 K9 ["callbackName"]
       35 SETTABLEKS                       R8 R7 K9 ["callbackName"]
       37 GETTABLEKS                       R8 R5 K4 ["want"]
       39 SETTABLEKS                       R8 R7 K10 ["enabled"]
       41 GETUPVAL                         R8 3
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K12 ["hostCommand"]
       45 MOVE                             R11 R6
       46 MOVE                             R12 R7
       47 NAMECALL                         R8 R8 K13 ["Invoke"]
       49 CALL                             R8 4 0
       50 FORGLOOP                         R1 2 ; [-42]
       52 GETUPVAL                         R1 5
       53 CALL                             R1 0 0
       54 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["source"]
        5 GETTABLE                         R1 R2 R3
        6 LOADB                            R2 0
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 GETTABLEKS                       R4 R0 K2 ["collectionId"]
       11 GETTABLE                         R3 R1 R4
       12 JUMPIFEQKB                       R3 TRUE ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["source"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+8]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETTABLEKS                       R3 R0 K1 ["source"]
       14 SETTABLE                         R1 R2 R3
       15 GETTABLEKS                       R3 R0 K2 ["collectionId"]
       17 GETTABLE                         R2 R1 R3
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETTABLEKS                       R2 R0 K2 ["collectionId"]
       21 LOADNIL                          R3
       22 SETTABLE                         R3 R1 R2
       23 JUMP                             ; [+4]
       24 GETTABLEKS                       R2 R0 K2 ["collectionId"]
       26 LOADB                            R3 1
       27 SETTABLE                         R3 R1 R2
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R3 R0 K1 ["source"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 2
       33 CALL                             R2 0 0
       34 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 DUPTABLE                         R2 K5 [{["type"] = "openScript", ["scriptName"], ["lineNumber"]}]
        3 GETTABLEKS                       R3 R0 K3 ["scriptName"]
        5 SETTABLEKS                       R3 R2 K3 ["scriptName"]
        7 GETTABLEKS                       R3 R0 K4 ["lineNumber"]
        9 SETTABLEKS                       R3 R2 K4 ["lineNumber"]
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K6 ["hostCommand"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 NAMECALL                         R3 R3 K7 ["Invoke"]
       19 CALL                             R3 4 0
       20 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 LOADK                            R4 K1 ["CollectionDebuggerCtx_"]
        7 MOVE                             R5 R0
        8 CONCAT                           R3 R4 R5
        9 LOADK                            R4 K2 [""]
       10 NAMECALL                         R1 R1 K3 ["CreatePluginMenu"]
       12 CALL                             R1 3 1
       13 MOVE                             R5 R0
       14 LOADK                            R6 K4 ["_GoToScript"]
       15 CONCAT                           R4 R5 R6
       16 GETUPVAL                         R6 2
       17 GETUPVAL                         R7 3
       18 CONCAT                           R5 R6 R7
       19 LOADK                            R6 K2 [""]
       20 NAMECALL                         R2 R1 K5 ["AddNewAction"]
       22 CALL                             R2 4 1
       23 NAMECALL                         R3 R1 K6 ["ShowAsync"]
       25 CALL                             R3 1 1
       26 NAMECALL                         R4 R1 K7 ["Destroy"]
       28 CALL                             R4 1 0
       29 JUMPIFNOTEQ                      R3 R2 ; [+4]
       31 GETUPVAL                         R4 4
       32 GETUPVAL                         R5 5
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R1 R3
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R1 R2
       14 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeKey"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R0 K10 [{"tree", "expanded", "selectionActive", "setSearchQuery", "toggleNode", "isHighlighted", "toggleHighlight", "openScript", "showScriptMenu", "toggleExpanded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["tree"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expanded"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["selectionActive"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setSearchQuery"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["toggleNode"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["isHighlighted"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["toggleHighlight"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["openScript"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["showScriptMenu"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["toggleExpanded"]
       31 RETURN                           R0 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["focusedType"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["useState"]
       13 NEWTABLE                         R6 0 0
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K2 ["useState"]
       19 LOADB                            R8 0
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K3 ["useRef"]
       24 NEWTABLE                         R10 0 0
       26 CALL                             R9 1 1
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K3 ["useRef"]
       30 NEWTABLE                         R11 0 0
       32 CALL                             R10 1 1
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K3 ["useRef"]
       36 NEWTABLE                         R12 0 0
       38 CALL                             R11 1 1
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R12 R12 K3 ["useRef"]
       42 NEWTABLE                         R13 0 0
       44 CALL                             R12 1 1
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K3 ["useRef"]
       48 LOADK                            R14 K4 [""]
       49 CALL                             R13 1 1
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K3 ["useRef"]
       53 LOADNIL                          R15
       54 CALL                             R14 1 1
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K3 ["useRef"]
       58 MOVE                             R16 R3
       59 CALL                             R15 1 1
       60 GETUPVAL                         R16 0
       61 GETTABLEKS                       R16 R16 K3 ["useRef"]
       63 MOVE                             R17 R2
       64 CALL                             R16 1 1
       65 GETUPVAL                         R17 0
       66 GETTABLEKS                       R17 R17 K3 ["useRef"]
       68 LOADNIL                          R18
       69 CALL                             R17 1 1
       70 GETTABLEKS                       R18 R17 K5 ["current"]
       72 JUMPIFNOTEQKNIL                  R18 ; [+7]
       74 GETUPVAL                         R18 1
       75 GETTABLEKS                       R18 R18 K6 ["new"]
       77 CALL                             R18 0 1
       78 SETTABLEKS                       R18 R17 K5 ["current"]
       80 GETTABLEKS                       R18 R17 K5 ["current"]
       82 GETUPVAL                         R19 0
       83 GETTABLEKS                       R19 R19 K7 ["useEffect"]
       85 NEWCLOSURE                       R20 P0
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R21 0 2
       92 MOVE                             R22 R2
       93 MOVE                             R23 R3
       94 SETLIST                          R21 R22 2 [1]
       96 CALL                             R19 2 0
       97 NEWCLOSURE                       R19 P1
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R18
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          VAL R9
      103 GETUPVAL                         R20 0
      104 GETTABLEKS                       R20 R20 K8 ["useCallback"]
      106 NEWCLOSURE                       R21 P2
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R18
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          VAL R9
      113 NEWTABLE                         R22 0 0
      115 CALL                             R20 2 1
      116 NEWCLOSURE                       R21 P3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          UPVAL U4
      119 NEWCLOSURE                       R22 P4
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U4
      123 NEWCLOSURE                       R23 P5
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U4
      127 NEWCLOSURE                       R24 P6
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R8
      131 GETUPVAL                         R25 0
      132 GETTABLEKS                       R25 R25 K7 ["useEffect"]
      134 NEWCLOSURE                       R26 P7
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R12
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R8
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          UPVAL U4
      152 NEWTABLE                         R27 0 2
      154 MOVE                             R28 R18
      155 MOVE                             R29 R1
      156 SETLIST                          R27 R28 2 [1]
      158 CALL                             R25 2 0
      159 GETUPVAL                         R25 0
      160 GETTABLEKS                       R25 R25 K7 ["useEffect"]
      162 NEWCLOSURE                       R26 P8
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R8
      171 NEWTABLE                         R27 0 1
      173 MOVE                             R28 R2
      174 SETLIST                          R27 R28 1 [1]
      176 CALL                             R25 2 0
      177 GETUPVAL                         R25 0
      178 GETTABLEKS                       R25 R25 K7 ["useEffect"]
      180 NEWCLOSURE                       R26 P9
      181 CAPTURE                          VAL R1
      182 CAPTURE                          UPVAL U4
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R20
      185 NEWTABLE                         R27 0 1
      187 MOVE                             R28 R1
      188 SETLIST                          R27 R28 1 [1]
      190 CALL                             R25 2 0
      191 GETUPVAL                         R25 0
      192 GETTABLEKS                       R25 R25 K8 ["useCallback"]
      194 NEWCLOSURE                       R26 P10
      195 CAPTURE                          UPVAL U3
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R1
      199 CAPTURE                          UPVAL U4
      200 CAPTURE                          VAL R20
      201 NEWTABLE                         R27 0 0
      203 CALL                             R25 2 1
      204 GETUPVAL                         R26 0
      205 GETTABLEKS                       R26 R26 K8 ["useCallback"]
      207 NEWCLOSURE                       R27 P11
      208 CAPTURE                          VAL R10
      209 NEWTABLE                         R28 0 0
      211 CALL                             R26 2 1
      212 GETUPVAL                         R27 0
      213 GETTABLEKS                       R27 R27 K8 ["useCallback"]
      215 NEWCLOSURE                       R28 P12
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R20
      219 NEWTABLE                         R29 0 0
      221 CALL                             R27 2 1
      222 GETUPVAL                         R28 0
      223 GETTABLEKS                       R28 R28 K8 ["useCallback"]
      225 NEWCLOSURE                       R29 P13
      226 CAPTURE                          VAL R1
      227 CAPTURE                          UPVAL U4
      228 NEWTABLE                         R30 0 0
      230 CALL                             R28 2 1
      231 GETUPVAL                         R29 0
      232 GETTABLEKS                       R29 R29 K8 ["useCallback"]
      234 NEWCLOSURE                       R30 P14
      235 CAPTURE                          UPVAL U8
      236 CAPTURE                          VAL R1
      237 CAPTURE                          UPVAL U9
      238 CAPTURE                          VAL R28
      239 NEWTABLE                         R31 0 2
      241 MOVE                             R32 R28
      242 MOVE                             R33 R1
      243 SETLIST                          R31 R32 2 [1]
      245 CALL                             R29 2 1
      246 GETUPVAL                         R30 0
      247 GETTABLEKS                       R30 R30 K8 ["useCallback"]
      249 NEWCLOSURE                       R31 P15
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R16
      253 NEWTABLE                         R32 0 0
      255 CALL                             R30 2 1
      256 GETUPVAL                         R31 0
      257 GETTABLEKS                       R31 R31 K8 ["useCallback"]
      259 NEWCLOSURE                       R32 P16
      260 CAPTURE                          UPVAL U3
      261 CAPTURE                          VAL R6
      262 NEWTABLE                         R33 0 0
      264 CALL                             R31 2 1
      265 GETUPVAL                         R32 0
      266 GETTABLEKS                       R32 R32 K9 ["useMemo"]
      268 NEWCLOSURE                       R33 P17
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R25
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R28
      277 CAPTURE                          VAL R29
      278 CAPTURE                          VAL R31
      279 NEWTABLE                         R34 0 10
      281 MOVE                             R35 R3
      282 MOVE                             R36 R5
      283 MOVE                             R37 R7
      284 MOVE                             R38 R30
      285 MOVE                             R39 R25
      286 MOVE                             R40 R26
      287 MOVE                             R41 R27
      288 MOVE                             R42 R28
      289 MOVE                             R43 R29
      290 MOVE                             R44 R31
      291 SETLIST                          R34 R35 10 [1]
      293 CALL                             R32 2 1
      294 GETUPVAL                         R33 0
      295 GETTABLEKS                       R33 R33 K10 ["createElement"]
      297 GETUPVAL                         R34 10
      298 GETTABLEKS                       R34 R34 K11 ["Provider"]
      300 DUPTABLE                         R35 K13 [{"value"}]
      301 SETTABLEKS                       R32 R35 K12 ["value"]
      303 GETTABLEKS                       R36 R0 K14 ["children"]
      305 CALL                             R33 3 -1
      306 RETURN                           R33 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Host"]
       20 GETTABLEKS                       R3 R3 K10 ["DataCollector"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Protocol"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Host"]
       36 GETTABLEKS                       R5 R5 K12 ["optimisticState"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K9 ["Host"]
       45 GETTABLEKS                       R6 R6 K13 ["searchQuery"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K9 ["Host"]
       54 GETTABLEKS                       R7 R7 K14 ["treeBuilder"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K15 ["Keys"]
       59 GETIMPORT                        R8 K17 [game]
       61 LOADK                            R10 K18 ["HttpService"]
       62 NAMECALL                         R8 R8 K19 ["GetService"]
       64 CALL                             R8 2 1
       65 GETIMPORT                        R9 K17 [game]
       67 LOADK                            R11 K20 ["RunService"]
       68 NAMECALL                         R9 R9 K19 ["GetService"]
       70 CALL                             R9 2 1
       71 GETIMPORT                        R10 K23 [string.rep]
       73 LOADK                            R11 K24 [" "]
       74 LOADN                            R12 5
       75 CALL                             R10 2 1
       76 GETTABLEKS                       R11 R1 K25 ["createContext"]
       78 LOADNIL                          R12
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K26 [PROTO_27]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R13 K27 [PROTO_28]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 DUPTABLE                         R14 K31 [{"Provider", "Context", "useCollections"}]
       96 SETTABLEKS                       R12 R14 K28 ["Provider"]
       98 SETTABLEKS                       R11 R14 K29 ["Context"]
      100 SETTABLEKS                       R13 R14 K30 ["useCollections"]
      102 RETURN                           R14 1
