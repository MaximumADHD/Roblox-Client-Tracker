PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 CALL                             R7 0 1
        6 MOVE                             R8 R6
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETUPVAL                         R13 1
       11 GETTABLEKS                       R14 R12 K0 ["key"]
       13 DUPTABLE                         R15 K5 [{"item", "categoryIndex", "submenusInside", "index"}]
       14 SETTABLEKS                       R12 R15 K1 ["item"]
       16 SETTABLEKS                       R7 R15 K2 ["categoryIndex"]
       18 SETTABLEKS                       R1 R15 K3 ["submenusInside"]
       20 GETUPVAL                         R16 0
       21 CALL                             R16 0 1
       22 SETTABLEKS                       R16 R15 K4 ["index"]
       24 SETTABLE                         R15 R13 R14
       25 GETTABLEKS                       R14 R12 K6 ["source"]
       27 GETTABLEKS                       R13 R14 K7 ["type"]
       29 JUMPIFNOTEQKS                    R13 K8 ["submenu"] ; [+20]
       31 GETIMPORT                        R13 K11 [table.clone]
       33 MOVE                             R14 R1
       34 CALL                             R13 1 1
       35 GETTABLEKS                       R16 R12 K0 ["key"]
       37 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       39 MOVE                             R15 R13
       40 GETIMPORT                        R14 K13 [table.insert]
       42 CALL                             R14 2 0
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R16 R12 K6 ["source"]
       46 GETTABLEKS                       R15 R16 K14 ["submenuCategories"]
       48 MOVE                             R16 R13
       49 CALL                             R14 2 0
       50 FORGLOOP                         R8 2 ; [-41]
       52 FORGLOOP                         R2 2 ; [-49]
       54 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["Visible"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADB                            R0 1
        9 JUMP                             ; [+2]
       10 FORGLOOP                         R1 2 ; [-6]
       12 GETUPVAL                         R1 1
       13 SETTABLEKS                       R0 R1 K0 ["Visible"]
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Visible"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["Visible"]
        8 RETURN                           R0 0
        9 LOADB                            R0 0
       10 GETUPVAL                         R1 2
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K0 ["Visible"]
       16 JUMPIFNOT                        R6 ; [+2]
       17 LOADB                            R0 1
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R1 2 ; [-6]
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R0 R1 K0 ["Visible"]
       24 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 LOADB                            R3 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K0 ["Visible"]
       10 JUMPIFNOT                        R9 ; [+2]
       11 LOADB                            R3 1
       12 JUMP                             ; [+2]
       13 FORGLOOP                         R4 2 ; [-6]
       15 SETTABLEKS                       R3 R0 K0 ["Visible"]
       17 MOVE                             R3 R1
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 LOADK                            R10 K0 ["Visible"]
       22 NAMECALL                         R8 R7 K1 ["GetPropertyChangedSignal"]
       24 CALL                             R8 2 1
       25 NEWCLOSURE                       R10 P1
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R8 R8 K2 ["Connect"]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-12]
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Text"]
        3 LOADK                            R4 K1 ["     "]
        4 CONCAT                           R2 R3 R4
        5 SETTABLEKS                       R2 R1 K0 ["Text"]
        7 GETTABLEKS                       R2 R0 K2 ["Shortcuts"]
        9 GETTABLEN                        R1 R2 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+6]
       12 GETUPVAL                         R2 0
       13 LOADK                            R3 K3 [""]
       14 SETTABLEKS                       R3 R2 K4 ["DefaultShortcut"]
       16 JUMP                             ; [+6]
       17 GETUPVAL                         R2 0
       18 MOVE                             R4 R1
       19 LOADK                            R5 K1 ["     "]
       20 CONCAT                           R3 R4 R5
       21 SETTABLEKS                       R3 R2 K4 ["DefaultShortcut"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R3 R0 K5 ["Enabled"]
       26 SETTABLEKS                       R3 R2 K6 ["Visible"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R2 R2 K0 ["BindToChangedAsync"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 3
        7 NAMECALL                         R2 R2 K1 ["Connect"]
        9 CALL                             R2 2 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R0 K4 [table.insert]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R3 R0 K1 ["Text"]
       13 LOADK                            R4 K2 ["     "]
       14 CONCAT                           R2 R3 R4
       15 SETTABLEKS                       R2 R1 K1 ["Text"]
       17 GETTABLEKS                       R2 R0 K3 ["Shortcuts"]
       19 GETTABLEN                        R1 R2 1
       20 JUMPIFNOTEQKNIL                  R1 ; [+6]
       22 GETUPVAL                         R2 2
       23 LOADK                            R3 K4 [""]
       24 SETTABLEKS                       R3 R2 K5 ["DefaultShortcut"]
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R2 2
       28 MOVE                             R4 R1
       29 LOADK                            R5 K2 ["     "]
       30 CONCAT                           R3 R4 R5
       31 SETTABLEKS                       R3 R2 K5 ["DefaultShortcut"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R3 R0 K6 ["Enabled"]
       36 SETTABLEKS                       R3 R2 K7 ["Visible"]
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETIMPORT                        R5 K2 [task.cancel]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 ; [-5]
       10 GETUPVAL                         R0 1
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 NAMECALL                         R5 R4 K3 ["Disconnect"]
       16 CALL                             R5 1 0
       17 FORGLOOP                         R0 2 ; [-4]
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NEWTABLE                         R1 0 0
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R4 1
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 JUMPIFNOTEQKNIL                  R8 ; [+2]
       17 LOADB                            R10 0 +1
       18 LOADB                            R10 1
       19 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       21 LOADK                            R11 K2 ["Luau"]
       22 GETIMPORT                        R9 K4 [assert]
       24 CALL                             R9 2 0
       25 GETTABLEKS                       R11 R8 K5 ["item"]
       27 GETTABLEKS                       R10 R11 K6 ["source"]
       29 GETTABLEKS                       R9 R10 K7 ["type"]
       31 JUMPIFNOTEQKS                    R9 K8 ["studioAction"] ; [+61]
       33 GETUPVAL                         R9 0
       34 LOADK                            R12 K9 ["Explorer_%*_%*"]
       35 MOVE                             R14 R7
       36 GETUPVAL                         R15 2
       37 NAMECALL                         R15 R15 K10 ["GenerateGUID"]
       39 CALL                             R15 1 1
       40 NAMECALL                         R12 R12 K11 ["format"]
       42 CALL                             R12 3 1
       43 MOVE                             R11 R12
       44 LOADK                            R12 K12 ["TBD: Name"]
       45 LOADK                            R13 K13 [""]
       46 LOADNIL                          R14
       47 LOADB                            R15 0
       48 NAMECALL                         R9 R9 K14 ["CreatePluginAction"]
       50 CALL                             R9 6 1
       51 GETTABLEKS                       R10 R9 K15 ["Triggered"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R7
       56 NAMECALL                         R10 R10 K16 ["Connect"]
       58 CALL                             R10 2 0
       59 SETTABLE                         R9 R2 R7
       60 GETTABLEKS                       R12 R8 K5 ["item"]
       62 GETTABLEKS                       R11 R12 K6 ["source"]
       64 GETTABLEKS                       R10 R11 K17 ["uri"]
       66 NEWCLOSURE                       R11 P1
       67 CAPTURE                          VAL R9
       68 MOVE                             R13 R3
       69 GETIMPORT                        R14 K20 [task.spawn]
       71 NEWCLOSURE                       R15 P2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R11
       76 CALL                             R14 1 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R12 K23 [table.insert]
       80 CALL                             R12 -1 0
       81 MOVE                             R13 R3
       82 GETIMPORT                        R14 K20 [task.spawn]
       84 NEWCLOSURE                       R15 P3
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CALL                             R14 1 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R12 K23 [table.insert]
       92 CALL                             R12 -1 0
       93 FORGLOOP                         R4 2 ; [-79]
       95 GETUPVAL                         R4 4
       96 MOVE                             R5 R2
       97 CALL                             R4 1 0
       98 NEWCLOSURE                       R4 P4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["useState"]
       14 NEWTABLE                         R3 0 0
       16 CALL                             R2 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["useEffect"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 2
       28 MOVE                             R7 R1
       29 MOVE                             R8 R0
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 0
       33 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R4 R1 K0 ["index"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["submenusInside"]
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        6 GETUPVAL                         R1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 2
        9 LENGTH                           R4 R0
       10 GETTABLE                         R3 R0 R4
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFEQKNIL                     R1 ; [+2]
       14 RETURN                           R1 1
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R9 2
       21 GETTABLE                         R8 R9 R7
       22 JUMPIFNOTEQKNIL                  R8 ; [+33]
       24 GETUPVAL                         R9 3
       25 GETUPVAL                         R12 4
       26 LOADK                            R14 K2 ["_%*"]
       27 MOVE                             R16 R7
       28 NAMECALL                         R14 R14 K3 ["format"]
       30 CALL                             R14 2 1
       31 MOVE                             R13 R14
       32 CONCAT                           R11 R12 R13
       33 GETUPVAL                         R12 5
       34 LOADK                            R14 K4 ["ContextMenu"]
       35 MOVE                             R15 R7
       36 NAMECALL                         R12 R12 K5 ["getText"]
       38 CALL                             R12 3 -1
       39 NAMECALL                         R9 R9 K6 ["CreatePluginMenu"]
       41 CALL                             R9 -1 1
       42 MOVE                             R12 R9
       43 GETUPVAL                         R13 5
       44 LOADK                            R15 K4 ["ContextMenu"]
       45 MOVE                             R16 R7
       46 NAMECALL                         R13 R13 K5 ["getText"]
       48 CALL                             R13 3 -1
       49 NAMECALL                         R10 R2 K7 ["AddMenu"]
       51 CALL                             R10 -1 0
       52 MOVE                             R2 R9
       53 GETUPVAL                         R10 2
       54 SETTABLE                         R9 R10 R7
       55 JUMP                             ; [+1]
       56 MOVE                             R2 R8
       57 FORGLOOP                         R3 2 ; [-38]
       59 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R4
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 FASTCALL2K                       ASSERT R8 K0 ; [+4]
       14 LOADK                            R9 K0 ["Couldn't find categorized item for action"]
       15 GETIMPORT                        R7 K2 [assert]
       17 CALL                             R7 2 0
       18 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       20 MOVE                             R8 R0
       21 MOVE                             R9 R6
       22 GETIMPORT                        R7 K5 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R1 1 ; [-20]
       27 GETIMPORT                        R1 K7 [table.sort]
       29 MOVE                             R2 R0
       30 DUPCLOSURE                       R3 K8 [PROTO_11]
       31 CALL                             R1 2 0
       32 NEWTABLE                         R1 0 0
       34 NEWTABLE                         R2 0 0
       36 LOADK                            R4 K9 ["Explorer_%*"]
       37 GETUPVAL                         R6 2
       38 NAMECALL                         R6 R6 K10 ["GenerateGUID"]
       40 CALL                             R6 1 1
       41 NAMECALL                         R4 R4 K11 ["format"]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 GETUPVAL                         R4 3
       46 MOVE                             R6 R3
       47 NAMECALL                         R4 R4 K12 ["CreatePluginMenu"]
       49 CALL                             R4 2 1
       50 MOVE                             R5 R0
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 GETUPVAL                         R11 4
       55 GETTABLEKS                       R13 R9 K13 ["item"]
       57 GETTABLEKS                       R12 R13 K14 ["key"]
       59 GETTABLE                         R10 R11 R12
       60 JUMPIFNOTEQKNIL                  R10 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 FASTCALL2K                       ASSERT R12 K15 ; [+4]
       66 LOADK                            R13 K15 ["Couldn't find PluginAction"]
       67 GETIMPORT                        R11 K2 [assert]
       69 CALL                             R11 2 0
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U5
       77 MOVE                             R12 R11
       78 CALL                             R12 0 1
       79 SUBK                             R14 R8 K16 [1]
       80 GETTABLE                         R13 R0 R14
       81 JUMPIFEQKNIL                     R13 ; [+10]
       83 GETTABLEKS                       R14 R13 K17 ["categoryIndex"]
       85 GETTABLEKS                       R15 R9 K17 ["categoryIndex"]
       87 JUMPIFEQ                         R14 R15 ; [+4]
       89 NAMECALL                         R14 R12 K18 ["AddSeparator"]
       91 CALL                             R14 1 0
       92 MOVE                             R16 R10
       93 NAMECALL                         R14 R12 K19 ["AddAction"]
       95 CALL                             R14 2 0
       96 JUMPIFEQ                         R12 R4 ; [+18]
       98 GETTABLE                         R14 R2 R12
       99 JUMPIFNOTEQKNIL                  R14 ; [+8]
      101 NEWTABLE                         R15 0 1
      103 MOVE                             R16 R10
      104 SETLIST                          R15 R16 1 [1]
      106 SETTABLE                         R15 R2 R12
      107 JUMP                             ; [+7]
      108 FASTCALL2                        TABLE_INSERT R14 R10 ; [+5]
      110 MOVE                             R16 R14
      111 MOVE                             R17 R10
      112 GETIMPORT                        R15 K5 [table.insert]
      114 CALL                             R15 2 0
      115 FORGLOOP                         R5 2 ; [-62]
      117 MOVE                             R5 R2
      118 LOADNIL                          R6
      119 LOADNIL                          R7
      120 FORGPREP                         R5
      121 JUMPIFNOTEQKNIL                  R9 ; [+2]
      123 LOADB                            R11 0 +1
      124 LOADB                            R11 1
      125 FASTCALL2K                       ASSERT R11 K20 ; [+4]
      127 LOADK                            R12 K20 ["Luau"]
      128 GETIMPORT                        R10 K2 [assert]
      130 CALL                             R10 2 0
      131 GETUPVAL                         R10 6
      132 MOVE                             R11 R8
      133 MOVE                             R12 R9
      134 CALL                             R10 2 0
      135 FORGLOOP                         R5 2 ; [-15]
      137 NAMECALL                         R5 R4 K21 ["ShowAsync"]
      139 CALL                             R5 1 0
      140 NAMECALL                         R5 R4 K22 ["Destroy"]
      142 CALL                             R5 1 0
      143 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["ContextServices"]
       14 GETTABLEKS                       R2 R3 K4 ["Localization"]
       16 NAMECALL                         R2 R2 K2 ["use"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K5 ["useEventCallback"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U5
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R1 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["SharedFeatures"]
       19 GETTABLEKS                       R4 R5 K12 ["ContextMenu"]
       21 GETTABLEKS                       R3 R4 K13 ["ContextMenuActionList"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R7 R1 K10 ["Src"]
       28 GETTABLEKS                       R6 R7 K11 ["SharedFeatures"]
       30 GETTABLEKS                       R5 R6 K12 ["ContextMenu"]
       32 GETTABLEKS                       R4 R5 K14 ["ContextMenuTypes"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R6 R1 K15 ["Packages"]
       39 GETTABLEKS                       R5 R6 K16 ["Explorer"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R7 R1 K15 ["Packages"]
       46 GETTABLEKS                       R6 R7 K17 ["Framework"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R8 R1 K15 ["Packages"]
       53 GETTABLEKS                       R7 R8 K18 ["React"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R9 R1 K15 ["Packages"]
       60 GETTABLEKS                       R8 R9 K19 ["ReactUtils"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 0 0
       65 GETTABLEKS                       R9 R7 K20 ["createNextOrder"]
       67 CALL                             R9 0 1
       68 DUPCLOSURE                       R10 K21 [PROTO_0]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 MOVE                             R11 R10
       73 MOVE                             R12 R2
       74 NEWTABLE                         R13 0 0
       76 CALL                             R11 2 0
       77 DUPCLOSURE                       R11 K22 [PROTO_3]
       78 DUPCLOSURE                       R12 K23 [PROTO_10]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R0
       83 DUPCLOSURE                       R13 K24 [PROTO_15]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R11
       90 RETURN                           R13 1
