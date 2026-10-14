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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R2 K0 [0.5]
        5 JUMPIFNOTLT                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R1 0
        9 SETUPVAL                         R1 0
       10 LOADB                            R1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["SOURCE_IDENTIFIERS"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R7 2
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K2 ["dataItemKey"]
       21 MOVE                             R10 R6
       22 CALL                             R9 1 1
       23 LOADNIL                          R10
       24 NAMECALL                         R7 R7 K3 ["GetItem"]
       26 CALL                             R7 3 1
       27 FASTCALL1                        TYPEOF R7 ; [+3]
       28 MOVE                             R10 R7
       29 GETIMPORT                        R9 K5 [typeof]
       31 CALL                             R9 1 1
       32 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+4]
       34 GETTABLEKS                       R8 R7 K7 ["seq"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K8 ["current"]
       41 GETTABLE                         R9 R10 R6
       42 JUMPIFEQ                         R8 R9 ; [+49]
       44 LOADB                            R1 1
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K8 ["current"]
       48 SETTABLE                         R8 R9 R6
       49 JUMPIFNOTEQKNIL                  R8 ; [+32]
       51 GETUPVAL                         R9 4
       52 MOVE                             R11 R6
       53 NAMECALL                         R9 R9 K9 ["forgetSource"]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K8 ["current"]
       59 LOADNIL                          R10
       60 SETTABLE                         R10 R9 R6
       61 GETUPVAL                         R9 6
       62 GETTABLEKS                       R9 R9 K10 ["forgetPending"]
       64 GETUPVAL                         R10 7
       65 GETTABLEKS                       R10 R10 K8 ["current"]
       67 MOVE                             R11 R6
       68 CALL                             R9 2 0
       69 FASTCALL1                        TOSTRING R6 ; [+3]
       70 MOVE                             R13 R6
       71 GETIMPORT                        R12 K12 [tostring]
       73 CALL                             R12 1 1
       74 MOVE                             R10 R12
       75 LOADK                            R11 K13 ["|"]
       76 CONCAT                           R9 R10 R11
       77 GETUPVAL                         R10 8
       78 NEWCLOSURE                       R11 P0
       79 CAPTURE                          VAL R9
       80 CALL                             R10 1 0
       81 JUMP                             ; [+10]
       82 GETUPVAL                         R9 4
       83 MOVE                             R11 R6
       84 GETTABLEKS                       R12 R7 K14 ["entries"]
       86 JUMPIF                           R12 ; [+2]
       87 NEWTABLE                         R12 0 0
       89 NAMECALL                         R9 R9 K15 ["ingest"]
       91 CALL                             R9 3 0
       92 FORGLOOP                         R2 2 ; [-76]
       94 JUMPIFNOT                        R1 ; [+5]
       95 GETUPVAL                         R2 9
       96 GETUPVAL                         R3 10
       97 LOADB                            R4 1
       98 CALL                             R3 1 1
       99 CALL                             R2 1 0
      100 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Heartbeat"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 NAMECALL                         R1 R1 K1 ["Connect"]
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R1
       21 CLOSEUPVALS                      R0
       22 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeKey"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R0 K7 [{"tree", "expanded", "toggleNode", "isHighlighted", "toggleHighlight", "openScript", "toggleExpanded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["tree"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expanded"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["toggleNode"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["isHighlighted"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["toggleHighlight"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["openScript"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["toggleExpanded"]
       22 RETURN                           R0 1

PROTO_20:
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
       17 GETTABLEKS                       R7 R7 K3 ["useRef"]
       19 NEWTABLE                         R8 0 0
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K3 ["useRef"]
       25 NEWTABLE                         R9 0 0
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K3 ["useRef"]
       31 NEWTABLE                         R10 0 0
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K3 ["useRef"]
       37 MOVE                             R11 R3
       38 CALL                             R10 1 1
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K3 ["useRef"]
       42 MOVE                             R12 R2
       43 CALL                             R11 1 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K3 ["useRef"]
       47 LOADNIL                          R13
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R13 R12 K4 ["current"]
       51 JUMPIFNOTEQKNIL                  R13 ; [+7]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K5 ["new"]
       56 CALL                             R13 0 1
       57 SETTABLEKS                       R13 R12 K4 ["current"]
       59 GETTABLEKS                       R13 R12 K4 ["current"]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R14 R14 K6 ["useEffect"]
       64 NEWCLOSURE                       R15 P0
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R16 0 2
       71 MOVE                             R17 R2
       72 MOVE                             R18 R3
       73 SETLIST                          R16 R17 2 [1]
       75 CALL                             R14 2 0
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R13
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R7
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       85 NEWCLOSURE                       R16 P2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R13
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R7
       92 NEWTABLE                         R17 0 0
       94 CALL                             R15 2 1
       95 NEWCLOSURE                       R16 P3
       96 CAPTURE                          VAL R1
       97 CAPTURE                          UPVAL U4
       98 NEWCLOSURE                       R17 P4
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U4
      102 GETUPVAL                         R18 0
      103 GETTABLEKS                       R18 R18 K6 ["useEffect"]
      105 NEWCLOSURE                       R19 P5
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R8
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R14
      117 NEWTABLE                         R20 0 2
      119 MOVE                             R21 R13
      120 MOVE                             R22 R1
      121 SETLIST                          R20 R21 2 [1]
      123 CALL                             R18 2 0
      124 GETUPVAL                         R18 0
      125 GETTABLEKS                       R18 R18 K6 ["useEffect"]
      127 NEWCLOSURE                       R19 P6
      128 CAPTURE                          VAL R15
      129 NEWTABLE                         R20 0 1
      131 MOVE                             R21 R2
      132 SETLIST                          R20 R21 1 [1]
      134 CALL                             R18 2 0
      135 GETUPVAL                         R18 0
      136 GETTABLEKS                       R18 R18 K6 ["useEffect"]
      138 NEWCLOSURE                       R19 P7
      139 CAPTURE                          VAL R1
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R15
      143 NEWTABLE                         R20 0 1
      145 MOVE                             R21 R1
      146 SETLIST                          R20 R21 1 [1]
      148 CALL                             R18 2 0
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      152 NEWCLOSURE                       R19 P8
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R1
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R15
      159 NEWTABLE                         R20 0 0
      161 CALL                             R18 2 1
      162 GETUPVAL                         R19 0
      163 GETTABLEKS                       R19 R19 K7 ["useCallback"]
      165 NEWCLOSURE                       R20 P9
      166 CAPTURE                          VAL R8
      167 NEWTABLE                         R21 0 0
      169 CALL                             R19 2 1
      170 GETUPVAL                         R20 0
      171 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      173 NEWCLOSURE                       R21 P10
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R15
      177 NEWTABLE                         R22 0 0
      179 CALL                             R20 2 1
      180 GETUPVAL                         R21 0
      181 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      183 NEWCLOSURE                       R22 P11
      184 CAPTURE                          VAL R1
      185 CAPTURE                          UPVAL U4
      186 NEWTABLE                         R23 0 0
      188 CALL                             R21 2 1
      189 GETUPVAL                         R22 0
      190 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      192 NEWCLOSURE                       R23 P12
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          VAL R6
      195 NEWTABLE                         R24 0 0
      197 CALL                             R22 2 1
      198 GETUPVAL                         R23 0
      199 GETTABLEKS                       R23 R23 K8 ["useMemo"]
      201 NEWCLOSURE                       R24 P13
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R22
      209 NEWTABLE                         R25 0 7
      211 MOVE                             R26 R3
      212 MOVE                             R27 R5
      213 MOVE                             R28 R18
      214 MOVE                             R29 R19
      215 MOVE                             R30 R20
      216 MOVE                             R31 R21
      217 MOVE                             R32 R22
      218 SETLIST                          R25 R26 7 [1]
      220 CALL                             R23 2 1
      221 GETUPVAL                         R24 0
      222 GETTABLEKS                       R24 R24 K9 ["createElement"]
      224 GETUPVAL                         R25 7
      225 GETTABLEKS                       R25 R25 K10 ["Provider"]
      227 DUPTABLE                         R26 K12 [{"value"}]
      228 SETTABLEKS                       R23 R26 K11 ["value"]
      230 GETTABLEKS                       R27 R0 K13 ["children"]
      232 CALL                             R24 3 -1
      233 RETURN                           R24 -1

PROTO_21:
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
       45 GETTABLEKS                       R6 R6 K13 ["treeBuilder"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K14 ["Keys"]
       50 GETIMPORT                        R7 K16 [game]
       52 LOADK                            R9 K17 ["RunService"]
       53 NAMECALL                         R7 R7 K18 ["GetService"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R1 K19 ["createContext"]
       58 LOADNIL                          R9
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K20 [PROTO_20]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R10 K21 [PROTO_21]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 DUPTABLE                         R11 K25 [{"Provider", "Context", "useCollections"}]
       73 SETTABLEKS                       R9 R11 K22 ["Provider"]
       75 SETTABLEKS                       R8 R11 K23 ["Context"]
       77 SETTABLEKS                       R10 R11 K24 ["useCollections"]
       79 RETURN                           R11 1
