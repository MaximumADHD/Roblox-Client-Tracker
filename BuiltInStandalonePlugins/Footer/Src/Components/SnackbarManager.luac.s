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
        0 LOADK                            R2 K0 ["Snackbar_%*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 GETIMPORT                        R3 K2 [table.freeze]
        8 DUPTABLE                         R4 K5 [{"id", "signals"}]
        9 LOADK                            R6 K6 ["Snackbar_%*"]
       10 GETUPVAL                         R8 2
       11 MOVE                             R9 R0
       12 CALL                             R8 1 1
       13 NAMECALL                         R6 R6 K7 ["format"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 SETTABLEKS                       R5 R4 K3 ["id"]
       19 SETTABLEKS                       R2 R4 K4 ["signals"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

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
        8 JUMPIFNOTEQ                      R6 R7 ; [+15]
       10 GETIMPORT                        R6 K4 [warn]
       12 LOADK                            R8 K5 ["Snackbar already exists: %*; use UpdateSnackbar"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K6 ["toString"]
       16 GETUPVAL                         R11 2
       17 CALL                             R10 1 1
       18 NAMECALL                         R8 R8 K7 ["format"]
       20 CALL                             R8 2 1
       21 MOVE                             R7 R8
       22 CALL                             R6 1 0
       23 RETURN                           R0 1
       24 FORGLOOP                         R1 2 [inext] ; [-20]
       26 GETIMPORT                        R1 K10 [table.clone]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 MOVE                             R3 R1
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 4
       34 CALL                             R4 2 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R2 K12 [table.insert]
       38 CALL                             R2 -1 0
       39 GETIMPORT                        R2 K14 [table.freeze]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_9:
        0 LOADK                            R3 K0 ["Snackbar_%*"]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

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
        0 LOADK                            R3 K0 ["Snackbar_%*"]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

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
        0 LOADK                            R2 K0 ["Snackbar_%*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 GETUPVAL                         R2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

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
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["UpdateSnackbar"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R1 R1 K1 ["Connect"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K3 ["HideSnackbar"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 NAMECALL                         R2 R2 K1 ["Connect"]
       32 CALL                             R2 2 1
       33 NEWCLOSURE                       R3 P3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R3 1

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
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R1
       54 MOVE                             R10 R3
       55 SETLIST                          R8 R9 2 [1]
       57 CALL                             R6 2 0
       58 JUMPIF                           R4 ; [+2]
       59 LOADNIL                          R6
       60 RETURN                           R6 1
       61 GETUPVAL                         R6 6
       62 GETUPVAL                         R7 7
       63 DUPTABLE                         R8 K15 [{["key"], ["id"], ["signals"], ["offsetY"] = -20, ["onClose"]}]
       64 GETTABLEKS                       R9 R4 K10 ["id"]
       66 SETTABLEKS                       R9 R8 K9 ["key"]
       68 GETTABLEKS                       R9 R4 K10 ["id"]
       70 SETTABLEKS                       R9 R8 K10 ["id"]
       72 GETTABLEKS                       R9 R4 K11 ["signals"]
       74 SETTABLEKS                       R9 R8 K11 ["signals"]
       76 SETTABLEKS                       R5 R8 K14 ["onClose"]
       78 CALL                             R6 2 -1
       79 RETURN                           R6 -1

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
       46 GETTABLEKS                       R6 R1 K15 ["ContextServices"]
       48 GETTABLEKS                       R6 R6 K16 ["Plugin"]
       50 GETTABLEKS                       R7 R4 K13 ["Util"]
       52 GETTABLEKS                       R7 R7 K17 ["StudioUri"]
       54 GETTABLEKS                       R8 R4 K13 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["uriToTestId"]
       58 GETTABLEKS                       R9 R2 K19 ["createElement"]
       60 DUPCLOSURE                       R10 K20 [PROTO_1]
       61 DUPCLOSURE                       R11 K21 [PROTO_2]
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R12 K22 [PROTO_3]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R13 K23 [PROTO_16]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 GETTABLEKS                       R14 R2 K24 ["memo"]
       78 MOVE                             R15 R13
       79 CALL                             R14 1 -1
       80 RETURN                           R14 -1
