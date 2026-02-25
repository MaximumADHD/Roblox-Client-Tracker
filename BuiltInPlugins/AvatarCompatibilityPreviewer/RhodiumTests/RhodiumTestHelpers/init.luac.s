PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 LOADN                            R3 1
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K3 ["Size"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K4 ["act"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 GETIMPORT                        R1 K5 [task.defer]
        5 GETIMPORT                        R2 K7 [task.spawn]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K9 [coroutine.yield]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R2 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R2
        3 NAMECALL                         R3 R1 K0 ["Once"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["AutoSetupScreen"]
        8 GETTABLEKS                       R3 R4 K2 ["startAutoSetup"]
       10 CALL                             R3 0 0
       11 LOADN                            R3 0
       12 JUMPIF                           R2 ; [+22]
       13 ADDK                             R3 R3 K3 [1]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["act"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["deferYield"]
       20 CALL                             R4 1 0
       21 LOADN                            R4 20
       22 JUMPIFNOTLT                      R4 R3 ; [+11]
       24 JUMPIF                           R2 ; [+9]
       25 GETIMPORT                        R4 K7 [error]
       27 LOADK                            R6 K8 ["Auto setup did not complete after %* tries"]
       28 MOVE                             R8 R3
       29 NAMECALL                         R6 R6 K9 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 CALL                             R4 1 0
       34 JUMPBACK                         ; [-23]
       35 CLOSEUPVALS                      R2
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["testAssets"]
        3 GETTABLEKS                       R1 R2 K1 ["Lizard"]
        5 NAMECALL                         R1 R1 K2 ["Clone"]
        7 CALL                             R1 1 1
        8 JUMPIFEQKNIL                     R0 ; [+3]
       10 SETTABLEKS                       R0 R1 K3 ["Name"]
       12 GETUPVAL                         R2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R2 R1 K4 ["Parent"]
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["testAssets"]
        3 GETTABLEKS                       R0 R1 K1 ["RigidHat"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["Parent"]
       15 RETURN                           R0 1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R3 K0 ["ScreenGui"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       10 LOADK                            R4 K2 ["Couldn't find ScreenGui for toolbar"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K5 ["DisplayOrder"]
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 DUPCLOSURE                       R1 K0 [PROTO_9]
        4 RETURN                           R1 1
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K1 ["VPF-Toolbar"]
        9 NAMECALL                         R2 R2 K2 ["GetTagged"]
       11 CALL                             R2 2 1
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 LOADK                            R10 K3 ["ScreenGui"]
       17 NAMECALL                         R8 R7 K4 ["FindFirstAncestorWhichIsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOTEQKNIL                  R8 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       26 LOADK                            R11 K5 ["Couldn't find ScreenGui for toolbar"]
       27 GETIMPORT                        R9 K7 [assert]
       29 CALL                             R9 2 0
       30 SETTABLEKS                       R0 R8 K8 ["DisplayOrder"]
       32 FORGLOOP                         R3 2 ; [-17]
       34 GETUPVAL                         R3 1
       35 LOADK                            R5 K1 ["VPF-Toolbar"]
       36 NAMECALL                         R3 R3 K9 ["GetInstanceAddedSignal"]
       38 CALL                             R3 2 1
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K10 ["Connect"]
       42 CALL                             R3 2 1
       43 NEWCLOSURE                       R4 P2
       44 CAPTURE                          VAL R3
       45 RETURN                           R4 1

PROTO_13:
        0 GETIMPORT                        R1 K3 [Enum.RibbonTool.Move]
        2 RETURN                           R1 1

PROTO_14:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["runServiceIsRunning"]
        7 JUMPIFEQKB                       R1 TRUE ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"providers"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K3 ["List"]
        8 GETTABLEKS                       R3 R4 K4 ["join"]
       10 GETUPVAL                         R5 3
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+25]
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K5 ["FoundationProvider"]
       21 DUPTABLE                         R7 K8 [{"theme", "overlayGui"}]
       22 GETUPVAL                         R11 4
       23 GETTABLEKS                       R10 R11 K9 ["Enums"]
       25 GETTABLEKS                       R9 R10 K10 ["Theme"]
       27 GETTABLEKS                       R8 R9 K11 ["Dark"]
       29 SETTABLEKS                       R8 R7 K6 ["theme"]
       31 GETUPVAL                         R8 5
       32 SETTABLEKS                       R8 R7 K7 ["overlayGui"]
       34 CALL                             R5 2 -1
       35 SETLIST                          R4 R5 -1 [1]
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R4 0 0
       40 NEWTABLE                         R5 0 6
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K0 ["createElement"]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R7 R8 K12 ["Provider"]
       48 DUPTABLE                         R8 K14 [{"value"}]
       49 GETUPVAL                         R9 7
       50 SETTABLEKS                       R9 R8 K13 ["value"]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K0 ["createElement"]
       56 GETUPVAL                         R8 8
       57 CALL                             R7 1 1
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K0 ["createElement"]
       61 GETUPVAL                         R10 9
       62 GETTABLEKS                       R9 R10 K12 ["Provider"]
       64 DUPTABLE                         R10 K14 [{"value"}]
       65 GETUPVAL                         R12 10
       66 GETTABLEKS                       R11 R12 K15 ["placesService"]
       68 SETTABLEKS                       R11 R10 K13 ["value"]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K0 ["createElement"]
       74 GETUPVAL                         R11 11
       75 GETTABLEKS                       R10 R11 K12 ["Provider"]
       77 DUPTABLE                         R11 K14 [{"value"}]
       78 GETUPVAL                         R12 12
       79 SETTABLEKS                       R12 R11 K13 ["value"]
       81 CALL                             R9 2 1
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R10 R11 K0 ["createElement"]
       85 GETUPVAL                         R12 13
       86 GETTABLEKS                       R11 R12 K16 ["NeverReturnsProvider"]
       88 CALL                             R10 1 1
       89 GETUPVAL                         R12 14
       90 CALL                             R12 0 1
       91 JUMPIFNOT                        R12 ; [+8]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R11 R12 K0 ["createElement"]
       95 GETUPVAL                         R13 15
       96 GETTABLEKS                       R12 R13 K12 ["Provider"]
       98 CALL                             R11 1 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 SETLIST                          R5 R6 6 [1]
      103 GETUPVAL                         R7 16
      104 JUMPIFEQKNIL                     R7 ; [+10]
      106 GETUPVAL                         R8 16
      107 GETTABLEKS                       R7 R8 K17 ["wrapAppContexts"]
      109 JUMPIFEQKNIL                     R7 ; [+5]
      111 GETUPVAL                         R7 16
      112 GETTABLEKS                       R6 R7 K17 ["wrapAppContexts"]
      114 JUMP                             ; [+2]
      115 NEWTABLE                         R6 0 0
      117 CALL                             R3 3 1
      118 SETTABLEKS                       R3 R2 K1 ["providers"]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R3 R4 K0 ["createElement"]
      123 GETUPVAL                         R4 17
      124 CALL                             R3 1 -1
      125 CALL                             R0 -1 1
      126 GETUPVAL                         R1 18
      127 GETUPVAL                         R3 19
      128 GETUPVAL                         R5 20
      129 GETTABLEKS                       R4 R5 K18 ["context"]
      131 MOVE                             R5 R0
      132 CALL                             R3 2 -1
      133 NAMECALL                         R1 R1 K19 ["render"]
      135 CALL                             R1 -1 0
      136 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["Destroy"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectionService"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Set"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectionService"]
        3 NAMECALL                         R0 R0 K1 ["Get"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["analyticsService"]
        3 GETTABLEKS                       R0 R1 K1 ["lastEvent"]
        5 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plugin"]
        3 GETTABLEKS                       R0 R1 K1 ["subWindows"]
        5 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plugin"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["GetSubWindow"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_24:
        0 GETTABLEKS                       R6 R0 K0 ["SolidBackground"]
        2 GETTABLEKS                       R5 R6 K1 ["ButtonContainer"]
        4 GETTABLE                         R4 R5 R1
        5 GETTABLEKS                       R3 R4 K2 ["Contents"]
        7 GETTABLEKS                       R2 R3 K3 ["TextButton"]
        9 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["getStyledDialogButton"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 NAMECALL                         R0 R0 K3 ["click"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["SolidBackground"]
        2 GETTABLEKS                       R2 R3 K1 ["Contents"]
        4 GETTABLEKS                       R1 R2 K1 ["Contents"]
        6 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["select"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["cloneLizard"]
        8 LOADK                            R4 K2 ["FreshLizard_%*"]
        9 GETUPVAL                         R6 2
       10 NAMECALL                         R4 R4 K3 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 -1
       15 SETLIST                          R1 R2 -1 [1]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_30:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 MOVE                             R2 R0
        8 JUMP                             ; [+3]
        9 NAMECALL                         R2 R0 K3 ["toString"]
       11 CALL                             R2 1 1
       12 JUMPIFEQKNIL                     R1 ; [+15]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["XPath"]
       17 GETTABLEKS                       R3 R4 K5 ["new"]
       19 LOADK                            R5 K6 ["game.CoreGui.%*.%*"]
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 3 1
       25 MOVE                             R4 R5
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K4 ["XPath"]
       31 GETTABLEKS                       R3 R4 K5 ["new"]
       33 LOADK                            R5 K6 ["game.CoreGui.%*.%*"]
       34 GETUPVAL                         R7 1
       35 MOVE                             R8 R2
       36 NAMECALL                         R5 R5 K7 ["format"]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1

PROTO_31:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Element"]
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["pathOf"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_32:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+9]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["XPath"]
       11 GETTABLEKS                       R3 R4 K4 ["new"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 MOVE                             R3 R0
       17 NAMECALL                         R4 R3 K5 ["parent"]
       19 CALL                             R4 1 1
       20 NAMECALL                         R5 R4 K6 ["toString"]
       22 CALL                             R5 1 1
       23 NAMECALL                         R6 R3 K6 ["toString"]
       25 CALL                             R6 1 1
       26 JUMPIFEQ                         R5 R6 ; [+19]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K7 ["elementByPath"]
       31 LOADN                            R8 0
       32 LOADN                            R9 0
       33 NAMECALL                         R6 R4 K8 ["setWait"]
       35 CALL                             R6 3 1
       36 MOVE                             R7 R1
       37 CALL                             R5 2 1
       38 NAMECALL                         R5 R5 K9 ["waitForRbxInstance"]
       40 CALL                             R5 1 1
       41 MOVE                             R2 R5
       42 JUMPIFNOTEQKNIL                  R2 ; [+3]
       44 MOVE                             R3 R4
       45 JUMPBACK                         ; [-29]
       46 NEWTABLE                         R4 0 0
       48 JUMPIFNOT                        R2 ; [+35]
       49 MOVE                             R6 R4
       50 NAMECALL                         R7 R2 K10 ["GetFullName"]
       52 CALL                             R7 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R5 K13 [table.insert]
       56 CALL                             R5 -1 0
       57 FASTCALL2K                       TABLE_INSERT R4 K14 ; [+5]
       59 MOVE                             R6 R4
       60 LOADK                            R7 K14 ["Children found:"]
       61 GETIMPORT                        R5 K13 [table.insert]
       63 CALL                             R5 2 0
       64 NAMECALL                         R5 R2 K15 ["GetChildren"]
       66 CALL                             R5 1 3
       67 FORGPREP                         R5
       68 LOADK                            R13 K16 ["\t- %*"]
       69 GETTABLEKS                       R15 R9 K17 ["Name"]
       71 NAMECALL                         R13 R13 K18 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       77 MOVE                             R11 R4
       78 GETIMPORT                        R10 K13 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R5 2 ; [-14]
       83 JUMP                             ; [+7]
       84 FASTCALL2K                       TABLE_INSERT R4 K19 ; [+5]
       86 MOVE                             R6 R4
       87 LOADK                            R7 K19 ["No segment found"]
       88 GETIMPORT                        R5 K13 [table.insert]
       90 CALL                             R5 2 0
       91 GETIMPORT                        R5 K21 [table.concat]
       93 MOVE                             R6 R4
       94 LOADK                            R7 K22 ["\n"]
       95 CALL                             R5 2 -1
       96 RETURN                           R5 -1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["elementByPath"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LOADK                            R5 K1 [0.25]
        7 LOADN                            R6 0
        8 NAMECALL                         R3 R2 K2 ["waitForRbxInstance"]
       10 CALL                             R3 3 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+28]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K4 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+3]
       20 MOVE                             R4 R0
       21 JUMP                             ; [+3]
       22 NAMECALL                         R4 R0 K6 ["toString"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [error]
       27 LOADK                            R7 K9 ["%* was not found\nClosest match: %*"]
       28 MOVE                             R9 R4
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K10 ["debugPath"]
       32 MOVE                             R11 R0
       33 MOVE                             R12 R1
       34 CALL                             R10 2 1
       35 NAMECALL                         R7 R7 K11 ["format"]
       37 CALL                             R7 3 1
       38 MOVE                             R6 R7
       39 CALL                             R5 1 0
       40 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["pathOf"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LOADK                            R5 K1 [0.25]
        7 LOADN                            R6 0
        8 NAMECALL                         R3 R2 K2 ["setWait"]
       10 CALL                             R3 3 0
       11 NAMECALL                         R3 R2 K3 ["getFirstInstance"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+1]
       15 RETURN                           R3 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K4 ["act"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K5 ["deferYield"]
       22 CALL                             R4 1 0
       23 NAMECALL                         R4 R2 K3 ["getFirstInstance"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 JUMPIFEQKNIL                     R3 ; [+2]
       29 RETURN                           R3 1
       30 NAMECALL                         R4 R2 K6 ["waitForFirstInstance"]
       32 CALL                             R4 1 1
       33 RETURN                           R4 1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["pathOf"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["getFirstInstance"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["expectElementByPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K1 ["click"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_38:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["ui"]
        5 NAMECALL                         R2 R2 K1 ["GetDescendants"]
        7 CALL                             R2 1 3
        8 FORGPREP                         R2
        9 LOADK                            R9 K2 ["ImageLabel"]
       10 NAMECALL                         R7 R6 K3 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+5]
       14 LOADK                            R9 K4 ["ImageButton"]
       15 NAMECALL                         R7 R6 K3 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+15]
       19 GETTABLEKS                       R7 R6 K5 ["Image"]
       21 LOADK                            R9 K6 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/[^/]+/[^/]+/([^@]*).*%.png"]
       22 NAMECALL                         R7 R7 K7 ["match"]
       24 CALL                             R7 2 1
       25 JUMPIFNOTEQ                      R7 R0 ; [+8]
       27 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R6
       31 GETIMPORT                        R8 K10 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R2 2 ; [-26]
       36 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarScreen"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [UDim2.fromOffset]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["Size"]
       12 GETIMPORT                        R1 K8 [task.wait]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resize"]
        3 LOADN                            R1 0
        4 LOADN                            R2 246
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["expectInstanceByPath"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+9]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R5 K3 ["Tab bar %* not found"]
        9 MOVE                             R7 R0
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 CALL                             R3 1 0
       15 NAMECALL                         R3 R2 K5 ["GetChildren"]
       17 CALL                             R3 1 3
       18 FORGPREP                         R3
       19 LOADK                            R10 K6 ["TextButton"]
       20 NAMECALL                         R8 R7 K7 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+32]
       24 GETTABLEKS                       R10 R7 K8 ["Row"]
       26 GETTABLEKS                       R9 R10 K9 ["Label"]
       28 GETTABLEKS                       R8 R9 K10 ["Text"]
       30 LOADK                            R11 K11 ["%%.%*:"]
       31 MOVE                             R13 R1
       32 NAMECALL                         R11 R11 K4 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 NAMECALL                         R8 R8 K12 ["match"]
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+16]
       40 LOADK                            R11 K6 ["TextButton"]
       41 NAMECALL                         R9 R7 K7 ["IsA"]
       43 CALL                             R9 2 1
       44 FASTCALL2K                       ASSERT R9 K13 ; [+4]
       46 LOADK                            R10 K13 ["Tab should be a button"]
       47 GETIMPORT                        R8 K15 [assert]
       49 CALL                             R8 2 0
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R8 R9 K16 ["clickSimpleTab"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 0
       55 RETURN                           R0 0
       56 FORGLOOP                         R3 2 ; [-38]
       58 GETIMPORT                        R3 K2 [error]
       60 LOADK                            R5 K17 ["Could not find %*"]
       61 MOVE                             R7 R1
       62 NAMECALL                         R5 R5 K4 ["format"]
       64 CALL                             R5 2 1
       65 MOVE                             R4 R5
       66 CALL                             R3 1 0
       67 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.AssetPalettes.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.TabBar.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["TopLevelDetector.ScrollBlocker.ScrollBlocker"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_47:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETIMPORT                        R3 K2 [os.clock]
        5 CALL                             R3 0 1
        6 SUB                              R2 R3 R1
        7 ORK                              R3 R0 K3 [1]
        8 JUMPIFNOTLT                      R2 R3 ; [+16]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["AvatarScreen"]
       13 GETTABLEKS                       R2 R3 K5 ["isActive"]
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K6 ["act"]
       21 GETIMPORT                        R3 K9 [task.wait]
       23 CALL                             R2 1 0
       24 JUMPBACK                         ; [-22]
       25 GETIMPORT                        R2 K11 [error]
       27 LOADK                            R3 K12 ["AvatarScreen didn't become active within timeout"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["AvatarScreen.Contents.Tabs.TabBar.ScrollingFrame.Scroller.Tabs"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["AvatarScreen"]
        4 GETTABLEKS                       R2 R3 K1 ["XPATH_ASSET_PALETTES"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["expectElementByPath"]
        3 LOADK                            R3 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_builtin_%*.Contents.TextButton"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["act"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["expectElementByPath"]
        3 LOADK                            R3 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_instance_%*.Contents.TextButton"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["act"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["expectInstanceByPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R2 K4 ["Scroller not found"]
        9 CALL                             R1 1 0
       10 LOADN                            R1 0
       11 LOADN                            R2 0
       12 NAMECALL                         R3 R0 K5 ["GetChildren"]
       14 CALL                             R3 1 3
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K6 ["Name"]
       18 LOADK                            R10 K7 ["item_([a-z]+)_([0-9]+)"]
       19 NAMECALL                         R8 R8 K8 ["match"]
       21 CALL                             R8 2 2
       22 JUMPIFEQKNIL                     R8 ; [+49]
       24 JUMPIFEQKNIL                     R9 ; [+47]
       26 FASTCALL1                        TONUMBER R9 ; [+3]
       27 MOVE                             R11 R9
       28 GETIMPORT                        R10 K10 [tonumber]
       30 CALL                             R10 1 1
       31 JUMPIFNOTEQKNIL                  R10 ; [+2]
       33 LOADB                            R12 0 +1
       34 LOADB                            R12 1
       35 FASTCALL2K                       ASSERT R12 K11 ; [+4]
       37 LOADK                            R13 K11 ["Pattern should not be returning non-numeric indexes"]
       38 GETIMPORT                        R11 K13 [assert]
       40 CALL                             R11 2 0
       41 JUMPIFNOTEQKS                    R8 K14 ["builtin"] ; [+10]
       43 FASTCALL2                        MATH_MAX R1 R10 ; [+5]
       45 MOVE                             R12 R1
       46 MOVE                             R13 R10
       47 GETIMPORT                        R11 K17 [math.max]
       49 CALL                             R11 2 1
       50 MOVE                             R1 R11
       51 JUMP                             ; [+20]
       52 JUMPIFNOTEQKS                    R8 K18 ["instance"] ; [+10]
       54 FASTCALL2                        MATH_MAX R2 R10 ; [+5]
       56 MOVE                             R12 R2
       57 MOVE                             R13 R10
       58 GETIMPORT                        R11 K17 [math.max]
       60 CALL                             R11 2 1
       61 MOVE                             R2 R11
       62 JUMP                             ; [+9]
       63 GETIMPORT                        R11 K3 [error]
       65 LOADK                            R13 K19 ["Unknown item type: %*"]
       66 MOVE                             R15 R8
       67 NAMECALL                         R13 R13 K20 ["format"]
       69 CALL                             R13 2 1
       70 MOVE                             R12 R13
       71 CALL                             R11 1 0
       72 FORGLOOP                         R3 2 ; [-57]
       74 DUPTABLE                         R3 K23 [{"builtins", "instances"}]
       75 SETTABLEKS                       R1 R3 K21 ["builtins"]
       77 SETTABLEKS                       R2 R3 K22 ["instances"]
       79 RETURN                           R3 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["expectInstanceByPath"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvatarScreen"]
        6 GETTABLEKS                       R1 R2 K2 ["XPATH_ASSET_PALETTES"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+4]
       10 GETIMPORT                        R1 K4 [error]
       12 LOADK                            R2 K5 ["Asset palettes not found"]
       13 CALL                             R1 1 0
       14 NAMECALL                         R1 R0 K6 ["GetChildren"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 LOADK                            R8 K7 ["TextButton"]
       19 NAMECALL                         R6 R5 K8 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+16]
       23 GETTABLEKS                       R9 R5 K9 ["Row"]
       25 GETTABLEKS                       R8 R9 K10 ["Label"]
       27 GETTABLEKS                       R7 R8 K11 ["FontFace"]
       29 GETTABLEKS                       R6 R7 K12 ["Bold"]
       31 JUMPIFNOT                        R6 ; [+7]
       32 GETTABLEKS                       R8 R5 K9 ["Row"]
       34 GETTABLEKS                       R7 R8 K10 ["Label"]
       36 GETTABLEKS                       R6 R7 K13 ["Text"]
       38 RETURN                           R6 1
       39 FORGLOOP                         R1 2 ; [-22]
       41 GETIMPORT                        R1 K4 [error]
       43 LOADK                            R2 K14 ["Palettes are open, but there is no open palette"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R1 R2 K1 ["selectedPaletteText"]
        5 CALL                             R1 0 1
        6 LOADK                            R3 K2 [".+%.(.-):%[%]$"]
        7 NAMECALL                         R1 R1 K3 ["match"]
        9 CALL                             R1 2 1
       10 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       12 LOADK                            R2 K4 ["Couldn't match palette key"]
       13 GETIMPORT                        R0 K6 [assert]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["instanceByPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.Preview.DummyPreview.DummyPreview.WorldModel.Dummy"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["expectInstanceByPath"]
       11 LOADK                            R2 K1 ["AvatarScreen.Contents.Contents.Preview.DummyPreview.DummyPreview.WorldModel.Dummy"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        6 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.AddItemButton.SplitButtonContainer.AddButton.IconWrapper.Icon"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K0 ["clickPath"]
       12 LOADK                            R1 K2 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.AddItemButton.Inner.Contents.TextButton"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_59:
        0 LOADK                            R4 K0 ["ImageLabel"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Image"]
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 RETURN                           R1 1

PROTO_60:
        0 GETTABLEKS                       R3 R0 K0 ["yPosition"]
        2 GETTABLEKS                       R4 R1 K0 ["yPosition"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_61:
        0 DUPCLOSURE                       R0 K0 [PROTO_59]
        1 DUPCLOSURE                       R1 K1 [PROTO_60]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["expectInstanceByPath"]
        5 LOADK                            R3 K3 ["AvatarScreen.Contents.Contents.Preview.EquippedItemsSidebar"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R5 R2 K4 ["Contents"]
       11 GETTABLEKS                       R4 R5 K5 ["LayeredClothingEquipment"]
       13 NAMECALL                         R4 R4 K6 ["GetChildren"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 DUPTABLE                         R11 K10 [{"yPosition", "instance", "preview"}]
       18 GETTABLEKS                       R13 R8 K11 ["AbsolutePosition"]
       20 GETTABLEKS                       R12 R13 K12 ["Y"]
       22 SETTABLEKS                       R12 R11 K7 ["yPosition"]
       24 SETTABLEKS                       R8 R11 K8 ["instance"]
       26 GETUPVAL                         R16 1
       27 GETTABLEKS                       R15 R16 K13 ["getByTestId"]
       29 MOVE                             R16 R8
       30 LOADK                            R17 K14 ["EquippedItemPreview"]
       31 CALL                             R15 2 1
       32 GETTABLEKS                       R14 R15 K15 ["Inner"]
       34 GETTABLEKS                       R13 R14 K16 ["Preview"]
       36 LOADK                            R16 K17 ["ImageLabel"]
       37 NAMECALL                         R14 R13 K18 ["IsA"]
       39 CALL                             R14 2 1
       40 JUMPIFNOT                        R14 ; [+3]
       41 GETTABLEKS                       R12 R13 K19 ["Image"]
       43 JUMP                             ; [+1]
       44 MOVE                             R12 R13
       45 SETTABLEKS                       R12 R11 K9 ["preview"]
       47 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       49 MOVE                             R10 R3
       50 GETIMPORT                        R9 K22 [table.insert]
       52 CALL                             R9 2 0
       53 FORGLOOP                         R4 2 ; [-37]
       55 NEWTABLE                         R4 0 0
       57 GETTABLEKS                       R6 R2 K23 ["OtherEquipment"]
       59 GETTABLEKS                       R5 R6 K24 ["Scroller"]
       61 NAMECALL                         R5 R5 K6 ["GetChildren"]
       63 CALL                             R5 1 3
       64 FORGPREP                         R5
       65 LOADK                            R12 K25 ["Frame"]
       66 NAMECALL                         R10 R9 K18 ["IsA"]
       68 CALL                             R10 2 1
       69 JUMPIFNOT                        R10 ; [+30]
       70 DUPTABLE                         R12 K10 [{"yPosition", "instance", "preview"}]
       71 GETTABLEKS                       R14 R9 K11 ["AbsolutePosition"]
       73 GETTABLEKS                       R13 R14 K12 ["Y"]
       75 SETTABLEKS                       R13 R12 K7 ["yPosition"]
       77 SETTABLEKS                       R9 R12 K8 ["instance"]
       79 GETTABLEKS                       R15 R9 K15 ["Inner"]
       81 GETTABLEKS                       R14 R15 K16 ["Preview"]
       83 LOADK                            R17 K17 ["ImageLabel"]
       84 NAMECALL                         R15 R14 K18 ["IsA"]
       86 CALL                             R15 2 1
       87 JUMPIFNOT                        R15 ; [+3]
       88 GETTABLEKS                       R13 R14 K19 ["Image"]
       90 JUMP                             ; [+1]
       91 MOVE                             R13 R14
       92 SETTABLEKS                       R13 R12 K9 ["preview"]
       94 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       96 MOVE                             R11 R4
       97 GETIMPORT                        R10 K22 [table.insert]
       99 CALL                             R10 2 0
      100 FORGLOOP                         R5 2 ; [-36]
      102 GETIMPORT                        R5 K27 [table.sort]
      104 MOVE                             R6 R3
      105 MOVE                             R7 R1
      106 CALL                             R5 2 0
      107 GETIMPORT                        R5 K27 [table.sort]
      109 MOVE                             R6 R4
      110 MOVE                             R7 R1
      111 CALL                             R5 2 0
      112 DUPTABLE                         R5 K30 [{"layeredClothing", "otherEquipment"}]
      113 SETTABLEKS                       R3 R5 K28 ["layeredClothing"]
      115 SETTABLEKS                       R4 R5 K29 ["otherEquipment"]
      117 RETURN                           R5 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.Publish"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckBody"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckFace"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.SettingsButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["VirtualInput"]
        3 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R1 K2 ["SendMouseMoveEvent"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["AbsolutePosition"]
       10 GETTABLEKS                       R1 R2 K4 ["X"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["AbsolutePosition"]
       15 GETTABLEKS                       R2 R3 K5 ["Y"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["VirtualInput"]
       21 GETTABLEKS                       R0 R1 K6 ["waitForInputEventsProcessed"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R0 R1 K1 ["getSidebarItems"]
        5 CALL                             R0 0 1
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K2 ["layeredClothing"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K3 ["instance"]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K4 ["act"]
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R7
       20 CALL                             R8 1 0
       21 NAMECALL                         R9 R7 K5 ["GetChildren"]
       23 CALL                             R9 1 1
       24 GETTABLEN                        R8 R9 1
       25 JUMPIFEQKNIL                     R8 ; [+14]
       27 LOADK                            R12 K6 ["Outer"]
       28 NAMECALL                         R10 R8 K7 ["FindFirstChild"]
       30 CALL                             R10 2 1
       31 NAMECALL                         R10 R10 K5 ["GetChildren"]
       33 CALL                             R10 1 1
       34 GETTABLEN                        R9 R10 1
       35 LOADK                            R11 K8 ["HideShowPane"]
       36 NAMECALL                         R9 R9 K7 ["FindFirstChild"]
       38 CALL                             R9 2 1
       39 MOVE                             R1 R9
       40 JUMPIFNOTEQKNIL                  R1 ; [+3]
       42 FORGLOOP                         R2 2 ; [-31]
       44 JUMPIFNOTEQKNIL                  R1 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       50 LOADK                            R4 K9 ["did not find button"]
       51 GETIMPORT                        R2 K11 [assert]
       53 CALL                             R2 2 0
       54 NAMECALL                         R2 R1 K12 ["GetFullName"]
       56 CALL                             R2 1 1
       57 GETIMPORT                        R3 K15 [string.find]
       59 MOVE                             R4 R2
       60 LOADK                            R5 K0 ["AvatarScreen"]
       61 CALL                             R3 2 1
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R5 0 +1
       65 LOADB                            R5 1
       66 FASTCALL2K                       ASSERT R5 K16 ; [+4]
       68 LOADK                            R6 K16 ["invalid path"]
       69 GETIMPORT                        R4 K11 [assert]
       71 CALL                             R4 2 0
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R4 R5 K17 ["clickPath"]
       75 FASTCALL2                        STRING_SUB R2 R3 ; [+5]
       77 MOVE                             R6 R2
       78 MOVE                             R7 R3
       79 GETIMPORT                        R5 K19 [string.sub]
       81 CALL                             R5 2 1
       82 CALL                             R4 1 0
       83 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["clickWithoutValidation"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R2 R3 K1 ["selectedPaletteKey"]
        5 CALL                             R2 0 1
        6 JUMPIFEQKS                       R2 K2 ["Skin"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       12 LOADK                            R2 K3 ["Not on Skin tab"]
       13 GETIMPORT                        R0 K5 [assert]
       15 CALL                             R0 2 0
       16 NEWTABLE                         R0 0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K6 ["getAllByTestId"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K7 ["ui"]
       24 LOADK                            R3 K8 ["SkinPreview"]
       25 CALL                             R1 2 3
       26 FORGPREP                         R1
       27 DUPTABLE                         R8 K12 [{"color", "click", "isClickable"}]
       28 GETTABLEKS                       R9 R5 K13 ["BackgroundColor3"]
       30 SETTABLEKS                       R9 R8 K9 ["color"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R9 R8 K10 ["click"]
       38 LOADK                            R12 K14 ["TextButton"]
       39 NAMECALL                         R10 R5 K15 ["IsA"]
       41 CALL                             R10 2 1
       42 NOT                              R9 R10
       43 SETTABLEKS                       R9 R8 K11 ["isClickable"]
       45 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       47 MOVE                             R7 R0
       48 GETIMPORT                        R6 K18 [table.insert]
       50 CALL                             R6 2 0
       51 FORGLOOP                         R1 2 ; [-25]
       53 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["instanceByPath"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 ["ErrorAlert.Alert.Contents.Description"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 1
        7 LOADB                            R2 1
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 LOADK                            R4 K2 ["TextLabel"]
       11 NAMECALL                         R2 R0 K3 ["IsA"]
       13 CALL                             R2 2 1
       14 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       16 LOADK                            R3 K4 ["Description isn't a valid instance"]
       17 GETIMPORT                        R1 K6 [assert]
       19 CALL                             R1 2 0
       20 MOVE                             R1 R0
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETTABLEKS                       R1 R0 K7 ["Text"]
       24 RETURN                           R1 1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["instanceByPath"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 ["GenerationCard.TitlePane.Title"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 1
        7 LOADB                            R2 1
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 LOADK                            R4 K2 ["TextLabel"]
       11 NAMECALL                         R2 R0 K3 ["IsA"]
       13 CALL                             R2 2 1
       14 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       16 LOADK                            R3 K4 ["Title isn't a valid instance"]
       17 GETIMPORT                        R1 K6 [assert]
       19 CALL                             R1 2 0
       20 MOVE                             R1 R0
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETTABLEKS                       R1 R0 K7 ["Text"]
       24 RETURN                           R1 1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["expectInstanceByPath"]
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["Contents.SplitView.Pane 1.Child.ModelPreview.ModelPreview.ViewportFrame.WorldModel.Dummy"]
        8 CONCAT                           R1 R2 R3
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K0 ["expectInstanceByPath"]
       14 GETUPVAL                         R2 2
       15 LOADK                            R3 K2 ["ModelPreview.ModelPreview.ViewportFrame.WorldModel.Dummy"]
       16 CONCAT                           R1 R2 R3
       17 CALL                             R0 1 1
       18 RETURN                           R0 1

PROTO_74:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["Controls.Controls.Contents.Start"]
        8 CONCAT                           R1 R2 R3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K0 ["clickPath"]
       14 GETUPVAL                         R2 2
       15 LOADK                            R3 K2 ["Controls.Start"]
       16 CONCAT                           R1 R2 R3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 ["GenerationCard"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K2 ["getSubWindow"]
       10 LOADN                            R1 1
       11 CALL                             R0 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["clickStyledDialogButton"]
       15 MOVE                             R2 R0
       16 LOADN                            R3 1
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R1 R2 K1 ["isActive"]
        5 CALL                             R1 0 1
        6 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        8 LOADK                            R2 K2 ["Auto setup screen is not active"]
        9 GETIMPORT                        R0 K4 [assert]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K5 ["instanceByPath"]
       15 GETUPVAL                         R3 1
       16 LOADK                            R4 K6 ["Controls"]
       17 CONCAT                           R2 R3 R4
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 RETURN                           R0 1

PROTO_77:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R1 R2 K1 ["getDummy"]
        5 CALL                             R1 0 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 ["Contents.SplitView.Pane 1.Child.ToggleBar.Toggle"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["Provider.Buttons"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Provider.Buttons.AddSelected"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceByPath"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["StopButton"]
        5 CONCAT                           R2 R3 R4
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 ["StopButton"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Toolbar"]
        4 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        9 LOADK                            R1 K3 ["Toolbar.ToolbarBase.1"]
       10 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerBodyPointsToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Toolbar"]
        4 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["clickPath"]
        9 LOADK                            R1 K3 ["Toolbar.ToolbarBase.2"]
       10 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_87:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Toolbar"]
        7 GETTABLEKS                       R1 R2 K3 ["ToolbarBase"]
        9 NAMECALL                         R2 R1 K4 ["GetChildren"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K5 ["Slider"]
       14 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+20]
       19 GETTABLEKS                       R8 R6 K6 ["Icon"]
       21 GETTABLEKS                       R7 R8 K6 ["Icon"]
       23 JUMPIFEQKNIL                     R7 ; [+14]
       25 GETIMPORT                        R8 K9 [string.find]
       27 GETTABLEKS                       R9 R7 K10 ["Image"]
       29 LOADK                            R10 K11 ["radius"]
       30 CALL                             R8 2 1
       31 JUMPIFEQKNIL                     R8 ; [+6]
       33 LOADK                            R10 K12 ["Value"]
       34 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       36 CALL                             R8 2 -1
       37 RETURN                           R8 -1
       38 FORGLOOP                         R2 2 ; [-26]
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_88:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Toolbar"]
        7 GETTABLEKS                       R1 R2 K3 ["ToolbarBase"]
        9 NAMECALL                         R2 R1 K4 ["GetChildren"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K5 ["Slider"]
       14 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+20]
       19 GETTABLEKS                       R8 R6 K6 ["Icon"]
       21 GETTABLEKS                       R7 R8 K6 ["Icon"]
       23 JUMPIFEQKNIL                     R7 ; [+14]
       25 GETIMPORT                        R8 K9 [string.find]
       27 GETTABLEKS                       R9 R7 K10 ["Image"]
       29 LOADK                            R10 K11 ["falloff"]
       30 CALL                             R8 2 1
       31 JUMPIFEQKNIL                     R8 ; [+6]
       33 LOADK                            R10 K12 ["Value"]
       34 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       36 CALL                             R8 2 -1
       37 RETURN                           R8 -1
       38 FORGLOOP                         R2 2 ; [-26]
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+21]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       20 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       22 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       24 GETIMPORT                        R1 K9 [Enum.KeyCode.B]
       26 CALL                             R0 1 0
       27 JUMP                             ; [+20]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       31 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       33 GETTABLEKS                       R0 R1 K10 ["pressKey"]
       35 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       41 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       43 GETTABLEKS                       R0 R1 K10 ["pressKey"]
       45 GETIMPORT                        R1 K9 [Enum.KeyCode.B]
       47 CALL                             R0 1 0
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R1 R2 K5 ["VirtualInput"]
       51 GETTABLEKS                       R0 R1 K11 ["waitForInputEventsProcessed"]
       53 CALL                             R0 0 0
       54 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_89]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       21 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R1 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R1 R2 K5 ["VirtualInput"]
       31 GETTABLEKS                       R0 R1 K9 ["waitForInputEventsProcessed"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_91]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 LOADNIL                          R4
        4 NAMECALL                         R0 R0 K0 ["SendMouseMoveDeltaEvent"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["VirtualInput"]
       10 GETTABLEKS                       R0 R1 K2 ["waitForInputEventsProcessed"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagVirtualInputManagerMouseMoveDeltaEvent is not enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 JUMPIFNOTEQKS                    R0 K3 ["radius"] ; [+7]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K4 ["CageEditingTool"]
       14 GETTABLEKS                       R2 R3 K5 ["ToggleB"]
       16 JUMP                             ; [+9]
       17 JUMPIFNOTEQKS                    R0 K6 ["falloff"] ; [+7]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["CageEditingTool"]
       22 GETTABLEKS                       R2 R3 K7 ["ToggleShiftB"]
       24 JUMP                             ; [+1]
       25 RETURN                           R0 0
       26 MOVE                             R3 R2
       27 CALL                             R3 0 0
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K8 ["act"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CALL                             R3 1 0
       36 MOVE                             R3 R2
       37 CALL                             R3 0 0
       38 RETURN                           R0 0

PROTO_95:
        0 LOADN                            R2 1
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["VirtualInput"]
        7 GETTABLEKS                       R4 R5 K1 ["Mouse"]
        9 GETTABLEKS                       R3 R4 K2 ["SendMouseWheelEvent"]
       11 LOADN                            R4 94
       12 LOADN                            R5 150
       13 GETUPVAL                         R6 2
       14 CALL                             R3 3 0
       15 FORNLOOP                         R0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K0 ["VirtualInput"]
       19 GETTABLEKS                       R0 R1 K3 ["waitForInputEventsProcessed"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_96:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R0 K0 ["radius"] ; [+7]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["CageEditingTool"]
        6 GETTABLEKS                       R2 R3 K2 ["ToggleB"]
        8 JUMP                             ; [+9]
        9 JUMPIFNOTEQKS                    R0 K3 ["falloff"] ; [+7]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["CageEditingTool"]
       14 GETTABLEKS                       R2 R3 K4 ["ToggleShiftB"]
       16 JUMP                             ; [+1]
       17 RETURN                           R0 0
       18 MOVE                             R3 R2
       19 CALL                             R3 0 0
       20 LOADN                            R4 0
       21 JUMPIFLT                         R4 R1 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL1                        MATH_ABS R1 ; [+3]
       26 MOVE                             R5 R1
       27 GETIMPORT                        R4 K7 [math.abs]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K8 ["act"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R3
       37 CALL                             R5 1 0
       38 MOVE                             R5 R2
       39 CALL                             R5 0 0
       40 RETURN                           R0 0

PROTO_97:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["AvatarPreviewer_%*"]
        5 GETUPVAL                         R5 0
        6 NAMECALL                         R5 R5 K5 ["GenerateGUID"]
        8 CALL                             R5 1 1
        9 NAMECALL                         R3 R3 K6 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETIMPORT                        R3 K2 [Instance.new]
       15 LOADK                            R4 K7 ["ScreenGui"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R2 R3 K8 ["Name"]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R4 R3 K9 ["Parent"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K10 ["createBlockingRoot"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 3
       28 CALL                             R5 0 2
       29 DUPCLOSURE                       R7 K11 [PROTO_13]
       30 GETTABLEKS                       R8 R5 K12 ["plugin"]
       32 SETTABLEKS                       R7 R8 K13 ["GetSelectedRibbonTool"]
       34 DUPTABLE                         R7 K15 [{"isRunning"}]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R8 R7 K14 ["isRunning"]
       39 JUMPIFEQKNIL                     R0 ; [+17]
       41 GETTABLEKS                       R8 R0 K16 ["devFrameworkContexts"]
       43 JUMPIFEQKNIL                     R8 ; [+13]
       45 GETUPVAL                         R10 4
       46 GETTABLEKS                       R9 R10 K17 ["List"]
       48 GETTABLEKS                       R8 R9 K18 ["join"]
       50 GETTABLEKS                       R9 R5 K19 ["context"]
       52 GETTABLEKS                       R10 R0 K16 ["devFrameworkContexts"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R5 K19 ["context"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R8 R9 K20 ["act"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          VAL R6
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          VAL R7
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          UPVAL U14
       76 CAPTURE                          UPVAL U15
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U16
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U17
       81 CAPTURE                          VAL R5
       82 CALL                             R8 1 0
       83 NAMECALL                         R11 R3 K21 ["GetChildren"]
       85 CALL                             R11 1 1
       86 LENGTH                           R10 R11
       87 LOADN                            R11 0
       88 JUMPIFLT                         R11 R10 ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 FASTCALL2K                       ASSERT R9 K22 ; [+4]
       94 LOADK                            R10 K22 ["Container is empty after mount"]
       95 GETIMPORT                        R8 K24 [assert]
       97 CALL                             R8 2 0
       98 NEWTABLE                         R8 32 0
      100 GETUPVAL                         R10 1
      101 MOVE                             R12 R2
      102 NAMECALL                         R10 R10 K25 ["FindFirstChild"]
      104 CALL                             R10 2 1
      105 FASTCALL2K                       ASSERT R10 K26 ; [+4]
      107 LOADK                            R11 K26 ["Couldn't find previewer screen"]
      108 GETIMPORT                        R9 K24 [assert]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K27 ["ui"]
      113 GETTABLEKS                       R9 R5 K28 ["placesService"]
      115 SETTABLEKS                       R9 R8 K28 ["placesService"]
      117 NEWCLOSURE                       R9 P3
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R9 R8 K29 ["destroy"]
      123 NEWCLOSURE                       R9 P4
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R9 R8 K30 ["select"]
      128 NEWCLOSURE                       R9 P5
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R9 R8 K31 ["getSelection"]
      132 NEWCLOSURE                       R9 P6
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R9 R8 K32 ["getLastAnalyticsEvent"]
      136 NEWCLOSURE                       R9 P7
      137 CAPTURE                          VAL R5
      138 SETTABLEKS                       R9 R8 K33 ["subWindows"]
      140 NEWCLOSURE                       R9 P8
      141 CAPTURE                          VAL R5
      142 SETTABLEKS                       R9 R8 K34 ["getSubWindow"]
      144 DUPCLOSURE                       R9 K35 [PROTO_24]
      145 SETTABLEKS                       R9 R8 K36 ["getStyledDialogButton"]
      147 NEWCLOSURE                       R9 P10
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          UPVAL U18
      150 CAPTURE                          VAL R8
      151 SETTABLEKS                       R9 R8 K37 ["clickStyledDialogButton"]
      153 DUPCLOSURE                       R9 K38 [PROTO_27]
      154 SETTABLEKS                       R9 R8 K39 ["getStyledDialogContent"]
      156 NEWCLOSURE                       R9 P12
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R9 R8 K40 ["getMockUGCAvatarService"]
      160 NEWCLOSURE                       R9 P13
      161 CAPTURE                          VAL R8
      162 CAPTURE                          UPVAL U19
      163 CAPTURE                          VAL R2
      164 SETTABLEKS                       R9 R8 K41 ["selectFreshLizard"]
      166 NEWCLOSURE                       R9 P14
      167 CAPTURE                          UPVAL U18
      168 CAPTURE                          VAL R2
      169 SETTABLEKS                       R9 R8 K42 ["pathOf"]
      171 NEWCLOSURE                       R9 P15
      172 CAPTURE                          UPVAL U18
      173 CAPTURE                          VAL R8
      174 SETTABLEKS                       R9 R8 K43 ["elementByPath"]
      176 NEWCLOSURE                       R9 P16
      177 CAPTURE                          UPVAL U18
      178 CAPTURE                          VAL R8
      179 SETTABLEKS                       R9 R8 K44 ["debugPath"]
      181 NEWCLOSURE                       R9 P17
      182 CAPTURE                          VAL R8
      183 SETTABLEKS                       R9 R8 K45 ["expectElementByPath"]
      185 NEWCLOSURE                       R9 P18
      186 CAPTURE                          VAL R8
      187 CAPTURE                          UPVAL U2
      188 CAPTURE                          UPVAL U19
      189 SETTABLEKS                       R9 R8 K46 ["expectInstanceByPath"]
      191 NEWCLOSURE                       R9 P19
      192 CAPTURE                          VAL R8
      193 SETTABLEKS                       R9 R8 K47 ["instanceByPath"]
      195 NEWCLOSURE                       R9 P20
      196 CAPTURE                          UPVAL U2
      197 CAPTURE                          VAL R8
      198 SETTABLEKS                       R9 R8 K48 ["clickPath"]
      200 NEWCLOSURE                       R9 P21
      201 CAPTURE                          VAL R8
      202 SETTABLEKS                       R9 R8 K49 ["getByImage"]
      204 NEWCLOSURE                       R9 P22
      205 CAPTURE                          UPVAL U2
      206 CAPTURE                          VAL R3
      207 SETTABLEKS                       R9 R8 K50 ["resize"]
      209 NEWCLOSURE                       R9 P23
      210 CAPTURE                          VAL R8
      211 SETTABLEKS                       R9 R8 K51 ["resizeToDefault"]
      213 NEWTABLE                         R9 0 0
      215 SETTABLEKS                       R9 R8 K52 ["AvatarScreen"]
      217 GETTABLEKS                       R9 R8 K52 ["AvatarScreen"]
      219 LOADK                            R10 K53 ["AvatarScreen.Contents.Tabs.AssetPalettes.ScrollingFrame.Scroller.Tabs"]
      220 SETTABLEKS                       R10 R9 K54 ["XPATH_ASSET_PALETTES"]
      222 NEWCLOSURE                       R9 P24
      223 CAPTURE                          VAL R8
      224 CAPTURE                          UPVAL U19
      225 NEWCLOSURE                       R10 P25
      226 CAPTURE                          VAL R8
      227 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      229 SETTABLEKS                       R10 R11 K55 ["isActive"]
      231 NEWCLOSURE                       R10 P26
      232 CAPTURE                          VAL R8
      233 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      235 SETTABLEKS                       R10 R11 K56 ["isPalettesPickTabMenuActive"]
      237 NEWCLOSURE                       R10 P27
      238 CAPTURE                          VAL R8
      239 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      241 SETTABLEKS                       R10 R11 K57 ["isCategoryPickTabMenuActive"]
      243 NEWCLOSURE                       R10 P28
      244 CAPTURE                          VAL R8
      245 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      247 SETTABLEKS                       R10 R11 K58 ["isAvatarSettingsActive"]
      249 NEWCLOSURE                       R10 P29
      250 CAPTURE                          VAL R8
      251 CAPTURE                          UPVAL U2
      252 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      254 SETTABLEKS                       R10 R11 K59 ["waitUntilActive"]
      256 NEWCLOSURE                       R10 P30
      257 CAPTURE                          VAL R9
      258 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      260 SETTABLEKS                       R10 R11 K60 ["clickCategory"]
      262 NEWCLOSURE                       R10 P31
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R8
      265 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      267 SETTABLEKS                       R10 R11 K61 ["clickPalette"]
      269 NEWCLOSURE                       R10 P32
      270 CAPTURE                          VAL R8
      271 CAPTURE                          UPVAL U2
      272 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      274 SETTABLEKS                       R10 R11 K62 ["clickBuiltin"]
      276 NEWCLOSURE                       R10 P33
      277 CAPTURE                          VAL R8
      278 CAPTURE                          UPVAL U2
      279 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      281 SETTABLEKS                       R10 R11 K63 ["clickInstance"]
      283 NEWCLOSURE                       R10 P34
      284 CAPTURE                          VAL R8
      285 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      287 SETTABLEKS                       R10 R11 K64 ["catalogItemCounts"]
      289 NEWCLOSURE                       R10 P35
      290 CAPTURE                          VAL R8
      291 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      293 SETTABLEKS                       R10 R11 K65 ["selectedPaletteText"]
      295 NEWCLOSURE                       R10 P36
      296 CAPTURE                          VAL R8
      297 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      299 SETTABLEKS                       R10 R11 K66 ["selectedPaletteKey"]
      301 NEWCLOSURE                       R10 P37
      302 CAPTURE                          VAL R8
      303 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      305 SETTABLEKS                       R10 R11 K67 ["getDummy"]
      307 NEWCLOSURE                       R10 P38
      308 CAPTURE                          UPVAL U20
      309 CAPTURE                          VAL R8
      310 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      312 SETTABLEKS                       R10 R11 K68 ["clickAddItem"]
      314 NEWCLOSURE                       R10 P39
      315 CAPTURE                          VAL R8
      316 CAPTURE                          UPVAL U21
      317 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      319 SETTABLEKS                       R10 R11 K69 ["getSidebarItems"]
      321 NEWCLOSURE                       R10 P40
      322 CAPTURE                          VAL R8
      323 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      325 SETTABLEKS                       R10 R11 K70 ["clickSubmitButton"]
      327 NEWCLOSURE                       R10 P41
      328 CAPTURE                          VAL R8
      329 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      331 SETTABLEKS                       R10 R11 K71 ["clickCheckBodyMode"]
      333 NEWCLOSURE                       R10 P42
      334 CAPTURE                          VAL R8
      335 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      337 SETTABLEKS                       R10 R11 K72 ["clickCheckFaceMode"]
      339 NEWCLOSURE                       R10 P43
      340 CAPTURE                          VAL R8
      341 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      343 SETTABLEKS                       R10 R11 K73 ["clickAvatarSettings"]
      345 NEWCLOSURE                       R10 P44
      346 CAPTURE                          VAL R8
      347 CAPTURE                          UPVAL U2
      348 CAPTURE                          UPVAL U18
      349 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      351 SETTABLEKS                       R10 R11 K74 ["clickHideShowButton"]
      353 NEWCLOSURE                       R10 P45
      354 CAPTURE                          VAL R8
      355 CAPTURE                          UPVAL U21
      356 CAPTURE                          UPVAL U2
      357 CAPTURE                          UPVAL U18
      358 GETTABLEKS                       R11 R8 K52 ["AvatarScreen"]
      360 SETTABLEKS                       R10 R11 K75 ["getSkinToneButtons"]
      362 NEWTABLE                         R10 0 0
      364 SETTABLEKS                       R10 R8 K76 ["AutoSetupScreen"]
      366 GETUPVAL                         R11 7
      367 CALL                             R11 0 1
      368 JUMPIFNOT                        R11 ; [+2]
      369 LOADK                            R10 K77 ["Children."]
      370 JUMP                             ; [+1]
      371 LOADK                            R10 K78 ["Provider."]
      372 NEWCLOSURE                       R11 P46
      373 CAPTURE                          VAL R8
      374 CAPTURE                          VAL R10
      375 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      377 SETTABLEKS                       R11 R12 K79 ["getAlertDescription"]
      379 NEWCLOSURE                       R11 P47
      380 CAPTURE                          VAL R8
      381 CAPTURE                          VAL R10
      382 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      384 SETTABLEKS                       R11 R12 K80 ["getAlertTitle"]
      386 NEWCLOSURE                       R11 P48
      387 CAPTURE                          UPVAL U22
      388 CAPTURE                          VAL R8
      389 CAPTURE                          VAL R10
      390 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      392 SETTABLEKS                       R11 R12 K67 ["getDummy"]
      394 NEWCLOSURE                       R11 P49
      395 CAPTURE                          UPVAL U22
      396 CAPTURE                          VAL R8
      397 CAPTURE                          VAL R10
      398 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      400 SETTABLEKS                       R11 R12 K81 ["startAutoSetup"]
      402 NEWCLOSURE                       R11 P50
      403 CAPTURE                          VAL R8
      404 CAPTURE                          VAL R10
      405 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      407 SETTABLEKS                       R11 R12 K82 ["cancelAutoSetup"]
      409 NEWCLOSURE                       R11 P51
      410 CAPTURE                          VAL R8
      411 CAPTURE                          VAL R10
      412 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      414 SETTABLEKS                       R11 R12 K83 ["controlsActive"]
      416 NEWCLOSURE                       R11 P52
      417 CAPTURE                          VAL R8
      418 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      420 SETTABLEKS                       R11 R12 K55 ["isActive"]
      422 NEWCLOSURE                       R11 P53
      423 CAPTURE                          VAL R8
      424 CAPTURE                          VAL R10
      425 GETTABLEKS                       R12 R8 K76 ["AutoSetupScreen"]
      427 SETTABLEKS                       R11 R12 K84 ["toggleClothingTable"]
      429 NEWTABLE                         R11 0 0
      431 SETTABLEKS                       R11 R8 K85 ["SelectScreen"]
      433 NEWCLOSURE                       R11 P54
      434 CAPTURE                          VAL R8
      435 GETTABLEKS                       R12 R8 K85 ["SelectScreen"]
      437 SETTABLEKS                       R11 R12 K55 ["isActive"]
      439 NEWCLOSURE                       R11 P55
      440 CAPTURE                          VAL R8
      441 GETTABLEKS                       R12 R8 K85 ["SelectScreen"]
      443 SETTABLEKS                       R11 R12 K86 ["clickAddSelected"]
      445 GETUPVAL                         R11 23
      446 MOVE                             R12 R8
      447 CALL                             R11 1 1
      448 SETTABLEKS                       R11 R8 K87 ["DisambiguationMenu"]
      450 NEWTABLE                         R11 0 0
      452 SETTABLEKS                       R11 R8 K88 ["TestingScreen"]
      454 NEWCLOSURE                       R11 P56
      455 CAPTURE                          VAL R8
      456 CAPTURE                          VAL R10
      457 GETTABLEKS                       R12 R8 K88 ["TestingScreen"]
      459 SETTABLEKS                       R11 R12 K55 ["isActive"]
      461 NEWCLOSURE                       R11 P57
      462 CAPTURE                          VAL R8
      463 CAPTURE                          VAL R10
      464 GETTABLEKS                       R12 R8 K88 ["TestingScreen"]
      466 SETTABLEKS                       R11 R12 K89 ["clickStop"]
      468 NEWTABLE                         R11 0 0
      470 SETTABLEKS                       R11 R8 K90 ["EditingTools"]
      472 NEWCLOSURE                       R11 P58
      473 CAPTURE                          VAL R8
      474 GETTABLEKS                       R12 R8 K90 ["EditingTools"]
      476 SETTABLEKS                       R11 R12 K91 ["clickBodyPointsToolButton"]
      478 DUPCLOSURE                       R11 K92 [PROTO_84]
      479 CAPTURE                          UPVAL U1
      480 GETTABLEKS                       R12 R8 K90 ["EditingTools"]
      482 SETTABLEKS                       R11 R12 K93 ["bodyPointsToolIsActive"]
      484 NEWCLOSURE                       R11 P60
      485 CAPTURE                          VAL R8
      486 GETTABLEKS                       R12 R8 K90 ["EditingTools"]
      488 SETTABLEKS                       R11 R12 K94 ["clickCageEditingToolButton"]
      490 DUPCLOSURE                       R11 K95 [PROTO_86]
      491 CAPTURE                          UPVAL U1
      492 GETTABLEKS                       R12 R8 K90 ["EditingTools"]
      494 SETTABLEKS                       R11 R12 K96 ["cageEditingToolIsActive"]
      496 NEWTABLE                         R11 0 0
      498 SETTABLEKS                       R11 R8 K97 ["CageEditingTool"]
      500 DUPCLOSURE                       R11 K98 [PROTO_87]
      501 CAPTURE                          UPVAL U1
      502 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      504 SETTABLEKS                       R11 R12 K99 ["getBrushRadiusSliderValue"]
      506 DUPCLOSURE                       R11 K100 [PROTO_88]
      507 CAPTURE                          UPVAL U1
      508 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      510 SETTABLEKS                       R11 R12 K101 ["getBrushFalloffSliderValue"]
      512 DUPCLOSURE                       R11 K102 [PROTO_90]
      513 CAPTURE                          UPVAL U2
      514 CAPTURE                          UPVAL U24
      515 CAPTURE                          UPVAL U18
      516 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      518 SETTABLEKS                       R11 R12 K103 ["ToggleShiftB"]
      520 DUPCLOSURE                       R11 K104 [PROTO_92]
      521 CAPTURE                          UPVAL U2
      522 CAPTURE                          UPVAL U24
      523 CAPTURE                          UPVAL U18
      524 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      526 SETTABLEKS                       R11 R12 K105 ["ToggleB"]
      528 NEWCLOSURE                       R11 P66
      529 CAPTURE                          UPVAL U25
      530 CAPTURE                          VAL R8
      531 CAPTURE                          UPVAL U2
      532 CAPTURE                          UPVAL U26
      533 CAPTURE                          UPVAL U18
      534 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      536 SETTABLEKS                       R11 R12 K106 ["activateShortcutAndMoveMouse"]
      538 NEWCLOSURE                       R11 P67
      539 CAPTURE                          VAL R8
      540 CAPTURE                          UPVAL U2
      541 CAPTURE                          UPVAL U18
      542 GETTABLEKS                       R12 R8 K97 ["CageEditingTool"]
      544 SETTABLEKS                       R11 R12 K107 ["activateShortcutAndMoveMouseWheel"]
      546 RETURN                           R8 1

PROTO_98:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 LOADN                            R2 255
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 3
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 MOVE                             R2 R1
       10 CALL                             R2 0 0
       11 GETTABLEKS                       R2 R0 K0 ["destroy"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_99:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cloneLizard"]
        3 LOADK                            R1 K1 ["ClonedLizard"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_101:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_102:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["select"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_104:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["withTestPreviewer"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_105:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K0 ["destroy"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_106:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_107:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["select"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_109:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["withTestPreviewerEditingTools"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_110:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["testAssets"]
        3 GETTABLEKS                       R0 R1 K1 ["AutoSetupTarget"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K3 ["Parent"]
       11 GETUPVAL                         R1 2
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["ServerStorage"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["UserInputService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K8 ["VirtualInputManager"]
       34 NAMECALL                         R5 R5 K3 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K9 ["Workspace"]
       40 NAMECALL                         R6 R6 K3 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K11 [script]
       45 LOADK                            R9 K12 ["AvatarCompatibilityPreviewer"]
       46 NAMECALL                         R7 R7 K13 ["FindFirstAncestor"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K15 [require]
       51 GETTABLEKS                       R10 R7 K16 ["Packages"]
       53 GETTABLEKS                       R9 R10 K17 ["Cryo"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETTABLEKS                       R11 R7 K16 ["Packages"]
       60 GETTABLEKS                       R10 R11 K18 ["Framework"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETTABLEKS                       R12 R7 K16 ["Packages"]
       67 GETTABLEKS                       R11 R12 K19 ["Foundation"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K15 [require]
       72 GETTABLEKS                       R13 R7 K16 ["Packages"]
       74 GETTABLEKS                       R12 R13 K20 ["React"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K15 [require]
       79 GETTABLEKS                       R14 R7 K16 ["Packages"]
       81 GETTABLEKS                       R13 R14 K21 ["ReactRoblox"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K15 [require]
       86 GETTABLEKS                       R16 R7 K16 ["Packages"]
       88 GETTABLEKS                       R15 R16 K22 ["Dev"]
       90 GETTABLEKS                       R14 R15 K23 ["ReactTestingLibrary"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K15 [require]
       95 GETTABLEKS                       R17 R7 K16 ["Packages"]
       97 GETTABLEKS                       R16 R17 K22 ["Dev"]
       99 GETTABLEKS                       R15 R16 K24 ["Rhodium"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K15 [require]
      104 GETTABLEKS                       R18 R7 K25 ["RhodiumTests"]
      106 GETTABLEKS                       R17 R18 K26 ["Utils"]
      108 GETTABLEKS                       R16 R17 K27 ["onTestEnd"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K15 [require]
      113 GETIMPORT                        R18 K11 [script]
      115 GETTABLEKS                       R17 R18 K28 ["createDisambiguationMenuTestHelpers"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K15 [require]
      120 GETTABLEKS                       R19 R7 K25 ["RhodiumTests"]
      122 GETTABLEKS                       R18 R19 K29 ["createMockContext"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K15 [require]
      127 GETTABLEKS                       R20 R7 K30 ["Src"]
      129 GETTABLEKS                       R19 R20 K31 ["Types"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K15 [require]
      134 GETTABLEKS                       R22 R7 K30 ["Src"]
      136 GETTABLEKS                       R21 R22 K32 ["Components"]
      138 GETTABLEKS                       R20 R21 K33 ["AssetServiceContextMock"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K15 [require]
      143 GETTABLEKS                       R23 R7 K30 ["Src"]
      145 GETTABLEKS                       R22 R23 K32 ["Components"]
      147 GETTABLEKS                       R21 R22 K34 ["App"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K15 [require]
      152 GETTABLEKS                       R24 R7 K30 ["Src"]
      154 GETTABLEKS                       R23 R24 K32 ["Components"]
      156 GETTABLEKS                       R22 R23 K35 ["ContextStack"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K15 [require]
      161 GETTABLEKS                       R26 R7 K30 ["Src"]
      163 GETTABLEKS                       R25 R26 K32 ["Components"]
      165 GETTABLEKS                       R24 R25 K36 ["EditingTools"]
      167 GETTABLEKS                       R23 R24 K37 ["EditingWorldModelContext"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K15 [require]
      172 GETTABLEKS                       R26 R7 K30 ["Src"]
      174 GETTABLEKS                       R25 R26 K32 ["Components"]
      176 GETTABLEKS                       R24 R25 K38 ["PlacesServiceContext"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K15 [require]
      181 GETTABLEKS                       R27 R7 K30 ["Src"]
      183 GETTABLEKS                       R26 R27 K32 ["Components"]
      185 GETTABLEKS                       R25 R26 K39 ["RunServiceContext"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K15 [require]
      190 GETTABLEKS                       R28 R7 K30 ["Src"]
      192 GETTABLEKS                       R27 R28 K32 ["Components"]
      194 GETTABLEKS                       R26 R27 K40 ["UGCAvatarServiceContext"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K15 [require]
      199 GETTABLEKS                       R28 R7 K25 ["RhodiumTests"]
      201 GETTABLEKS                       R27 R28 K41 ["UGCValidationContextMocks"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K15 [require]
      206 GETTABLEKS                       R30 R7 K30 ["Src"]
      208 GETTABLEKS                       R29 R30 K42 ["Flags"]
      210 GETTABLEKS                       R28 R29 K43 ["getFFlagAvatarAutosetupOptionsInput"]
      212 CALL                             R27 1 1
      213 GETIMPORT                        R28 K15 [require]
      215 GETTABLEKS                       R31 R7 K30 ["Src"]
      217 GETTABLEKS                       R30 R31 K42 ["Flags"]
      219 GETTABLEKS                       R29 R30 K44 ["getFFlagAvatarPreviewerEditingTools"]
      221 CALL                             R28 1 1
      222 GETIMPORT                        R29 K15 [require]
      224 GETTABLEKS                       R32 R7 K30 ["Src"]
      226 GETTABLEKS                       R31 R32 K42 ["Flags"]
      228 GETTABLEKS                       R30 R31 K45 ["getFFlagAvatarPreviewerSortClothingUI"]
      230 CALL                             R29 1 1
      231 GETIMPORT                        R30 K15 [require]
      233 GETTABLEKS                       R33 R7 K30 ["Src"]
      235 GETTABLEKS                       R32 R33 K42 ["Flags"]
      237 GETTABLEKS                       R31 R32 K46 ["getFFlagAvatarPreviewerLookComposer"]
      239 CALL                             R30 1 1
      240 GETIMPORT                        R31 K15 [require]
      242 GETTABLEKS                       R34 R7 K30 ["Src"]
      244 GETTABLEKS                       R33 R34 K42 ["Flags"]
      246 GETTABLEKS                       R32 R33 K47 ["getFFlagVirtualInputManagerMouseMoveDeltaEvent"]
      248 CALL                             R31 1 1
      249 GETTABLEKS                       R33 R9 K48 ["TestHelpers"]
      251 GETTABLEKS                       R32 R33 K49 ["provideMockContext"]
      253 NEWTABLE                         R33 16 0
      255 GETTABLEKS                       R34 R3 K50 ["TestAssets"]
      257 SETTABLEKS                       R34 R33 K51 ["testAssets"]
      259 DUPCLOSURE                       R34 K52 [PROTO_1]
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R14
      262 SETTABLEKS                       R34 R33 K53 ["clickSimpleTab"]
      264 DUPCLOSURE                       R34 K54 [PROTO_2]
      265 SETTABLEKS                       R34 R33 K55 ["deferYield"]
      267 DUPCLOSURE                       R34 K56 [PROTO_4]
      268 CAPTURE                          VAL R12
      269 CAPTURE                          VAL R33
      270 SETTABLEKS                       R34 R33 K57 ["startAutoSetupAndWaitUntilClick"]
      272 DUPCLOSURE                       R34 K58 [PROTO_6]
      273 CAPTURE                          VAL R33
      274 CAPTURE                          VAL R15
      275 CAPTURE                          VAL R6
      276 SETTABLEKS                       R34 R33 K59 ["cloneLizard"]
      278 DUPCLOSURE                       R34 K60 [PROTO_8]
      279 CAPTURE                          VAL R33
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R6
      282 SETTABLEKS                       R34 R33 K61 ["cloneRigidHat"]
      284 DUPCLOSURE                       R34 K62 [PROTO_12]
      285 CAPTURE                          VAL R28
      286 CAPTURE                          VAL R0
      287 DUPCLOSURE                       R35 K63 [PROTO_97]
      288 CAPTURE                          VAL R2
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R17
      292 CAPTURE                          VAL R8
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R21
      295 CAPTURE                          VAL R27
      296 CAPTURE                          VAL R10
      297 CAPTURE                          VAL R25
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R24
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R28
      303 CAPTURE                          VAL R22
      304 CAPTURE                          VAL R20
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R33
      308 CAPTURE                          VAL R30
      309 CAPTURE                          VAL R13
      310 CAPTURE                          VAL R29
      311 CAPTURE                          VAL R16
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R31
      314 CAPTURE                          VAL R5
      315 DUPCLOSURE                       R36 K64 [PROTO_99]
      316 CAPTURE                          VAL R35
      317 CAPTURE                          VAL R34
      318 SETTABLEKS                       R36 R33 K65 ["withTestPreviewer"]
      320 DUPCLOSURE                       R36 K66 [PROTO_101]
      321 CAPTURE                          VAL R33
      322 SETTABLEKS                       R36 R33 K67 ["withClonedLizard"]
      324 DUPCLOSURE                       R36 K68 [PROTO_104]
      325 CAPTURE                          VAL R33
      326 SETTABLEKS                       R36 R33 K69 ["withPreviewerAndLizard"]
      328 DUPCLOSURE                       R36 K70 [PROTO_106]
      329 CAPTURE                          VAL R35
      330 SETTABLEKS                       R36 R33 K71 ["withTestPreviewerEditingTools"]
      332 DUPCLOSURE                       R36 K72 [PROTO_109]
      333 CAPTURE                          VAL R33
      334 SETTABLEKS                       R36 R33 K73 ["withPreviewerAndLizardEditingTools"]
      336 DUPCLOSURE                       R36 K74 [PROTO_111]
      337 CAPTURE                          VAL R33
      338 CAPTURE                          VAL R6
      339 CAPTURE                          VAL R15
      340 SETTABLEKS                       R36 R33 K75 ["cloneAutoSetupTarget"]
      342 RETURN                           R33 1
