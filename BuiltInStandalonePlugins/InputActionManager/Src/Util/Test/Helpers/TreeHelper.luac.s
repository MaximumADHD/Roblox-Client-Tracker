PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["expand-%*"]
        3 GETUPVAL                         R7 1
        4 MOVE                             R8 R1
        5 CALL                             R7 1 1
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Expand"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+8]
        2 LOADK                            R4 K1 ["keycode-binding-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 JUMP                             ; [+6]
        9 LOADK                            R4 K3 ["composite-binding-%*"]
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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R2
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R5
       33 LOADK                            R8 K5 ["Cancel"]
       34 LOADK                            R9 K6 ["Cancel option not found"]
       35 CALL                             R6 3 1
       36 GETUPVAL                         R7 4
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 RETURN                           R0 0

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
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R5
       33 LOADK                            R8 K5 ["Rename"]
       34 LOADK                            R9 K6 ["Rename option not found"]
       35 CALL                             R6 3 1
       36 GETUPVAL                         R7 4
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 GETUPVAL                         R7 1
       40 MOVE                             R8 R0
       41 LOADK                            R10 K7 ["rename-%*--internal-text-input--textbox"]
       42 MOVE                             R12 R3
       43 NAMECALL                         R10 R10 K1 ["format"]
       45 CALL                             R10 2 1
       46 MOVE                             R9 R10
       47 LOADK                            R10 K8 ["Active text box not found"]
       48 CALL                             R7 3 1
       49 GETUPVAL                         R8 4
       50 MOVE                             R9 R7
       51 CALL                             R8 1 0
       52 GETUPVAL                         R8 5
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CALL                             R8 1 0
       57 GETUPVAL                         R8 6
       58 MOVE                             R9 R7
       59 DUPTABLE                         R10 K10 [{"key"}]
       60 GETIMPORT                        R11 K14 [Enum.KeyCode.Return]
       62 SETTABLEKS                       R11 R10 K9 ["key"]
       64 CALL                             R8 2 0
       65 GETUPVAL                         R8 7
       66 MOVE                             R9 R0
       67 DUPTABLE                         R10 K10 [{"key"}]
       68 GETIMPORT                        R11 K14 [Enum.KeyCode.Return]
       70 SETTABLEKS                       R11 R10 K9 ["key"]
       72 CALL                             R8 2 0
       73 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R2
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R5
       33 LOADK                            R8 K5 ["Delete"]
       34 LOADK                            R9 K6 ["Delete option not found"]
       35 CALL                             R6 3 1
       36 GETUPVAL                         R7 4
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 OR                               R5 R1 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R2
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R5
       33 LOADK                            R8 K5 ["Duplicate"]
       34 LOADK                            R9 K6 ["Duplicate option not found"]
       35 CALL                             R6 3 1
       36 GETUPVAL                         R7 4
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R5
       33 LOADK                            R8 K5 ["Change Action Type"]
       34 LOADK                            R9 K6 ["Change Action Type option not found"]
       35 CALL                             R6 3 1
       36 LOADK                            R8 K7 ["GuiButton"]
       37 NAMECALL                         R6 R6 K8 ["FindFirstAncestorWhichIsA"]
       39 CALL                             R6 2 1
       40 FASTCALL2K                       ASSERT R6 K6 ; [+5]
       42 MOVE                             R8 R6
       43 LOADK                            R9 K6 ["Change Action Type option not found"]
       44 GETIMPORT                        R7 K10 [assert]
       46 CALL                             R7 2 0
       47 GETUPVAL                         R7 4
       48 MOVE                             R8 R6
       49 CALL                             R7 1 0
       50 GETUPVAL                         R7 5
       51 CALL                             R7 0 0
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R0
       54 GETTABLEKS                       R9 R2 K11 ["Name"]
       56 CALL                             R7 2 1
       57 LOADK                            R9 K7 ["GuiButton"]
       58 NAMECALL                         R7 R7 K8 ["FindFirstAncestorWhichIsA"]
       60 CALL                             R7 2 1
       61 LOADK                            R11 K12 ["Type option '%*' not found"]
       62 GETTABLEKS                       R13 R2 K11 ["Name"]
       64 NAMECALL                         R11 R11 K1 ["format"]
       66 CALL                             R11 2 1
       67 MOVE                             R10 R11
       68 FASTCALL2                        ASSERT R7 R10 ; [+4]
       70 MOVE                             R9 R7
       71 GETIMPORT                        R8 K10 [assert]
       73 CALL                             R8 2 0
       74 GETUPVAL                         R8 6
       75 MOVE                             R9 R7
       76 CALL                             R8 1 0
       77 GETUPVAL                         R8 4
       78 MOVE                             R9 R7
       79 CALL                             R8 1 0
       80 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADK                            R7 K0 ["node-%*"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 2 1
       10 MOVE                             R6 R7
       11 LOADK                            R8 K2 ["Node '%*' not found"]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 LOADK                            R8 K3 ["edit-menu-%*--content"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 LOADK                            R8 K4 ["Edit menu not found"]
       30 CALL                             R5 3 1
       31 JUMPIFNOTEQKS                    R2 K5 ["Keycode"] ; [+3]
       33 LOADK                            R6 K6 ["Use Keycode"]
       34 JUMP                             ; [+1]
       35 LOADK                            R6 K7 ["Use Composite"]
       36 GETUPVAL                         R7 3
       37 MOVE                             R8 R5
       38 MOVE                             R9 R6
       39 LOADK                            R11 K8 ["%* option not found"]
       40 MOVE                             R13 R6
       41 NAMECALL                         R11 R11 K1 ["format"]
       43 CALL                             R11 2 1
       44 MOVE                             R10 R11
       45 CALL                             R7 3 1
       46 LOADK                            R10 K9 ["GuiButton"]
       47 NAMECALL                         R8 R7 K10 ["FindFirstAncestorWhichIsA"]
       49 CALL                             R8 2 1
       50 LOADK                            R12 K11 ["%* clickable not found"]
       51 MOVE                             R14 R6
       52 NAMECALL                         R12 R12 K1 ["format"]
       54 CALL                             R12 2 1
       55 MOVE                             R11 R12
       56 FASTCALL2                        ASSERT R8 R11 ; [+4]
       58 MOVE                             R10 R8
       59 GETIMPORT                        R9 K13 [assert]
       61 CALL                             R9 2 0
       62 GETUPVAL                         R9 4
       63 MOVE                             R10 R8
       64 CALL                             R9 1 0
       65 GETUPVAL                         R9 5
       66 CALL                             R9 0 0
       67 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R2
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 MOVE                             R5 R6
       11 LOADK                            R7 K2 ["Node '%*' not found"]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R7 K1 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 CALL                             R3 3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R0
       23 LOADK                            R7 K3 ["edit-menu-%*--content"]
       24 MOVE                             R9 R2
       25 NAMECALL                         R7 R7 K1 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 LOADK                            R7 K4 ["Edit menu not found"]
       30 CALL                             R4 3 1
       31 GETUPVAL                         R5 3
       32 MOVE                             R6 R4
       33 LOADK                            R7 K5 ["Add Primary Modifier"]
       34 LOADK                            R8 K6 ["Add Primary Modifier button not found"]
       35 CALL                             R5 3 1
       36 LOADK                            R7 K7 ["GuiButton"]
       37 NAMECALL                         R5 R5 K8 ["FindFirstAncestorWhichIsA"]
       39 CALL                             R5 2 1
       40 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       42 MOVE                             R7 R5
       43 LOADK                            R8 K6 ["Add Primary Modifier button not found"]
       44 GETIMPORT                        R6 K10 [assert]
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 4
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 LOADK                            R6 K0 ["node-%*"]
        6 MOVE                             R8 R2
        7 NAMECALL                         R6 R6 K1 ["format"]
        9 CALL                             R6 2 1
       10 MOVE                             R5 R6
       11 LOADK                            R7 K2 ["Node '%*' not found"]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R7 K1 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 CALL                             R3 3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R0
       23 LOADK                            R7 K3 ["edit-menu-%*--content"]
       24 MOVE                             R9 R2
       25 NAMECALL                         R7 R7 K1 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 LOADK                            R7 K4 ["Edit menu not found"]
       30 CALL                             R4 3 1
       31 GETUPVAL                         R5 3
       32 MOVE                             R6 R4
       33 LOADK                            R7 K5 ["Add Secondary Modifier"]
       34 LOADK                            R8 K6 ["Add Secondary Modifier button not found"]
       35 CALL                             R5 3 1
       36 LOADK                            R7 K7 ["GuiButton"]
       37 NAMECALL                         R5 R5 K8 ["FindFirstAncestorWhichIsA"]
       39 CALL                             R5 2 1
       40 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       42 MOVE                             R7 R5
       43 LOADK                            R8 K6 ["Add Secondary Modifier button not found"]
       44 GETIMPORT                        R6 K10 [assert]
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 4
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 LOADK                            R7 K0 ["node-%*"]
        8 MOVE                             R9 R3
        9 NAMECALL                         R7 R7 K1 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 LOADK                            R7 K2 ["Action node not found"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 3
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 LOADK                            R8 K3 ["add-%*"]
       21 MOVE                             R10 R3
       22 NAMECALL                         R8 R8 K1 ["format"]
       24 CALL                             R8 2 1
       25 MOVE                             R7 R8
       26 LOADK                            R8 K4 ["Add binding button not found"]
       27 CALL                             R5 3 1
       28 GETUPVAL                         R6 4
       29 MOVE                             R7 R5
       30 CALL                             R6 1 0
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R0
       33 LOADK                            R9 K5 ["create-menu-%*--content"]
       34 MOVE                             R11 R3
       35 NAMECALL                         R9 R9 K1 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R8 R9
       39 LOADK                            R9 K6 ["Create binding menu not found"]
       40 CALL                             R6 3 1
       41 GETUPVAL                         R7 5
       42 MOVE                             R8 R6
       43 JUMPIFNOTEQKS                    R2 K7 ["Keycode"] ; [+3]
       45 LOADK                            R9 K7 ["Keycode"]
       46 JUMP                             ; [+1]
       47 LOADK                            R9 K8 ["Composite"]
       48 LOADK                            R11 K9 ["%* clickable not found"]
       49 MOVE                             R13 R2
       50 NAMECALL                         R11 R11 K1 ["format"]
       52 CALL                             R11 2 1
       53 MOVE                             R10 R11
       54 CALL                             R7 3 1
       55 LOADK                            R9 K10 ["GuiButton"]
       56 NAMECALL                         R7 R7 K11 ["FindFirstAncestorWhichIsA"]
       58 CALL                             R7 2 1
       59 LOADK                            R11 K9 ["%* clickable not found"]
       60 MOVE                             R13 R2
       61 NAMECALL                         R11 R11 K1 ["format"]
       63 CALL                             R11 2 1
       64 MOVE                             R10 R11
       65 FASTCALL2                        ASSERT R7 R10 ; [+4]
       67 MOVE                             R9 R7
       68 GETIMPORT                        R8 K13 [assert]
       70 CALL                             R8 2 0
       71 GETUPVAL                         R8 4
       72 MOVE                             R9 R7
       73 CALL                             R8 1 0
       74 GETUPVAL                         R8 2
       75 MOVE                             R9 R0
       76 LOADK                            R11 K14 ["action-%*"]
       77 MOVE                             R13 R1
       78 NAMECALL                         R11 R11 K1 ["format"]
       80 CALL                             R11 2 1
       81 MOVE                             R10 R11
       82 LOADK                            R11 K15 ["Action container not found"]
       83 CALL                             R8 3 0
       84 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+8]
        2 LOADK                            R4 K1 ["keycode-binding-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 JUMP                             ; [+6]
        9 LOADK                            R4 K3 ["composite-binding-%*"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K2 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R0
       17 MOVE                             R6 R3
       18 LOADK                            R8 K4 ["%* not found"]
       19 MOVE                             R10 R3
       20 NAMECALL                         R8 R8 K2 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKS                    R2 K0 ["Keycode"] ; [+3]
       27 LOADK                            R5 K0 ["Keycode"]
       28 JUMP                             ; [+1]
       29 LOADK                            R5 K5 ["Composite"]
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R5
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 0
       34 MOVE                             R8 R4
       35 LOADK                            R10 K6 ["node-%*"]
       36 MOVE                             R12 R6
       37 NAMECALL                         R10 R10 K2 ["format"]
       39 CALL                             R10 2 1
       40 MOVE                             R9 R10
       41 LOADK                            R11 K7 ["Binding node not found in %*"]
       42 MOVE                             R13 R3
       43 NAMECALL                         R11 R11 K2 ["format"]
       45 CALL                             R11 2 1
       46 MOVE                             R10 R11
       47 CALL                             R7 3 1
       48 GETUPVAL                         R8 2
       49 MOVE                             R9 R7
       50 CALL                             R8 1 0
       51 GETUPVAL                         R8 0
       52 MOVE                             R9 R0
       53 LOADK                            R11 K8 ["edit-menu-%*--content"]
       54 MOVE                             R13 R6
       55 NAMECALL                         R11 R11 K2 ["format"]
       57 CALL                             R11 2 1
       58 MOVE                             R10 R11
       59 LOADK                            R11 K9 ["Edit menu not found"]
       60 CALL                             R8 3 1
       61 GETUPVAL                         R9 3
       62 MOVE                             R10 R8
       63 LOADK                            R11 K10 ["Cancel"]
       64 LOADK                            R12 K11 ["Cancel option not found"]
       65 CALL                             R9 3 1
       66 LOADK                            R11 K12 ["GuiButton"]
       67 NAMECALL                         R9 R9 K13 ["FindFirstAncestorWhichIsA"]
       69 CALL                             R9 2 1
       70 FASTCALL2K                       ASSERT R9 K11 ; [+5]
       72 MOVE                             R11 R9
       73 LOADK                            R12 K11 ["Cancel option not found"]
       74 GETIMPORT                        R10 K15 [assert]
       76 CALL                             R10 2 0
       77 GETUPVAL                         R10 4
       78 MOVE                             R11 R9
       79 CALL                             R10 1 0
       80 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Keycode"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Composite"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADK                            R8 K0 ["node-%*"]
        6 MOVE                             R10 R4
        7 NAMECALL                         R8 R8 K1 ["format"]
        9 CALL                             R8 2 1
       10 MOVE                             R7 R8
       11 LOADK                            R9 K2 ["Node for context '%*' not found"]
       12 MOVE                             R11 R1
       13 NAMECALL                         R9 R9 K1 ["format"]
       15 CALL                             R9 2 1
       16 MOVE                             R8 R9
       17 CALL                             R5 3 1
       18 GETUPVAL                         R6 2
       19 MOVE                             R7 R5
       20 CALL                             R6 1 0
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R0
       23 LOADK                            R9 K3 ["add-%*"]
       24 MOVE                             R11 R4
       25 NAMECALL                         R9 R9 K1 ["format"]
       27 CALL                             R9 2 1
       28 MOVE                             R8 R9
       29 LOADK                            R10 K4 ["Add action button for context '%*' not found"]
       30 MOVE                             R12 R1
       31 NAMECALL                         R10 R10 K1 ["format"]
       33 CALL                             R10 2 1
       34 MOVE                             R9 R10
       35 CALL                             R6 3 1
       36 GETUPVAL                         R7 3
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 GETUPVAL                         R7 1
       40 MOVE                             R8 R0
       41 LOADK                            R10 K5 ["create-menu-%*--content"]
       42 MOVE                             R12 R4
       43 NAMECALL                         R10 R10 K1 ["format"]
       45 CALL                             R10 2 1
       46 MOVE                             R9 R10
       47 LOADK                            R10 K6 ["Create action menu not found"]
       48 CALL                             R7 3 1
       49 GETUPVAL                         R8 4
       50 MOVE                             R9 R7
       51 GETTABLEKS                       R10 R2 K7 ["Name"]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 3
       55 MOVE                             R10 R8
       56 CALL                             R9 1 0
       57 GETUPVAL                         R9 1
       58 MOVE                             R10 R0
       59 LOADK                            R11 K8 ["rename-InputAction--internal-text-input--textbox"]
       60 LOADK                            R12 K9 ["Active text box not found"]
       61 CALL                             R9 3 1
       62 GETUPVAL                         R10 5
       63 NEWCLOSURE                       R11 P0
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R3
       66 CALL                             R10 1 0
       67 GETUPVAL                         R10 6
       68 MOVE                             R11 R9
       69 DUPTABLE                         R12 K11 [{"key"}]
       70 GETIMPORT                        R13 K15 [Enum.KeyCode.Return]
       72 SETTABLEKS                       R13 R12 K10 ["key"]
       74 CALL                             R10 2 0
       75 GETUPVAL                         R10 7
       76 MOVE                             R11 R0
       77 DUPTABLE                         R12 K11 [{"key"}]
       78 GETIMPORT                        R13 K15 [Enum.KeyCode.Return]
       80 SETTABLEKS                       R13 R12 K10 ["key"]
       82 CALL                             R10 2 0
       83 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 GETUPVAL                         R8 1
        4 MOVE                             R9 R1
        5 CALL                             R8 1 1
        6 NAMECALL                         R6 R6 K1 ["format"]
        8 CALL                             R6 2 1
        9 MOVE                             R5 R6
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["schema-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

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
       39 GETTABLEKS                       R5 R4 K14 ["act"]
       41 GETTABLEKS                       R6 R4 K15 ["updateStyling"]
       43 GETTABLEKS                       R7 R4 K16 ["click"]
       45 GETTABLEKS                       R8 R4 K17 ["contextMenu"]
       47 GETTABLEKS                       R9 R4 K18 ["keyDown"]
       49 GETTABLEKS                       R10 R4 K19 ["keyUp"]
       51 GETTABLEKS                       R11 R4 K20 ["mouseEnter"]
       53 GETTABLEKS                       R12 R4 K21 ["queryByTestId"]
       55 GETTABLEKS                       R13 R4 K22 ["queryAllByTestId"]
       57 GETTABLEKS                       R14 R4 K23 ["queryByText"]
       59 GETTABLEKS                       R15 R4 K24 ["tryQueryByTestId"]
       61 NEWTABLE                         R16 32 0
       63 DUPCLOSURE                       R17 K25 [PROTO_0]
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R17 R16 K26 ["Expand"]
       69 DUPCLOSURE                       R17 K27 [PROTO_1]
       70 CAPTURE                          VAL R16
       71 SETTABLEKS                       R17 R16 K28 ["Collapse"]
       73 DUPCLOSURE                       R17 K29 [PROTO_2]
       74 CAPTURE                          VAL R13
       75 SETTABLEKS                       R17 R16 K30 ["RowCount"]
       77 DUPCLOSURE                       R17 K31 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R17 R16 K32 ["Cancel"]
       85 DUPCLOSURE                       R17 K33 [PROTO_5]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R17 R16 K34 ["Rename"]
       96 DUPCLOSURE                       R17 K35 [PROTO_6]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R17 R16 K36 ["Delete"]
      104 DUPCLOSURE                       R17 K37 [PROTO_7]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R17 R16 K38 ["Duplicate"]
      112 DUPCLOSURE                       R17 K39 [PROTO_8]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R11
      120 SETTABLEKS                       R17 R16 K40 ["ChangeActionType"]
      122 DUPCLOSURE                       R17 K41 [PROTO_9]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R17 R16 K42 ["ChangeRowBehavior"]
      131 DUPCLOSURE                       R17 K43 [PROTO_10]
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R7
      137 SETTABLEKS                       R17 R16 K44 ["AddPrimaryModifier"]
      139 DUPCLOSURE                       R17 K45 [PROTO_11]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R17 R16 K46 ["AddSecondaryModifier"]
      147 DUPCLOSURE                       R17 K47 [PROTO_12]
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R14
      154 SETTABLEKS                       R17 R16 K48 ["AddBinding"]
      156 DUPCLOSURE                       R17 K49 [PROTO_13]
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R7
      162 DUPCLOSURE                       R18 K50 [PROTO_14]
      163 CAPTURE                          VAL R17
      164 SETTABLEKS                       R18 R16 K51 ["CancelCreateKeycode"]
      166 DUPCLOSURE                       R18 K52 [PROTO_15]
      167 CAPTURE                          VAL R17
      168 SETTABLEKS                       R18 R16 K53 ["CancelCreateComposite"]
      170 DUPCLOSURE                       R18 K54 [PROTO_17]
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R10
      177 SETTABLEKS                       R18 R16 K55 ["CreateContext"]
      179 DUPCLOSURE                       R18 K56 [PROTO_19]
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R10
      188 SETTABLEKS                       R18 R16 K57 ["CreateAction"]
      190 DUPCLOSURE                       R18 K58 [PROTO_20]
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R3
      193 SETTABLEKS                       R18 R16 K59 ["CheckNodeExists"]
      195 DUPCLOSURE                       R18 K60 [PROTO_21]
      196 CAPTURE                          VAL R16
      197 SETTABLEKS                       R18 R16 K61 ["CheckNodesExist"]
      199 DUPCLOSURE                       R18 K62 [PROTO_22]
      200 CAPTURE                          VAL R15
      201 SETTABLEKS                       R18 R16 K63 ["SchemaExists"]
      203 RETURN                           R16 1
