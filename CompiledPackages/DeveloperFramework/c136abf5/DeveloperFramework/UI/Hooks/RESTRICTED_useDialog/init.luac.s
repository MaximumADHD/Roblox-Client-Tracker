PROTO_0:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R4 K2 ["Unknown intent: "]
        3 MOVE                             R5 R1
        4 CONCAT                           R3 R4 R5
        5 CALL                             R2 1 0
        6 LOADK                            R2 K3 ["Default"]
        7 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["HidesDialog"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["OnActivated"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K2 ["OnActivated"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 0
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Luau doesn't refine the type of `action` here"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["Label"]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K5 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+3]
       21 MOVE                             R1 R0
       22 JUMP                             ; [+22]
       23 GETTABLEKS                       R2 R0 K7 ["Project"]
       25 JUMPIFNOT                        R2 ; [+11]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R3 R0 K7 ["Project"]
       29 GETTABLEKS                       R4 R0 K8 ["Scope"]
       31 GETTABLEKS                       R5 R0 K9 ["Key"]
       33 NAMECALL                         R1 R1 K10 ["getProjectText"]
       35 CALL                             R1 4 1
       36 JUMP                             ; [+8]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R3 R0 K8 ["Scope"]
       40 GETTABLEKS                       R4 R0 K9 ["Key"]
       42 NAMECALL                         R1 R1 K11 ["getText"]
       44 CALL                             R1 3 1
       45 DUPTABLE                         R2 K14 [{"Label", "Enabled", "OnActivated"}]
       46 SETTABLEKS                       R1 R2 K3 ["Label"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K12 ["Enabled"]
       51 JUMPIFEQKNIL                     R4 ; [+5]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K12 ["Enabled"]
       56 JUMP                             ; [+1]
       57 LOADB                            R3 1
       58 SETTABLEKS                       R3 R2 K12 ["Enabled"]
       60 NEWCLOSURE                       R3 P0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U2
       63 SETTABLEKS                       R3 R2 K13 ["OnActivated"]
       65 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HidesDialog"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["OnActivated"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["OnActivated"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["Label"]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K2 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+3]
       14 MOVE                             R1 R0
       15 JUMP                             ; [+22]
       16 GETTABLEKS                       R2 R0 K4 ["Project"]
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R3 R0 K4 ["Project"]
       22 GETTABLEKS                       R4 R0 K5 ["Scope"]
       24 GETTABLEKS                       R5 R0 K6 ["Key"]
       26 NAMECALL                         R1 R1 K7 ["getProjectText"]
       28 CALL                             R1 4 1
       29 JUMP                             ; [+8]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R3 R0 K5 ["Scope"]
       33 GETTABLEKS                       R4 R0 K6 ["Key"]
       35 NAMECALL                         R1 R1 K8 ["getText"]
       37 CALL                             R1 3 1
       38 DUPTABLE                         R2 K13 [{"uri", "text", "disabled", "onActivated"}]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K14 ["child"]
       42 GETUPVAL                         R4 3
       43 FASTCALL1                        TYPEOF R0 ; [+3]
       44 MOVE                             R7 R0
       45 GETIMPORT                        R6 K2 [typeof]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+3]
       50 MOVE                             R5 R0
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R5 R0 K6 ["Key"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K9 ["uri"]
       57 SETTABLEKS                       R1 R2 K10 ["text"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K15 ["Enabled"]
       62 JUMPIFEQKB                       R4 FALSE ; [+2]
       64 LOADB                            R3 0 +1
       65 LOADB                            R3 1
       66 SETTABLEKS                       R3 R2 K11 ["disabled"]
       68 NEWCLOSURE                       R3 P0
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U4
       71 SETTABLEKS                       R3 R2 K12 ["onActivated"]
       73 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["FFlagDevFrameworkUsesFoundationDialog is required for useStudioFoundationDialogAction"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["use"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 3
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 MOVE                             R9 R2
       25 SETLIST                          R6 R7 3 [1]
       27 CALL                             R4 2 1
       28 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = , ["container"] = }]
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K6 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["createRoot"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 DUPTABLE                         R3 K7 [{"root", "container"}]
       11 SETTABLEKS                       R1 R3 K5 ["root"]
       13 SETTABLEKS                       R0 R3 K6 ["container"]
       15 CALL                             R2 1 0
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["container"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 6
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["new"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 5
       17 GETUPVAL                         R8 6
       18 CALL                             R8 0 1
       19 JUMPIFNOT                        R8 ; [+5]
       20 GETUPVAL                         R7 7
       21 GETTABLEKS                       R7 R7 K2 ["mock"]
       23 CALL                             R7 0 1
       24 JUMP                             ; [+4]
       25 GETUPVAL                         R7 7
       26 GETTABLEKS                       R7 R7 K1 ["new"]
       28 CALL                             R7 0 1
       29 SETLIST                          R1 R2 6 [1]
       31 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["root"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 2
        8 JUMPIF                           R0 ; [+8]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["root"]
       12 LOADNIL                          R2
       13 NAMECALL                         R0 R0 K1 ["render"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["root"]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 2
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K2 ["createElement"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K3 ["FoundationProvider"]
       28 DUPTABLE                         R6 K5 [{"colorMode"}]
       29 GETUPVAL                         R7 6
       30 CALL                             R7 0 1
       31 SETTABLEKS                       R7 R6 K4 ["colorMode"]
       33 GETUPVAL                         R7 1
       34 CALL                             R4 3 -1
       35 CALL                             R2 -1 -1
       36 NAMECALL                         R0 R0 K1 ["render"]
       38 CALL                             R0 -1 0
       39 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagDevFrameworkUsesFoundationDialog is required for useDetachedDialogRoot"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["use"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["use"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["use"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K3 ["use"]
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R5 R5 K4 ["useState"]
       26 DUPTABLE                         R6 K8 [{["root"] = , ["container"] = }]
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R6
       34 NEWTABLE                         R9 0 1
       36 MOVE                             R10 R6
       37 SETLIST                          R9 R10 1 [1]
       39 CALL                             R7 2 0
       40 GETUPVAL                         R7 5
       41 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 NEWTABLE                         R9 0 5
       54 MOVE                             R10 R5
       55 MOVE                             R11 R1
       56 MOVE                             R12 R2
       57 MOVE                             R13 R3
       58 MOVE                             R14 R4
       59 SETLIST                          R9 R10 5 [1]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R8 5
       63 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       65 NEWCLOSURE                       R9 P2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U12
       73 NEWTABLE                         R10 0 3
       75 MOVE                             R11 R5
       76 MOVE                             R12 R7
       77 MOVE                             R13 R0
       78 SETLIST                          R10 R11 3 [1]
       80 CALL                             R8 2 0
       81 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Title"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["Title"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["Heading"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Title"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["Heading"]
        7 JUMPIF                           R0 ; [+6]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["Body"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["Body"]
       17 JUMPIFNOT                        R0 ; [+11]
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["Heading"]
       22 LOADK                            R3 K3 ["\n\n"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K2 ["Body"]
       26 CONCAT                           R1 R2 R4
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 1
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K1 ["Heading"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClosed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnClosed"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DisableTitleBar"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 DUPTABLE                         R0 K3 [{"uri", "onClose"}]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["child"]
       10 GETUPVAL                         R2 2
       11 LOADK                            R3 K5 ["Escape"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["uri"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R1 R0 K2 ["onClose"]
       20 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R3 K0 ["PluginGui"]
        2 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R1 2 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+3]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["DialogComponent"]
       10 DUPTABLE                         R2 K14 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction", "width", "children", "modal", "toolDialog"}]
       11 GETUPVAL                         R3 3
       12 SETTABLEKS                       R3 R2 K2 ["uri"]
       14 GETUPVAL                         R4 4
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R5 R5 K15 ["Intent"]
       18 GETTABLE                         R3 R4 R5
       19 SETTABLEKS                       R3 R2 K3 ["type"]
       21 GETUPVAL                         R3 6
       22 SETTABLEKS                       R3 R2 K4 ["title"]
       24 GETUPVAL                         R3 7
       25 SETTABLEKS                       R3 R2 K5 ["description"]
       27 GETUPVAL                         R3 8
       28 SETTABLEKS                       R3 R2 K6 ["primaryAction"]
       30 GETUPVAL                         R3 9
       31 SETTABLEKS                       R3 R2 K7 ["secondaryAction"]
       33 GETUPVAL                         R3 10
       34 SETTABLEKS                       R3 R2 K8 ["tertiaryAction"]
       36 GETUPVAL                         R3 11
       37 SETTABLEKS                       R3 R2 K9 ["escapeAction"]
       39 GETUPVAL                         R3 12
       40 SETTABLEKS                       R3 R2 K10 ["width"]
       42 GETUPVAL                         R3 13
       43 SETTABLEKS                       R3 R2 K11 ["children"]
       45 GETUPVAL                         R4 5
       46 GETTABLEKS                       R4 R4 K16 ["Modal"]
       48 JUMPIFEQKB                       R4 TRUE ; [+2]
       50 LOADB                            R3 0 +1
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R2 K12 ["modal"]
       54 GETUPVAL                         R3 5
       55 GETTABLEKS                       R3 R3 K17 ["ToolDialog"]
       57 SETTABLEKS                       R3 R2 K13 ["toolDialog"]
       59 CALL                             R0 2 -1
       60 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["ReactRoblox is required for useDialog."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+214]
        9 GETTABLEKS                       R1 R0 K3 ["MigrateToStudioFoundation"]
       11 JUMPIFEQKNIL                     R1 ; [+211]
       13 GETTABLEKS                       R1 R0 K3 ["MigrateToStudioFoundation"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["useState"]
       18 LOADB                            R3 0
       19 CALL                             R2 1 2
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R3
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R3
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K6 ["useBinding"]
       45 LOADK                            R7 K7 [""]
       46 CALL                             R6 1 2
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R10 0 2
       55 GETTABLEKS                       R11 R0 K9 ["Title"]
       57 GETTABLEKS                       R12 R0 K10 ["Heading"]
       59 SETLIST                          R10 R11 2 [1]
       61 CALL                             R8 2 0
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R8 R8 K6 ["useBinding"]
       65 LOADK                            R9 K7 [""]
       66 CALL                             R8 1 2
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       70 NEWCLOSURE                       R11 P3
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R9
       73 NEWTABLE                         R12 0 3
       75 GETTABLEKS                       R13 R0 K9 ["Title"]
       77 GETTABLEKS                       R14 R0 K10 ["Heading"]
       79 GETTABLEKS                       R15 R0 K11 ["Body"]
       81 SETLIST                          R12 R13 3 [1]
       83 CALL                             R10 2 0
       84 GETTABLEKS                       R10 R1 K12 ["DialogUri"]
       86 GETUPVAL                         R11 3
       87 GETTABLEKS                       R12 R0 K13 ["ActionPrimary"]
       89 MOVE                             R13 R5
       90 MOVE                             R14 R10
       91 CALL                             R11 3 1
       92 GETUPVAL                         R12 3
       93 GETTABLEKS                       R13 R0 K14 ["ActionSecondary"]
       95 MOVE                             R14 R5
       96 MOVE                             R15 R10
       97 CALL                             R12 3 1
       98 GETUPVAL                         R13 3
       99 GETTABLEKS                       R14 R0 K15 ["ActionTertiary"]
      101 MOVE                             R15 R5
      102 MOVE                             R16 R10
      103 CALL                             R13 3 1
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R14 R14 K16 ["useMemo"]
      107 NEWCLOSURE                       R15 P4
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R5
      112 NEWTABLE                         R16 0 4
      114 GETTABLEKS                       R17 R0 K17 ["DisableTitleBar"]
      116 GETTABLEKS                       R18 R0 K18 ["OnClosed"]
      118 MOVE                             R19 R10
      119 MOVE                             R20 R5
      120 SETLIST                          R16 R17 4 [1]
      122 CALL                             R14 2 1
      123 GETUPVAL                         R15 2
      124 GETTABLEKS                       R15 R15 K5 ["useCallback"]
      126 DUPCLOSURE                       R16 K19 [PROTO_19]
      127 NEWTABLE                         R17 0 0
      129 CALL                             R15 2 1
      130 GETUPVAL                         R16 2
      131 GETTABLEKS                       R16 R16 K20 ["createElement"]
      133 LOADK                            R17 K21 ["Frame"]
      134 NEWTABLE                         R18 4 0
      136 LOADN                            R19 1
      137 SETTABLEKS                       R19 R18 K22 ["BackgroundTransparency"]
      139 GETTABLEKS                       R20 R0 K23 ["Contents"]
      141 JUMPIFNOTEQKNIL                  R20 ; [+2]
      143 LOADB                            R19 0 +1
      144 LOADB                            R19 1
      145 SETTABLEKS                       R19 R18 K24 ["Visible"]
      147 GETUPVAL                         R19 2
      148 GETTABLEKS                       R19 R19 K25 ["Tag"]
      150 LOADK                            R20 K26 ["X-FitY"]
      151 SETTABLE                         R20 R18 R19
      152 SETTABLEKS                       R15 R18 K27 ["ref"]
      154 GETTABLEKS                       R19 R0 K23 ["Contents"]
      156 CALL                             R16 3 1
      157 GETTABLEKS                       R18 R0 K28 ["Width"]
      159 JUMPIFNOT                        R18 ; [+11]
      160 GETUPVAL                         R18 5
      161 GETTABLEKS                       R18 R18 K29 ["X"]
      163 GETTABLEKS                       R19 R0 K28 ["Width"]
      165 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
      167 GETIMPORT                        R17 K32 [math.max]
      169 CALL                             R17 2 1
      170 JUMP                             ; [+3]
      171 GETUPVAL                         R17 5
      172 GETTABLEKS                       R17 R17 K29 ["X"]
      174 GETUPVAL                         R18 2
      175 GETTABLEKS                       R18 R18 K16 ["useMemo"]
      177 NEWCLOSURE                       R19 P6
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R10
      182 CAPTURE                          UPVAL U6
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R16
      192 NEWTABLE                         R20 0 14
      194 MOVE                             R21 R2
      195 MOVE                             R22 R10
      196 GETTABLEKS                       R23 R1 K33 ["DialogComponent"]
      198 GETTABLEKS                       R24 R0 K34 ["Intent"]
      200 MOVE                             R25 R6
      201 MOVE                             R26 R8
      202 MOVE                             R27 R11
      203 MOVE                             R28 R12
      204 MOVE                             R29 R13
      205 MOVE                             R30 R14
      206 MOVE                             R31 R17
      207 GETTABLEKS                       R32 R0 K23 ["Contents"]
      209 GETTABLEKS                       R33 R0 K35 ["Modal"]
      211 GETTABLEKS                       R34 R0 K36 ["ToolDialog"]
      213 SETLIST                          R20 R21 14 [1]
      215 CALL                             R18 2 1
      216 GETUPVAL                         R19 7
      217 MOVE                             R20 R18
      218 CALL                             R19 1 0
      219 MOVE                             R19 R4
      220 MOVE                             R20 R5
      221 MOVE                             R21 R2
      222 RETURN                           R19 3
      223 GETTABLEKS                       R2 R0 K28 ["Width"]
      225 JUMPIFNOT                        R2 ; [+11]
      226 GETUPVAL                         R2 5
      227 GETTABLEKS                       R2 R2 K29 ["X"]
      229 GETTABLEKS                       R3 R0 K28 ["Width"]
      231 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
      233 GETIMPORT                        R1 K32 [math.max]
      235 CALL                             R1 2 1
      236 JUMP                             ; [+3]
      237 GETUPVAL                         R1 5
      238 GETTABLEKS                       R1 R1 K29 ["X"]
      240 GETUPVAL                         R2 2
      241 GETTABLEKS                       R2 R2 K4 ["useState"]
      243 GETIMPORT                        R3 K39 [Vector2.new]
      245 MOVE                             R4 R1
      246 GETUPVAL                         R5 5
      247 GETTABLEKS                       R5 R5 K40 ["Y"]
      249 CALL                             R3 2 -1
      250 CALL                             R2 -1 2
      251 GETUPVAL                         R4 2
      252 GETTABLEKS                       R4 R4 K41 ["useRef"]
      254 LOADNIL                          R5
      255 CALL                             R4 1 1
      256 GETUPVAL                         R5 8
      257 GETTABLEKS                       R6 R0 K13 ["ActionPrimary"]
      259 MOVE                             R7 R4
      260 CALL                             R5 2 1
      261 GETUPVAL                         R6 8
      262 GETTABLEKS                       R7 R0 K14 ["ActionSecondary"]
      264 MOVE                             R8 R4
      265 CALL                             R6 2 1
      266 GETUPVAL                         R7 8
      267 GETTABLEKS                       R8 R0 K15 ["ActionTertiary"]
      269 MOVE                             R9 R4
      270 CALL                             R7 2 1
      271 GETTABLEKS                       R9 R0 K23 ["Contents"]
      273 JUMPIFNOT                        R9 ; [+18]
      274 GETUPVAL                         R8 2
      275 GETTABLEKS                       R8 R8 K20 ["createElement"]
      277 LOADK                            R9 K21 ["Frame"]
      278 NEWTABLE                         R10 2 0
      280 LOADN                            R11 1
      281 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
      283 GETUPVAL                         R11 2
      284 GETTABLEKS                       R11 R11 K25 ["Tag"]
      286 LOADK                            R12 K26 ["X-FitY"]
      287 SETTABLE                         R12 R10 R11
      288 GETTABLEKS                       R11 R0 K23 ["Contents"]
      290 CALL                             R8 3 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R8
      293 GETUPVAL                         R9 9
      294 DUPTABLE                         R10 K44 [{"Contents", "Size", "DisableTitleBar", "Modal", "OnClosed", "Title", "ToolDialog", "WidgetRef"}]
      295 GETUPVAL                         R12 2
      296 GETTABLEKS                       R12 R12 K20 ["createElement"]
      298 GETUPVAL                         R13 10
      299 NEWTABLE                         R14 8 0
      301 GETTABLEKS                       R15 R0 K11 ["Body"]
      303 SETTABLEKS                       R15 R14 K11 ["Body"]
      305 GETTABLEKS                       R15 R0 K10 ["Heading"]
      307 SETTABLEKS                       R15 R14 K10 ["Heading"]
      309 SETTABLEKS                       R1 R14 K28 ["Width"]
      311 SETTABLEKS                       R5 R14 K13 ["ActionPrimary"]
      313 SETTABLEKS                       R6 R14 K14 ["ActionSecondary"]
      315 SETTABLEKS                       R7 R14 K15 ["ActionTertiary"]
      317 SETTABLEKS                       R3 R14 K45 ["OnSizeChanged"]
      319 GETUPVAL                         R15 2
      320 GETTABLEKS                       R15 R15 K25 ["Tag"]
      322 GETTABLEKS                       R16 R0 K34 ["Intent"]
      324 SETTABLE                         R16 R14 R15
      325 DUPTABLE                         R15 K46 [{"Contents"}]
      326 SETTABLEKS                       R8 R15 K23 ["Contents"]
      328 CALL                             R12 3 1
      329 SETTABLEKS                       R12 R10 K23 ["Contents"]
      331 SETTABLEKS                       R2 R10 K42 ["Size"]
      333 GETTABLEKS                       R12 R0 K17 ["DisableTitleBar"]
      335 SETTABLEKS                       R12 R10 K17 ["DisableTitleBar"]
      337 GETTABLEKS                       R12 R0 K35 ["Modal"]
      339 SETTABLEKS                       R12 R10 K35 ["Modal"]
      341 GETTABLEKS                       R12 R0 K18 ["OnClosed"]
      343 SETTABLEKS                       R12 R10 K18 ["OnClosed"]
      345 GETTABLEKS                       R12 R0 K9 ["Title"]
      347 SETTABLEKS                       R12 R10 K9 ["Title"]
      349 GETTABLEKS                       R12 R0 K36 ["ToolDialog"]
      351 SETTABLEKS                       R12 R10 K36 ["ToolDialog"]
      353 GETTABLEKS                       R12 R0 K43 ["WidgetRef"]
      355 SETTABLEKS                       R12 R10 K43 ["WidgetRef"]
      357 CALL                             R9 1 3
      358 SETTABLEKS                       R10 R4 K47 ["current"]
      360 RETURN                           R9 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R4 R4 K9 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["ReactRoblox"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["StudioUri"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K12 ["Foundation"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Util"]
       46 GETTABLEKS                       R8 R8 K13 ["DialogAction"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K2 ["UI"]
       53 GETTABLEKS                       R9 R9 K14 ["Components"]
       55 GETTABLEKS                       R9 R9 K15 ["UseDialogLayout"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K2 ["UI"]
       62 GETTABLEKS                       R10 R10 K14 ["Components"]
       64 GETTABLEKS                       R10 R10 K15 ["UseDialogLayout"]
       66 GETTABLEKS                       R10 R10 K16 ["styles"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K2 ["UI"]
       73 GETTABLEKS                       R11 R11 K17 ["ContextServices"]
       75 GETTABLEKS                       R11 R11 K18 ["Design"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K2 ["UI"]
       82 GETTABLEKS                       R12 R12 K17 ["ContextServices"]
       84 GETTABLEKS                       R12 R12 K19 ["Focus"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K2 ["UI"]
       91 GETTABLEKS                       R13 R13 K17 ["ContextServices"]
       93 GETTABLEKS                       R13 R13 K20 ["Localization"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K2 ["UI"]
      100 GETTABLEKS                       R14 R14 K17 ["ContextServices"]
      102 GETTABLEKS                       R14 R14 K21 ["Mouse"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R0 K2 ["UI"]
      109 GETTABLEKS                       R15 R15 K17 ["ContextServices"]
      111 GETTABLEKS                       R15 R15 K22 ["Plugin"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K6 [require]
      116 GETTABLEKS                       R16 R0 K2 ["UI"]
      118 GETTABLEKS                       R16 R16 K17 ["ContextServices"]
      120 GETTABLEKS                       R16 R16 K23 ["provide"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K6 [require]
      125 GETTABLEKS                       R17 R0 K24 ["Style"]
      127 GETTABLEKS                       R17 R17 K25 ["getStudioThemeNameOrDefault"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K6 [require]
      132 GETTABLEKS                       R18 R0 K24 ["Style"]
      134 GETTABLEKS                       R18 R18 K26 ["Themes"]
      136 GETTABLEKS                       R18 R18 K27 ["StudioTheme"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K6 [require]
      141 GETTABLEKS                       R19 R0 K28 ["TestHelpers"]
      143 GETTABLEKS                       R19 R19 K29 ["isTestEnvironment"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K6 [require]
      148 GETTABLEKS                       R20 R0 K2 ["UI"]
      150 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      152 GETTABLEKS                       R20 R20 K31 ["useDialogWidget"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K6 [require]
      157 GETTABLEKS                       R21 R0 K32 ["SharedFlags"]
      159 GETTABLEKS                       R21 R21 K33 ["getFFlagDevFrameworkUsesFoundationDialog"]
      161 CALL                             R20 1 1
      162 CALL                             R20 0 1
      163 LOADK                            R23 K34 ["MinimumDialogSize"]
      164 NAMECALL                         R21 R9 K35 ["GetAttribute"]
      166 CALL                             R21 2 1
      167 DUPTABLE                         R23 K45 [{["Confirmation"] = "Success", ["Destructive"] = "Warning", ["Error"] = "Critical", ["Information"] = "Default", ["Question"] = "Default", ["Warning"] = "Warning"}]
      168 DUPTABLE                         R24 K47 [{"__index"}]
      169 DUPCLOSURE                       R25 K48 [PROTO_0]
      170 SETTABLEKS                       R25 R24 K46 ["__index"]
      172 FASTCALL2                        SETMETATABLE R23 R24 ; [+3]
      174 GETIMPORT                        R22 K50 [setmetatable]
      176 CALL                             R22 2 1
      177 DUPCLOSURE                       R23 K51 [PROTO_3]
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R3
      180 DUPCLOSURE                       R24 K52 [PROTO_6]
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R5
      185 DUPCLOSURE                       R25 K53 [PROTO_12]
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R16
      199 DUPCLOSURE                       R26 K54 [PROTO_21]
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R8
      211 RETURN                           R26 1
