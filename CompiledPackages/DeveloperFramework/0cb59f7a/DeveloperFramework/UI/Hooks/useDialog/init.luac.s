PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HidesDialog"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["current"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K2 ["OnActivated"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K2 ["OnActivated"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 0
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Luau doesn't refine the type of `action` here"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K3 ["Label"]
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
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K12 ["Enabled"]
       51 JUMPIFEQKNIL                     R4 ; [+5]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K12 ["Enabled"]
       56 JUMP                             ; [+1]
       57 LOADB                            R3 1
       58 SETTABLEKS                       R3 R2 K12 ["Enabled"]
       60 NEWCLOSURE                       R3 P0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U2
       63 SETTABLEKS                       R3 R2 K13 ["OnActivated"]
       65 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useMemo"]
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["ReactRoblox is required for useDialog."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R2 R0 K3 ["Width"]
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["X"]
       13 GETTABLEKS                       R3 R0 K3 ["Width"]
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K7 [math.max]
       19 CALL                             R1 2 1
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K4 ["X"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K8 ["useState"]
       27 GETIMPORT                        R3 K11 [Vector2.new]
       29 MOVE                             R4 R1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K12 ["Y"]
       33 CALL                             R3 2 -1
       34 CALL                             R2 -1 2
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K13 ["useRef"]
       38 LOADNIL                          R5
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R6 R0 K14 ["ActionPrimary"]
       43 MOVE                             R7 R4
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R7 R0 K15 ["ActionSecondary"]
       48 MOVE                             R8 R4
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R8 R0 K16 ["ActionTertiary"]
       53 MOVE                             R9 R4
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R9 R0 K17 ["Contents"]
       57 JUMPIFNOT                        R9 ; [+18]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R8 R9 K18 ["createElement"]
       61 LOADK                            R9 K19 ["Frame"]
       62 NEWTABLE                         R10 2 0
       64 LOADN                            R11 1
       65 SETTABLEKS                       R11 R10 K20 ["BackgroundTransparency"]
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R11 R12 K21 ["Tag"]
       70 LOADK                            R12 K22 ["X-FitY"]
       71 SETTABLE                         R12 R10 R11
       72 GETTABLEKS                       R11 R0 K17 ["Contents"]
       74 CALL                             R8 3 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 GETUPVAL                         R9 4
       78 DUPTABLE                         R10 K30 [{"Contents", "Size", "DisableTitleBar", "Modal", "OnClosed", "Title", "ToolDialog", "WidgetRef"}]
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R12 R13 K18 ["createElement"]
       82 GETUPVAL                         R13 5
       83 NEWTABLE                         R14 8 0
       85 GETTABLEKS                       R15 R0 K31 ["Body"]
       87 SETTABLEKS                       R15 R14 K31 ["Body"]
       89 GETTABLEKS                       R15 R0 K32 ["Heading"]
       91 SETTABLEKS                       R15 R14 K32 ["Heading"]
       93 SETTABLEKS                       R1 R14 K3 ["Width"]
       95 SETTABLEKS                       R5 R14 K14 ["ActionPrimary"]
       97 SETTABLEKS                       R6 R14 K15 ["ActionSecondary"]
       99 SETTABLEKS                       R7 R14 K16 ["ActionTertiary"]
      101 SETTABLEKS                       R3 R14 K33 ["OnSizeChanged"]
      103 GETUPVAL                         R16 2
      104 GETTABLEKS                       R15 R16 K21 ["Tag"]
      106 GETTABLEKS                       R16 R0 K34 ["Intent"]
      108 SETTABLE                         R16 R14 R15
      109 DUPTABLE                         R15 K35 [{"Contents"}]
      110 SETTABLEKS                       R8 R15 K17 ["Contents"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R10 K17 ["Contents"]
      115 SETTABLEKS                       R2 R10 K23 ["Size"]
      117 GETTABLEKS                       R12 R0 K24 ["DisableTitleBar"]
      119 SETTABLEKS                       R12 R10 K24 ["DisableTitleBar"]
      121 GETTABLEKS                       R12 R0 K25 ["Modal"]
      123 SETTABLEKS                       R12 R10 K25 ["Modal"]
      125 GETTABLEKS                       R12 R0 K26 ["OnClosed"]
      127 SETTABLEKS                       R12 R10 K26 ["OnClosed"]
      129 GETTABLEKS                       R12 R0 K27 ["Title"]
      131 SETTABLEKS                       R12 R10 K27 ["Title"]
      133 GETTABLEKS                       R12 R0 K28 ["ToolDialog"]
      135 SETTABLEKS                       R12 R10 K28 ["ToolDialog"]
      137 GETTABLEKS                       R12 R0 K29 ["WidgetRef"]
      139 SETTABLEKS                       R12 R10 K29 ["WidgetRef"]
      141 CALL                             R9 1 3
      142 SETTABLEKS                       R10 R4 K36 ["current"]
      144 RETURN                           R9 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["ReactRoblox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Util"]
       27 GETTABLEKS                       R4 R5 K10 ["DialogAction"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R7 R0 K2 ["UI"]
       34 GETTABLEKS                       R6 R7 K11 ["Components"]
       36 GETTABLEKS                       R5 R6 K12 ["UseDialogLayout"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R9 R0 K2 ["UI"]
       43 GETTABLEKS                       R8 R9 K11 ["Components"]
       45 GETTABLEKS                       R7 R8 K12 ["UseDialogLayout"]
       47 GETTABLEKS                       R6 R7 K13 ["styles"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R9 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R9 K14 ["ContextServices"]
       56 GETTABLEKS                       R7 R8 K15 ["Localization"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R10 R0 K2 ["UI"]
       63 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       65 GETTABLEKS                       R8 R9 K17 ["useDialogWidget"]
       67 CALL                             R7 1 1
       68 LOADK                            R10 K18 ["MinimumDialogSize"]
       69 NAMECALL                         R8 R5 K19 ["GetAttribute"]
       71 CALL                             R8 2 1
       72 DUPCLOSURE                       R9 K20 [PROTO_2]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R10 K21 [PROTO_3]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 RETURN                           R10 1
