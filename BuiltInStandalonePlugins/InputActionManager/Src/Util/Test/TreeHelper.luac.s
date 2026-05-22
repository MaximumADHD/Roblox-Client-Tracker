PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["expand-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Expand"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R2 K0 ["KeyCode"] ; [+8]
        2 LOADK                            R4 K1 ["key-code-binding-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 JUMP                             ; [+6]
        9 LOADK                            R4 K3 ["compound-direction-binding-%*"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K2 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R0
       17 MOVE                             R7 R3
       18 CALL                             R5 2 1
       19 LENGTH                           R4 R5
       20 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 CALL                             R4 2 1
        4 LENGTH                           R3 R4
        5 LOADN                            R4 0
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["ItemExists"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R6
        9 CALL                             R7 2 1
       10 JUMPIF                           R7 ; [+2]
       11 LOADB                            R7 0
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-10]
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Text"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K2 ["Name button not found"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["contextMenu"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 0
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R0
       25 LOADK                            R7 K6 ["edit-menu-%*--content"]
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 CALL                             R4 2 1
       32 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K7 ["Edit menu not found"]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R4
       41 LOADK                            R7 K8 ["Rename"]
       42 CALL                             R5 2 1
       43 FASTCALL2K                       ASSERT R5 K9 ; [+5]
       45 MOVE                             R7 R5
       46 LOADK                            R8 K9 ["Rename option not found"]
       47 GETIMPORT                        R6 K4 [assert]
       49 CALL                             R6 2 0
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K10 ["click"]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 0
       55 GETUPVAL                         R6 2
       56 CALL                             R6 0 0
       57 GETUPVAL                         R6 0
       58 MOVE                             R7 R0
       59 LOADK                            R9 K11 ["rename-%*--internal-text-input--textbox"]
       60 MOVE                             R11 R1
       61 NAMECALL                         R9 R9 K1 ["format"]
       63 CALL                             R9 2 1
       64 MOVE                             R8 R9
       65 CALL                             R6 2 1
       66 FASTCALL2K                       ASSERT R6 K12 ; [+5]
       68 MOVE                             R8 R6
       69 LOADK                            R9 K12 ["Active text box not found"]
       70 GETIMPORT                        R7 K4 [assert]
       72 CALL                             R7 2 0
       73 GETUPVAL                         R7 4
       74 NEWCLOSURE                       R8 P0
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CALL                             R7 1 0
       79 GETUPVAL                         R7 2
       80 CALL                             R7 0 0
       81 GETUPVAL                         R7 4
       82 NEWCLOSURE                       R8 P1
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R0
       86 CALL                             R7 1 0
       87 GETUPVAL                         R7 2
       88 CALL                             R7 0 0
       89 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["node-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["Name button not found"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["contextMenu"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 CALL                             R3 0 0
       23 GETUPVAL                         R3 0
       24 MOVE                             R4 R0
       25 LOADK                            R6 K6 ["edit-menu-%*--content"]
       26 MOVE                             R8 R1
       27 NAMECALL                         R6 R6 K1 ["format"]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 CALL                             R3 2 1
       32 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K7 ["Edit menu not found"]
       36 GETIMPORT                        R4 K4 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R3
       41 LOADK                            R6 K8 ["Delete"]
       42 CALL                             R4 2 1
       43 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       45 MOVE                             R6 R4
       46 LOADK                            R7 K9 ["Delete option not found"]
       47 GETIMPORT                        R5 K4 [assert]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K10 ["click"]
       53 MOVE                             R6 R4
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 2
       56 CALL                             R5 0 0
       57 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K2 ["Name button not found"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["contextMenu"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 0
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R0
       25 LOADK                            R7 K6 ["edit-menu-%*--content"]
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 CALL                             R4 2 1
       32 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K7 ["Edit menu not found"]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R4
       41 LOADK                            R7 K8 ["Change Action Type"]
       42 CALL                             R5 2 1
       43 LOADK                            R7 K9 ["GuiButton"]
       44 NAMECALL                         R5 R5 K10 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R5 2 1
       47 FASTCALL2K                       ASSERT R5 K11 ; [+5]
       49 MOVE                             R7 R5
       50 LOADK                            R8 K11 ["Change Action Type option not found"]
       51 GETIMPORT                        R6 K4 [assert]
       53 CALL                             R6 2 0
       54 GETUPVAL                         R6 4
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R5
       58 CALL                             R6 1 0
       59 GETUPVAL                         R6 2
       60 CALL                             R6 0 0
       61 GETUPVAL                         R6 2
       62 CALL                             R6 0 0
       63 GETUPVAL                         R6 5
       64 CALL                             R6 0 0
       65 GETUPVAL                         R6 2
       66 CALL                             R6 0 0
       67 GETUPVAL                         R6 6
       68 MOVE                             R7 R0
       69 GETTABLEKS                       R8 R2 K12 ["Name"]
       71 CALL                             R6 2 1
       72 LOADK                            R8 K9 ["GuiButton"]
       73 NAMECALL                         R6 R6 K10 ["FindFirstAncestorWhichIsA"]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 4
       77 NEWCLOSURE                       R8 P1
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R6
       80 CALL                             R7 1 0
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K13 ["click"]
       84 MOVE                             R8 R6
       85 CALL                             R7 1 0
       86 GETUPVAL                         R7 2
       87 CALL                             R7 0 0
       88 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K2 ["Name button not found"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["contextMenu"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 0
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R0
       25 LOADK                            R7 K6 ["edit-menu-%*--content"]
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 CALL                             R4 2 1
       32 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K7 ["Edit menu not found"]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 2 0
       39 JUMPIFNOTEQKS                    R2 K8 ["KeyCode"] ; [+3]
       41 LOADK                            R5 K9 ["Use Keycode"]
       42 JUMP                             ; [+1]
       43 LOADK                            R5 K10 ["Use Compound Direction"]
       44 GETUPVAL                         R6 3
       45 MOVE                             R7 R4
       46 MOVE                             R8 R5
       47 CALL                             R6 2 1
       48 LOADK                            R10 K11 ["%* option not found"]
       49 MOVE                             R12 R5
       50 NAMECALL                         R10 R10 K1 ["format"]
       52 CALL                             R10 2 1
       53 MOVE                             R9 R10
       54 FASTCALL2                        ASSERT R6 R9 ; [+4]
       56 MOVE                             R8 R6
       57 GETIMPORT                        R7 K4 [assert]
       59 CALL                             R7 2 0
       60 LOADK                            R9 K12 ["GuiButton"]
       61 NAMECALL                         R7 R6 K13 ["FindFirstAncestorWhichIsA"]
       63 CALL                             R7 2 1
       64 LOADK                            R11 K14 ["%* clickable not found"]
       65 MOVE                             R13 R5
       66 NAMECALL                         R11 R11 K1 ["format"]
       68 CALL                             R11 2 1
       69 MOVE                             R10 R11
       70 FASTCALL2                        ASSERT R7 R10 ; [+4]
       72 MOVE                             R9 R7
       73 GETIMPORT                        R8 K4 [assert]
       75 CALL                             R8 2 0
       76 GETUPVAL                         R8 4
       77 NEWCLOSURE                       R9 P0
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R7
       80 CALL                             R8 1 0
       81 GETUPVAL                         R8 2
       82 CALL                             R8 0 0
       83 GETUPVAL                         R8 5
       84 CALL                             R8 0 0
       85 GETUPVAL                         R8 2
       86 CALL                             R8 0 0
       87 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["node-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["Name button not found"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["contextMenu"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 CALL                             R3 0 0
       23 GETUPVAL                         R3 0
       24 MOVE                             R4 R0
       25 LOADK                            R6 K6 ["edit-menu-%*--content"]
       26 MOVE                             R8 R1
       27 NAMECALL                         R6 R6 K1 ["format"]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 CALL                             R3 2 1
       32 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K7 ["Edit menu not found"]
       36 GETIMPORT                        R4 K4 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R3
       41 LOADK                            R6 K8 ["Add Primary Modifier"]
       42 CALL                             R4 2 1
       43 LOADK                            R6 K9 ["GuiButton"]
       44 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R4 2 1
       47 FASTCALL2K                       ASSERT R4 K11 ; [+5]
       49 MOVE                             R6 R4
       50 LOADK                            R7 K11 ["Add Primary Modifier button not found"]
       51 GETIMPORT                        R5 K4 [assert]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 4
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R4
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 2
       60 CALL                             R5 0 0
       61 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["node-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["Name button not found"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["contextMenu"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 CALL                             R3 0 0
       23 GETUPVAL                         R3 0
       24 MOVE                             R4 R0
       25 LOADK                            R6 K6 ["edit-menu-%*--content"]
       26 MOVE                             R8 R1
       27 NAMECALL                         R6 R6 K1 ["format"]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 CALL                             R3 2 1
       32 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K7 ["Edit menu not found"]
       36 GETIMPORT                        R4 K4 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R3
       41 LOADK                            R6 K8 ["Add Secondary Modifier"]
       42 CALL                             R4 2 1
       43 LOADK                            R6 K9 ["GuiButton"]
       44 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R4 2 1
       47 FASTCALL2K                       ASSERT R4 K11 ; [+5]
       49 MOVE                             R6 R4
       50 LOADK                            R7 K11 ["Add Secondary Modifier button not found"]
       51 GETIMPORT                        R5 K4 [assert]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 4
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R4
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 2
       60 CALL                             R5 0 0
       61 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 LOADK                            R6 K0 ["node-%*"]
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R6 K1 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 CALL                             R3 2 1
       13 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       15 MOVE                             R5 R3
       16 LOADK                            R6 K2 ["Action node not found"]
       17 GETIMPORT                        R4 K4 [assert]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 3
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R3
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 1
       26 CALL                             R4 0 0
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R0
       29 LOADK                            R7 K5 ["add-%*"]
       30 MOVE                             R9 R1
       31 NAMECALL                         R7 R7 K1 ["format"]
       33 CALL                             R7 2 1
       34 MOVE                             R6 R7
       35 CALL                             R4 2 1
       36 FASTCALL2K                       ASSERT R4 K6 ; [+5]
       38 MOVE                             R6 R4
       39 LOADK                            R7 K6 ["Add binding button not found"]
       40 GETIMPORT                        R5 K4 [assert]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 3
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R4
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 1
       49 CALL                             R5 0 0
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R0
       52 LOADK                            R8 K7 ["create-menu-%*--content"]
       53 MOVE                             R10 R1
       54 NAMECALL                         R8 R8 K1 ["format"]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 CALL                             R5 2 1
       59 FASTCALL2K                       ASSERT R5 K8 ; [+5]
       61 MOVE                             R7 R5
       62 LOADK                            R8 K8 ["Create binding menu not found"]
       63 GETIMPORT                        R6 K4 [assert]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R6 5
       67 MOVE                             R7 R5
       68 JUMPIFNOTEQKS                    R2 K9 ["KeyCode"] ; [+3]
       70 LOADK                            R8 K10 ["Keycode"]
       71 JUMP                             ; [+1]
       72 LOADK                            R8 K11 ["Compound Direction"]
       73 CALL                             R6 2 1
       74 LOADK                            R8 K12 ["GuiButton"]
       75 NAMECALL                         R6 R6 K13 ["FindFirstAncestorWhichIsA"]
       77 CALL                             R6 2 1
       78 LOADK                            R10 K14 ["%* clickable not found"]
       79 MOVE                             R12 R2
       80 NAMECALL                         R10 R10 K1 ["format"]
       82 CALL                             R10 2 1
       83 MOVE                             R9 R10
       84 FASTCALL2                        ASSERT R6 R9 ; [+4]
       86 MOVE                             R8 R6
       87 GETIMPORT                        R7 K4 [assert]
       89 CALL                             R7 2 0
       90 GETUPVAL                         R7 3
       91 NEWCLOSURE                       R8 P2
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R6
       94 CALL                             R7 1 0
       95 GETUPVAL                         R7 1
       96 CALL                             R7 0 0
       97 GETUPVAL                         R7 2
       98 MOVE                             R8 R0
       99 LOADK                            R10 K15 ["action-%*"]
      100 MOVE                             R12 R1
      101 NAMECALL                         R10 R10 K1 ["format"]
      103 CALL                             R10 2 1
      104 MOVE                             R9 R10
      105 CALL                             R7 2 1
      106 FASTCALL2K                       ASSERT R7 K16 ; [+5]
      108 MOVE                             R9 R7
      109 LOADK                            R10 K16 ["Action container not found"]
      110 GETIMPORT                        R8 K4 [assert]
      112 CALL                             R8 2 0
      113 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["header"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Tree header not found"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 3
       17 CALL                             R3 0 0
       18 GETUPVAL                         R3 0
       19 MOVE                             R4 R0
       20 LOADK                            R5 K4 ["header-add"]
       21 CALL                             R3 2 1
       22 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["Header add button not found"]
       26 GETIMPORT                        R4 K3 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 3
       35 CALL                             R4 0 0
       36 GETUPVAL                         R4 0
       37 MOVE                             R5 R0
       38 LOADK                            R6 K6 ["rename-InputContext--internal-text-input--textbox"]
       39 CALL                             R4 2 1
       40 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       42 MOVE                             R6 R4
       43 LOADK                            R7 K7 ["Active text box not found"]
       44 GETIMPORT                        R5 K3 [assert]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 1
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CALL                             R5 1 0
       52 GETUPVAL                         R5 3
       53 CALL                             R5 0 0
       54 GETUPVAL                         R5 1
       55 NEWCLOSURE                       R6 P3
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R0
       59 CALL                             R5 1 0
       60 GETUPVAL                         R5 3
       61 CALL                             R5 0 0
       62 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 LOADK                            R7 K0 ["node-%*"]
        3 MOVE                             R9 R1
        4 NAMECALL                         R7 R7 K1 ["format"]
        6 CALL                             R7 2 1
        7 MOVE                             R6 R7
        8 CALL                             R4 2 1
        9 LOADK                            R8 K2 ["Node for context '%*' not found"]
       10 MOVE                             R10 R1
       11 NAMECALL                         R8 R8 K1 ["format"]
       13 CALL                             R8 2 1
       14 MOVE                             R7 R8
       15 FASTCALL2                        ASSERT R4 R7 ; [+4]
       17 MOVE                             R6 R4
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R5 1
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 3
       27 CALL                             R5 0 0
       28 GETUPVAL                         R5 0
       29 MOVE                             R6 R0
       30 LOADK                            R8 K5 ["add-%*"]
       31 MOVE                             R10 R1
       32 NAMECALL                         R8 R8 K1 ["format"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 CALL                             R5 2 1
       37 LOADK                            R9 K6 ["Add action button for context '%*' not found"]
       38 MOVE                             R11 R1
       39 NAMECALL                         R9 R9 K1 ["format"]
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 FASTCALL2                        ASSERT R5 R8 ; [+4]
       45 MOVE                             R7 R5
       46 GETIMPORT                        R6 K4 [assert]
       48 CALL                             R6 2 0
       49 GETUPVAL                         R6 1
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CALL                             R6 1 0
       54 GETUPVAL                         R6 3
       55 CALL                             R6 0 0
       56 GETUPVAL                         R6 0
       57 MOVE                             R7 R0
       58 LOADK                            R9 K7 ["create-menu-%*--content"]
       59 MOVE                             R11 R1
       60 NAMECALL                         R9 R9 K1 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 CALL                             R6 2 1
       65 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       67 MOVE                             R8 R6
       68 LOADK                            R9 K8 ["Create action menu not found"]
       69 GETIMPORT                        R7 K4 [assert]
       71 CALL                             R7 2 0
       72 GETUPVAL                         R7 4
       73 MOVE                             R8 R6
       74 GETTABLEKS                       R9 R2 K9 ["Name"]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 1
       78 NEWCLOSURE                       R9 P2
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R7
       81 CALL                             R8 1 0
       82 GETUPVAL                         R8 3
       83 CALL                             R8 0 0
       84 GETUPVAL                         R8 0
       85 MOVE                             R9 R0
       86 LOADK                            R10 K10 ["rename-InputAction--internal-text-input--textbox"]
       87 CALL                             R8 2 1
       88 FASTCALL2K                       ASSERT R8 K11 ; [+5]
       90 MOVE                             R10 R8
       91 LOADK                            R11 K11 ["Active text box not found"]
       92 GETIMPORT                        R9 K4 [assert]
       94 CALL                             R9 2 0
       95 GETUPVAL                         R9 1
       96 NEWCLOSURE                       R10 P3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R3
       99 CALL                             R9 1 0
      100 GETUPVAL                         R9 3
      101 CALL                             R9 0 0
      102 GETUPVAL                         R9 1
      103 NEWCLOSURE                       R10 P4
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R0
      107 CALL                             R9 1 0
      108 GETUPVAL                         R9 3
      109 CALL                             R9 0 0
      110 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["TestHelper"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["awaitDeferAsync"]
       41 GETTABLEKS                       R6 R4 K15 ["updateStyling"]
       43 GETTABLEKS                       R7 R2 K16 ["act"]
       45 GETTABLEKS                       R8 R2 K17 ["queryByTestId"]
       47 GETTABLEKS                       R9 R2 K18 ["queryAllByTestId"]
       49 GETTABLEKS                       R10 R2 K19 ["queryByText"]
       51 GETTABLEKS                       R11 R2 K20 ["queryAllByText"]
       53 GETTABLEKS                       R12 R2 K21 ["getByText"]
       55 GETTABLEKS                       R13 R2 K22 ["fireEvent"]
       57 NEWTABLE                         R14 16 0
       59 DUPCLOSURE                       R15 K23 [PROTO_1]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R15 R14 K24 ["Expand"]
       66 DUPCLOSURE                       R15 K25 [PROTO_2]
       67 CAPTURE                          VAL R14
       68 SETTABLEKS                       R15 R14 K26 ["Collapse"]
       70 DUPCLOSURE                       R15 K27 [PROTO_3]
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R15 R14 K28 ["RowCount"]
       74 DUPCLOSURE                       R15 K29 [PROTO_4]
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R15 R14 K30 ["ItemExists"]
       78 DUPCLOSURE                       R15 K31 [PROTO_5]
       79 CAPTURE                          VAL R14
       80 SETTABLEKS                       R15 R14 K32 ["ItemsExist"]
       82 DUPCLOSURE                       R15 K33 [PROTO_8]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R7
       88 SETTABLEKS                       R15 R14 K34 ["Rename"]
       90 DUPCLOSURE                       R15 K35 [PROTO_9]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 SETTABLEKS                       R15 R14 K36 ["Delete"]
       97 DUPCLOSURE                       R15 K37 [PROTO_12]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R12
      105 SETTABLEKS                       R15 R14 K38 ["ChangeActionType"]
      107 DUPCLOSURE                       R15 K39 [PROTO_14]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R15 R14 K40 ["ChangeRowType"]
      116 DUPCLOSURE                       R15 K41 [PROTO_16]
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R7
      122 SETTABLEKS                       R15 R14 K42 ["AddPrimaryModifier"]
      124 DUPCLOSURE                       R15 K43 [PROTO_18]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R15 R14 K44 ["AddSecondaryModifier"]
      132 DUPCLOSURE                       R15 K45 [PROTO_22]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R10
      139 SETTABLEKS                       R15 R14 K46 ["AddBinding"]
      141 DUPCLOSURE                       R15 K47 [PROTO_27]
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R15 R14 K48 ["CreateContext"]
      148 DUPCLOSURE                       R15 K49 [PROTO_33]
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R12
      154 SETTABLEKS                       R15 R14 K50 ["CreateAction"]
      156 RETURN                           R14 1
