PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DesignAssistRuntime"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R0 K2 ["IsDescendantOf"]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 FASTCALL2K                       STRING_SUB R2 K1 ; [+4]
        4 LOADK                            R3 K1 [-6]
        5 GETIMPORT                        R1 K4 [string.sub]
        7 CALL                             R1 2 1
        8 JUMPIFNOTEQKS                    R1 K5 [".story"] ; [+2]
       10 RETURN                           R0 1
       11 MOVE                             R1 R0
       12 GETTABLEKS                       R2 R0 K6 ["Parent"]
       14 JUMPIFNOT                        R2 ; [+9]
       15 LOADK                            R5 K7 ["ModuleScript"]
       16 NAMECALL                         R3 R2 K8 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 MOVE                             R1 R2
       21 GETTABLEKS                       R2 R2 K6 ["Parent"]
       23 JUMPBACK                         ; [-10]
       24 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 JUMPIFEQ                         R1 R0 ; [+8]
        6 GETTABLEKS                       R3 R1 K0 ["Name"]
        8 LOADK                            R4 K1 [" / "]
        9 GETTABLEKS                       R5 R0 K0 ["Name"]
       11 CONCAT                           R2 R3 R5
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K0 ["Name"]
       15 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["Folder"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K0 ["Folder"]
        5 NAMECALL                         R3 R1 K1 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R2 1
       11 LOADK                            R6 K2 ["DesignAssistStoryOrder"]
       12 NAMECALL                         R4 R0 K3 ["GetAttribute"]
       14 CALL                             R4 2 1
       15 LOADK                            R7 K2 ["DesignAssistStoryOrder"]
       16 NAMECALL                         R5 R1 K3 ["GetAttribute"]
       18 CALL                             R5 2 1
       19 FASTCALL1                        TYPE R4 ; [+3]
       20 MOVE                             R7 R4
       21 GETIMPORT                        R6 K5 [type]
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K6 ["number"] ; [+15]
       26 FASTCALL1                        TYPE R5 ; [+3]
       27 MOVE                             R7 R5
       28 GETIMPORT                        R6 K5 [type]
       30 CALL                             R6 1 1
       31 JUMPIFNOTEQKS                    R6 K6 ["number"] ; [+8]
       33 JUMPIFEQ                         R4 R5 ; [+6]
       35 JUMPIFLT                         R4 R5 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 RETURN                           R6 1
       40 FASTCALL1                        TYPE R4 ; [+3]
       41 MOVE                             R7 R4
       42 GETIMPORT                        R6 K5 [type]
       44 CALL                             R6 1 1
       45 JUMPIFNOTEQKS                    R6 K6 ["number"] ; [+10]
       47 FASTCALL1                        TYPE R5 ; [+3]
       48 MOVE                             R7 R5
       49 GETIMPORT                        R6 K5 [type]
       51 CALL                             R6 1 1
       52 JUMPIFEQKS                       R6 K6 ["number"] ; [+3]
       54 LOADB                            R6 1
       55 RETURN                           R6 1
       56 FASTCALL1                        TYPE R4 ; [+3]
       57 MOVE                             R7 R4
       58 GETIMPORT                        R6 K5 [type]
       60 CALL                             R6 1 1
       61 JUMPIFEQKS                       R6 K6 ["number"] ; [+10]
       63 FASTCALL1                        TYPE R5 ; [+3]
       64 MOVE                             R7 R5
       65 GETIMPORT                        R6 K5 [type]
       67 CALL                             R6 1 1
       68 JUMPIFNOTEQKS                    R6 K6 ["number"] ; [+3]
       70 LOADB                            R6 0
       71 RETURN                           R6 1
       72 GETIMPORT                        R6 K9 [string.lower]
       74 GETTABLEKS                       R7 R0 K10 ["Name"]
       76 CALL                             R6 1 1
       77 GETIMPORT                        R7 K9 [string.lower]
       79 GETTABLEKS                       R8 R1 K10 ["Name"]
       81 CALL                             R7 1 1
       82 JUMPIFNOTEQ                      R6 R7 ; [+12]
       84 NAMECALL                         R9 R0 K11 ["GetFullName"]
       86 CALL                             R9 1 1
       87 NAMECALL                         R10 R1 K11 ["GetFullName"]
       89 CALL                             R10 1 1
       90 JUMPIFLT                         R9 R10 ; [+2]
       92 LOADB                            R8 0 +1
       93 LOADB                            R8 1
       94 RETURN                           R8 1
       95 JUMPIFLT                         R6 R7 ; [+2]
       97 LOADB                            R8 0 +1
       98 LOADB                            R8 1
       99 RETURN                           R8 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_3]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetChildren"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R10 K1 ["Folder"]
        7 NAMECALL                         R8 R7 K2 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIF                           R8 ; [+19]
       11 LOADK                            R10 K3 ["ModuleScript"]
       12 NAMECALL                         R8 R7 K2 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+21]
       16 GETUPVAL                         R9 0
       17 LOADK                            R11 K4 ["DesignAssistRuntime"]
       18 NAMECALL                         R9 R9 K5 ["FindFirstChild"]
       20 CALL                             R9 2 1
       21 LOADB                            R8 0
       22 JUMPIFEQKNIL                     R9 ; [+6]
       24 MOVE                             R12 R9
       25 NAMECALL                         R10 R7 K6 ["IsDescendantOf"]
       27 CALL                             R10 2 1
       28 MOVE                             R8 R10
       29 JUMPIF                           R8 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R3 2 ; [-32]
       39 GETIMPORT                        R3 K11 [table.sort]
       41 MOVE                             R4 R2
       42 DUPCLOSURE                       R5 K12 [PROTO_3]
       43 CALL                             R3 2 0
       44 MOVE                             R3 R2
       45 LOADNIL                          R4
       46 LOADNIL                          R5
       47 FORGPREP                         R3
       48 LOADK                            R10 K1 ["Folder"]
       49 NAMECALL                         R8 R7 K2 ["IsA"]
       51 CALL                             R8 2 1
       52 JUMPIFNOT                        R8 ; [+23]
       53 GETUPVAL                         R9 1
       54 DUPTABLE                         R10 K23 [{["label"], ["instance"], ["storiesRoot"], ["moduleScript"] = , ["isSelected"] = False, ["depth"], ["isGroup"] = True}]
       55 GETTABLEKS                       R11 R7 K24 ["Name"]
       57 SETTABLEKS                       R11 R10 K13 ["label"]
       59 SETTABLEKS                       R7 R10 K14 ["instance"]
       61 GETUPVAL                         R11 2
       62 SETTABLEKS                       R11 R10 K15 ["storiesRoot"]
       64 SETTABLEKS                       R1 R10 K20 ["depth"]
       66 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       68 GETIMPORT                        R8 K9 [table.insert]
       70 CALL                             R8 2 0
       71 GETUPVAL                         R8 3
       72 MOVE                             R9 R7
       73 ADDK                             R10 R1 K25 [1]
       74 CALL                             R8 2 0
       75 JUMP                             ; [+32]
       76 LOADK                            R10 K3 ["ModuleScript"]
       77 NAMECALL                         R8 R7 K2 ["IsA"]
       79 CALL                             R8 2 1
       80 JUMPIFNOT                        R8 ; [+27]
       81 GETUPVAL                         R9 1
       82 DUPTABLE                         R10 K26 [{["label"], ["instance"], ["storiesRoot"], ["moduleScript"], ["isSelected"], ["depth"], ["isGroup"] = False}]
       83 GETTABLEKS                       R11 R7 K24 ["Name"]
       85 SETTABLEKS                       R11 R10 K13 ["label"]
       87 SETTABLEKS                       R7 R10 K14 ["instance"]
       89 GETUPVAL                         R11 2
       90 SETTABLEKS                       R11 R10 K15 ["storiesRoot"]
       92 SETTABLEKS                       R7 R10 K16 ["moduleScript"]
       94 GETUPVAL                         R12 4
       95 JUMPIFEQ                         R7 R12 ; [+2]
       97 LOADB                            R11 0 +1
       98 LOADB                            R11 1
       99 SETTABLEKS                       R11 R10 K18 ["isSelected"]
      101 SETTABLEKS                       R1 R10 K20 ["depth"]
      103 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      105 GETIMPORT                        R8 K9 [table.insert]
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-61]
      110 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 MOVE                             R4 R3
       13 MOVE                             R5 R0
       14 LOADN                            R6 0
       15 CALL                             R4 2 0
       16 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETTABLEKS                       R2 R1 K0 ["Parent"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R1 K0 ["Parent"]
        9 JUMPBACK                         ; [-9]
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETTABLEKS                       R2 R1 K1 ["Name"]
       13 JUMPIFEQKS                       R2 K2 ["DesignAssistStories"] ; [+7]
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K2 ["DesignAssistStories"]
       17 NAMECALL                         R2 R2 K3 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 1
       22 MOVE                             R3 R1
       23 MOVE                             R4 R0
       24 CALL                             R2 2 1
       25 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{[1], ["_getLiveModule"], ["_selection"], ["_connection"] = }]
        1 GETTABLEKS                       R3 R0 K6 ["canvas"]
        3 SETTABLEKS                       R3 R2 K0 ["_canvas"]
        5 GETTABLEKS                       R3 R0 K7 ["getLiveModule"]
        7 SETTABLEKS                       R3 R2 K1 ["_getLiveModule"]
        9 GETTABLEKS                       R3 R0 K8 ["selectionService"]
       11 JUMPIF                           R3 ; [+1]
       12 GETUPVAL                         R3 0
       13 SETTABLEKS                       R3 R2 K2 ["_selection"]
       15 GETUPVAL                         R3 1
       16 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       18 GETIMPORT                        R1 K10 [setmetatable]
       20 CALL                             R1 2 1
       21 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 NAMECALL                         R1 R1 K1 ["Get"]
        4 CALL                             R1 1 1
        5 GETTABLEN                        R2 R1 1
        6 JUMPIFNOT                        R2 ; [+22]
        7 LOADK                            R5 K2 ["ModuleScript"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+17]
       12 GETUPVAL                         R4 0
       13 LOADK                            R6 K4 ["DesignAssistRuntime"]
       14 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       16 CALL                             R4 2 1
       17 LOADB                            R3 0
       18 JUMPIFEQKNIL                     R4 ; [+6]
       20 MOVE                             R7 R4
       21 NAMECALL                         R5 R2 K6 ["IsDescendantOf"]
       23 CALL                             R5 2 1
       24 MOVE                             R3 R5
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 RETURN                           R2 1
       29 LOADNIL                          R3
       30 RETURN                           R3 1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+5]
        1 LOADK                            R4 K0 ["ModuleScript"]
        2 NAMECALL                         R2 R1 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 LOADK                            R5 K2 ["DesignAssistRuntime"]
        9 NAMECALL                         R3 R3 K3 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 LOADB                            R2 0
       13 JUMPIFEQKNIL                     R3 ; [+6]
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R1 K4 ["IsDescendantOf"]
       18 CALL                             R4 2 1
       19 MOVE                             R2 R4
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R0 K5 ["_selection"]
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R1
       27 SETLIST                          R4 R5 1 [1]
       29 NAMECALL                         R2 R2 K6 ["Set"]
       31 CALL                             R2 2 0
       32 NAMECALL                         R2 R0 K7 ["updateLiveModuleHeader"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_getLiveModule"]
        2 CALL                             R2 0 1
        3 JUMPIF                           R2 ; [+12]
        4 GETTABLEKS                       R3 R0 K1 ["_canvas"]
        6 JUMPIFNOT                        R3 ; [+7]
        7 GETTABLEKS                       R3 R0 K1 ["_canvas"]
        9 NEWTABLE                         R5 0 0
       11 NAMECALL                         R3 R3 K2 ["setStoryMenuItems"]
       13 CALL                             R3 2 0
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 NAMECALL                         R3 R0 K3 ["getSelectedModuleScript"]
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETUPVAL                         R4 0
       21 MOVE                             R5 R3
       22 CALL                             R4 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 NAMECALL                         R5 R2 K4 ["getModule"]
       27 CALL                             R5 1 1
       28 JUMPIFNOT                        R5 ; [+19]
       29 MOVE                             R7 R5
       30 GETUPVAL                         R8 1
       31 LOADK                            R10 K5 ["DesignAssistRuntime"]
       32 NAMECALL                         R8 R8 K6 ["FindFirstChild"]
       34 CALL                             R8 2 1
       35 LOADB                            R6 0
       36 JUMPIFEQKNIL                     R8 ; [+6]
       38 MOVE                             R11 R8
       39 NAMECALL                         R9 R7 K7 ["IsDescendantOf"]
       41 CALL                             R9 2 1
       42 MOVE                             R6 R9
       43 JUMPIFNOT                        R6 ; [+4]
       44 NAMECALL                         R6 R2 K8 ["unbind"]
       46 CALL                             R6 1 0
       47 LOADNIL                          R5
       48 JUMPIFNOT                        R4 ; [+20]
       49 JUMPIFEQ                         R4 R5 ; [+19]
       51 MOVE                             R8 R4
       52 MOVE                             R9 R1
       53 NAMECALL                         R6 R2 K9 ["bind"]
       55 CALL                             R6 3 2
       56 JUMPIFNOT                        R6 ; [+2]
       57 MOVE                             R5 R4
       58 JUMP                             ; [+16]
       59 GETIMPORT                        R8 K11 [warn]
       61 LOADK                            R9 K12 ["[DesignAssist] Story bind rejected:"]
       62 MOVE                             R10 R7
       63 CALL                             R8 2 0
       64 NAMECALL                         R8 R2 K4 ["getModule"]
       66 CALL                             R8 1 1
       67 MOVE                             R5 R8
       68 JUMP                             ; [+6]
       69 JUMPIF                           R4 ; [+5]
       70 JUMPIFNOT                        R5 ; [+4]
       71 NAMECALL                         R6 R2 K8 ["unbind"]
       73 CALL                             R6 1 0
       74 LOADNIL                          R5
       75 JUMPIF                           R3 ; [+2]
       76 LOADNIL                          R6
       77 JUMP                             ; [+12]
       78 JUMPIFNOT                        R4 ; [+9]
       79 JUMPIFEQ                         R4 R3 ; [+8]
       81 GETTABLEKS                       R7 R4 K13 ["Name"]
       83 LOADK                            R8 K14 [" / "]
       84 GETTABLEKS                       R9 R3 K13 ["Name"]
       86 CONCAT                           R6 R7 R9
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R6 R3 K13 ["Name"]
       90 GETTABLEKS                       R7 R0 K1 ["_canvas"]
       92 JUMPIFNOT                        R7 ; [+38]
       93 GETTABLEKS                       R7 R0 K1 ["_canvas"]
       95 MOVE                             R10 R4
       96 JUMPIFNOT                        R10 ; [+8]
       97 GETTABLEKS                       R11 R10 K15 ["Parent"]
       99 GETUPVAL                         R12 1
      100 JUMPIFEQ                         R11 R12 ; [+4]
      102 GETTABLEKS                       R10 R10 K15 ["Parent"]
      104 JUMPBACK                         ; [-9]
      105 JUMPIFNOT                        R10 ; [+4]
      106 GETTABLEKS                       R11 R10 K13 ["Name"]
      108 JUMPIFEQKS                       R11 K16 ["DesignAssistStories"] ; [+7]
      110 GETUPVAL                         R11 1
      111 LOADK                            R13 K16 ["DesignAssistStories"]
      112 NAMECALL                         R11 R11 K6 ["FindFirstChild"]
      114 CALL                             R11 2 1
      115 MOVE                             R10 R11
      116 GETUPVAL                         R11 2
      117 MOVE                             R12 R10
      118 MOVE                             R13 R4
      119 CALL                             R11 2 1
      120 MOVE                             R9 R11
      121 NAMECALL                         R7 R7 K2 ["setStoryMenuItems"]
      123 CALL                             R7 2 0
      124 JUMPIFNOT                        R6 ; [+6]
      125 GETTABLEKS                       R7 R0 K1 ["_canvas"]
      127 MOVE                             R9 R6
      128 NAMECALL                         R7 R7 K17 ["setStoryName"]
      130 CALL                             R7 2 0
      131 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLiveModuleHeader"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLiveModuleHeader"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_connection"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_selection"]
        6 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["Connect"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K0 ["_connection"]
       15 NAMECALL                         R1 R0 K4 ["updateLiveModuleHeader"]
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [task.defer]
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_connection"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K1 ["Disconnect"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K0 ["_connection"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 16 0
       15 SETTABLEKS                       R2 R2 K5 ["__index"]
       17 DUPCLOSURE                       R3 K6 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 DUPCLOSURE                       R4 K7 [PROTO_1]
       20 DUPCLOSURE                       R5 K8 [PROTO_2]
       21 DUPCLOSURE                       R6 K9 [PROTO_4]
       22 DUPCLOSURE                       R7 K10 [PROTO_6]
       23 CAPTURE                          VAL R0
       24 DUPCLOSURE                       R8 K11 [PROTO_7]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R7
       27 DUPCLOSURE                       R9 K12 [PROTO_8]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R9 R2 K13 ["new"]
       32 DUPCLOSURE                       R9 K14 [PROTO_9]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R9 R2 K15 ["getSelectedModuleScript"]
       36 DUPCLOSURE                       R9 K16 [PROTO_10]
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R9 R2 K17 ["selectModuleScript"]
       40 DUPCLOSURE                       R9 K18 [PROTO_11]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R9 R2 K19 ["updateLiveModuleHeader"]
       46 DUPCLOSURE                       R9 K20 [PROTO_14]
       47 SETTABLEKS                       R9 R2 K21 ["bindToSelectionService"]
       49 DUPCLOSURE                       R9 K22 [PROTO_15]
       50 SETTABLEKS                       R9 R2 K23 ["destroy"]
       52 SETTABLEKS                       R4 R2 K24 ["_getStoryModuleForSelection"]
       54 SETTABLEKS                       R5 R2 K25 ["_getSelectedModuleLabel"]
       56 SETTABLEKS                       R8 R2 K26 ["_getStoryMenuItems"]
       58 SETTABLEKS                       R7 R2 K27 ["_buildStoryMenuItems"]
       60 RETURN                           R2 1
