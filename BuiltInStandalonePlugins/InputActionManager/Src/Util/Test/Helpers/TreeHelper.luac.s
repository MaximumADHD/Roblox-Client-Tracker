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
        1 GETTABLEKS                       R2 R2 K0 ["expand"]
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
       30 LOADK                            R8 K5 ["%*"]
       31 MOVE                             R10 R2
       32 NAMECALL                         R8 R8 K1 ["format"]
       34 CALL                             R8 2 1
       35 LOADK                            R9 K6 ["%* option not found"]
       36 MOVE                             R11 R2
       37 NAMECALL                         R9 R9 K1 ["format"]
       39 CALL                             R9 2 1
       40 CALL                             R6 3 1
       41 GETUPVAL                         R7 4
       42 MOVE                             R8 R6
       43 CALL                             R7 1 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["%* option not found"]
        4 MOVE                             R7 R1
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 2 1
        8 CALL                             R2 3 1
        9 LOADK                            R5 K2 ["GuiButton"]
       10 NAMECALL                         R3 R2 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R3 2 1
       13 LOADK                            R6 K0 ["%* option not found"]
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K1 ["format"]
       17 CALL                             R6 2 1
       18 FASTCALL2                        ASSERT R3 R6 ; [+4]
       20 MOVE                             R5 R3
       21 GETIMPORT                        R4 K5 [assert]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 1
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 LOADK                            R5 K0 ["node-%*"]
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 LOADK                            R6 K2 ["Node '%*' not found"]
       11 MOVE                             R8 R1
       12 NAMECALL                         R6 R6 K1 ["format"]
       14 CALL                             R6 2 1
       15 CALL                             R3 3 1
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 3
       20 CALL                             R4 0 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R0
       23 LOADK                            R6 K3 ["edit-menu-%*--content"]
       24 MOVE                             R8 R2
       25 NAMECALL                         R6 R6 K1 ["format"]
       27 CALL                             R6 2 1
       28 LOADK                            R7 K4 ["Edit menu not found"]
       29 CALL                             R4 3 -1
       30 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 LOADK                            R5 K0 ["Scriptable Binding"]
        7 LOADK                            R6 K1 ["Scriptable Binding option not found"]
        8 CALL                             R3 3 1
        9 LOADK                            R6 K2 ["GuiButton"]
       10 NAMECALL                         R4 R3 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K1 ; [+5]
       15 MOVE                             R6 R4
       16 LOADK                            R7 K1 ["Scriptable Binding option not found"]
       17 GETIMPORT                        R5 K5 [assert]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R4
       22 CALL                             R5 1 0
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 GETUPVAL                         R3 4
       27 CALL                             R3 0 0
       28 GETUPVAL                         R3 5
       29 MOVE                             R4 R0
       30 LOADK                            R5 K6 ["--foundation-menu-submenu-item--submenu--content"]
       31 LOADK                            R6 K7 ["Scriptable submenu not found"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R3
        6 LOADK                            R6 K0 ["Scriptable Binding"]
        7 LOADK                            R7 K1 ["Scriptable Binding option not found"]
        8 CALL                             R4 3 1
        9 LOADK                            R7 K2 ["GuiButton"]
       10 NAMECALL                         R5 R4 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R5 2 1
       13 FASTCALL2K                       ASSERT R5 K1 ; [+5]
       15 MOVE                             R7 R5
       16 LOADK                            R8 K1 ["Scriptable Binding option not found"]
       17 GETIMPORT                        R6 K5 [assert]
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 0
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 LOADK                            R6 K6 ["--foundation-menu-submenu-item--submenu--content"]
       31 LOADK                            R7 K7 ["Scriptable submenu not found"]
       32 CALL                             R4 3 1
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 LOADK                            R5 K8 ["Enabled"]
       37 LOADK                            R6 K9 ["Enabled option not found"]
       38 CALL                             R3 3 1
       39 LOADK                            R6 K2 ["GuiButton"]
       40 NAMECALL                         R4 R3 K3 ["FindFirstAncestorWhichIsA"]
       42 CALL                             R4 2 1
       43 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       45 MOVE                             R6 R4
       46 LOADK                            R7 K9 ["Enabled option not found"]
       47 GETIMPORT                        R5 K5 [assert]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R4
       52 CALL                             R5 1 0
       53 GETUPVAL                         R5 3
       54 MOVE                             R6 R4
       55 CALL                             R5 1 0
       56 GETUPVAL                         R3 4
       57 CALL                             R3 0 0
       58 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 CALL                             R4 2 1
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R4
        6 LOADK                            R7 K0 ["Scriptable Binding"]
        7 LOADK                            R8 K1 ["Scriptable Binding option not found"]
        8 CALL                             R5 3 1
        9 LOADK                            R8 K2 ["GuiButton"]
       10 NAMECALL                         R6 R5 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R6 2 1
       13 FASTCALL2K                       ASSERT R6 K1 ; [+5]
       15 MOVE                             R8 R6
       16 LOADK                            R9 K1 ["Scriptable Binding option not found"]
       17 GETIMPORT                        R7 K5 [assert]
       19 CALL                             R7 2 0
       20 GETUPVAL                         R7 2
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 GETUPVAL                         R7 3
       24 MOVE                             R8 R6
       25 CALL                             R7 1 0
       26 GETUPVAL                         R5 4
       27 CALL                             R5 0 0
       28 GETUPVAL                         R5 5
       29 MOVE                             R6 R0
       30 LOADK                            R7 K6 ["--foundation-menu-submenu-item--submenu--content"]
       31 LOADK                            R8 K7 ["Scriptable submenu not found"]
       32 CALL                             R5 3 1
       33 MOVE                             R3 R5
       34 GETUPVAL                         R4 1
       35 MOVE                             R5 R3
       36 LOADK                            R6 K8 ["Rename"]
       37 LOADK                            R7 K9 ["Rename option not found"]
       38 CALL                             R4 3 1
       39 LOADK                            R7 K2 ["GuiButton"]
       40 NAMECALL                         R5 R4 K3 ["FindFirstAncestorWhichIsA"]
       42 CALL                             R5 2 1
       43 FASTCALL2K                       ASSERT R5 K9 ; [+5]
       45 MOVE                             R7 R5
       46 LOADK                            R8 K9 ["Rename option not found"]
       47 GETIMPORT                        R6 K5 [assert]
       49 CALL                             R6 2 0
       50 GETUPVAL                         R6 2
       51 MOVE                             R7 R5
       52 CALL                             R6 1 0
       53 GETUPVAL                         R6 3
       54 MOVE                             R7 R5
       55 CALL                             R6 1 0
       56 GETUPVAL                         R4 4
       57 CALL                             R4 0 0
       58 GETUPVAL                         R4 6
       59 GETTABLEKS                       R4 R4 K10 ["editText"]
       61 MOVE                             R5 R0
       62 GETUPVAL                         R6 7
       63 GETTABLEKS                       R6 R6 K11 ["SCRIPTABLE_RENAME"]
       65 MOVE                             R7 R2
       66 CALL                             R4 3 0
       67 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 LOADK                            R5 K0 ["Show in Explorer"]
        7 LOADK                            R6 K1 ["Show in Explorer option not found"]
        8 CALL                             R3 3 1
        9 LOADK                            R6 K2 ["GuiButton"]
       10 NAMECALL                         R4 R3 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K1 ; [+5]
       15 MOVE                             R6 R4
       16 LOADK                            R7 K1 ["Show in Explorer option not found"]
       17 GETIMPORT                        R5 K5 [assert]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R4
       22 CALL                             R5 1 0
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 GETUPVAL                         R3 4
       27 CALL                             R3 0 0
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R3
        6 LOADK                            R6 K0 ["Scriptable Binding"]
        7 LOADK                            R7 K1 ["Scriptable Binding option not found"]
        8 CALL                             R4 3 1
        9 LOADK                            R7 K2 ["GuiButton"]
       10 NAMECALL                         R5 R4 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R5 2 1
       13 FASTCALL2K                       ASSERT R5 K1 ; [+5]
       15 MOVE                             R7 R5
       16 LOADK                            R8 K1 ["Scriptable Binding option not found"]
       17 GETIMPORT                        R6 K5 [assert]
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 0
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 LOADK                            R6 K6 ["--foundation-menu-submenu-item--submenu--content"]
       31 LOADK                            R7 K7 ["Scriptable submenu not found"]
       32 CALL                             R4 3 1
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 LOADK                            R5 K8 ["Show in Explorer"]
       37 LOADK                            R6 K9 ["Show in Explorer option not found"]
       38 CALL                             R3 3 1
       39 LOADK                            R6 K2 ["GuiButton"]
       40 NAMECALL                         R4 R3 K3 ["FindFirstAncestorWhichIsA"]
       42 CALL                             R4 2 1
       43 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       45 MOVE                             R6 R4
       46 LOADK                            R7 K9 ["Show in Explorer option not found"]
       47 GETIMPORT                        R5 K5 [assert]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R4
       52 CALL                             R5 1 0
       53 GETUPVAL                         R5 3
       54 MOVE                             R6 R4
       55 CALL                             R5 1 0
       56 GETUPVAL                         R3 4
       57 CALL                             R3 0 0
       58 RETURN                           R0 0

PROTO_16:
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
       30 LOADK                            R8 K5 ["Priority"]
       31 LOADK                            R9 K6 ["Priority option not found"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 GETUPVAL                         R7 5
       37 CALL                             R7 0 0
       38 GETUPVAL                         R7 6
       39 GETTABLEKS                       R7 R7 K7 ["editNumber"]
       41 MOVE                             R8 R0
       42 GETUPVAL                         R9 7
       43 GETTABLEKS                       R9 R9 K8 ["PRIORITY"]
       45 MOVE                             R10 R2
       46 CALL                             R7 3 0
       47 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["context-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["Context '%*' not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 1
       13 GETTABLEKS                       R2 R2 K3 ["LayoutOrder"]
       15 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["action-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["Action '%*' not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 1
       13 GETTABLEKS                       R2 R2 K3 ["LayoutOrder"]
       15 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 0
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 LOADK                            R6 K0 ["node-%*"]
        8 MOVE                             R8 R3
        9 NAMECALL                         R6 R6 K1 ["format"]
       11 CALL                             R6 2 1
       12 LOADK                            R7 K2 ["Node '%*' not found"]
       13 MOVE                             R9 R1
       14 NAMECALL                         R7 R7 K1 ["format"]
       16 CALL                             R7 2 1
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R0
       23 LOADK                            R7 K3 ["add-%*"]
       24 MOVE                             R9 R3
       25 NAMECALL                         R7 R7 K1 ["format"]
       27 CALL                             R7 2 1
       28 LOADK                            R8 K4 ["Add button for '%*' not found"]
       29 MOVE                             R10 R1
       30 NAMECALL                         R8 R8 K1 ["format"]
       32 CALL                             R8 2 1
       33 CALL                             R5 3 1
       34 GETUPVAL                         R6 4
       35 MOVE                             R7 R5
       36 CALL                             R6 1 0
       37 GETUPVAL                         R6 2
       38 MOVE                             R7 R0
       39 LOADK                            R8 K5 ["create-menu-%*--content"]
       40 MOVE                             R10 R3
       41 NAMECALL                         R8 R8 K1 ["format"]
       43 CALL                             R8 2 1
       44 LOADK                            R9 K6 ["Create menu not found"]
       45 CALL                             R6 3 1
       46 GETUPVAL                         R7 5
       47 MOVE                             R8 R6
       48 MOVE                             R9 R2
       49 LOADK                            R10 K7 ["%* button not found"]
       50 MOVE                             R12 R2
       51 NAMECALL                         R10 R10 K1 ["format"]
       53 CALL                             R10 2 1
       54 CALL                             R7 3 1
       55 LOADK                            R9 K8 ["GuiButton"]
       56 NAMECALL                         R7 R7 K9 ["FindFirstAncestorWhichIsA"]
       58 CALL                             R7 2 1
       59 LOADK                            R10 K7 ["%* button not found"]
       60 MOVE                             R12 R2
       61 NAMECALL                         R10 R10 K1 ["format"]
       63 CALL                             R10 2 1
       64 FASTCALL2                        ASSERT R7 R10 ; [+4]
       66 MOVE                             R9 R7
       67 GETIMPORT                        R8 K11 [assert]
       69 CALL                             R8 2 0
       70 GETUPVAL                         R8 4
       71 MOVE                             R9 R7
       72 CALL                             R8 1 0
       73 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Primary Modifier"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Secondary Modifier"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Keycode"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["Composite"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 LOADB                            R2 1
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 MOVE                             R8 R2
        6 JUMPIFNOT                        R8 ; [+6]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["checkNodeExists"]
       10 MOVE                             R9 R0
       11 MOVE                             R10 R7
       12 CALL                             R8 2 1
       13 MOVE                             R2 R8
       14 FORGLOOP                         R3 2 ; [-10]
       16 RETURN                           R2 1

PROTO_34:
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
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K14 ["Parent"]
       47 GETTABLEKS                       R6 R6 K15 ["TestHelper"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K14 ["Parent"]
       56 GETTABLEKS                       R7 R7 K16 ["BindingHelper"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R5 K17 ["act"]
       61 GETTABLEKS                       R8 R5 K18 ["updateStyling"]
       63 GETTABLEKS                       R9 R5 K19 ["click"]
       65 GETTABLEKS                       R10 R5 K20 ["contextMenu"]
       67 GETTABLEKS                       R11 R5 K21 ["keyDown"]
       69 GETTABLEKS                       R12 R5 K22 ["keyUp"]
       71 GETTABLEKS                       R13 R5 K23 ["mouseEnter"]
       73 GETTABLEKS                       R14 R5 K24 ["queryByTestId"]
       75 GETTABLEKS                       R15 R5 K25 ["queryAllByTestId"]
       77 GETTABLEKS                       R16 R5 K26 ["queryByText"]
       79 GETTABLEKS                       R17 R5 K27 ["tryQueryByTestId"]
       81 NEWTABLE                         R18 32 0
       83 DUPCLOSURE                       R19 K28 [PROTO_0]
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R19 R18 K29 ["expand"]
       89 DUPCLOSURE                       R19 K30 [PROTO_1]
       90 CAPTURE                          VAL R18
       91 SETTABLEKS                       R19 R18 K31 ["collapse"]
       93 DUPCLOSURE                       R19 K32 [PROTO_2]
       94 CAPTURE                          VAL R15
       95 SETTABLEKS                       R19 R18 K33 ["rowCount"]
       97 DUPCLOSURE                       R19 K34 [PROTO_3]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R9
      103 SETTABLEKS                       R19 R18 K35 ["cancel"]
      105 DUPCLOSURE                       R19 K36 [PROTO_5]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 SETTABLEKS                       R19 R18 K37 ["rename"]
      116 DUPCLOSURE                       R19 K38 [PROTO_6]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R19 R18 K39 ["delete"]
      124 DUPCLOSURE                       R19 K40 [PROTO_7]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R19 R18 K41 ["duplicate"]
      132 DUPCLOSURE                       R19 K42 [PROTO_8]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R19 R18 K43 ["toggleBooleanProperty"]
      140 DUPCLOSURE                       R19 K44 [PROTO_9]
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R9
      144 DUPCLOSURE                       R20 K45 [PROTO_10]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R8
      149 DUPCLOSURE                       R21 K46 [PROTO_11]
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R14
      156 DUPCLOSURE                       R22 K47 [PROTO_12]
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R14
      163 SETTABLEKS                       R22 R18 K48 ["toggleScriptable"]
      165 DUPCLOSURE                       R22 K49 [PROTO_13]
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R22 R18 K50 ["renameScriptable"]
      176 DUPCLOSURE                       R22 K51 [PROTO_14]
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R8
      182 SETTABLEKS                       R22 R18 K52 ["showInExplorer"]
      184 DUPCLOSURE                       R22 K53 [PROTO_15]
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R14
      191 SETTABLEKS                       R22 R18 K54 ["showInExplorerScriptable"]
      193 DUPCLOSURE                       R22 K55 [PROTO_16]
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R4
      202 SETTABLEKS                       R22 R18 K56 ["changePriority"]
      204 DUPCLOSURE                       R22 K57 [PROTO_17]
      205 CAPTURE                          VAL R14
      206 SETTABLEKS                       R22 R18 K58 ["getContextLayoutOrder"]
      208 DUPCLOSURE                       R22 K59 [PROTO_18]
      209 CAPTURE                          VAL R14
      210 SETTABLEKS                       R22 R18 K60 ["getActionLayoutOrder"]
      212 DUPCLOSURE                       R22 K61 [PROTO_19]
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R13
      220 SETTABLEKS                       R22 R18 K62 ["changeActionType"]
      222 DUPCLOSURE                       R22 K63 [PROTO_20]
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R8
      229 SETTABLEKS                       R22 R18 K64 ["changeRowBehavior"]
      231 DUPCLOSURE                       R22 K65 [PROTO_21]
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R16
      238 DUPCLOSURE                       R23 K66 [PROTO_22]
      239 CAPTURE                          VAL R22
      240 SETTABLEKS                       R23 R18 K67 ["addPrimaryModifier"]
      242 DUPCLOSURE                       R23 K68 [PROTO_23]
      243 CAPTURE                          VAL R22
      244 SETTABLEKS                       R23 R18 K69 ["addSecondaryModifier"]
      246 DUPCLOSURE                       R23 K70 [PROTO_24]
      247 CAPTURE                          VAL R8
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R16
      253 SETTABLEKS                       R23 R18 K71 ["addBinding"]
      255 DUPCLOSURE                       R23 K72 [PROTO_25]
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R16
      260 CAPTURE                          VAL R9
      261 DUPCLOSURE                       R24 K73 [PROTO_26]
      262 CAPTURE                          VAL R23
      263 SETTABLEKS                       R24 R18 K74 ["cancelCreateKeycode"]
      265 DUPCLOSURE                       R24 K75 [PROTO_27]
      266 CAPTURE                          VAL R23
      267 SETTABLEKS                       R24 R18 K76 ["cancelCreateComposite"]
      269 DUPCLOSURE                       R24 K77 [PROTO_29]
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R13
      272 CAPTURE                          VAL R9
      273 CAPTURE                          VAL R7
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R12
      276 SETTABLEKS                       R24 R18 K78 ["createContext"]
      278 DUPCLOSURE                       R24 K79 [PROTO_31]
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R13
      282 CAPTURE                          VAL R9
      283 CAPTURE                          VAL R16
      284 CAPTURE                          VAL R7
      285 CAPTURE                          VAL R11
      286 CAPTURE                          VAL R12
      287 SETTABLEKS                       R24 R18 K80 ["createAction"]
      289 DUPCLOSURE                       R24 K81 [PROTO_32]
      290 CAPTURE                          VAL R17
      291 CAPTURE                          VAL R3
      292 SETTABLEKS                       R24 R18 K82 ["checkNodeExists"]
      294 DUPCLOSURE                       R24 K83 [PROTO_33]
      295 CAPTURE                          VAL R18
      296 SETTABLEKS                       R24 R18 K84 ["checkNodesExist"]
      298 DUPCLOSURE                       R24 K85 [PROTO_34]
      299 CAPTURE                          VAL R17
      300 SETTABLEKS                       R24 R18 K86 ["schemaExists"]
      302 RETURN                           R18 1
