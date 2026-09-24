PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["expand-%*"]
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R1
        5 CALL                             R6 1 1
        6 NAMECALL                         R4 R4 K1 ["format"]
        8 CALL                             R4 2 1
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Expand"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+7]
        2 LOADK                            R3 K1 ["keycode-binding-%*"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 JUMP                             ; [+5]
        8 LOADK                            R3 K3 ["composite-binding-%*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K2 ["format"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R0
       15 MOVE                             R7 R3
       16 CALL                             R5 2 1
       17 LENGTH                           R4 R5
       18 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R2
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 LOADK                            R8 K5 ["Cancel"]
       31 LOADK                            R9 K6 ["Cancel option not found"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 LOADK                            R8 K5 ["Rename"]
       31 LOADK                            R9 K6 ["Rename option not found"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 GETUPVAL                         R7 1
       37 MOVE                             R8 R0
       38 LOADK                            R9 K7 ["rename-%*--internal-text-input--textbox"]
       39 MOVE                             R11 R3
       40 NAMECALL                         R9 R9 K1 ["format"]
       42 CALL                             R9 2 1
       43 LOADK                            R10 K8 ["Active text box not found"]
       44 CALL                             R7 3 1
       45 GETUPVAL                         R8 4
       46 MOVE                             R9 R7
       47 CALL                             R8 1 0
       48 GETUPVAL                         R8 5
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R2
       52 CALL                             R8 1 0
       53 GETUPVAL                         R8 6
       54 MOVE                             R9 R7
       55 DUPTABLE                         R10 K10 [{"key"}]
       56 GETIMPORT                        R11 K14 [Enum.KeyCode.Return]
       58 SETTABLEKS                       R11 R10 K9 ["key"]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R8 7
       62 MOVE                             R9 R0
       63 DUPTABLE                         R10 K10 [{"key"}]
       64 GETIMPORT                        R11 K14 [Enum.KeyCode.Return]
       66 SETTABLEKS                       R11 R10 K9 ["key"]
       68 CALL                             R8 2 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R2
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 LOADK                            R8 K5 ["Delete"]
       31 LOADK                            R9 K6 ["Delete option not found"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R2
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 LOADK                            R8 K5 ["Duplicate"]
       31 LOADK                            R9 K6 ["Duplicate option not found"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 MOVE                             R8 R2
       31 LOADK                            R9 K5 ["%* option not found"]
       32 MOVE                             R11 R2
       33 NAMECALL                         R9 R9 K1 ["format"]
       35 CALL                             R9 2 1
       36 CALL                             R6 3 1
       37 GETUPVAL                         R7 4
       38 MOVE                             R8 R6
       39 CALL                             R7 1 0
       40 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R5
       30 LOADK                            R8 K5 ["Change Action Type"]
       31 LOADK                            R9 K6 ["Change Action Type option not found"]
       32 CALL                             R6 3 1
       33 LOADK                            R8 K7 ["GuiButton"]
       34 NAMECALL                         R6 R6 K8 ["FindFirstAncestorWhichIsA"]
       36 CALL                             R6 2 1
       37 FASTCALL2K                       ASSERT R6 K6 ; [+5]
       39 MOVE                             R8 R6
       40 LOADK                            R9 K6 ["Change Action Type option not found"]
       41 GETIMPORT                        R7 K10 [assert]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 4
       45 MOVE                             R8 R6
       46 CALL                             R7 1 0
       47 GETUPVAL                         R7 5
       48 CALL                             R7 0 0
       49 GETUPVAL                         R7 3
       50 MOVE                             R8 R0
       51 GETTABLEKS                       R9 R2 K11 ["Name"]
       53 CALL                             R7 2 1
       54 LOADK                            R9 K7 ["GuiButton"]
       55 NAMECALL                         R7 R7 K8 ["FindFirstAncestorWhichIsA"]
       57 CALL                             R7 2 1
       58 LOADK                            R10 K12 ["Type option '%*' not found"]
       59 GETTABLEKS                       R12 R2 K11 ["Name"]
       61 NAMECALL                         R10 R10 K1 ["format"]
       63 CALL                             R10 2 1
       64 FASTCALL2                        ASSERT R7 R10 ; [+4]
       66 MOVE                             R9 R7
       67 GETIMPORT                        R8 K10 [assert]
       69 CALL                             R8 2 0
       70 GETUPVAL                         R8 6
       71 MOVE                             R9 R7
       72 CALL                             R8 1 0
       73 GETUPVAL                         R8 4
       74 MOVE                             R9 R7
       75 CALL                             R8 1 0
       76 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 LOADK                            R7 K2 ["Node '%*' not found"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R7 R7 K1 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 LOADK                            R7 K3 ["edit-menu-%*--content"]
       22 MOVE                             R9 R3
       23 NAMECALL                         R7 R7 K1 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K4 ["Edit menu not found"]
       27 CALL                             R5 3 1
       28 JUMPIFNOTEQKS                    R2 K5 ["Keycode"] ; [+3]
       30 LOADK                            R6 K6 ["Use Keycode"]
       31 JUMP                             ; [+1]
       32 LOADK                            R6 K7 ["Use Composite"]
       33 GETUPVAL                         R7 3
       34 MOVE                             R8 R5
       35 MOVE                             R9 R6
       36 LOADK                            R10 K8 ["%* option not found"]
       37 MOVE                             R12 R6
       38 NAMECALL                         R10 R10 K1 ["format"]
       40 CALL                             R10 2 1
       41 CALL                             R7 3 1
       42 LOADK                            R10 K9 ["GuiButton"]
       43 NAMECALL                         R8 R7 K10 ["FindFirstAncestorWhichIsA"]
       45 CALL                             R8 2 1
       46 LOADK                            R11 K11 ["%* clickable not found"]
       47 MOVE                             R13 R6
       48 NAMECALL                         R11 R11 K1 ["format"]
       50 CALL                             R11 2 1
       51 FASTCALL2                        ASSERT R8 R11 ; [+4]
       53 MOVE                             R10 R8
       54 GETIMPORT                        R9 K13 [assert]
       56 CALL                             R9 2 0
       57 GETUPVAL                         R9 4
       58 MOVE                             R10 R8
       59 CALL                             R9 1 0
       60 GETUPVAL                         R9 5
       61 CALL                             R9 0 0
       62 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+45]
        7 GETUPVAL                         R5 2
        8 CALL                             R5 0 0
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R0
       11 LOADK                            R7 K0 ["node-%*"]
       12 MOVE                             R9 R3
       13 NAMECALL                         R7 R7 K1 ["format"]
       15 CALL                             R7 2 1
       16 LOADK                            R8 K2 ["Node '%*' not found"]
       17 MOVE                             R10 R1
       18 NAMECALL                         R8 R8 K1 ["format"]
       20 CALL                             R8 2 1
       21 CALL                             R5 3 1
       22 GETUPVAL                         R6 4
       23 MOVE                             R7 R5
       24 CALL                             R6 1 0
       25 GETUPVAL                         R6 3
       26 MOVE                             R7 R0
       27 LOADK                            R8 K3 ["add-%*"]
       28 MOVE                             R10 R3
       29 NAMECALL                         R8 R8 K1 ["format"]
       31 CALL                             R8 2 1
       32 LOADK                            R9 K4 ["Add button for '%*' not found"]
       33 MOVE                             R11 R1
       34 NAMECALL                         R9 R9 K1 ["format"]
       36 CALL                             R9 2 1
       37 CALL                             R6 3 1
       38 GETUPVAL                         R7 5
       39 MOVE                             R8 R6
       40 CALL                             R7 1 0
       41 GETUPVAL                         R7 3
       42 MOVE                             R8 R0
       43 LOADK                            R9 K5 ["create-menu-%*--content"]
       44 MOVE                             R11 R3
       45 NAMECALL                         R9 R9 K1 ["format"]
       47 CALL                             R9 2 1
       48 LOADK                            R10 K6 ["Create menu not found"]
       49 CALL                             R7 3 1
       50 MOVE                             R4 R7
       51 JUMP                             ; [+26]
       52 GETUPVAL                         R5 3
       53 MOVE                             R6 R0
       54 LOADK                            R7 K0 ["node-%*"]
       55 MOVE                             R9 R3
       56 NAMECALL                         R7 R7 K1 ["format"]
       58 CALL                             R7 2 1
       59 LOADK                            R8 K2 ["Node '%*' not found"]
       60 MOVE                             R10 R1
       61 NAMECALL                         R8 R8 K1 ["format"]
       63 CALL                             R8 2 1
       64 CALL                             R5 3 1
       65 GETUPVAL                         R6 6
       66 MOVE                             R7 R5
       67 CALL                             R6 1 0
       68 GETUPVAL                         R6 3
       69 MOVE                             R7 R0
       70 LOADK                            R8 K7 ["edit-menu-%*--content"]
       71 MOVE                             R10 R3
       72 NAMECALL                         R8 R8 K1 ["format"]
       74 CALL                             R8 2 1
       75 LOADK                            R9 K8 ["Edit menu not found"]
       76 CALL                             R6 3 1
       77 MOVE                             R4 R6
       78 GETUPVAL                         R5 7
       79 MOVE                             R6 R4
       80 MOVE                             R7 R2
       81 LOADK                            R8 K9 ["%* button not found"]
       82 MOVE                             R10 R2
       83 NAMECALL                         R8 R8 K1 ["format"]
       85 CALL                             R8 2 1
       86 CALL                             R5 3 1
       87 LOADK                            R7 K10 ["GuiButton"]
       88 NAMECALL                         R5 R5 K11 ["FindFirstAncestorWhichIsA"]
       90 CALL                             R5 2 1
       91 LOADK                            R8 K9 ["%* button not found"]
       92 MOVE                             R10 R2
       93 NAMECALL                         R8 R8 K1 ["format"]
       95 CALL                             R8 2 1
       96 FASTCALL2                        ASSERT R5 R8 ; [+4]
       98 MOVE                             R7 R5
       99 GETIMPORT                        R6 K13 [assert]
      101 CALL                             R6 2 0
      102 GETUPVAL                         R6 5
      103 MOVE                             R7 R5
      104 CALL                             R6 1 0
      105 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R6 1
        4 CALL                             R6 0 1
        5 JUMPIFNOT                        R6 ; [+2]
        6 LOADK                            R5 K0 ["Primary Modifier"]
        7 JUMP                             ; [+1]
        8 LOADK                            R5 K1 ["Add Primary Modifier"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R6 1
        4 CALL                             R6 0 1
        5 JUMPIFNOT                        R6 ; [+2]
        6 LOADK                            R5 K0 ["Secondary Modifier"]
        7 JUMP                             ; [+1]
        8 LOADK                            R5 K1 ["Add Secondary Modifier"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 LOADK                            R6 K0 ["node-%*"]
        8 MOVE                             R8 R3
        9 NAMECALL                         R6 R6 K1 ["format"]
       11 CALL                             R6 2 1
       12 LOADK                            R7 K2 ["Action node not found"]
       13 CALL                             R4 3 1
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R4
       16 CALL                             R5 1 0
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R0
       19 LOADK                            R7 K3 ["add-%*"]
       20 MOVE                             R9 R3
       21 NAMECALL                         R7 R7 K1 ["format"]
       23 CALL                             R7 2 1
       24 LOADK                            R8 K4 ["Add binding button not found"]
       25 CALL                             R5 3 1
       26 GETUPVAL                         R6 4
       27 MOVE                             R7 R5
       28 CALL                             R6 1 0
       29 GETUPVAL                         R6 2
       30 MOVE                             R7 R0
       31 LOADK                            R8 K5 ["create-menu-%*--content"]
       32 MOVE                             R10 R3
       33 NAMECALL                         R8 R8 K1 ["format"]
       35 CALL                             R8 2 1
       36 LOADK                            R9 K6 ["Create binding menu not found"]
       37 CALL                             R6 3 1
       38 GETUPVAL                         R7 5
       39 MOVE                             R8 R6
       40 JUMPIFNOTEQKS                    R2 K7 ["Keycode"] ; [+3]
       42 LOADK                            R9 K7 ["Keycode"]
       43 JUMP                             ; [+1]
       44 LOADK                            R9 K8 ["Composite"]
       45 LOADK                            R10 K9 ["%* clickable not found"]
       46 MOVE                             R12 R2
       47 NAMECALL                         R10 R10 K1 ["format"]
       49 CALL                             R10 2 1
       50 CALL                             R7 3 1
       51 LOADK                            R9 K10 ["GuiButton"]
       52 NAMECALL                         R7 R7 K11 ["FindFirstAncestorWhichIsA"]
       54 CALL                             R7 2 1
       55 LOADK                            R10 K9 ["%* clickable not found"]
       56 MOVE                             R12 R2
       57 NAMECALL                         R10 R10 K1 ["format"]
       59 CALL                             R10 2 1
       60 FASTCALL2                        ASSERT R7 R10 ; [+4]
       62 MOVE                             R9 R7
       63 GETIMPORT                        R8 K13 [assert]
       65 CALL                             R8 2 0
       66 GETUPVAL                         R8 4
       67 MOVE                             R9 R7
       68 CALL                             R8 1 0
       69 GETUPVAL                         R8 2
       70 MOVE                             R9 R0
       71 LOADK                            R10 K14 ["action-%*"]
       72 MOVE                             R12 R1
       73 NAMECALL                         R10 R10 K1 ["format"]
       75 CALL                             R10 2 1
       76 LOADK                            R11 K15 ["Action container not found"]
       77 CALL                             R8 3 0
       78 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+7]
        2 LOADK                            R3 K1 ["keycode-binding-%*"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 JUMP                             ; [+5]
        8 LOADK                            R3 K3 ["composite-binding-%*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K2 ["format"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 MOVE                             R6 R3
       16 LOADK                            R7 K4 ["%* not found"]
       17 MOVE                             R9 R3
       18 NAMECALL                         R7 R7 K2 ["format"]
       20 CALL                             R7 2 1
       21 CALL                             R4 3 1
       22 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+3]
       24 LOADK                            R5 K0 ["Keycode"]
       25 JUMP                             ; [+1]
       26 LOADK                            R5 K5 ["Composite"]
       27 GETUPVAL                         R6 1
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 MOVE                             R8 R4
       32 LOADK                            R9 K6 ["node-%*"]
       33 MOVE                             R11 R6
       34 NAMECALL                         R9 R9 K2 ["format"]
       36 CALL                             R9 2 1
       37 LOADK                            R10 K7 ["Binding node not found in %*"]
       38 MOVE                             R12 R3
       39 NAMECALL                         R10 R10 K2 ["format"]
       41 CALL                             R10 2 1
       42 CALL                             R7 3 1
       43 GETUPVAL                         R8 2
       44 MOVE                             R9 R7
       45 CALL                             R8 1 0
       46 GETUPVAL                         R8 0
       47 MOVE                             R9 R0
       48 LOADK                            R10 K8 ["edit-menu-%*--content"]
       49 MOVE                             R12 R6
       50 NAMECALL                         R10 R10 K2 ["format"]
       52 CALL                             R10 2 1
       53 LOADK                            R11 K9 ["Edit menu not found"]
       54 CALL                             R8 3 1
       55 GETUPVAL                         R9 3
       56 MOVE                             R10 R8
       57 LOADK                            R11 K10 ["Cancel"]
       58 LOADK                            R12 K11 ["Cancel option not found"]
       59 CALL                             R9 3 1
       60 LOADK                            R11 K12 ["GuiButton"]
       61 NAMECALL                         R9 R9 K13 ["FindFirstAncestorWhichIsA"]
       63 CALL                             R9 2 1
       64 FASTCALL2K                       ASSERT R9 K11 ; [+5]
       66 MOVE                             R11 R9
       67 LOADK                            R12 K11 ["Cancel option not found"]
       68 GETIMPORT                        R10 K15 [assert]
       70 CALL                             R10 2 0
       71 GETUPVAL                         R10 4
       72 MOVE                             R11 R9
       73 CALL                             R10 1 0
       74 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Keycode"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Composite"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["header"]
        3 LOADK                            R5 K1 ["Tree header not found"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 LOADK                            R5 K2 ["header-add"]
       11 LOADK                            R6 K3 ["Header add button not found"]
       12 CALL                             R3 3 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R3
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R0
       18 LOADK                            R6 K4 ["rename-InputContext--internal-text-input--textbox"]
       19 LOADK                            R7 K5 ["Active text box not found"]
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 3
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R1
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R4
       28 DUPTABLE                         R7 K7 [{"key"}]
       29 GETIMPORT                        R8 K11 [Enum.KeyCode.Return]
       31 SETTABLEKS                       R8 R7 K6 ["key"]
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 5
       35 MOVE                             R6 R0
       36 DUPTABLE                         R7 K7 [{"key"}]
       37 GETIMPORT                        R8 K11 [Enum.KeyCode.Return]
       39 SETTABLEKS                       R8 R7 K6 ["key"]
       41 CALL                             R5 2 0
       42 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R4
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 LOADK                            R8 K2 ["Node for context '%*' not found"]
       11 MOVE                             R10 R1
       12 NAMECALL                         R8 R8 K1 ["format"]
       14 CALL                             R8 2 1
       15 CALL                             R5 3 1
       16 GETUPVAL                         R6 2
       17 MOVE                             R7 R5
       18 CALL                             R6 1 0
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R0
       21 LOADK                            R8 K3 ["add-%*"]
       22 MOVE                             R10 R4
       23 NAMECALL                         R8 R8 K1 ["format"]
       25 CALL                             R8 2 1
       26 LOADK                            R9 K4 ["Add action button for context '%*' not found"]
       27 MOVE                             R11 R1
       28 NAMECALL                         R9 R9 K1 ["format"]
       30 CALL                             R9 2 1
       31 CALL                             R6 3 1
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R6
       34 CALL                             R7 1 0
       35 GETUPVAL                         R7 1
       36 MOVE                             R8 R0
       37 LOADK                            R9 K5 ["create-menu-%*--content"]
       38 MOVE                             R11 R4
       39 NAMECALL                         R9 R9 K1 ["format"]
       41 CALL                             R9 2 1
       42 LOADK                            R10 K6 ["Create action menu not found"]
       43 CALL                             R7 3 1
       44 GETUPVAL                         R8 4
       45 MOVE                             R9 R7
       46 GETTABLEKS                       R10 R2 K7 ["Name"]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 3
       50 MOVE                             R10 R8
       51 CALL                             R9 1 0
       52 GETUPVAL                         R9 1
       53 MOVE                             R10 R0
       54 LOADK                            R11 K8 ["rename-InputAction--internal-text-input--textbox"]
       55 LOADK                            R12 K9 ["Active text box not found"]
       56 CALL                             R9 3 1
       57 GETUPVAL                         R10 5
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 CALL                             R10 1 0
       62 GETUPVAL                         R10 6
       63 MOVE                             R11 R9
       64 DUPTABLE                         R12 K11 [{"key"}]
       65 GETIMPORT                        R13 K15 [Enum.KeyCode.Return]
       67 SETTABLEKS                       R13 R12 K10 ["key"]
       69 CALL                             R10 2 0
       70 GETUPVAL                         R10 7
       71 MOVE                             R11 R0
       72 DUPTABLE                         R12 K11 [{"key"}]
       73 GETIMPORT                        R13 K15 [Enum.KeyCode.Return]
       75 SETTABLEKS                       R13 R12 K10 ["key"]
       77 CALL                             R10 2 0
       78 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["node-%*"]
        3 GETUPVAL                         R7 1
        4 MOVE                             R8 R1
        5 CALL                             R7 1 1
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 2 1
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_23:
        0 LOADB                            R2 1
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 MOVE                             R8 R2
        6 JUMPIFNOT                        R8 ; [+6]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["CheckNodeExists"]
       10 MOVE                             R9 R0
       11 MOVE                             R10 R7
       12 CALL                             R8 2 1
       13 MOVE                             R2 R8
       14 FORGLOOP                         R3 2 ; [-10]
       16 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["schema-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["formatTestId"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["TestHelper"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K8 ["Src"]
       41 GETTABLEKS                       R5 R5 K14 ["Flags"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K15 ["getFFlagIAMImprovedModifierMenu"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R4 K16 ["act"]
       50 GETTABLEKS                       R8 R4 K17 ["updateStyling"]
       52 GETTABLEKS                       R9 R4 K18 ["click"]
       54 GETTABLEKS                       R10 R4 K19 ["contextMenu"]
       56 GETTABLEKS                       R11 R4 K20 ["keyDown"]
       58 GETTABLEKS                       R12 R4 K21 ["keyUp"]
       60 GETTABLEKS                       R13 R4 K22 ["mouseEnter"]
       62 GETTABLEKS                       R14 R4 K23 ["queryByTestId"]
       64 GETTABLEKS                       R15 R4 K24 ["queryAllByTestId"]
       66 GETTABLEKS                       R16 R4 K25 ["queryByText"]
       68 GETTABLEKS                       R17 R4 K26 ["tryQueryByTestId"]
       70 NEWTABLE                         R18 32 0
       72 DUPCLOSURE                       R19 K27 [PROTO_0]
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R9
       76 SETTABLEKS                       R19 R18 K28 ["Expand"]
       78 DUPCLOSURE                       R19 K29 [PROTO_1]
       79 CAPTURE                          VAL R18
       80 SETTABLEKS                       R19 R18 K30 ["Collapse"]
       82 DUPCLOSURE                       R19 K31 [PROTO_2]
       83 CAPTURE                          VAL R15
       84 SETTABLEKS                       R19 R18 K32 ["RowCount"]
       86 DUPCLOSURE                       R19 K33 [PROTO_3]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R19 R18 K34 ["Cancel"]
       94 DUPCLOSURE                       R19 K35 [PROTO_5]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R19 R18 K36 ["Rename"]
      105 DUPCLOSURE                       R19 K37 [PROTO_6]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R19 R18 K38 ["Delete"]
      113 DUPCLOSURE                       R19 K39 [PROTO_7]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R19 R18 K40 ["Duplicate"]
      121 DUPCLOSURE                       R19 K41 [PROTO_8]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R19 R18 K42 ["ToggleBooleanProperty"]
      129 DUPCLOSURE                       R19 K43 [PROTO_9]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R13
      137 SETTABLEKS                       R19 R18 K44 ["ChangeActionType"]
      139 DUPCLOSURE                       R19 K45 [PROTO_10]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R8
      146 SETTABLEKS                       R19 R18 K46 ["ChangeRowBehavior"]
      148 DUPCLOSURE                       R19 K47 [PROTO_11]
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R16
      157 DUPCLOSURE                       R20 K48 [PROTO_12]
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R20 R18 K49 ["AddPrimaryModifier"]
      162 DUPCLOSURE                       R20 K50 [PROTO_13]
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R6
      165 SETTABLEKS                       R20 R18 K51 ["AddSecondaryModifier"]
      167 DUPCLOSURE                       R20 K52 [PROTO_14]
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R16
      174 SETTABLEKS                       R20 R18 K53 ["AddBinding"]
      176 DUPCLOSURE                       R20 K54 [PROTO_15]
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R9
      182 DUPCLOSURE                       R21 K55 [PROTO_16]
      183 CAPTURE                          VAL R20
      184 SETTABLEKS                       R21 R18 K56 ["CancelCreateKeycode"]
      186 DUPCLOSURE                       R21 K57 [PROTO_17]
      187 CAPTURE                          VAL R20
      188 SETTABLEKS                       R21 R18 K58 ["CancelCreateComposite"]
      190 DUPCLOSURE                       R21 K59 [PROTO_19]
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R12
      197 SETTABLEKS                       R21 R18 K60 ["CreateContext"]
      199 DUPCLOSURE                       R21 K61 [PROTO_21]
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R12
      208 SETTABLEKS                       R21 R18 K62 ["CreateAction"]
      210 DUPCLOSURE                       R21 K63 [PROTO_22]
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R3
      213 SETTABLEKS                       R21 R18 K64 ["CheckNodeExists"]
      215 DUPCLOSURE                       R21 K65 [PROTO_23]
      216 CAPTURE                          VAL R18
      217 SETTABLEKS                       R21 R18 K66 ["CheckNodesExist"]
      219 DUPCLOSURE                       R21 K67 [PROTO_24]
      220 CAPTURE                          VAL R17
      221 SETTABLEKS                       R21 R18 K68 ["SchemaExists"]
      223 RETURN                           R18 1
