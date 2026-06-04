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
       31 LOADK                            R6 K12 ["Invalid key code value: %*"]
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
       18 GETTABLEKS                       R4 R0 K3 ["schema"]
       20 JUMPIFNOTEQKS                    R4 K4 ["Touch"] ; [+6]
       22 GETIMPORT                        R4 K6 [print]
       24 GETTABLEKS                       R5 R0 K7 ["binding"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R6 0 2
       34 GETTABLEKS                       R7 R0 K9 ["action"]
       36 GETTABLEKS                       R8 R0 K10 ["property"]
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R7 R0 K7 ["binding"]
       44 JUMPIFNOT                        R7 ; [+12]
       45 GETTABLEKS                       R7 R0 K7 ["binding"]
       47 GETTABLEKS                       R7 R7 K11 ["uiButton"]
       49 JUMPIFNOT                        R7 ; [+7]
       50 GETTABLEKS                       R6 R0 K7 ["binding"]
       52 GETTABLEKS                       R6 R6 K11 ["uiButton"]
       54 GETTABLEKS                       R6 R6 K12 ["type"]
       56 JUMP                             ; [+1]
       57 LOADK                            R6 K13 ["ImageButton"]
       58 CALL                             R5 1 1
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K1 ["useContext"]
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R7 R7 K2 ["Context"]
       65 CALL                             R6 1 1
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K1 ["useContext"]
       69 GETUPVAL                         R8 6
       70 GETTABLEKS                       R8 R8 K2 ["Context"]
       72 CALL                             R7 1 1
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       76 NEWCLOSURE                       R9 P1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R0
       79 NEWTABLE                         R10 0 4
       81 GETTABLEKS                       R11 R0 K9 ["action"]
       83 GETTABLEKS                       R12 R0 K7 ["binding"]
       85 GETTABLEKS                       R13 R0 K10 ["property"]
       87 GETTABLEKS                       R14 R0 K3 ["schema"]
       89 SETLIST                          R10 R11 4 [1]
       91 CALL                             R8 2 1
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K14 ["useState"]
       95 GETTABLEKS                       R11 R7 K15 ["activeCellId"]
       97 JUMPIFEQ                         R11 R8 ; [+2]
       99 LOADB                            R10 0 +1
      100 LOADB                            R10 1
      101 CALL                             R9 1 2
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K16 ["useEffect"]
      105 NEWCLOSURE                       R12 P2
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 NEWTABLE                         R13 0 2
      111 GETTABLEKS                       R14 R7 K17 ["activeCellIdChangedSignal"]
      113 MOVE                             R15 R8
      114 SETLIST                          R13 R14 2 [1]
      116 CALL                             R11 2 0
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R11 R11 K18 ["useCallback"]
      120 NEWCLOSURE                       R12 P3
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R6
      124 NEWTABLE                         R13 0 3
      126 MOVE                             R14 R6
      127 MOVE                             R15 R7
      128 MOVE                             R16 R8
      129 SETLIST                          R13 R14 3 [1]
      131 CALL                             R11 2 1
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R12 R12 K18 ["useCallback"]
      135 NEWCLOSURE                       R13 P4
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 NEWTABLE                         R14 0 6
      141 GETTABLEKS                       R15 R0 K7 ["binding"]
      143 GETTABLEKS                       R16 R0 K9 ["action"]
      145 GETTABLEKS                       R17 R0 K3 ["schema"]
      147 MOVE                             R18 R6
      148 MOVE                             R19 R7
      149 MOVE                             R20 R8
      150 SETLIST                          R14 R15 6 [1]
      152 CALL                             R12 2 1
      153 GETUPVAL                         R13 7
      154 MOVE                             R14 R9
      155 MOVE                             R15 R12
      156 CALL                             R13 2 0
      157 GETUPVAL                         R13 8
      158 GETTABLEKS                       R14 R0 K9 ["action"]
      160 GETTABLEKS                       R14 R14 K19 ["parentUuid"]
      162 GETTABLEKS                       R15 R0 K7 ["binding"]
      164 GETTABLEKS                       R16 R0 K10 ["property"]
      166 GETTABLEKS                       R17 R0 K3 ["schema"]
      168 GETTABLEKS                       R18 R0 K9 ["action"]
      170 GETTABLEKS                       R18 R18 K12 ["type"]
      172 CALL                             R13 5 3
      173 GETUPVAL                         R16 1
      174 GETTABLEKS                       R16 R16 K8 ["useMemo"]
      176 NEWCLOSURE                       R17 P5
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U9
      181 NEWTABLE                         R18 0 2
      183 GETTABLEKS                       R19 R0 K3 ["schema"]
      185 MOVE                             R20 R4
      186 SETLIST                          R18 R19 2 [1]
      188 CALL                             R16 2 1
      189 GETUPVAL                         R17 1
      190 GETTABLEKS                       R17 R17 K8 ["useMemo"]
      192 NEWCLOSURE                       R18 P6
      193 CAPTURE                          VAL R0
      194 NEWTABLE                         R19 0 2
      196 GETTABLEKS                       R20 R0 K7 ["binding"]
      198 GETTABLEKS                       R21 R0 K10 ["property"]
      200 SETLIST                          R19 R20 2 [1]
      202 CALL                             R17 2 1
      203 GETUPVAL                         R18 1
      204 GETTABLEKS                       R18 R18 K18 ["useCallback"]
      206 NEWCLOSURE                       R19 P7
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R2
      209 NEWTABLE                         R20 0 2
      211 GETTABLEKS                       R21 R0 K7 ["binding"]
      213 GETTABLEKS                       R22 R0 K10 ["property"]
      215 SETLIST                          R20 R21 2 [1]
      217 CALL                             R18 2 1
      218 GETUPVAL                         R19 1
      219 GETTABLEKS                       R19 R19 K8 ["useMemo"]
      221 NEWCLOSURE                       R20 P8
      222 CAPTURE                          VAL R0
      223 NEWTABLE                         R21 0 3
      225 GETTABLEKS                       R22 R0 K10 ["property"]
      227 GETTABLEKS                       R23 R0 K7 ["binding"]
      229 GETTABLEKS                       R24 R0 K3 ["schema"]
      231 SETLIST                          R21 R22 3 [1]
      233 CALL                             R19 2 1
      234 LOADB                            R20 0
      235 GETTABLEKS                       R21 R0 K10 ["property"]
      237 JUMPIFNOTEQKS                    R21 K20 ["keyCode"] ; [+16]
      239 LOADB                            R20 0
      240 GETTABLEKS                       R21 R0 K3 ["schema"]
      242 JUMPIFNOTEQKS                    R21 K4 ["Touch"] ; [+11]
      244 GETTABLEKS                       R21 R0 K9 ["action"]
      246 GETTABLEKS                       R21 R21 K12 ["type"]
      248 GETIMPORT                        R22 K24 [Enum.InputActionType.Bool]
      250 JUMPIFEQ                         R21 R22 ; [+2]
      252 LOADB                            R20 0 +1
      253 LOADB                            R20 1
      254 GETTABLEKS                       R21 R0 K7 ["binding"]
      256 JUMPIFNOT                        R21 ; [+11]
      257 GETTABLEKS                       R21 R0 K7 ["binding"]
      259 GETTABLEKS                       R21 R21 K11 ["uiButton"]
      261 JUMPIFNOT                        R21 ; [+6]
      262 GETTABLEKS                       R21 R0 K7 ["binding"]
      264 GETTABLEKS                       R21 R21 K11 ["uiButton"]
      266 GETTABLEKS                       R21 R21 K25 ["name"]
      268 GETUPVAL                         R22 1
      269 GETTABLEKS                       R22 R22 K14 ["useState"]
      271 LOADB                            R23 0
      272 CALL                             R22 1 2
      273 GETUPVAL                         R24 0
      274 GETTABLEKS                       R24 R24 K26 ["useEventCallback"]
      276 NEWCLOSURE                       R25 P9
      277 CAPTURE                          VAL R23
      278 CAPTURE                          UPVAL U10
      279 CALL                             R24 1 1
      280 GETUPVAL                         R25 1
      281 GETTABLEKS                       R25 R25 K18 ["useCallback"]
      283 NEWCLOSURE                       R26 P10
      284 CAPTURE                          VAL R0
      285 CAPTURE                          VAL R6
      286 NEWTABLE                         R27 0 2
      288 GETTABLEKS                       R28 R0 K7 ["binding"]
      290 MOVE                             R29 R6
      291 SETLIST                          R27 R28 2 [1]
      293 CALL                             R25 2 1
      294 GETUPVAL                         R26 1
      295 GETTABLEKS                       R26 R26 K27 ["createElement"]
      297 GETUPVAL                         R27 11
      298 DUPTABLE                         R28 K31 [{"LayoutOrder", "tag", "testId"}]
      299 GETTABLEKS                       R29 R0 K28 ["LayoutOrder"]
      301 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      303 LOADK                            R29 K32 ["size-0-full columns-input align-y-center col"]
      304 SETTABLEKS                       R29 R28 K29 ["tag"]
      306 LOADK                            R30 K33 ["binding-cell-%*-%*-cell"]
      307 GETTABLEKS                       R32 R0 K10 ["property"]
      309 GETTABLEKS                       R33 R0 K3 ["schema"]
      311 NAMECALL                         R30 R30 K34 ["format"]
      313 CALL                             R30 3 1
      314 MOVE                             R29 R30
      315 SETTABLEKS                       R29 R28 K30 ["testId"]
      317 DUPTABLE                         R29 K37 [{"Container", "Divider"}]
      318 GETUPVAL                         R30 1
      319 GETTABLEKS                       R30 R30 K27 ["createElement"]
      321 GETUPVAL                         R31 11
      322 DUPTABLE                         R32 K38 [{"tag"}]
      323 LOADK                            R33 K39 ["size-full-full padding-left-xxsmall padding-right-xxsmall padding-top-xsmall padding-bottom-xsmall row align-y-center"]
      324 SETTABLEKS                       R33 R32 K29 ["tag"]
      326 DUPTABLE                         R33 K43 [{"Tooltip", "Dropdown", "Selector"}]
      327 LOADB                            R34 0
      328 GETIMPORT                        R35 K46 [Enum.PropertyStatus.Ok]
      330 JUMPIFEQ                         R13 R35 ; [+78]
      332 MOVE                             R34 R15
      333 JUMPIFNOT                        R34 ; [+75]
      334 MOVE                             R34 R14
      335 JUMPIFNOT                        R34 ; [+73]
      336 GETUPVAL                         R34 1
      337 GETTABLEKS                       R34 R34 K27 ["createElement"]
      339 GETUPVAL                         R35 12
      340 DUPTABLE                         R36 K49 [{"text", "title"}]
      341 SETTABLEKS                       R15 R36 K47 ["text"]
      343 SETTABLEKS                       R14 R36 K48 ["title"]
      345 DUPTABLE                         R37 K51 [{"Status"}]
      346 LOADB                            R38 0
      347 GETIMPORT                        R39 K46 [Enum.PropertyStatus.Ok]
      349 JUMPIFEQ                         R13 R39 ; [+56]
      351 GETUPVAL                         R38 1
      352 GETTABLEKS                       R38 R38 K27 ["createElement"]
      354 GETUPVAL                         R39 11
      355 DUPTABLE                         R40 K52 [{"tag", "testId"}]
      356 LOADK                            R41 K53 ["icon padding-small"]
      357 SETTABLEKS                       R41 R40 K29 ["tag"]
      359 LOADK                            R41 K54 ["status"]
      360 SETTABLEKS                       R41 R40 K30 ["testId"]
      362 DUPTABLE                         R41 K56 [{"Icon"}]
      363 GETUPVAL                         R42 1
      364 GETTABLEKS                       R42 R42 K27 ["createElement"]
      366 GETUPVAL                         R43 13
      367 DUPTABLE                         R44 K59 [{"LayoutOrder", "name", "size", "style"}]
      368 MOVE                             R45 R1
      369 CALL                             R45 0 1
      370 SETTABLEKS                       R45 R44 K28 ["LayoutOrder"]
      372 LOADK                            R45 K60 ["triangle-exclamation"]
      373 SETTABLEKS                       R45 R44 K25 ["name"]
      375 GETUPVAL                         R45 14
      376 GETTABLEKS                       R45 R45 K61 ["Small"]
      378 SETTABLEKS                       R45 R44 K57 ["size"]
      380 DUPTABLE                         R45 K63 [{"Color3"}]
      381 GETIMPORT                        R47 K65 [Enum.PropertyStatus.Error]
      383 JUMPIFNOTEQ                      R13 R47 ; [+8]
      385 GETIMPORT                        R46 K67 [Color3.new]
      387 LOADN                            R47 1
      388 LOADK                            R48 K68 [0.337255]
      389 LOADK                            R49 K68 [0.337255]
      390 CALL                             R46 3 1
      391 JUMP                             ; [+6]
      392 GETIMPORT                        R46 K67 [Color3.new]
      394 LOADN                            R47 1
      395 LOADN                            R48 1
      396 LOADN                            R49 1
      397 CALL                             R46 3 1
      398 SETTABLEKS                       R46 R45 K62 ["Color3"]
      400 SETTABLEKS                       R45 R44 K58 ["style"]
      402 CALL                             R42 2 1
      403 SETTABLEKS                       R42 R41 K55 ["Icon"]
      405 CALL                             R38 3 1
      406 SETTABLEKS                       R38 R37 K50 ["Status"]
      408 CALL                             R34 3 1
      409 SETTABLEKS                       R34 R33 K40 ["Tooltip"]
      411 MOVE                             R34 R19
      412 JUMPIFNOT                        R34 ; [+52]
      413 GETUPVAL                         R34 1
      414 GETTABLEKS                       R34 R34 K27 ["createElement"]
      416 GETUPVAL                         R35 15
      417 DUPTABLE                         R36 K75 [{"items", "label", "LayoutOrder", "maxHeight", "onItemChanged", "size", "testId", "value", "width"}]
      418 SETTABLEKS                       R16 R36 K69 ["items"]
      420 LOADK                            R37 K76 [""]
      421 SETTABLEKS                       R37 R36 K70 ["label"]
      423 MOVE                             R37 R1
      424 CALL                             R37 0 1
      425 SETTABLEKS                       R37 R36 K28 ["LayoutOrder"]
      427 LOADN                            R37 200
      428 SETTABLEKS                       R37 R36 K71 ["maxHeight"]
      430 SETTABLEKS                       R18 R36 K72 ["onItemChanged"]
      432 GETUPVAL                         R37 16
      433 GETTABLEKS                       R37 R37 K61 ["Small"]
      435 SETTABLEKS                       R37 R36 K57 ["size"]
      437 LOADK                            R38 K77 ["binding-cell-%*-%*-dropdown"]
      438 GETTABLEKS                       R40 R0 K10 ["property"]
      440 GETTABLEKS                       R41 R0 K3 ["schema"]
      442 NAMECALL                         R38 R38 K34 ["format"]
      444 CALL                             R38 3 1
      445 MOVE                             R37 R38
      446 SETTABLEKS                       R37 R36 K30 ["testId"]
      448 SETTABLEKS                       R17 R36 K73 ["value"]
      450 GETIMPORT                        R37 K79 [UDim.new]
      452 LOADN                            R38 1
      453 GETIMPORT                        R40 K46 [Enum.PropertyStatus.Ok]
      455 JUMPIFEQ                         R13 R40 ; [+4]
      457 JUMPIFNOT                        R15 ; [+2]
      458 LOADN                            R39 224
      459 JUMP                             ; [+1]
      460 LOADN                            R39 0
      461 CALL                             R37 2 1
      462 SETTABLEKS                       R37 R36 K74 ["width"]
      464 CALL                             R34 2 1
      465 SETTABLEKS                       R34 R33 K41 ["Dropdown"]
      467 MOVE                             R34 R20
      468 JUMPIFNOT                        R34 ; [+127]
      469 GETUPVAL                         R34 1
      470 GETTABLEKS                       R34 R34 K27 ["createElement"]
      472 GETUPVAL                         R35 11
      473 DUPTABLE                         R36 K82 [{"LayoutOrder", "onActivated", "onStateChanged", "tag", "testId"}]
      474 MOVE                             R37 R1
      475 CALL                             R37 0 1
      476 SETTABLEKS                       R37 R36 K28 ["LayoutOrder"]
      478 JUMPIFNOT                        R20 ; [+2]
      479 MOVE                             R37 R11
      480 JUMP                             ; [+1]
      481 LOADNIL                          R37
      482 SETTABLEKS                       R37 R36 K80 ["onActivated"]
      484 SETTABLEKS                       R24 R36 K81 ["onStateChanged"]
      486 JUMPIFNOT                        R9 ; [+2]
      487 LOADK                            R37 K83 ["row gap-xxsmall grow size-0-800 padding-medium radius-medium align-y-center stroke-contrast padding-right-xsmall"]
      488 JUMP                             ; [+1]
      489 LOADK                            R37 K84 ["row gap-xxsmall grow size-0-800 padding-medium radius-medium align-y-center stroke-default padding-right-xsmall"]
      490 SETTABLEKS                       R37 R36 K29 ["tag"]
      492 LOADK                            R38 K85 ["binding-cell-%*-%*-selector"]
      493 GETTABLEKS                       R40 R0 K10 ["property"]
      495 GETTABLEKS                       R41 R0 K3 ["schema"]
      497 NAMECALL                         R38 R38 K34 ["format"]
      499 CALL                             R38 3 1
      500 MOVE                             R37 R38
      501 SETTABLEKS                       R37 R36 K30 ["testId"]
      503 DUPTABLE                         R37 K88 [{"Icon", "Text", "Remove"}]
      504 MOVE                             R38 R20
      505 JUMPIFNOT                        R38 ; [+29]
      506 GETUPVAL                         R38 1
      507 GETTABLEKS                       R38 R38 K27 ["createElement"]
      509 GETUPVAL                         R39 17
      510 DUPTABLE                         R40 K93 [{"Image", "imageRectOffset", "imageRectSize", "LayoutOrder", "ScaleType", "tag"}]
      511 GETTABLEKS                       R41 R5 K89 ["Image"]
      513 SETTABLEKS                       R41 R40 K89 ["Image"]
      515 GETTABLEKS                       R41 R5 K94 ["ImageRectOffset"]
      517 SETTABLEKS                       R41 R40 K90 ["imageRectOffset"]
      519 GETTABLEKS                       R41 R5 K95 ["ImageRectSize"]
      521 SETTABLEKS                       R41 R40 K91 ["imageRectSize"]
      523 MOVE                             R41 R1
      524 CALL                             R41 0 1
      525 SETTABLEKS                       R41 R40 K28 ["LayoutOrder"]
      527 GETIMPORT                        R41 K97 [Enum.ScaleType.Fit]
      529 SETTABLEKS                       R41 R40 K92 ["ScaleType"]
      531 LOADK                            R41 K98 ["icon padding-left-small"]
      532 SETTABLEKS                       R41 R40 K29 ["tag"]
      534 CALL                             R38 2 1
      535 SETTABLEKS                       R38 R37 K55 ["Icon"]
      537 MOVE                             R38 R20
      538 JUMPIFNOT                        R38 ; [+21]
      539 GETUPVAL                         R38 1
      540 GETTABLEKS                       R38 R38 K27 ["createElement"]
      542 GETUPVAL                         R39 18
      543 DUPTABLE                         R40 K99 [{"LayoutOrder", "tag", "Text"}]
      544 MOVE                             R41 R1
      545 CALL                             R41 0 1
      546 SETTABLEKS                       R41 R40 K28 ["LayoutOrder"]
      548 LOADK                            R41 K100 ["text-body-small grow size-0-full text-align-x-left padding-left-small"]
      549 SETTABLEKS                       R41 R40 K29 ["tag"]
      551 JUMPIFNOT                        R21 ; [+4]
      552 JUMPIFEQKS                       R21 K76 [""] ; [+3]
      554 MOVE                             R41 R21
      555 JUMP                             ; [+1]
      556 LOADK                            R41 K101 ["None"]
      557 SETTABLEKS                       R41 R40 K86 ["Text"]
      559 CALL                             R38 2 1
      560 SETTABLEKS                       R38 R37 K86 ["Text"]
      562 MOVE                             R38 R22
      563 JUMPIFNOT                        R38 ; [+29]
      564 GETTABLEKS                       R38 R0 K7 ["binding"]
      566 JUMPIFNOT                        R38 ; [+26]
      567 GETUPVAL                         R38 1
      568 GETTABLEKS                       R38 R38 K27 ["createElement"]
      570 GETUPVAL                         R39 19
      571 DUPTABLE                         R40 K103 [{"icon", "LayoutOrder", "onActivated", "size", "tag", "testId"}]
      572 LOADK                            R41 K104 ["trash-can"]
      573 SETTABLEKS                       R41 R40 K102 ["icon"]
      575 MOVE                             R41 R1
      576 CALL                             R41 0 1
      577 SETTABLEKS                       R41 R40 K28 ["LayoutOrder"]
      579 SETTABLEKS                       R25 R40 K80 ["onActivated"]
      581 GETUPVAL                         R41 16
      582 GETTABLEKS                       R41 R41 K105 ["XSmall"]
      584 SETTABLEKS                       R41 R40 K57 ["size"]
      586 LOADK                            R41 K98 ["icon padding-left-small"]
      587 SETTABLEKS                       R41 R40 K29 ["tag"]
      589 LOADK                            R41 K106 ["remove-button"]
      590 SETTABLEKS                       R41 R40 K30 ["testId"]
      592 CALL                             R38 2 1
      593 SETTABLEKS                       R38 R37 K87 ["Remove"]
      595 CALL                             R34 3 1
      596 SETTABLEKS                       R34 R33 K42 ["Selector"]
      598 CALL                             R30 3 1
      599 SETTABLEKS                       R30 R29 K35 ["Container"]
      601 GETUPVAL                         R30 1
      602 GETTABLEKS                       R30 R30 K27 ["createElement"]
      604 GETUPVAL                         R31 20
      605 DUPTABLE                         R32 K108 [{"LayoutOrder", "orientation", "tag"}]
      606 MOVE                             R33 R1
      607 CALL                             R33 0 1
      608 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      610 GETUPVAL                         R33 21
      611 GETTABLEKS                       R33 R33 K109 ["Horizontal"]
      613 SETTABLEKS                       R33 R32 K107 ["orientation"]
      615 LOADK                            R33 K110 ["auto-y"]
      616 SETTABLEKS                       R33 R32 K29 ["tag"]
      618 CALL                             R30 2 1
      619 SETTABLEKS                       R30 R29 K36 ["Divider"]
      621 CALL                             R26 3 -1
      622 RETURN                           R26 -1

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
       72 GETTABLEKS                       R18 R18 K28 ["DatamodelReference"]
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
       99 GETTABLEKS                       R21 R21 K31 ["SchemaKeyCodes"]
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
      124 GETTABLEKS                       R24 R24 K35 ["useSelectedButton"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K5 [require]
      129 GETTABLEKS                       R25 R0 K26 ["Src"]
      131 GETTABLEKS                       R25 R25 K33 ["Hooks"]
      133 GETTABLEKS                       R25 R25 K36 ["useStatus"]
      135 CALL                             R24 1 1
      136 DUPCLOSURE                       R25 K37 [PROTO_15]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R23
      145 CAPTURE                          VAL R24
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R16
      159 RETURN                           R25 1
