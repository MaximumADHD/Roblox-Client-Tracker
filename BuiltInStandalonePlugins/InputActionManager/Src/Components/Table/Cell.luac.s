PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["property"]
        3 JUMPIFNOTEQKS                    R0 K1 ["keyCode"] ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["action"]
        8 GETTABLEKS                       R0 R0 K3 ["type"]
       10 RETURN                           R0 1
       11 GETIMPORT                        R0 K7 [Enum.InputActionType.Bool]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["formatCellId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["action"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["binding"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["binding"]
       15 GETTABLEKS                       R2 R2 K2 ["uuid"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["property"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["schema"]
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQ                         R0 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["activeCellIdChangedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["ResetSelection"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["binding"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["binding"]
       12 GETTABLEKS                       R4 R4 K2 ["uuid"]
       14 SETTABLEKS                       R4 R3 K2 ["uuid"]
       16 DUPTABLE                         R4 K5 [{"uiButton"}]
       17 SETTABLEKS                       R0 R4 K4 ["uiButton"]
       19 SETTABLEKS                       R4 R3 K0 ["binding"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K6 ["setActiveCellId"]
       25 LOADNIL                          R2
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 DUPTABLE                         R1 K9 [{"name", "parentUuid", "uiButton"}]
       29 LOADK                            R3 K10 ["%*%*"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K11 ["action"]
       33 GETTABLEKS                       R5 R5 K7 ["name"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K12 ["schema"]
       38 NAMECALL                         R3 R3 K13 ["format"]
       40 CALL                             R3 3 1
       41 MOVE                             R2 R3
       42 SETTABLEKS                       R2 R1 K7 ["name"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K11 ["action"]
       47 GETTABLEKS                       R2 R2 K2 ["uuid"]
       49 SETTABLEKS                       R2 R1 K8 ["parentUuid"]
       51 SETTABLEKS                       R0 R1 K4 ["uiButton"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K1 ["UpdateBinding"]
       56 LOADNIL                          R3
       57 DUPTABLE                         R4 K14 [{"binding"}]
       58 SETTABLEKS                       R1 R4 K0 ["binding"]
       60 CALL                             R2 2 0
       61 GETUPVAL                         R2 2
       62 GETTABLEKS                       R2 R2 K6 ["setActiveCellId"]
       64 LOADNIL                          R3
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{"id", "text", "icon"}]
        3 GETIMPORT                        R2 K7 [Enum.KeyCode.Unknown]
        5 GETTABLEKS                       R2 R2 K8 ["Value"]
        7 SETTABLEKS                       R2 R1 K0 ["id"]
        9 LOADK                            R2 K9 ["None"]
       10 SETTABLEKS                       R2 R1 K1 ["text"]
       12 LOADK                            R2 K10 ["circle-question"]
       13 SETTABLEKS                       R2 R1 K2 ["icon"]
       15 SETLIST                          R0 R1 1 [1]
       17 GETUPVAL                         R1 0
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K11 ["schema"]
       24 GETTABLE                         R1 R2 R3
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 1
       27 MOVE                             R2 R1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K12 ["Name"]
       34 JUMPIFNOTEQ                      R5 R7 ; [+39]
       36 MOVE                             R7 R6
       37 LOADNIL                          R8
       38 LOADNIL                          R9
       39 FORGPREP                         R7
       40 GETIMPORT                        R12 K7 [Enum.KeyCode.Unknown]
       42 JUMPIFEQ                         R11 R12 ; [+29]
       44 GETIMPORT                        R12 K14 [xpcall]
       46 NEWCLOSURE                       R13 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R11
       49 DUPCLOSURE                       R14 K15 [PROTO_8]
       50 CALL                             R12 2 2
       51 DUPTABLE                         R16 K3 [{"id", "text", "icon"}]
       52 GETTABLEKS                       R17 R11 K8 ["Value"]
       54 SETTABLEKS                       R17 R16 K0 ["id"]
       56 GETTABLEKS                       R17 R11 K12 ["Name"]
       58 SETTABLEKS                       R17 R16 K1 ["text"]
       60 JUMPIFNOT                        R12 ; [+2]
       61 MOVE                             R17 R13
       62 JUMP                             ; [+1]
       63 LOADNIL                          R17
       64 SETTABLEKS                       R17 R16 K2 ["icon"]
       66 FASTCALL2                        TABLE_INSERT R0 R16 ; [+4]
       68 MOVE                             R15 R0
       69 GETIMPORT                        R14 K18 [table.insert]
       71 CALL                             R14 2 0
       72 FORGLOOP                         R7 2 ; [-33]
       74 FORGLOOP                         R2 2 ; [-44]
       76 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R0 K4 [Enum.KeyCode.Unknown]
        6 GETTABLEKS                       R0 R0 K5 ["Value"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["binding"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["property"]
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETTABLEKS                       R1 R0 K5 ["Value"]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K4 [Enum.KeyCode.Unknown]
       22 GETTABLEKS                       R1 R1 K5 ["Value"]
       24 RETURN                           R1 1

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["binding"]
       18 JUMPIFNOT                        R1 ; [+35]
       19 GETIMPORT                        R1 K9 [Enum.KeyCode]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K10 ["FromValue"]
       24 CALL                             R1 2 1
       25 NEWTABLE                         R2 0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K11 ["property"]
       30 SETTABLE                         R1 R2 R3
       31 LOADK                            R6 K12 ["Invalid keycode value: %*"]
       32 MOVE                             R8 R0
       33 NAMECALL                         R6 R6 K13 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 FASTCALL2                        ASSERT R1 R5 ; [+4]
       39 MOVE                             R4 R1
       40 GETIMPORT                        R3 K5 [assert]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K6 ["binding"]
       49 GETTABLEKS                       R4 R4 K15 ["uuid"]
       51 MOVE                             R5 R2
       52 CALL                             R3 2 0
       53 RETURN                           R0 0
       54 GETIMPORT                        R1 K9 [Enum.KeyCode]
       56 MOVE                             R3 R0
       57 NAMECALL                         R1 R1 K10 ["FromValue"]
       59 CALL                             R1 2 1
       60 DUPTABLE                         R2 K18 [{"name", "parentUuid"}]
       61 LOADK                            R4 K19 ["%*%*"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K20 ["action"]
       65 GETTABLEKS                       R6 R6 K16 ["name"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K21 ["schema"]
       70 NAMECALL                         R4 R4 K13 ["format"]
       72 CALL                             R4 3 1
       73 MOVE                             R3 R4
       74 SETTABLEKS                       R3 R2 K16 ["name"]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K20 ["action"]
       79 GETTABLEKS                       R3 R3 K15 ["uuid"]
       81 SETTABLEKS                       R3 R2 K17 ["parentUuid"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K11 ["property"]
       86 SETTABLE                         R1 R2 R3
       87 GETUPVAL                         R3 1
       88 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       90 LOADNIL                          R4
       91 MOVE                             R5 R2
       92 CALL                             R3 2 0
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K22 ["onCreated"]
       96 JUMPIFNOT                        R3 ; [+4]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K22 ["onCreated"]
      100 CALL                             R3 0 0
      101 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["property"]
        3 JUMPIFNOTEQKS                    R0 K1 ["keyCode"] ; [+8]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["schema"]
        8 JUMPIFEQKS                       R0 K3 ["Touch"] ; [+3]
       10 LOADB                            R0 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["property"]
       15 JUMPIFEQKS                       R0 K4 ["up"] ; [+26]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["property"]
       20 JUMPIFEQKS                       R0 K5 ["down"] ; [+21]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["property"]
       25 JUMPIFEQKS                       R0 K6 ["left"] ; [+16]
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K0 ["property"]
       30 JUMPIFEQKS                       R0 K7 ["right"] ; [+11]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["property"]
       35 JUMPIFEQKS                       R0 K8 ["forward"] ; [+6]
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K0 ["property"]
       40 JUMPIFNOTEQKS                    R0 K9 ["backward"] ; [+8]
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K2 ["schema"]
       45 JUMPIFEQKS                       R0 K3 ["Touch"] ; [+3]
       47 LOADB                            R0 1
       48 RETURN                           R0 1
       49 GETUPVAL                         R0 0
       50 GETTABLEKS                       R0 R0 K10 ["binding"]
       52 JUMPIFNOTEQKNIL                  R0 ; [+3]
       54 LOADB                            R0 0
       55 RETURN                           R0 1
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K10 ["binding"]
       59 GETTABLEKS                       R0 R0 K4 ["up"]
       61 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       63 JUMPIFNOTEQ                      R0 R1 ; [+55]
       65 GETUPVAL                         R0 0
       66 GETTABLEKS                       R0 R0 K10 ["binding"]
       68 GETTABLEKS                       R0 R0 K5 ["down"]
       70 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       72 JUMPIFNOTEQ                      R0 R1 ; [+46]
       74 GETUPVAL                         R0 0
       75 GETTABLEKS                       R0 R0 K10 ["binding"]
       77 GETTABLEKS                       R0 R0 K6 ["left"]
       79 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       81 JUMPIFNOTEQ                      R0 R1 ; [+37]
       83 GETUPVAL                         R0 0
       84 GETTABLEKS                       R0 R0 K10 ["binding"]
       86 GETTABLEKS                       R0 R0 K7 ["right"]
       88 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       90 JUMPIFNOTEQ                      R0 R1 ; [+28]
       92 GETUPVAL                         R0 0
       93 GETTABLEKS                       R0 R0 K10 ["binding"]
       95 GETTABLEKS                       R0 R0 K8 ["forward"]
       97 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       99 JUMPIFNOTEQ                      R0 R1 ; [+19]
      101 GETUPVAL                         R0 0
      102 GETTABLEKS                       R0 R0 K10 ["binding"]
      104 GETTABLEKS                       R0 R0 K9 ["backward"]
      106 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
      108 JUMPIFNOTEQ                      R0 R1 ; [+10]
      110 GETUPVAL                         R0 0
      111 GETTABLEKS                       R0 R0 K10 ["binding"]
      113 GETTABLEKS                       R0 R0 K1 ["keyCode"]
      115 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
      117 JUMPIFEQ                         R0 R1 ; [+3]
      119 LOADB                            R0 1
      120 RETURN                           R0 1
      121 LOADB                            R0 0
      122 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["UpdateBinding"]
        7 LOADNIL                          R1
        8 DUPTABLE                         R2 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["binding"]
       12 GETTABLEKS                       R3 R3 K2 ["uuid"]
       14 SETTABLEKS                       R3 R2 K2 ["uuid"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K0 ["binding"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K2 ["Context"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R0 K4 ["action"]
       27 GETTABLEKS                       R8 R0 K5 ["property"]
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R7 R0 K6 ["binding"]
       35 JUMPIFNOT                        R7 ; [+12]
       36 GETTABLEKS                       R7 R0 K6 ["binding"]
       38 GETTABLEKS                       R7 R7 K7 ["uiButton"]
       40 JUMPIFNOT                        R7 ; [+7]
       41 GETTABLEKS                       R6 R0 K6 ["binding"]
       43 GETTABLEKS                       R6 R6 K7 ["uiButton"]
       45 GETTABLEKS                       R6 R6 K8 ["type"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K9 ["ImageButton"]
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K1 ["useContext"]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R7 R7 K2 ["Context"]
       56 CALL                             R6 1 1
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K1 ["useContext"]
       60 GETUPVAL                         R8 6
       61 GETTABLEKS                       R8 R8 K2 ["Context"]
       63 CALL                             R7 1 1
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       67 NEWCLOSURE                       R9 P1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R10 0 4
       72 GETTABLEKS                       R11 R0 K4 ["action"]
       74 GETTABLEKS                       R12 R0 K6 ["binding"]
       76 GETTABLEKS                       R13 R0 K5 ["property"]
       78 GETTABLEKS                       R14 R0 K10 ["schema"]
       80 SETLIST                          R10 R11 4 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K11 ["useState"]
       86 GETTABLEKS                       R11 R7 K12 ["activeCellId"]
       88 JUMPIFEQ                         R11 R8 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 CALL                             R9 1 2
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K13 ["useEffect"]
       96 NEWCLOSURE                       R12 P2
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R8
      100 NEWTABLE                         R13 0 2
      102 GETTABLEKS                       R14 R7 K14 ["activeCellIdChangedSignal"]
      104 MOVE                             R15 R8
      105 SETLIST                          R13 R14 2 [1]
      107 CALL                             R11 2 0
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K15 ["useCallback"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R6
      115 NEWTABLE                         R13 0 3
      117 MOVE                             R14 R6
      118 MOVE                             R15 R7
      119 MOVE                             R16 R8
      120 SETLIST                          R13 R14 3 [1]
      122 CALL                             R11 2 1
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K15 ["useCallback"]
      126 NEWCLOSURE                       R13 P4
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 NEWTABLE                         R14 0 6
      132 GETTABLEKS                       R15 R0 K6 ["binding"]
      134 GETTABLEKS                       R16 R0 K4 ["action"]
      136 GETTABLEKS                       R17 R0 K10 ["schema"]
      138 MOVE                             R18 R6
      139 MOVE                             R19 R7
      140 MOVE                             R20 R8
      141 SETLIST                          R14 R15 6 [1]
      143 CALL                             R12 2 1
      144 GETUPVAL                         R13 7
      145 MOVE                             R14 R9
      146 MOVE                             R15 R12
      147 CALL                             R13 2 0
      148 GETUPVAL                         R13 8
      149 GETTABLEKS                       R14 R0 K4 ["action"]
      151 GETTABLEKS                       R14 R14 K16 ["parentUuid"]
      153 GETTABLEKS                       R15 R0 K6 ["binding"]
      155 GETTABLEKS                       R16 R0 K5 ["property"]
      157 GETTABLEKS                       R17 R0 K10 ["schema"]
      159 GETTABLEKS                       R18 R0 K4 ["action"]
      161 GETTABLEKS                       R18 R18 K8 ["type"]
      163 CALL                             R13 5 3
      164 GETUPVAL                         R16 1
      165 GETTABLEKS                       R16 R16 K3 ["useMemo"]
      167 NEWCLOSURE                       R17 P5
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U9
      172 NEWTABLE                         R18 0 2
      174 GETTABLEKS                       R19 R0 K10 ["schema"]
      176 MOVE                             R20 R4
      177 SETLIST                          R18 R19 2 [1]
      179 CALL                             R16 2 1
      180 GETUPVAL                         R17 1
      181 GETTABLEKS                       R17 R17 K3 ["useMemo"]
      183 NEWCLOSURE                       R18 P6
      184 CAPTURE                          VAL R0
      185 NEWTABLE                         R19 0 2
      187 GETTABLEKS                       R20 R0 K6 ["binding"]
      189 GETTABLEKS                       R21 R0 K5 ["property"]
      191 SETLIST                          R19 R20 2 [1]
      193 CALL                             R17 2 1
      194 GETUPVAL                         R18 1
      195 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      197 NEWCLOSURE                       R19 P7
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R2
      200 NEWTABLE                         R20 0 2
      202 GETTABLEKS                       R21 R0 K6 ["binding"]
      204 GETTABLEKS                       R22 R0 K5 ["property"]
      206 SETLIST                          R20 R21 2 [1]
      208 CALL                             R18 2 1
      209 GETUPVAL                         R19 1
      210 GETTABLEKS                       R19 R19 K3 ["useMemo"]
      212 NEWCLOSURE                       R20 P8
      213 CAPTURE                          VAL R0
      214 NEWTABLE                         R21 0 3
      216 GETTABLEKS                       R22 R0 K5 ["property"]
      218 GETTABLEKS                       R23 R0 K6 ["binding"]
      220 GETTABLEKS                       R24 R0 K10 ["schema"]
      222 SETLIST                          R21 R22 3 [1]
      224 CALL                             R19 2 1
      225 LOADB                            R20 0
      226 GETTABLEKS                       R21 R0 K5 ["property"]
      228 JUMPIFNOTEQKS                    R21 K17 ["keyCode"] ; [+16]
      230 LOADB                            R20 0
      231 GETTABLEKS                       R21 R0 K10 ["schema"]
      233 JUMPIFNOTEQKS                    R21 K18 ["Touch"] ; [+11]
      235 GETTABLEKS                       R21 R0 K4 ["action"]
      237 GETTABLEKS                       R21 R21 K8 ["type"]
      239 GETIMPORT                        R22 K22 [Enum.InputActionType.Bool]
      241 JUMPIFEQ                         R21 R22 ; [+2]
      243 LOADB                            R20 0 +1
      244 LOADB                            R20 1
      245 GETTABLEKS                       R21 R0 K6 ["binding"]
      247 JUMPIFNOT                        R21 ; [+11]
      248 GETTABLEKS                       R21 R0 K6 ["binding"]
      250 GETTABLEKS                       R21 R21 K7 ["uiButton"]
      252 JUMPIFNOT                        R21 ; [+6]
      253 GETTABLEKS                       R21 R0 K6 ["binding"]
      255 GETTABLEKS                       R21 R21 K7 ["uiButton"]
      257 GETTABLEKS                       R21 R21 K23 ["name"]
      259 GETUPVAL                         R22 1
      260 GETTABLEKS                       R22 R22 K11 ["useState"]
      262 LOADB                            R23 0
      263 CALL                             R22 1 2
      264 GETUPVAL                         R24 0
      265 GETTABLEKS                       R24 R24 K24 ["useEventCallback"]
      267 NEWCLOSURE                       R25 P9
      268 CAPTURE                          VAL R23
      269 CAPTURE                          UPVAL U10
      270 CALL                             R24 1 1
      271 GETUPVAL                         R25 1
      272 GETTABLEKS                       R25 R25 K15 ["useCallback"]
      274 NEWCLOSURE                       R26 P10
      275 CAPTURE                          VAL R0
      276 CAPTURE                          VAL R6
      277 NEWTABLE                         R27 0 2
      279 GETTABLEKS                       R28 R0 K6 ["binding"]
      281 MOVE                             R29 R6
      282 SETLIST                          R27 R28 2 [1]
      284 CALL                             R25 2 1
      285 GETUPVAL                         R26 1
      286 GETTABLEKS                       R26 R26 K25 ["createElement"]
      288 GETUPVAL                         R27 11
      289 DUPTABLE                         R28 K29 [{"LayoutOrder", "tag", "testId"}]
      290 GETTABLEKS                       R29 R0 K26 ["LayoutOrder"]
      292 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      294 LOADK                            R29 K30 ["size-0-full columns-input align-y-center col"]
      295 SETTABLEKS                       R29 R28 K27 ["tag"]
      297 LOADK                            R30 K31 ["binding-cell-%*-%*-cell"]
      298 GETTABLEKS                       R32 R0 K5 ["property"]
      300 GETTABLEKS                       R33 R0 K10 ["schema"]
      302 NAMECALL                         R30 R30 K32 ["format"]
      304 CALL                             R30 3 1
      305 MOVE                             R29 R30
      306 SETTABLEKS                       R29 R28 K28 ["testId"]
      308 DUPTABLE                         R29 K35 [{"Container", "Divider"}]
      309 GETUPVAL                         R30 1
      310 GETTABLEKS                       R30 R30 K25 ["createElement"]
      312 GETUPVAL                         R31 11
      313 DUPTABLE                         R32 K36 [{"tag"}]
      314 LOADK                            R33 K37 ["size-full-full padding-left-xxsmall padding-right-xxsmall padding-top-xsmall padding-bottom-xsmall row align-y-center"]
      315 SETTABLEKS                       R33 R32 K27 ["tag"]
      317 DUPTABLE                         R33 K41 [{"Tooltip", "Dropdown", "Selector"}]
      318 LOADB                            R34 0
      319 GETIMPORT                        R35 K44 [Enum.PropertyStatus.Ok]
      321 JUMPIFEQ                         R13 R35 ; [+78]
      323 MOVE                             R34 R15
      324 JUMPIFNOT                        R34 ; [+75]
      325 MOVE                             R34 R14
      326 JUMPIFNOT                        R34 ; [+73]
      327 GETUPVAL                         R34 1
      328 GETTABLEKS                       R34 R34 K25 ["createElement"]
      330 GETUPVAL                         R35 12
      331 DUPTABLE                         R36 K47 [{"text", "title"}]
      332 SETTABLEKS                       R15 R36 K45 ["text"]
      334 SETTABLEKS                       R14 R36 K46 ["title"]
      336 DUPTABLE                         R37 K49 [{"Status"}]
      337 LOADB                            R38 0
      338 GETIMPORT                        R39 K44 [Enum.PropertyStatus.Ok]
      340 JUMPIFEQ                         R13 R39 ; [+56]
      342 GETUPVAL                         R38 1
      343 GETTABLEKS                       R38 R38 K25 ["createElement"]
      345 GETUPVAL                         R39 11
      346 DUPTABLE                         R40 K50 [{"tag", "testId"}]
      347 LOADK                            R41 K51 ["icon padding-small"]
      348 SETTABLEKS                       R41 R40 K27 ["tag"]
      350 LOADK                            R41 K52 ["status"]
      351 SETTABLEKS                       R41 R40 K28 ["testId"]
      353 DUPTABLE                         R41 K54 [{"Icon"}]
      354 GETUPVAL                         R42 1
      355 GETTABLEKS                       R42 R42 K25 ["createElement"]
      357 GETUPVAL                         R43 13
      358 DUPTABLE                         R44 K57 [{"LayoutOrder", "name", "size", "style"}]
      359 MOVE                             R45 R1
      360 CALL                             R45 0 1
      361 SETTABLEKS                       R45 R44 K26 ["LayoutOrder"]
      363 LOADK                            R45 K58 ["triangle-exclamation"]
      364 SETTABLEKS                       R45 R44 K23 ["name"]
      366 GETUPVAL                         R45 14
      367 GETTABLEKS                       R45 R45 K59 ["Small"]
      369 SETTABLEKS                       R45 R44 K55 ["size"]
      371 DUPTABLE                         R45 K61 [{"Color3"}]
      372 GETIMPORT                        R47 K63 [Enum.PropertyStatus.Error]
      374 JUMPIFNOTEQ                      R13 R47 ; [+8]
      376 GETIMPORT                        R46 K65 [Color3.new]
      378 LOADN                            R47 1
      379 LOADK                            R48 K66 [0.337255]
      380 LOADK                            R49 K66 [0.337255]
      381 CALL                             R46 3 1
      382 JUMP                             ; [+6]
      383 GETIMPORT                        R46 K65 [Color3.new]
      385 LOADN                            R47 1
      386 LOADN                            R48 1
      387 LOADN                            R49 1
      388 CALL                             R46 3 1
      389 SETTABLEKS                       R46 R45 K60 ["Color3"]
      391 SETTABLEKS                       R45 R44 K56 ["style"]
      393 CALL                             R42 2 1
      394 SETTABLEKS                       R42 R41 K53 ["Icon"]
      396 CALL                             R38 3 1
      397 SETTABLEKS                       R38 R37 K48 ["Status"]
      399 CALL                             R34 3 1
      400 SETTABLEKS                       R34 R33 K38 ["Tooltip"]
      402 MOVE                             R34 R19
      403 JUMPIFNOT                        R34 ; [+52]
      404 GETUPVAL                         R34 1
      405 GETTABLEKS                       R34 R34 K25 ["createElement"]
      407 GETUPVAL                         R35 15
      408 DUPTABLE                         R36 K73 [{"items", "label", "LayoutOrder", "maxHeight", "onItemChanged", "size", "testId", "value", "width"}]
      409 SETTABLEKS                       R16 R36 K67 ["items"]
      411 LOADK                            R37 K74 [""]
      412 SETTABLEKS                       R37 R36 K68 ["label"]
      414 MOVE                             R37 R1
      415 CALL                             R37 0 1
      416 SETTABLEKS                       R37 R36 K26 ["LayoutOrder"]
      418 LOADN                            R37 200
      419 SETTABLEKS                       R37 R36 K69 ["maxHeight"]
      421 SETTABLEKS                       R18 R36 K70 ["onItemChanged"]
      423 GETUPVAL                         R37 16
      424 GETTABLEKS                       R37 R37 K59 ["Small"]
      426 SETTABLEKS                       R37 R36 K55 ["size"]
      428 LOADK                            R38 K75 ["binding-cell-%*-%*-dropdown"]
      429 GETTABLEKS                       R40 R0 K5 ["property"]
      431 GETTABLEKS                       R41 R0 K10 ["schema"]
      433 NAMECALL                         R38 R38 K32 ["format"]
      435 CALL                             R38 3 1
      436 MOVE                             R37 R38
      437 SETTABLEKS                       R37 R36 K28 ["testId"]
      439 SETTABLEKS                       R17 R36 K71 ["value"]
      441 GETIMPORT                        R37 K77 [UDim.new]
      443 LOADN                            R38 1
      444 GETIMPORT                        R40 K44 [Enum.PropertyStatus.Ok]
      446 JUMPIFEQ                         R13 R40 ; [+4]
      448 JUMPIFNOT                        R15 ; [+2]
      449 LOADN                            R39 224
      450 JUMP                             ; [+1]
      451 LOADN                            R39 0
      452 CALL                             R37 2 1
      453 SETTABLEKS                       R37 R36 K72 ["width"]
      455 CALL                             R34 2 1
      456 SETTABLEKS                       R34 R33 K39 ["Dropdown"]
      458 MOVE                             R34 R20
      459 JUMPIFNOT                        R34 ; [+127]
      460 GETUPVAL                         R34 1
      461 GETTABLEKS                       R34 R34 K25 ["createElement"]
      463 GETUPVAL                         R35 11
      464 DUPTABLE                         R36 K80 [{"LayoutOrder", "onActivated", "onStateChanged", "tag", "testId"}]
      465 MOVE                             R37 R1
      466 CALL                             R37 0 1
      467 SETTABLEKS                       R37 R36 K26 ["LayoutOrder"]
      469 JUMPIFNOT                        R20 ; [+2]
      470 MOVE                             R37 R11
      471 JUMP                             ; [+1]
      472 LOADNIL                          R37
      473 SETTABLEKS                       R37 R36 K78 ["onActivated"]
      475 SETTABLEKS                       R24 R36 K79 ["onStateChanged"]
      477 JUMPIFNOT                        R9 ; [+2]
      478 LOADK                            R37 K81 ["row gap-xxsmall grow size-0-800 padding-medium radius-medium align-y-center stroke-contrast padding-right-xsmall"]
      479 JUMP                             ; [+1]
      480 LOADK                            R37 K82 ["row gap-xxsmall grow size-0-800 padding-medium radius-medium align-y-center stroke-default padding-right-xsmall"]
      481 SETTABLEKS                       R37 R36 K27 ["tag"]
      483 LOADK                            R38 K83 ["binding-cell-%*-%*-selector"]
      484 GETTABLEKS                       R40 R0 K5 ["property"]
      486 GETTABLEKS                       R41 R0 K10 ["schema"]
      488 NAMECALL                         R38 R38 K32 ["format"]
      490 CALL                             R38 3 1
      491 MOVE                             R37 R38
      492 SETTABLEKS                       R37 R36 K28 ["testId"]
      494 DUPTABLE                         R37 K86 [{"Icon", "Text", "Remove"}]
      495 MOVE                             R38 R20
      496 JUMPIFNOT                        R38 ; [+29]
      497 GETUPVAL                         R38 1
      498 GETTABLEKS                       R38 R38 K25 ["createElement"]
      500 GETUPVAL                         R39 17
      501 DUPTABLE                         R40 K91 [{"Image", "imageRectOffset", "imageRectSize", "LayoutOrder", "ScaleType", "tag"}]
      502 GETTABLEKS                       R41 R5 K87 ["Image"]
      504 SETTABLEKS                       R41 R40 K87 ["Image"]
      506 GETTABLEKS                       R41 R5 K92 ["ImageRectOffset"]
      508 SETTABLEKS                       R41 R40 K88 ["imageRectOffset"]
      510 GETTABLEKS                       R41 R5 K93 ["ImageRectSize"]
      512 SETTABLEKS                       R41 R40 K89 ["imageRectSize"]
      514 MOVE                             R41 R1
      515 CALL                             R41 0 1
      516 SETTABLEKS                       R41 R40 K26 ["LayoutOrder"]
      518 GETIMPORT                        R41 K95 [Enum.ScaleType.Fit]
      520 SETTABLEKS                       R41 R40 K90 ["ScaleType"]
      522 LOADK                            R41 K96 ["icon padding-left-small"]
      523 SETTABLEKS                       R41 R40 K27 ["tag"]
      525 CALL                             R38 2 1
      526 SETTABLEKS                       R38 R37 K53 ["Icon"]
      528 MOVE                             R38 R20
      529 JUMPIFNOT                        R38 ; [+21]
      530 GETUPVAL                         R38 1
      531 GETTABLEKS                       R38 R38 K25 ["createElement"]
      533 GETUPVAL                         R39 18
      534 DUPTABLE                         R40 K97 [{"LayoutOrder", "tag", "Text"}]
      535 MOVE                             R41 R1
      536 CALL                             R41 0 1
      537 SETTABLEKS                       R41 R40 K26 ["LayoutOrder"]
      539 LOADK                            R41 K98 ["text-body-small grow size-0-full text-align-x-left padding-left-small"]
      540 SETTABLEKS                       R41 R40 K27 ["tag"]
      542 JUMPIFNOT                        R21 ; [+4]
      543 JUMPIFEQKS                       R21 K74 [""] ; [+3]
      545 MOVE                             R41 R21
      546 JUMP                             ; [+1]
      547 LOADK                            R41 K99 ["None"]
      548 SETTABLEKS                       R41 R40 K84 ["Text"]
      550 CALL                             R38 2 1
      551 SETTABLEKS                       R38 R37 K84 ["Text"]
      553 MOVE                             R38 R22
      554 JUMPIFNOT                        R38 ; [+29]
      555 GETTABLEKS                       R38 R0 K6 ["binding"]
      557 JUMPIFNOT                        R38 ; [+26]
      558 GETUPVAL                         R38 1
      559 GETTABLEKS                       R38 R38 K25 ["createElement"]
      561 GETUPVAL                         R39 19
      562 DUPTABLE                         R40 K101 [{"icon", "LayoutOrder", "onActivated", "size", "tag", "testId"}]
      563 LOADK                            R41 K102 ["trash-can"]
      564 SETTABLEKS                       R41 R40 K100 ["icon"]
      566 MOVE                             R41 R1
      567 CALL                             R41 0 1
      568 SETTABLEKS                       R41 R40 K26 ["LayoutOrder"]
      570 SETTABLEKS                       R25 R40 K78 ["onActivated"]
      572 GETUPVAL                         R41 16
      573 GETTABLEKS                       R41 R41 K103 ["XSmall"]
      575 SETTABLEKS                       R41 R40 K55 ["size"]
      577 LOADK                            R41 K96 ["icon padding-left-small"]
      578 SETTABLEKS                       R41 R40 K27 ["tag"]
      580 LOADK                            R41 K104 ["remove-button"]
      581 SETTABLEKS                       R41 R40 K28 ["testId"]
      583 CALL                             R38 2 1
      584 SETTABLEKS                       R38 R37 K85 ["Remove"]
      586 CALL                             R34 3 1
      587 SETTABLEKS                       R34 R33 K40 ["Selector"]
      589 CALL                             R30 3 1
      590 SETTABLEKS                       R30 R29 K33 ["Container"]
      592 GETUPVAL                         R30 1
      593 GETTABLEKS                       R30 R30 K25 ["createElement"]
      595 GETUPVAL                         R31 20
      596 DUPTABLE                         R32 K106 [{"LayoutOrder", "orientation", "tag"}]
      597 MOVE                             R33 R1
      598 CALL                             R33 0 1
      599 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      601 GETUPVAL                         R33 21
      602 GETTABLEKS                       R33 R33 K107 ["Horizontal"]
      604 SETTABLEKS                       R33 R32 K105 ["orientation"]
      606 LOADK                            R33 K108 ["auto-y"]
      607 SETTABLEKS                       R33 R32 K27 ["tag"]
      609 CALL                             R30 2 1
      610 SETTABLEKS                       R30 R29 K34 ["Divider"]
      612 CALL                             R26 3 -1
      613 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Utility"]
       30 GETTABLEKS                       R4 R4 K11 ["getBuilderIconForKeycode"]
       32 GETTABLEKS                       R5 R3 K12 ["Divider"]
       34 GETTABLEKS                       R6 R3 K13 ["Dropdown"]
       36 GETTABLEKS                       R6 R6 K14 ["Root"]
       38 GETTABLEKS                       R7 R3 K15 ["Icon"]
       40 GETTABLEKS                       R8 R3 K16 ["IconButton"]
       42 GETTABLEKS                       R9 R3 K17 ["Image"]
       44 GETTABLEKS                       R10 R3 K18 ["Text"]
       46 GETTABLEKS                       R11 R3 K19 ["Tooltip"]
       48 GETTABLEKS                       R12 R3 K20 ["View"]
       50 GETTABLEKS                       R13 R3 K21 ["Enums"]
       52 GETTABLEKS                       R13 R13 K22 ["ControlState"]
       54 GETTABLEKS                       R14 R3 K21 ["Enums"]
       56 GETTABLEKS                       R14 R14 K23 ["IconSize"]
       58 GETTABLEKS                       R15 R3 K21 ["Enums"]
       60 GETTABLEKS                       R15 R15 K24 ["InputSize"]
       62 GETTABLEKS                       R16 R3 K21 ["Enums"]
       64 GETTABLEKS                       R16 R16 K25 ["Orientation"]
       66 GETIMPORT                        R17 K5 [require]
       68 GETTABLEKS                       R18 R0 K26 ["Src"]
       70 GETTABLEKS                       R18 R18 K27 ["Contexts"]
       72 GETTABLEKS                       R18 R18 K28 ["InputConfiguration"]
       74 CALL                             R17 1 1
       75 GETIMPORT                        R18 K5 [require]
       77 GETTABLEKS                       R19 R0 K26 ["Src"]
       79 GETTABLEKS                       R19 R19 K27 ["Contexts"]
       81 GETTABLEKS                       R19 R19 K29 ["Guest"]
       83 CALL                             R18 1 1
       84 GETIMPORT                        R19 K5 [require]
       86 GETTABLEKS                       R20 R0 K26 ["Src"]
       88 GETTABLEKS                       R20 R20 K27 ["Contexts"]
       90 GETTABLEKS                       R20 R20 K30 ["PluginConfiguration"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K5 [require]
       95 GETTABLEKS                       R21 R0 K26 ["Src"]
       97 GETTABLEKS                       R21 R21 K27 ["Contexts"]
       99 GETTABLEKS                       R21 R21 K31 ["SchemaConfiguration"]
      101 CALL                             R20 1 1
      102 GETIMPORT                        R21 K5 [require]
      104 GETTABLEKS                       R22 R0 K26 ["Src"]
      106 GETTABLEKS                       R22 R22 K32 ["Types"]
      108 CALL                             R21 1 1
      109 GETIMPORT                        R22 K5 [require]
      111 GETTABLEKS                       R23 R0 K26 ["Src"]
      113 GETTABLEKS                       R23 R23 K33 ["Hooks"]
      115 GETTABLEKS                       R23 R23 K34 ["useIcon"]
      117 CALL                             R22 1 1
      118 GETIMPORT                        R23 K5 [require]
      120 GETTABLEKS                       R24 R0 K26 ["Src"]
      122 GETTABLEKS                       R24 R24 K33 ["Hooks"]
      124 GETTABLEKS                       R24 R24 K35 ["Binding"]
      126 GETTABLEKS                       R24 R24 K36 ["useSelectedButton"]
      128 CALL                             R23 1 1
      129 GETIMPORT                        R24 K5 [require]
      131 GETTABLEKS                       R25 R0 K26 ["Src"]
      133 GETTABLEKS                       R25 R25 K33 ["Hooks"]
      135 GETTABLEKS                       R25 R25 K35 ["Binding"]
      137 GETTABLEKS                       R25 R25 K37 ["useStatus"]
      139 CALL                             R24 1 1
      140 DUPCLOSURE                       R25 K38 [PROTO_15]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R24
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R16
      163 RETURN                           R25 1
