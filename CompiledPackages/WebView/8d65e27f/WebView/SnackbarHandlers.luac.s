PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+5]
        8 JUMPIFNOTEQKS                    R0 K3 [""] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 1
        1 JUMPIFEQKNIL                     R0 ; [+14]
        3 LOADB                            R2 0
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [type]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+6]
       11 GETTABLE                         R3 R1 R0
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+19]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+11]
       11 LOADB                            R1 0
       12 JUMPIFNOTEQ                      R0 R0 ; [+8]
       14 LOADB                            R1 0
       15 JUMPIFEQKN                       R0 K3 [Infinity] ; [+5]
       17 JUMPIFNOTEQKN                    R0 K4 [-Infinity] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["error"]}]
        1 SETTABLEKS                       R0 R1 K2 ["error"]
        3 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["GetUri"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [table.clone]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 LOADK                            R4 K4 ["Snackbar"]
        8 SETTABLEKS                       R4 R3 K5 ["Category"]
       10 LOADK                            R5 K6 ["WebView:"]
       11 MOVE                             R6 R1
       12 CONCAT                           R4 R5 R6
       13 SETTABLEKS                       R4 R3 K7 ["ItemId"]
       15 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R1 K5 [{"Message", "ActionButtonText", "Type", "Progress", "Result"}]
        1 GETTABLEKS                       R2 R0 K6 ["message"]
        3 SETTABLEKS                       R2 R1 K0 ["Message"]
        5 GETTABLEKS                       R2 R0 K7 ["actionButtonText"]
        7 SETTABLEKS                       R2 R1 K1 ["ActionButtonText"]
        9 GETTABLEKS                       R2 R0 K8 ["type"]
       11 SETTABLEKS                       R2 R1 K2 ["Type"]
       13 GETTABLEKS                       R3 R0 K9 ["progress"]
       15 JUMPIFEQKNIL                     R3 ; [+10]
       17 GETTABLEKS                       R3 R0 K9 ["progress"]
       19 LOADN                            R4 0
       20 LOADN                            R5 1
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R2 K12 [math.clamp]
       24 CALL                             R2 3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K3 ["Progress"]
       29 GETTABLEKS                       R2 R0 K13 ["result"]
       31 SETTABLEKS                       R2 R1 K4 ["Result"]
       33 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+8]
        3 GETIMPORT                        R0 K1 [pcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+1]
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R0 0
       11 RETURN                           R0 1

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        7 GETTABLEKS                       R3 R0 K3 ["itemId"]
        9 LOADB                            R2 0
       10 FASTCALL1                        TYPE R3 ; [+3]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K1 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+5]
       17 JUMPIFNOTEQKS                    R3 K5 [""] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMPIF                           R2 ; [+9]
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["INVALID_PARAMS"]
       27 DUPTABLE                         R4 K10 [{["success"] = False, ["error"]}]
       28 SETTABLEKS                       R5 R4 K9 ["error"]
       30 RETURN                           R2 3
       31 JUMPIFNOT                        R1 ; [+105]
       32 GETTABLEKS                       R3 R0 K11 ["message"]
       34 LOADB                            R2 0
       35 FASTCALL1                        TYPE R3 ; [+3]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K1 [type]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+5]
       42 JUMPIFNOTEQKS                    R3 K5 [""] ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 JUMPIFNOT                        R2 ; [+80]
       47 GETTABLEKS                       R3 R0 K12 ["actionButtonText"]
       49 JUMPIFEQKNIL                     R3 ; [+10]
       51 LOADB                            R2 0
       52 GETTABLEKS                       R4 R0 K12 ["actionButtonText"]
       54 FASTCALL1                        TYPE R4 ; [+2]
       55 GETIMPORT                        R3 K1 [type]
       57 CALL                             R3 1 1
       58 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+68]
       60 GETTABLEKS                       R3 R0 K0 ["type"]
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R4 R4 K13 ["SnackbarType"]
       65 LOADB                            R2 1
       66 JUMPIFEQKNIL                     R3 ; [+14]
       68 LOADB                            R2 0
       69 FASTCALL1                        TYPE R3 ; [+3]
       70 MOVE                             R6 R3
       71 GETIMPORT                        R5 K1 [type]
       73 CALL                             R5 1 1
       74 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+6]
       76 GETTABLE                         R5 R4 R3
       77 JUMPIFNOTEQKNIL                  R5 ; [+2]
       79 LOADB                            R2 0 +1
       80 LOADB                            R2 1
       81 JUMPIFNOT                        R2 ; [+45]
       82 GETTABLEKS                       R3 R0 K14 ["result"]
       84 GETUPVAL                         R4 1
       85 GETTABLEKS                       R4 R4 K15 ["SnackbarResult"]
       87 LOADB                            R2 1
       88 JUMPIFEQKNIL                     R3 ; [+14]
       90 LOADB                            R2 0
       91 FASTCALL1                        TYPE R3 ; [+3]
       92 MOVE                             R6 R3
       93 GETIMPORT                        R5 K1 [type]
       95 CALL                             R5 1 1
       96 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+6]
       98 GETTABLE                         R5 R4 R3
       99 JUMPIFNOTEQKNIL                  R5 ; [+2]
      101 LOADB                            R2 0 +1
      102 LOADB                            R2 1
      103 JUMPIFNOT                        R2 ; [+23]
      104 GETTABLEKS                       R3 R0 K16 ["progress"]
      106 LOADB                            R2 1
      107 JUMPIFEQKNIL                     R3 ; [+19]
      109 LOADB                            R2 0
      110 FASTCALL1                        TYPE R3 ; [+3]
      111 MOVE                             R5 R3
      112 GETIMPORT                        R4 K1 [type]
      114 CALL                             R4 1 1
      115 JUMPIFNOTEQKS                    R4 K17 ["number"] ; [+11]
      117 LOADB                            R2 0
      118 JUMPIFNOTEQ                      R3 R3 ; [+8]
      120 LOADB                            R2 0
      121 JUMPIFEQKN                       R3 K18 [Infinity] ; [+5]
      123 JUMPIFNOTEQKN                    R3 K19 [-Infinity] ; [+2]
      125 LOADB                            R2 0 +1
      126 LOADB                            R2 1
      127 JUMPIF                           R2 ; [+9]
      128 LOADNIL                          R3
      129 LOADNIL                          R4
      130 GETUPVAL                         R6 0
      131 GETTABLEKS                       R6 R6 K6 ["INVALID_PARAMS"]
      133 DUPTABLE                         R5 K10 [{["success"] = False, ["error"]}]
      134 SETTABLEKS                       R6 R5 K9 ["error"]
      136 RETURN                           R3 3
      137 GETUPVAL                         R3 2
      138 JUMPIFNOTEQKNIL                  R3 ; [+8]
      140 GETIMPORT                        R3 K21 [pcall]
      142 NEWCLOSURE                       R4 P0
      143 CAPTURE                          UPVAL U3
      144 CALL                             R3 1 2
      145 JUMPIFNOT                        R3 ; [+1]
      146 SETUPVAL                         R4 2
      147 GETUPVAL                         R2 2
      148 JUMPIF                           R2 ; [+9]
      149 LOADNIL                          R3
      150 LOADNIL                          R4
      151 GETUPVAL                         R6 0
      152 GETTABLEKS                       R6 R6 K22 ["DIALOG_MANAGER_NOT_FOUND"]
      154 DUPTABLE                         R5 K10 [{["success"] = False, ["error"]}]
      155 SETTABLEKS                       R6 R5 K9 ["error"]
      157 RETURN                           R3 3
      158 MOVE                             R3 R2
      159 GETUPVAL                         R5 3
      160 GETTABLEKS                       R6 R0 K3 ["itemId"]
      162 NAMECALL                         R7 R5 K23 ["GetUri"]
      164 CALL                             R7 1 1
      165 GETIMPORT                        R8 K25 [table.clone]
      167 MOVE                             R9 R7
      168 CALL                             R8 1 1
      169 LOADK                            R9 K26 ["Snackbar"]
      170 SETTABLEKS                       R9 R8 K27 ["Category"]
      172 LOADK                            R10 K28 ["WebView:"]
      173 MOVE                             R11 R6
      174 CONCAT                           R9 R10 R11
      175 SETTABLEKS                       R9 R8 K29 ["ItemId"]
      177 MOVE                             R4 R8
      178 LOADNIL                          R5
      179 RETURN                           R3 3

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["HideSnackbarAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 DUPTABLE                         R3 K5 [{"Message", "ActionButtonText", "Type", "Progress", "Result"}]
        4 GETTABLEKS                       R5 R4 K6 ["message"]
        6 SETTABLEKS                       R5 R3 K0 ["Message"]
        8 GETTABLEKS                       R5 R4 K7 ["actionButtonText"]
       10 SETTABLEKS                       R5 R3 K1 ["ActionButtonText"]
       12 GETTABLEKS                       R5 R4 K8 ["type"]
       14 SETTABLEKS                       R5 R3 K2 ["Type"]
       16 GETTABLEKS                       R6 R4 K9 ["progress"]
       18 JUMPIFEQKNIL                     R6 ; [+10]
       20 GETTABLEKS                       R6 R4 K9 ["progress"]
       22 LOADN                            R7 0
       23 LOADN                            R8 1
       24 FASTCALL                         MATH_CLAMP ; [+2]
       25 GETIMPORT                        R5 K12 [math.clamp]
       27 CALL                             R5 3 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R3 K3 ["Progress"]
       32 GETTABLEKS                       R5 R4 K13 ["result"]
       34 SETTABLEKS                       R5 R3 K4 ["Result"]
       36 NAMECALL                         R0 R0 K14 ["ShowSnackbarAsync"]
       38 CALL                             R0 3 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 3
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R3 1
        6 GETIMPORT                        R4 K1 [pcall]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CALL                             R4 1 0
       12 GETIMPORT                        R4 K1 [pcall]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 CALL                             R4 1 2
       19 JUMPIF                           R4 ; [+15]
       20 GETIMPORT                        R6 K3 [warn]
       22 LOADK                            R7 K4 ["Failed to show snackbar: %*"]
       23 MOVE                             R9 R5
       24 NAMECALL                         R7 R7 K5 ["format"]
       26 CALL                             R7 2 1
       27 CALL                             R6 1 0
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K6 ["SNACKBAR_FAILED"]
       31 DUPTABLE                         R6 K10 [{["success"] = False, ["error"]}]
       32 SETTABLEKS                       R7 R6 K9 ["error"]
       34 RETURN                           R6 1
       35 DUPTABLE                         R6 K12 [{["success"] = True}]
       36 RETURN                           R6 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["HideSnackbarAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+16]
        7 GETTABLEKS                       R5 R0 K3 ["itemId"]
        9 LOADB                            R4 0
       10 FASTCALL1                        TYPE R5 ; [+3]
       11 MOVE                             R7 R5
       12 GETIMPORT                        R6 K1 [type]
       14 CALL                             R6 1 1
       15 JUMPIFNOTEQKS                    R6 K4 ["string"] ; [+5]
       17 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIF                           R4 ; [+9]
       22 LOADNIL                          R1
       23 LOADNIL                          R2
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K6 ["INVALID_PARAMS"]
       27 DUPTABLE                         R3 K10 [{["success"] = False, ["error"]}]
       28 SETTABLEKS                       R4 R3 K9 ["error"]
       30 JUMP                             ; [+42]
       31 GETUPVAL                         R5 1
       32 JUMPIFNOTEQKNIL                  R5 ; [+8]
       34 GETIMPORT                        R5 K12 [pcall]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          UPVAL U2
       38 CALL                             R5 1 2
       39 JUMPIFNOT                        R5 ; [+1]
       40 SETUPVAL                         R6 1
       41 GETUPVAL                         R4 1
       42 JUMPIF                           R4 ; [+9]
       43 LOADNIL                          R1
       44 LOADNIL                          R2
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K13 ["DIALOG_MANAGER_NOT_FOUND"]
       48 DUPTABLE                         R3 K10 [{["success"] = False, ["error"]}]
       49 SETTABLEKS                       R5 R3 K9 ["error"]
       51 JUMP                             ; [+21]
       52 MOVE                             R1 R4
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R6 R0 K3 ["itemId"]
       56 NAMECALL                         R7 R5 K14 ["GetUri"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K16 [table.clone]
       61 MOVE                             R9 R7
       62 CALL                             R8 1 1
       63 LOADK                            R9 K17 ["Snackbar"]
       64 SETTABLEKS                       R9 R8 K18 ["Category"]
       66 LOADK                            R10 K19 ["WebView:"]
       67 MOVE                             R11 R6
       68 CONCAT                           R9 R10 R11
       69 SETTABLEKS                       R9 R8 K20 ["ItemId"]
       71 MOVE                             R2 R8
       72 LOADNIL                          R3
       73 JUMPIFNOT                        R3 ; [+1]
       74 RETURN                           R3 1
       75 GETIMPORT                        R4 K12 [pcall]
       77 NEWCLOSURE                       R5 P1
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CALL                             R4 1 2
       81 JUMPIF                           R4 ; [+15]
       82 GETIMPORT                        R6 K22 [warn]
       84 LOADK                            R7 K23 ["Failed to hide snackbar: %*"]
       85 MOVE                             R9 R5
       86 NAMECALL                         R7 R7 K24 ["format"]
       88 CALL                             R7 2 1
       89 CALL                             R6 1 0
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K25 ["SNACKBAR_FAILED"]
       93 DUPTABLE                         R6 K10 [{["success"] = False, ["error"]}]
       94 SETTABLEKS                       R7 R6 K9 ["error"]
       96 RETURN                           R6 1
       97 DUPTABLE                         R6 K27 [{["success"] = True}]
       98 RETURN                           R6 1

PROTO_14:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R1
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U0
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R6 K2 [{"showSnackbar", "hideSnackbar"}]
       17 SETTABLEKS                       R4 R6 K0 ["showSnackbar"]
       19 SETTABLEKS                       R5 R6 K1 ["hideSnackbar"]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["WebViewTypes"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["MessageBusErrorCode"]
       14 NEWTABLE                         R3 2 0
       16 DUPCLOSURE                       R4 K8 [PROTO_0]
       17 DUPCLOSURE                       R5 K9 [PROTO_1]
       18 DUPCLOSURE                       R6 K10 [PROTO_2]
       19 DUPCLOSURE                       R7 K11 [PROTO_3]
       20 DUPCLOSURE                       R8 K12 [PROTO_4]
       21 DUPCLOSURE                       R9 K13 [PROTO_5]
       22 DUPCLOSURE                       R10 K14 [PROTO_14]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R10 R3 K15 ["new"]
       27 SETTABLEKS                       R8 R3 K16 ["getSnackbarUri"]
       29 RETURN                           R3 1
