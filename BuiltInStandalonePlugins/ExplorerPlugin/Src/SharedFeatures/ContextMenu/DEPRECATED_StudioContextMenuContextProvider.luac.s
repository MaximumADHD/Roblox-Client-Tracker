PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 0
        5 ADDK                             R8 R8 K0 [1]
        6 SETUPVAL                         R8 0
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 GETUPVAL                         R13 1
       13 GETTABLEKS                       R14 R12 K1 ["key"]
       15 DUPTABLE                         R15 K6 [{"item", "categoryIndex", "submenusInside", "index"}]
       16 SETTABLEKS                       R12 R15 K2 ["item"]
       18 SETTABLEKS                       R7 R15 K3 ["categoryIndex"]
       20 SETTABLEKS                       R1 R15 K4 ["submenusInside"]
       22 GETUPVAL                         R17 0
       23 ADDK                             R17 R17 K0 [1]
       24 SETUPVAL                         R17 0
       25 GETUPVAL                         R16 0
       26 SETTABLEKS                       R16 R15 K5 ["index"]
       28 SETTABLE                         R15 R13 R14
       29 GETTABLEKS                       R14 R12 K7 ["source"]
       31 GETTABLEKS                       R13 R14 K8 ["type"]
       33 JUMPIFNOTEQKS                    R13 K9 ["submenu"] ; [+20]
       35 GETIMPORT                        R13 K12 [table.clone]
       37 MOVE                             R14 R1
       38 CALL                             R13 1 1
       39 GETTABLEKS                       R16 R12 K1 ["key"]
       41 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       43 MOVE                             R15 R13
       44 GETIMPORT                        R14 K14 [table.insert]
       46 CALL                             R14 2 0
       47 GETUPVAL                         R14 2
       48 GETTABLEKS                       R16 R12 K7 ["source"]
       50 GETTABLEKS                       R15 R16 K15 ["submenuCategories"]
       52 MOVE                             R16 R13
       53 CALL                             R14 2 0
       54 FORGLOOP                         R8 2 ; [-43]
       56 FORGLOOP                         R2 2 ; [-53]
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETUPVAL                         R9 1
        6 GETTABLE                         R8 R9 R7
        7 GETTABLEKS                       R10 R8 K0 ["categoryIndex"]
        9 GETTABLE                         R9 R2 R10
       10 JUMPIFNOTEQKNIL                  R9 ; [+6]
       12 NEWTABLE                         R9 0 0
       14 GETTABLEKS                       R10 R8 K0 ["categoryIndex"]
       16 SETTABLE                         R9 R2 R10
       17 JUMPIFNOTEQKNIL                  R9 ; [+2]
       19 LOADB                            R11 0 +1
       20 LOADB                            R11 1
       21 FASTCALL2K                       ASSERT R11 K1 ; [+4]
       23 LOADK                            R12 K1 ["Luau"]
       24 GETIMPORT                        R10 K3 [assert]
       26 CALL                             R10 2 0
       27 GETTABLEKS                       R11 R8 K4 ["index"]
       29 GETTABLE                         R10 R9 R11
       30 JUMPIFNOTEQKNIL                  R10 ; [+15]
       32 DUPTABLE                         R11 K8 [{"key", "type", "items"}]
       33 SETTABLEKS                       R7 R11 K5 ["key"]
       35 LOADK                            R12 K9 ["submenu"]
       36 SETTABLEKS                       R12 R11 K6 ["type"]
       38 NEWTABLE                         R12 0 0
       40 SETTABLEKS                       R12 R11 K7 ["items"]
       42 MOVE                             R10 R11
       43 GETTABLEKS                       R11 R8 K4 ["index"]
       45 SETTABLE                         R10 R9 R11
       46 JUMPIFNOTEQKNIL                  R10 ; [+2]
       48 LOADB                            R12 0 +1
       49 LOADB                            R12 1
       50 FASTCALL2K                       ASSERT R12 K1 ; [+4]
       52 LOADK                            R13 K1 ["Luau"]
       53 GETIMPORT                        R11 K3 [assert]
       55 CALL                             R11 2 0
       56 GETTABLEKS                       R13 R10 K6 ["type"]
       58 JUMPIFEQKS                       R13 K9 ["submenu"] ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 FASTCALL2K                       ASSERT R12 K10 ; [+4]
       64 LOADK                            R13 K10 ["Found submenu is not a submenu"]
       65 GETIMPORT                        R11 K3 [assert]
       67 CALL                             R11 2 0
       68 GETTABLEKS                       R2 R10 K7 ["items"]
       70 FORGLOOP                         R3 2 ; [-66]
       72 GETTABLE                         R3 R2 R1
       73 JUMPIFNOTEQKNIL                  R3 ; [+5]
       75 NEWTABLE                         R4 0 0
       77 SETTABLE                         R4 R2 R1
       78 RETURN                           R4 1
       79 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETUPVAL                         R10 0
       10 GETTABLE                         R9 R10 R7
       11 JUMPIFNOTEQKNIL                  R9 ; [+10]
       13 GETIMPORT                        R10 K1 [error]
       15 LOADK                            R12 K2 ["Couldn't find action that Studio gave: %*"]
       16 MOVE                             R14 R7
       17 NAMECALL                         R12 R12 K3 ["format"]
       19 CALL                             R12 2 1
       20 MOVE                             R11 R12
       21 CALL                             R10 1 0
       22 MOVE                             R10 R3
       23 GETTABLEKS                       R11 R9 K4 ["submenusInside"]
       25 GETTABLEKS                       R12 R9 K5 ["categoryIndex"]
       27 CALL                             R10 2 1
       28 GETTABLEKS                       R13 R9 K6 ["item"]
       30 GETTABLEKS                       R12 R13 K7 ["source"]
       32 GETTABLEKS                       R11 R12 K8 ["type"]
       34 JUMPIFNOTEQKS                    R11 K9 ["studioAction"] ; [+25]
       36 GETTABLEKS                       R11 R1 K10 ["getStudioActionState"]
       38 GETTABLEKS                       R14 R9 K6 ["item"]
       40 GETTABLEKS                       R13 R14 K7 ["source"]
       42 GETTABLEKS                       R12 R13 K11 ["uri"]
       44 CALL                             R11 1 1
       45 GETTABLEKS                       R12 R9 K12 ["index"]
       47 DUPTABLE                         R13 K14 [{"type", "action"}]
       48 LOADK                            R14 K13 ["action"]
       49 SETTABLEKS                       R14 R13 K8 ["type"]
       51 DUPTABLE                         R14 K17 [{"key", "state"}]
       52 SETTABLEKS                       R7 R14 K15 ["key"]
       54 SETTABLEKS                       R11 R14 K16 ["state"]
       56 SETTABLEKS                       R14 R13 K13 ["action"]
       58 SETTABLE                         R13 R10 R12
       59 JUMP                             ; [+26]
       60 GETTABLEKS                       R13 R9 K6 ["item"]
       62 GETTABLEKS                       R12 R13 K7 ["source"]
       64 GETTABLEKS                       R11 R12 K8 ["type"]
       66 JUMPIFNOTEQKS                    R11 K18 ["submenu"] ; [+11]
       68 GETIMPORT                        R11 K1 [error]
       70 LOADK                            R13 K19 ["Submenu is being sent as something that is enabled, but this should just be real actions: %*"]
       71 MOVE                             R15 R7
       72 NAMECALL                         R13 R13 K3 ["format"]
       74 CALL                             R13 2 1
       75 MOVE                             R12 R13
       76 CALL                             R11 1 0
       77 JUMP                             ; [+8]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R14 R9 K6 ["item"]
       81 GETTABLEKS                       R13 R14 K7 ["source"]
       83 GETTABLEKS                       R12 R13 K8 ["type"]
       85 CALL                             R11 1 0
       86 FORGLOOP                         R4 1 ; [-78]
       88 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["Explorer_"]
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R5 R5 K1 ["GenerateGUID"]
        5 CALL                             R5 1 1
        6 CONCAT                           R3 R4 R5
        7 NAMECALL                         R1 R1 K2 ["CreatePluginMenu"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 LOADB                            R3 0
       14 MOVE                             R4 R2
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R12 2
       19 MOVE                             R13 R8
       20 CALL                             R12 1 1
       21 MOVE                             R9 R12
       22 LOADNIL                          R10
       23 LOADNIL                          R11
       24 FORGPREP                         R9
       25 GETTABLEKS                       R14 R13 K3 ["type"]
       27 JUMPIFNOTEQKS                    R14 K4 ["submenu"] ; [+22]
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R15 R13 K5 ["items"]
       32 CALL                             R14 1 1
       33 JUMPIFEQKNIL                     R14 ; [+94]
       35 GETUPVAL                         R15 4
       36 LOADK                            R17 K6 ["ContextMenu"]
       37 GETTABLEKS                       R18 R13 K7 ["key"]
       39 NAMECALL                         R15 R15 K8 ["getText"]
       41 CALL                             R15 3 1
       42 SETTABLEKS                       R15 R14 K9 ["Title"]
       44 MOVE                             R17 R14
       45 NAMECALL                         R15 R1 K10 ["AddMenu"]
       47 CALL                             R15 2 0
       48 LOADB                            R3 1
       49 JUMP                             ; [+78]
       50 GETTABLEKS                       R14 R13 K3 ["type"]
       52 JUMPIFNOTEQKS                    R14 K11 ["action"] ; [+75]
       54 GETTABLEKS                       R16 R13 K11 ["action"]
       56 GETTABLEKS                       R15 R16 K12 ["state"]
       58 GETTABLEKS                       R14 R15 K13 ["Enabled"]
       60 JUMPIFNOT                        R14 ; [+67]
       61 GETTABLEKS                       R16 R13 K11 ["action"]
       63 GETTABLEKS                       R15 R16 K12 ["state"]
       65 GETTABLEKS                       R14 R15 K14 ["Visible"]
       67 JUMPIFNOT                        R14 ; [+60]
       68 LOADB                            R3 1
       69 GETUPVAL                         R15 5
       70 GETTABLEKS                       R17 R13 K11 ["action"]
       72 GETTABLEKS                       R16 R17 K7 ["key"]
       74 GETTABLE                         R14 R15 R16
       75 JUMPIFNOTEQKNIL                  R14 ; [+2]
       77 LOADB                            R16 0 +1
       78 LOADB                            R16 1
       79 FASTCALL2K                       ASSERT R16 K15 ; [+4]
       81 LOADK                            R17 K15 ["Couldn't find plugin action"]
       82 GETIMPORT                        R15 K17 [assert]
       84 CALL                             R15 2 0
       85 GETTABLEKS                       R17 R13 K11 ["action"]
       87 GETTABLEKS                       R16 R17 K12 ["state"]
       89 GETTABLEKS                       R15 R16 K18 ["Text"]
       91 SETTABLEKS                       R15 R14 K18 ["Text"]
       93 GETUPVAL                         R15 6
       94 JUMPIFNOT                        R15 ; [+6]
       95 GETTABLEKS                       R16 R14 K18 ["Text"]
       97 LOADK                            R17 K19 ["     "]
       98 CONCAT                           R15 R16 R17
       99 SETTABLEKS                       R15 R14 K18 ["Text"]
      101 GETTABLEKS                       R18 R13 K11 ["action"]
      103 GETTABLEKS                       R17 R18 K12 ["state"]
      105 GETTABLEKS                       R16 R17 K20 ["Shortcuts"]
      107 GETTABLEN                        R15 R16 1
      108 JUMPIFNOTEQKNIL                  R15 ; [+5]
      110 LOADK                            R16 K21 [""]
      111 SETTABLEKS                       R16 R14 K22 ["DefaultShortcut"]
      113 JUMP                             ; [+10]
      114 SETTABLEKS                       R15 R14 K22 ["DefaultShortcut"]
      116 GETUPVAL                         R16 6
      117 JUMPIF                           R16 ; [+6]
      118 GETTABLEKS                       R17 R14 K18 ["Text"]
      120 LOADK                            R18 K19 ["     "]
      121 CONCAT                           R16 R17 R18
      122 SETTABLEKS                       R16 R14 K18 ["Text"]
      124 MOVE                             R18 R14
      125 NAMECALL                         R16 R1 K23 ["AddAction"]
      127 CALL                             R16 2 0
      128 FORGLOOP                         R9 2 ; [-104]
      130 LENGTH                           R9 R2
      131 JUMPIFEQ                         R7 R9 ; [+5]
      133 JUMPIFNOT                        R3 ; [+3]
      134 NAMECALL                         R9 R1 K24 ["AddSeparator"]
      136 CALL                             R9 1 0
      137 FORGLOOP                         R4 2 ; [-120]
      139 JUMPIFNOT                        R3 ; [+8]
      140 GETUPVAL                         R5 7
      141 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
      143 MOVE                             R6 R1
      144 GETIMPORT                        R4 K27 [table.insert]
      146 CALL                             R4 2 0
      147 RETURN                           R1 1
      148 LOADNIL                          R4
      149 RETURN                           R4 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
       11 MOVE                             R2 R1
       12 GETUPVAL                         R3 6
       13 GETUPVAL                         R4 7
       14 GETUPVAL                         R5 8
       15 CALL                             R3 2 1
       16 CALL                             R2 1 1
       17 JUMPIFEQKNIL                     R2 ; [+4]
       19 NAMECALL                         R3 R2 K0 ["ShowAsync"]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 4
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 JUMPIFNOTEQKNIL                  R7 ; [+2]
       28 LOADB                            R9 0 +1
       29 LOADB                            R9 1
       30 FASTCALL2K                       ASSERT R9 K1 ; [+4]
       32 LOADK                            R10 K1 ["Luau"]
       33 GETIMPORT                        R8 K3 [assert]
       35 CALL                             R8 2 0
       36 LOADK                            R8 K4 [""]
       37 SETTABLEKS                       R8 R7 K5 ["DefaultShortcut"]
       39 FORGLOOP                         R3 2 ; [-14]
       41 MOVE                             R3 R0
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 NAMECALL                         R8 R7 K6 ["Destroy"]
       47 CALL                             R8 1 0
       48 FORGLOOP                         R3 2 ; [-4]
       50 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R2 R2 K2 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K4 ["useState"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K5 ["useEffect"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R3
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K4 ["useState"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R6 R7 K6 ["Signal"]
       39 GETTABLEKS                       R5 R6 K7 ["new"]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 5
       43 MOVE                             R6 R4
       44 CALL                             R5 1 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R8 0 2
       59 MOVE                             R9 R2
       60 MOVE                             R10 R5
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R9 R10 K9 ["Flags"]
       67 GETTABLEKS                       R8 R9 K10 ["getFFlagExplorerStreaming"]
       69 CALL                             R8 0 1
       70 JUMPIFNOT                        R8 ; [+3]
       71 GETUPVAL                         R7 10
       72 CALL                             R7 0 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R7
       75 GETUPVAL                         R8 11
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R11 R12 K11 ["Components"]
       79 GETTABLEKS                       R10 R11 K12 ["Contexts"]
       81 GETTABLEKS                       R9 R10 K13 ["ContextMenuContextProvider"]
       83 DUPTABLE                         R10 K18 [{"showContextMenu", "actionTriggeredSignal", "showStreamingContextMenu", "streamingActionTriggeredSignal"}]
       84 SETTABLEKS                       R6 R10 K14 ["showContextMenu"]
       86 SETTABLEKS                       R4 R10 K15 ["actionTriggeredSignal"]
       88 MOVE                             R11 R7
       89 JUMPIFNOT                        R11 ; [+2]
       90 GETTABLEKS                       R11 R7 K16 ["showStreamingContextMenu"]
       92 SETTABLEKS                       R11 R10 K16 ["showStreamingContextMenu"]
       94 MOVE                             R11 R7
       95 JUMPIFNOT                        R11 ; [+2]
       96 GETTABLEKS                       R11 R7 K17 ["streamingActionTriggeredSignal"]
       98 SETTABLEKS                       R11 R10 K17 ["streamingActionTriggeredSignal"]
      100 GETTABLEKS                       R11 R0 K19 ["children"]
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1

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
       37 GETTABLEKS                       R8 R1 K10 ["Src"]
       39 GETTABLEKS                       R7 R8 K11 ["SharedFeatures"]
       41 GETTABLEKS                       R6 R7 K12 ["ContextMenu"]
       43 GETTABLEKS                       R5 R6 K15 ["DEPRECATED_createContextMenuActionWatcher"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R9 R1 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K11 ["SharedFeatures"]
       52 GETTABLEKS                       R7 R8 K12 ["ContextMenu"]
       54 GETTABLEKS                       R6 R7 K16 ["DEPRECATED_usePluginActions"]
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K9 [require]
       59 GETTABLEKS                       R8 R1 K17 ["Packages"]
       61 GETTABLEKS                       R7 R8 K18 ["Explorer"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K9 [require]
       66 GETTABLEKS                       R9 R1 K17 ["Packages"]
       68 GETTABLEKS                       R8 R9 K19 ["Framework"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K9 [require]
       73 GETTABLEKS                       R10 R1 K17 ["Packages"]
       75 GETTABLEKS                       R9 R10 K20 ["React"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R12 R1 K10 ["Src"]
       82 GETTABLEKS                       R11 R12 K21 ["Util"]
       84 GETTABLEKS                       R10 R11 K22 ["cleanHoles"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R13 R1 K10 ["Src"]
       91 GETTABLEKS                       R12 R13 K21 ["Util"]
       93 GETTABLEKS                       R11 R12 K23 ["exhaustiveMatch"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K9 [require]
       98 GETTABLEKS                       R15 R1 K10 ["Src"]
      100 GETTABLEKS                       R14 R15 K11 ["SharedFeatures"]
      102 GETTABLEKS                       R13 R14 K12 ["ContextMenu"]
      104 GETTABLEKS                       R12 R13 K24 ["useStreamingContextMenu"]
      106 CALL                             R11 1 1
      107 GETIMPORT                        R12 K1 [game]
      109 LOADK                            R14 K25 ["ExplorerContextMenuPadding"]
      110 LOADB                            R15 0
      111 NAMECALL                         R12 R12 K26 ["DefineFastFlag"]
      113 CALL                             R12 3 1
      114 GETTABLEKS                       R14 R7 K27 ["ContextServices"]
      116 GETTABLEKS                       R13 R14 K28 ["Localization"]
      118 GETTABLEKS                       R14 R8 K29 ["createElement"]
      120 NEWTABLE                         R15 0 0
      122 LOADN                            R16 0
      123 NEWCLOSURE                       R17 P0
      124 CAPTURE                          REF R16
      125 NEWCLOSURE                       R18 P1
      126 CAPTURE                          REF R16
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R18
      129 MOVE                             R19 R18
      130 MOVE                             R20 R2
      131 NEWTABLE                         R21 0 0
      133 CALL                             R19 2 0
      134 DUPCLOSURE                       R19 K30 [PROTO_3]
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R10
      137 DUPCLOSURE                       R20 K31 [PROTO_10]
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R14
      150 CLOSEUPVALS                      R16
      151 RETURN                           R20 1
