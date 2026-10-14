PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Message"]
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["setTitle"]
        6 GETTABLEKS                       R3 R0 K0 ["Message"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K2 ["ActionButtonText"]
       11 JUMPIFEQKNIL                     R2 ; [+12]
       13 GETTABLEKS                       R2 R1 K3 ["setAction"]
       15 DUPTABLE                         R3 K6 [{"text", "onActivated"}]
       16 GETTABLEKS                       R4 R0 K2 ["ActionButtonText"]
       18 SETTABLEKS                       R4 R3 K4 ["text"]
       20 DUPCLOSURE                       R4 K7 [PROTO_0]
       21 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R2 R0 K8 ["Type"]
       26 JUMPIFEQKNIL                     R2 ; [+6]
       28 GETTABLEKS                       R2 R1 K9 ["setType"]
       30 GETTABLEKS                       R3 R0 K8 ["Type"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 LOADK                            R2 K0 ["Snackbar_%*_%*"]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K1 ["format"]
       10 CALL                             R2 3 1
       11 RETURN                           R2 1
       12 LOADK                            R2 K2 ["Snackbar_%*"]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 NAMECALL                         R2 R2 K1 ["format"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 MOVE                             R6 R3
        5 CALL                             R4 2 0
        6 GETIMPORT                        R4 K2 [table.freeze]
        8 DUPTABLE                         R5 K5 [{"id", "signals"}]
        9 GETUPVAL                         R7 2
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+9]
       12 LOADK                            R6 K6 ["Snackbar_%*_%*"]
       13 MOVE                             R8 R2
       14 GETUPVAL                         R9 3
       15 MOVE                             R10 R0
       16 CALL                             R9 1 1
       17 NAMECALL                         R6 R6 K7 ["format"]
       19 CALL                             R6 3 1
       20 JUMP                             ; [+7]
       21 LOADK                            R6 K8 ["Snackbar_%*"]
       22 GETUPVAL                         R8 3
       23 MOVE                             R9 R0
       24 CALL                             R8 1 1
       25 NAMECALL                         R6 R6 K7 ["format"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K3 ["id"]
       30 SETTABLEKS                       R3 R5 K4 ["signals"]
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_6:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETTABLEN                        R1 R0 1
        3 GETTABLEKS                       R1 R1 K0 ["id"]
        5 GETUPVAL                         R2 0
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K3 [table.clone]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETIMPORT                        R2 K5 [table.remove]
       15 MOVE                             R3 R1
       16 LOADN                            R4 1
       17 CALL                             R2 2 0
       18 GETIMPORT                        R2 K7 [table.freeze]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["id"]
        6 GETUPVAL                         R1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["id"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOTEQ                      R6 R7 ; [+14]
       10 GETIMPORT                        R6 K4 [warn]
       12 LOADK                            R7 K5 ["Snackbar already exists: %*; use UpdateSnackbar"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K6 ["toString"]
       16 GETUPVAL                         R10 2
       17 CALL                             R9 1 1
       18 NAMECALL                         R7 R7 K7 ["format"]
       20 CALL                             R7 2 1
       21 CALL                             R6 1 0
       22 RETURN                           R0 1
       23 FORGLOOP                         R1 2 [inext] ; [-19]
       25 GETIMPORT                        R1 K10 [table.clone]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 MOVE                             R3 R1
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 2
       32 GETUPVAL                         R6 4
       33 GETUPVAL                         R7 5
       34 CALL                             R4 3 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R2 K12 [table.insert]
       38 CALL                             R2 -1 0
       39 GETIMPORT                        R2 K14 [table.freeze]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+9]
        3 LOADK                            R3 K0 ["Snackbar_%*_%*"]
        4 MOVE                             R5 R2
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K1 ["format"]
       10 CALL                             R3 3 1
       11 JUMP                             ; [+7]
       12 LOADK                            R3 K2 ["Snackbar_%*"]
       13 GETUPVAL                         R5 1
       14 MOVE                             R6 R0
       15 CALL                             R5 1 1
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CALL                             R4 1 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["id"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOTEQ                      R6 R7 ; [+7]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K3 ["signals"]
       14 CALL                             R6 2 0
       15 RETURN                           R0 1
       16 FORGLOOP                         R1 2 [inext] ; [-12]
       18 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+9]
        3 LOADK                            R3 K0 ["Snackbar_%*_%*"]
        4 MOVE                             R5 R2
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K1 ["format"]
       10 CALL                             R3 3 1
       11 JUMP                             ; [+7]
       12 LOADK                            R3 K2 ["Snackbar_%*"]
       13 GETUPVAL                         R5 1
       14 MOVE                             R6 R0
       15 CALL                             R5 1 1
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["id"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOTEQ                      R6 R7 ; [+15]
       10 GETIMPORT                        R6 K5 [table.clone]
       12 MOVE                             R7 R0
       13 CALL                             R6 1 1
       14 GETIMPORT                        R7 K7 [table.remove]
       16 MOVE                             R8 R6
       17 MOVE                             R9 R4
       18 CALL                             R7 2 0
       19 GETIMPORT                        R7 K9 [table.freeze]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 -1
       23 RETURN                           R7 -1
       24 FORGLOOP                         R1 2 [inext] ; [-20]
       26 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+9]
        3 LOADK                            R2 K0 ["Snackbar_%*_%*"]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K1 ["format"]
       10 CALL                             R2 3 1
       11 JUMP                             ; [+7]
       12 LOADK                            R2 K2 ["Snackbar_%*"]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 NAMECALL                         R2 R2 K1 ["format"]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 2
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["ShowSnackbar"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["UpdateSnackbar"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U6
       23 NAMECALL                         R1 R1 K1 ["Connect"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["HideSnackbar"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R2 R2 K1 ["Connect"]
       35 CALL                             R2 2 1
       36 NEWCLOSURE                       R3 P3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["useState"]
       21 GETIMPORT                        R3 K6 [table.freeze]
       23 NEWTABLE                         R4 0 0
       25 CALL                             R3 1 1
       26 CALL                             R2 1 2
       27 GETTABLEN                        R4 R2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 2
       36 MOVE                             R8 R4
       37 MOVE                             R9 R3
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 NEWTABLE                         R8 0 2
       54 MOVE                             R9 R1
       55 MOVE                             R10 R3
       56 SETLIST                          R8 R9 2 [1]
       58 CALL                             R6 2 0
       59 JUMPIF                           R4 ; [+2]
       60 LOADNIL                          R6
       61 RETURN                           R6 1
       62 GETUPVAL                         R6 7
       63 GETUPVAL                         R7 8
       64 DUPTABLE                         R8 K15 [{["key"], ["id"], ["signals"], ["offsetY"] = -20, ["onClose"]}]
       65 GETTABLEKS                       R9 R4 K10 ["id"]
       67 SETTABLEKS                       R9 R8 K9 ["key"]
       69 GETTABLEKS                       R9 R4 K10 ["id"]
       71 SETTABLEKS                       R9 R8 K10 ["id"]
       73 GETTABLEKS                       R9 R4 K11 ["signals"]
       75 SETTABLEKS                       R9 R8 K11 ["signals"]
       77 SETTABLEKS                       R5 R8 K14 ["onClose"]
       79 CALL                             R6 2 -1
       80 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["SnackbarSession"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["createSnackbarSignals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getStudioDialogManagerMultiDataModel"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K17 ["ContextServices"]
       57 GETTABLEKS                       R7 R7 K18 ["Plugin"]
       59 GETTABLEKS                       R8 R4 K13 ["Util"]
       61 GETTABLEKS                       R8 R8 K19 ["StudioUri"]
       63 GETTABLEKS                       R9 R4 K13 ["Util"]
       65 GETTABLEKS                       R9 R9 K20 ["uriToTestId"]
       67 GETTABLEKS                       R10 R2 K21 ["createElement"]
       69 DUPCLOSURE                       R11 K22 [PROTO_1]
       70 DUPCLOSURE                       R12 K23 [PROTO_2]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R13 K24 [PROTO_3]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R9
       78 DUPCLOSURE                       R14 K25 [PROTO_16]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 GETTABLEKS                       R15 R2 K26 ["memo"]
       90 MOVE                             R16 R14
       91 CALL                             R15 1 -1
       92 RETURN                           R15 -1
