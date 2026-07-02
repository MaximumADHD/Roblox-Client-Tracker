PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
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
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["act"]
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
        6 GETTABLEKS                       R3 R0 K1 ["AutoSetupScreen"]
        8 GETTABLEKS                       R3 R3 K2 ["startAutoSetup"]
       10 CALL                             R3 0 0
       11 LOADN                            R3 0
       12 JUMPIF                           R2 ; [+22]
       13 ADDK                             R3 R3 K3 [1]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["act"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["deferYield"]
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
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["startAutoSetupAndWaitUntilClick"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["act"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["deferYield"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["testAssets"]
        3 GETTABLEKS                       R1 R1 K1 ["Lizard"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testAssets"]
        3 GETTABLEKS                       R0 R0 K1 ["RigidHat"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["Parent"]
       15 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testAssets"]
        3 GETTABLEKS                       R0 R0 K1 ["LayeredJacket"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["Parent"]
       15 RETURN                           R0 1

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 DUPCLOSURE                       R1 K0 [PROTO_13]
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

PROTO_17:
        0 GETIMPORT                        R1 K3 [Enum.RibbonTool.Move]
        2 RETURN                           R1 1

PROTO_18:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["runServiceIsRunning"]
        7 JUMPIFEQKB                       R1 TRUE ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"providers"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["List"]
        8 GETTABLEKS                       R3 R3 K4 ["join"]
       10 NEWTABLE                         R4 0 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["FoundationProvider"]
       18 DUPTABLE                         R7 K8 [{"theme", "overlayGui"}]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K9 ["Enums"]
       22 GETTABLEKS                       R8 R8 K10 ["Theme"]
       24 GETTABLEKS                       R8 R8 K11 ["Dark"]
       26 SETTABLEKS                       R8 R7 K6 ["theme"]
       28 GETUPVAL                         R8 4
       29 SETTABLEKS                       R8 R7 K7 ["overlayGui"]
       31 CALL                             R5 2 -1
       32 SETLIST                          R4 R5 -1 [1]
       34 NEWTABLE                         R5 0 6
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K0 ["createElement"]
       39 GETUPVAL                         R7 5
       40 GETTABLEKS                       R7 R7 K12 ["Provider"]
       42 DUPTABLE                         R8 K14 [{"value"}]
       43 GETUPVAL                         R9 6
       44 SETTABLEKS                       R9 R8 K13 ["value"]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["createElement"]
       50 GETUPVAL                         R8 7
       51 CALL                             R7 1 1
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K0 ["createElement"]
       55 GETUPVAL                         R9 8
       56 GETTABLEKS                       R9 R9 K12 ["Provider"]
       58 DUPTABLE                         R10 K14 [{"value"}]
       59 GETUPVAL                         R11 9
       60 GETTABLEKS                       R11 R11 K15 ["placesService"]
       62 SETTABLEKS                       R11 R10 K13 ["value"]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K0 ["createElement"]
       68 GETUPVAL                         R10 10
       69 GETTABLEKS                       R10 R10 K12 ["Provider"]
       71 DUPTABLE                         R11 K14 [{"value"}]
       72 GETUPVAL                         R12 11
       73 SETTABLEKS                       R12 R11 K13 ["value"]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K0 ["createElement"]
       79 GETUPVAL                         R11 12
       80 GETTABLEKS                       R11 R11 K16 ["NeverReturnsProvider"]
       82 CALL                             R10 1 1
       83 GETUPVAL                         R12 13
       84 CALL                             R12 0 1
       85 JUMPIFNOT                        R12 ; [+8]
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K0 ["createElement"]
       89 GETUPVAL                         R12 14
       90 GETTABLEKS                       R12 R12 K12 ["Provider"]
       92 CALL                             R11 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R11
       95 SETLIST                          R5 R6 6 [1]
       97 GETUPVAL                         R7 15
       98 JUMPIFEQKNIL                     R7 ; [+10]
      100 GETUPVAL                         R7 15
      101 GETTABLEKS                       R7 R7 K17 ["wrapAppContexts"]
      103 JUMPIFEQKNIL                     R7 ; [+5]
      105 GETUPVAL                         R6 15
      106 GETTABLEKS                       R6 R6 K17 ["wrapAppContexts"]
      108 JUMP                             ; [+2]
      109 NEWTABLE                         R6 0 0
      111 CALL                             R3 3 1
      112 SETTABLEKS                       R3 R2 K1 ["providers"]
      114 GETUPVAL                         R3 0
      115 GETTABLEKS                       R3 R3 K0 ["createElement"]
      117 GETUPVAL                         R4 16
      118 CALL                             R3 1 -1
      119 CALL                             R0 -1 1
      120 GETUPVAL                         R1 17
      121 GETUPVAL                         R3 18
      122 GETUPVAL                         R4 19
      123 GETTABLEKS                       R4 R4 K18 ["context"]
      125 MOVE                             R5 R0
      126 CALL                             R3 2 -1
      127 NAMECALL                         R1 R1 K19 ["render"]
      129 CALL                             R1 -1 0
      130 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K1 ["Destroy"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionService"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Set"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionService"]
        3 NAMECALL                         R0 R0 K1 ["Get"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["analyticsService"]
        3 GETTABLEKS                       R0 R0 K1 ["lastEvent"]
        5 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["subWindows"]
        5 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["plugin"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["GetSubWindow"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_28:
        0 GETTABLEKS                       R3 R0 K0 ["SolidBackground"]
        2 GETTABLEKS                       R3 R3 K1 ["ButtonContainer"]
        4 GETTABLE                         R2 R3 R1
        5 GETTABLEKS                       R2 R2 K2 ["Contents"]
        7 GETTABLEKS                       R2 R2 K3 ["TextButton"]
        9 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["getStyledDialogButton"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 NAMECALL                         R0 R0 K3 ["click"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["SolidBackground"]
        2 GETTABLEKS                       R1 R1 K1 ["Contents"]
        4 GETTABLEKS                       R1 R1 K1 ["Contents"]
        6 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["within"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R2 R2 K1 ["getByText"]
        7 MOVE                             R3 R1
        8 DUPTABLE                         R4 K4 [{["exact"] = False}]
        9 CALL                             R2 2 1
       10 LOADK                            R5 K5 ["GuiButton"]
       11 NAMECALL                         R3 R2 K6 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R3 2 1
       14 LOADK                            R7 K7 ["Button with text \"%*\" not found"]
       15 MOVE                             R9 R1
       16 NAMECALL                         R7 R7 K8 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 FASTCALL2                        ASSERT R3 R6 ; [+4]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K10 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R3
       28 DUPTABLE                         R6 K13 [{["forceResize"] = True}]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["within"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K1 ["getAllByTestId"]
        7 LOADK                            R4 K2 ["--foundation-checkbox"]
        8 CALL                             R3 1 1
        9 GETTABLE                         R2 R3 R1
       10 MOVE                             R4 R2
       11 JUMPIFNOT                        R4 ; [+4]
       12 LOADK                            R6 K3 ["GuiButton"]
       13 NAMECALL                         R4 R2 K4 ["IsA"]
       15 CALL                             R4 2 1
       16 LOADK                            R6 K5 ["No clickable Foundation checkbox at index %* in sub-window"]
       17 MOVE                             R8 R1
       18 NAMECALL                         R6 R6 K6 ["format"]
       20 CALL                             R6 2 1
       21 MOVE                             R5 R6
       22 FASTCALL2                        ASSERT R4 R5 ; [+3]
       24 GETIMPORT                        R3 K8 [assert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 1
       28 MOVE                             R4 R2
       29 DUPTABLE                         R5 K12 [{["resizeAncestors"] = True, ["forceResize"] = True}]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["select"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["cloneLizard"]
        8 LOADK                            R4 K2 ["FreshLizard_%*"]
        9 GETUPVAL                         R6 2
       10 NAMECALL                         R4 R4 K3 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 -1
       15 SETLIST                          R1 R2 -1 [1]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_36:
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
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["XPath"]
       17 GETTABLEKS                       R3 R3 K5 ["new"]
       19 LOADK                            R5 K6 ["game.CoreGui.%*.%*"]
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 3 1
       25 MOVE                             R4 R5
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K4 ["XPath"]
       31 GETTABLEKS                       R3 R3 K5 ["new"]
       33 LOADK                            R5 K6 ["game.CoreGui.%*.%*"]
       34 GETUPVAL                         R7 1
       35 MOVE                             R8 R2
       36 NAMECALL                         R5 R5 K7 ["format"]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Element"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["pathOf"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_38:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["XPath"]
       11 GETTABLEKS                       R3 R3 K4 ["new"]
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
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K7 ["elementByPath"]
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

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["elementByPath"]
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
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K10 ["debugPath"]
       32 MOVE                             R11 R0
       33 MOVE                             R12 R1
       34 CALL                             R10 2 1
       35 NAMECALL                         R7 R7 K11 ["format"]
       37 CALL                             R7 3 1
       38 MOVE                             R6 R7
       39 CALL                             R5 1 0
       40 RETURN                           R2 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pathOf"]
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
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["act"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["deferYield"]
       22 CALL                             R4 1 0
       23 NAMECALL                         R4 R2 K3 ["getFirstInstance"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 JUMPIFEQKNIL                     R3 ; [+2]
       29 RETURN                           R3 1
       30 NAMECALL                         R4 R2 K6 ["waitForFirstInstance"]
       32 CALL                             R4 1 1
       33 RETURN                           R4 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pathOf"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["getFirstInstance"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectElementByPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K1 ["click"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_44:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["ui"]
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

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resize"]
        3 LOADN                            R1 1024
        4 LOADN                            R2 758
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 LOADK                            R4 K1 ["Menu"]
        9 LOADB                            R5 1
       10 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       12 CALL                             R2 3 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       19 LOADK                            R5 K3 ["Dropdown menu not found in focus container"]
       20 GETIMPORT                        R3 K5 [assert]
       22 CALL                             R3 2 0
       23 LOADNIL                          R3
       24 NAMECALL                         R4 R2 K6 ["GetDescendants"]
       26 CALL                             R4 1 3
       27 FORGPREP                         R4
       28 LOADK                            R11 K7 ["TextLabel"]
       29 NAMECALL                         R9 R8 K8 ["IsA"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+16]
       33 GETIMPORT                        R9 K11 [string.find]
       35 GETTABLEKS                       R10 R8 K12 ["Text"]
       37 LOADK                            R12 K13 [".%*:"]
       38 MOVE                             R14 R1
       39 NAMECALL                         R12 R12 K14 ["format"]
       41 CALL                             R12 2 1
       42 MOVE                             R11 R12
       43 LOADN                            R12 1
       44 LOADB                            R13 1
       45 CALL                             R9 4 1
       46 JUMPIFNOT                        R9 ; [+2]
       47 MOVE                             R3 R8
       48 JUMP                             ; [+2]
       49 FORGLOOP                         R4 2 ; [-22]
       51 JUMPIFNOTEQKNIL                  R3 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 LOADK                            R7 K15 ["Dropdown option for localization key \"%*\" not found"]
       56 MOVE                             R9 R1
       57 NAMECALL                         R7 R7 K14 ["format"]
       59 CALL                             R7 2 1
       60 MOVE                             R6 R7
       61 FASTCALL2                        ASSERT R5 R6 ; [+3]
       63 GETIMPORT                        R4 K5 [assert]
       65 CALL                             R4 2 0
       66 LOADK                            R6 K16 ["TextButton"]
       67 NAMECALL                         R4 R3 K17 ["FindFirstAncestorWhichIsA"]
       69 CALL                             R4 2 1
       70 JUMPIFNOTEQKNIL                  R4 ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 LOADK                            R8 K18 ["Could not find TextButton ancestor for dropdown option \"%*\""]
       75 MOVE                             R10 R1
       76 NAMECALL                         R8 R8 K14 ["format"]
       78 CALL                             R8 2 1
       79 MOVE                             R7 R8
       80 FASTCALL2                        ASSERT R6 R7 ; [+3]
       82 GETIMPORT                        R5 K5 [assert]
       84 CALL                             R5 2 0
       85 GETUPVAL                         R5 2
       86 LOADK                            R7 K19 ["TopLevelDetector"]
       87 NAMECALL                         R5 R5 K2 ["FindFirstChild"]
       89 CALL                             R5 2 1
       90 LOADB                            R7 0
       91 JUMPIFEQKNIL                     R5 ; [+5]
       93 LOADK                            R9 K20 ["ImageButton"]
       94 NAMECALL                         R7 R5 K8 ["IsA"]
       96 CALL                             R7 2 1
       97 FASTCALL2K                       ASSERT R7 K21 ; [+4]
       99 LOADK                            R8 K21 ["TopLevelDetector ImageButton not found in focus container"]
      100 GETIMPORT                        R6 K5 [assert]
      102 CALL                             R6 2 0
      103 LOADK                            R8 K22 ["ScrollBlocker"]
      104 NAMECALL                         R6 R5 K2 ["FindFirstChild"]
      106 CALL                             R6 2 1
      107 LOADB                            R8 0
      108 JUMPIFEQKNIL                     R6 ; [+5]
      110 LOADK                            R10 K23 ["ScrollingFrame"]
      111 NAMECALL                         R8 R6 K8 ["IsA"]
      113 CALL                             R8 2 1
      114 FASTCALL2K                       ASSERT R8 K24 ; [+4]
      116 LOADK                            R9 K24 ["ScrollBlocker ScrollingFrame not found inside TopLevelDetector"]
      117 GETIMPORT                        R7 K5 [assert]
      119 CALL                             R7 2 0
      120 GETTABLEKS                       R7 R5 K25 ["AbsoluteSize"]
      122 GETIMPORT                        R8 K28 [UDim2.fromOffset]
      124 GETTABLEKS                       R9 R7 K29 ["X"]
      126 GETTABLEKS                       R10 R7 K30 ["Y"]
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R6 K31 ["Size"]
      131 GETTABLEKS                       R8 R6 K31 ["Size"]
      133 SETTABLEKS                       R8 R6 K32 ["CanvasSize"]
      135 GETIMPORT                        R8 K34 [UDim2.new]
      137 CALL                             R8 0 1
      138 SETTABLEKS                       R8 R5 K31 ["Size"]
      140 GETUPVAL                         R8 0
      141 GETTABLEKS                       R8 R8 K0 ["act"]
      143 NEWCLOSURE                       R9 P1
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R4
      146 CALL                             R8 1 0
      147 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["expectInstanceByPath"]
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
       24 GETTABLEKS                       R8 R7 K8 ["Row"]
       26 GETTABLEKS                       R8 R8 K9 ["Label"]
       28 GETTABLEKS                       R8 R8 K10 ["Text"]
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
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K16 ["clickSimpleTab"]
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

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.AssetPalettes.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.TabBar.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TopLevelDetector"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_56:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETIMPORT                        R3 K2 [os.clock]
        5 CALL                             R3 0 1
        6 SUB                              R2 R3 R1
        7 ORK                              R3 R0 K3 [1]
        8 JUMPIFNOTLT                      R2 R3 ; [+16]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["AvatarScreen"]
       13 GETTABLEKS                       R2 R2 K5 ["isActive"]
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K6 ["act"]
       21 GETIMPORT                        R3 K9 [task.wait]
       23 CALL                             R2 1 0
       24 JUMPBACK                         ; [-22]
       25 GETIMPORT                        R2 K11 [error]
       27 LOADK                            R3 K12 ["AvatarScreen didn't become active within timeout"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["AvatarScreen.Contents.Tabs.TabBar.ScrollingFrame.Scroller.Tabs"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AvatarScreen"]
        4 GETTABLEKS                       R2 R2 K1 ["XPATH_ASSET_PALETTES"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expectElementByPath"]
        3 LOADK                            R3 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_builtin_%*.Contents.TextButton"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["act"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expectElementByPath"]
        3 LOADK                            R3 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_instance_%*.Contents.TextButton"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["act"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AvatarScreen"]
        6 GETTABLEKS                       R1 R1 K2 ["XPATH_ASSET_PALETTES"]
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
       23 GETTABLEKS                       R6 R5 K9 ["Row"]
       25 GETTABLEKS                       R6 R6 K10 ["Label"]
       27 GETTABLEKS                       R6 R6 K11 ["FontFace"]
       29 GETTABLEKS                       R6 R6 K12 ["Bold"]
       31 JUMPIFNOT                        R6 ; [+7]
       32 GETTABLEKS                       R6 R5 K9 ["Row"]
       34 GETTABLEKS                       R6 R6 K10 ["Label"]
       36 GETTABLEKS                       R6 R6 K13 ["Text"]
       38 RETURN                           R6 1
       39 FORGLOOP                         R1 2 ; [-22]
       41 GETIMPORT                        R1 K4 [error]
       43 LOADK                            R2 K14 ["Palettes are open, but there is no open palette"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R1 R1 K1 ["selectedPaletteText"]
        5 CALL                             R1 0 1
        6 LOADK                            R3 K2 [".+%.(.-):%[%]$"]
        7 NAMECALL                         R1 R1 K3 ["match"]
        9 CALL                             R1 2 1
       10 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       12 LOADK                            R2 K4 ["Couldn't match palette key"]
       13 GETIMPORT                        R0 K6 [assert]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instanceByPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.Preview.DummyPreview.DummyPreview.WorldModel.Dummy"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["expectInstanceByPath"]
       11 LOADK                            R2 K1 ["AvatarScreen.Contents.Contents.Preview.DummyPreview.DummyPreview.WorldModel.Dummy"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        6 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.AddItemButton.SplitButtonContainer.AddButton.IconWrapper.Icon"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["clickPath"]
       12 LOADK                            R1 K2 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.AddItemButton.Inner.Contents.TextButton"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_68:
        0 LOADK                            R4 K0 ["ImageLabel"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Image"]
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 RETURN                           R1 1

PROTO_69:
        0 GETTABLEKS                       R3 R0 K0 ["yPosition"]
        2 GETTABLEKS                       R4 R1 K0 ["yPosition"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_70:
        0 DUPCLOSURE                       R0 K0 [PROTO_68]
        1 DUPCLOSURE                       R1 K1 [PROTO_69]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["expectInstanceByPath"]
        5 LOADK                            R3 K3 ["AvatarScreen.Contents.Contents.Preview.EquippedItemsSidebar"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R2 K4 ["Contents"]
       11 GETTABLEKS                       R4 R4 K5 ["LayeredClothingEquipment"]
       13 NAMECALL                         R4 R4 K6 ["GetChildren"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 DUPTABLE                         R11 K10 [{"yPosition", "instance", "preview"}]
       18 GETTABLEKS                       R12 R8 K11 ["AbsolutePosition"]
       20 GETTABLEKS                       R12 R12 K12 ["Y"]
       22 SETTABLEKS                       R12 R11 K7 ["yPosition"]
       24 SETTABLEKS                       R8 R11 K8 ["instance"]
       26 GETUPVAL                         R13 1
       27 GETTABLEKS                       R13 R13 K13 ["getByTestId"]
       29 MOVE                             R14 R8
       30 LOADK                            R15 K14 ["EquippedItemPreview"]
       31 CALL                             R13 2 1
       32 GETTABLEKS                       R13 R13 K15 ["Inner"]
       34 GETTABLEKS                       R13 R13 K16 ["Preview"]
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
       57 GETTABLEKS                       R5 R2 K23 ["OtherEquipment"]
       59 GETTABLEKS                       R5 R5 K24 ["Scroller"]
       61 NAMECALL                         R5 R5 K6 ["GetChildren"]
       63 CALL                             R5 1 3
       64 FORGPREP                         R5
       65 LOADK                            R12 K25 ["Frame"]
       66 NAMECALL                         R10 R9 K18 ["IsA"]
       68 CALL                             R10 2 1
       69 JUMPIFNOT                        R10 ; [+30]
       70 DUPTABLE                         R12 K10 [{"yPosition", "instance", "preview"}]
       71 GETTABLEKS                       R13 R9 K11 ["AbsolutePosition"]
       73 GETTABLEKS                       R13 R13 K12 ["Y"]
       75 SETTABLEKS                       R13 R12 K7 ["yPosition"]
       77 SETTABLEKS                       R9 R12 K8 ["instance"]
       79 GETTABLEKS                       R14 R9 K15 ["Inner"]
       81 GETTABLEKS                       R14 R14 K16 ["Preview"]
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

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.Publish"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckBody"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckFace"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.SettingsButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.Back.Button"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R0 K2 ["SendMouseMoveEvent"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["AbsolutePosition"]
       10 GETTABLEKS                       R1 R1 K4 ["X"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["AbsolutePosition"]
       15 GETTABLEKS                       R2 R2 K5 ["Y"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       21 GETTABLEKS                       R0 R0 K6 ["waitForInputEventsProcessed"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R0 R0 K1 ["getSidebarItems"]
        5 CALL                             R0 0 1
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K2 ["layeredClothing"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K3 ["instance"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K4 ["act"]
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
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K17 ["clickPath"]
       75 FASTCALL2                        STRING_SUB R2 R3 ; [+5]
       77 MOVE                             R6 R2
       78 MOVE                             R7 R3
       79 GETIMPORT                        R5 K19 [string.sub]
       81 CALL                             R5 2 1
       82 CALL                             R4 1 0
       83 RETURN                           R0 0

PROTO_78:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 GETTABLEKS                       R3 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R3 R3 K1 ["Y"]
        8 JUMPIFEQ                         R2 R3 ; [+14]
       10 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
       12 GETTABLEKS                       R3 R3 K1 ["Y"]
       14 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
       16 GETTABLEKS                       R4 R4 K1 ["Y"]
       18 JUMPIFLT                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
       25 GETTABLEKS                       R3 R3 K2 ["X"]
       27 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
       29 GETTABLEKS                       R4 R4 K2 ["X"]
       31 JUMPIFLT                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 RETURN                           R2 1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["clickWithoutValidation"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R2 R2 K1 ["selectedPaletteKey"]
        5 CALL                             R2 0 1
        6 JUMPIFEQKS                       R2 K2 ["Skin"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       12 LOADK                            R2 K3 ["Not on Skin tab"]
       13 GETIMPORT                        R0 K5 [assert]
       15 CALL                             R0 2 0
       16 NEWTABLE                         R0 0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["getAllByTestId"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["ui"]
       24 LOADK                            R3 K8 ["SkinPreview"]
       25 CALL                             R1 2 1
       26 GETIMPORT                        R2 K11 [table.sort]
       28 MOVE                             R3 R1
       29 DUPCLOSURE                       R4 K12 [PROTO_78]
       30 CALL                             R2 2 0
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 DUPTABLE                         R9 K16 [{"color", "click", "isClickable"}]
       36 GETTABLEKS                       R10 R6 K17 ["BackgroundColor3"]
       38 SETTABLEKS                       R10 R9 K13 ["color"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R10 R9 K14 ["click"]
       46 LOADK                            R13 K18 ["TextButton"]
       47 NAMECALL                         R11 R6 K19 ["IsA"]
       49 CALL                             R11 2 1
       50 NOT                              R10 R11
       51 SETTABLEKS                       R10 R9 K15 ["isClickable"]
       53 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       55 MOVE                             R8 R0
       56 GETIMPORT                        R7 K21 [table.insert]
       58 CALL                             R7 2 0
       59 FORGLOOP                         R2 2 ; [-25]
       61 RETURN                           R0 1

PROTO_82:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K4 ["WrapTextureTransfer"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R2 K5 ["Parent"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["select"]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["AvatarScreen"]
       22 GETTABLEKS                       R3 R3 K8 ["clickAddItem"]
       24 CALL                             R3 0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K9 ["DisambiguationMenu"]
       28 GETTABLEKS                       R4 R4 K10 ["isOpen"]
       30 CALL                             R4 0 1
       31 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       33 LOADK                            R5 K11 ["Disambiguation menu not open"]
       34 GETIMPORT                        R3 K13 [assert]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K9 ["DisambiguationMenu"]
       40 GETTABLEKS                       R3 R3 K14 ["getEntry"]
       42 LOADK                            R4 K3 ["Decal"]
       43 CALL                             R3 1 1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K9 ["DisambiguationMenu"]
       47 GETTABLEKS                       R4 R4 K15 ["openAmbiguousAssetTypeDropdown"]
       49 MOVE                             R5 R3
       50 CALL                             R4 1 1
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K9 ["DisambiguationMenu"]
       54 GETTABLEKS                       R5 R5 K16 ["clickMatchingDropdownEntry"]
       56 MOVE                             R6 R4
       57 MOVE                             R7 R0
       58 CALL                             R5 2 0
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K9 ["DisambiguationMenu"]
       62 GETTABLEKS                       R5 R5 K17 ["clickOk"]
       64 CALL                             R5 0 0
       65 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R0 K2 ["SendMouseMoveEvent"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["AbsolutePosition"]
       10 GETTABLEKS                       R2 R2 K4 ["X"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R4 K4 ["X"]
       17 MULK                             R3 R4 K5 [0.5]
       18 ADD                              R1 R2 R3
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       22 GETTABLEKS                       R3 R3 K7 ["Y"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K6 ["AbsoluteSize"]
       27 GETTABLEKS                       R5 R5 K7 ["Y"]
       29 MULK                             R4 R5 K5 [0.5]
       30 ADD                              R2 R3 R4
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       35 GETTABLEKS                       R0 R0 K8 ["waitForInputEventsProcessed"]
       37 CALL                             R0 0 0
       38 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expectInstanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Catalog scroller not found"]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 NAMECALL                         R3 R1 K5 ["GetChildren"]
       13 CALL                             R3 1 3
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K6 ["Name"]
       17 LOADK                            R10 K7 ["^item_([a-z]+)_%d+$"]
       18 NAMECALL                         R8 R8 K8 ["match"]
       20 CALL                             R8 2 1
       21 JUMPIFNOTEQ                      R8 R0 ; [+3]
       23 MOVE                             R2 R7
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R3 2 ; [-11]
       27 JUMPIF                           R2 ; [+30]
       28 NEWTABLE                         R3 0 0
       30 NAMECALL                         R4 R1 K5 ["GetChildren"]
       32 CALL                             R4 1 3
       33 FORGPREP                         R4
       34 GETTABLEKS                       R11 R8 K6 ["Name"]
       36 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       38 MOVE                             R10 R3
       39 GETIMPORT                        R9 K11 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-9]
       44 GETIMPORT                        R4 K3 [error]
       46 LOADK                            R6 K12 ["No catalog item found with source '%*'. Scroller children: %*"]
       47 MOVE                             R8 R0
       48 GETIMPORT                        R9 K14 [table.concat]
       50 MOVE                             R10 R3
       51 LOADK                            R11 K15 [", "]
       52 CALL                             R9 2 1
       53 NAMECALL                         R6 R6 K16 ["format"]
       55 CALL                             R6 3 1
       56 MOVE                             R5 R6
       57 CALL                             R4 1 0
       58 LOADNIL                          R3
       59 LOADK                            R6 K17 ["Contents"]
       60 LOADB                            R7 1
       61 NAMECALL                         R4 R2 K18 ["FindFirstChild"]
       63 CALL                             R4 3 1
       64 JUMPIFNOT                        R4 ; [+7]
       65 LOADK                            R7 K19 ["GuiObject"]
       66 NAMECALL                         R5 R4 K20 ["IsA"]
       68 CALL                             R5 2 1
       69 JUMPIFNOT                        R5 ; [+2]
       70 MOVE                             R3 R4
       71 JUMP                             ; [+12]
       72 LOADK                            R7 K21 ["TextButton"]
       73 LOADB                            R8 1
       74 NAMECALL                         R5 R2 K22 ["FindFirstChildWhichIsA"]
       76 CALL                             R5 3 1
       77 JUMPIF                           R5 ; [+5]
       78 LOADK                            R7 K23 ["ImageButton"]
       79 LOADB                            R8 1
       80 NAMECALL                         R5 R2 K22 ["FindFirstChildWhichIsA"]
       82 CALL                             R5 3 1
       83 MOVE                             R3 R5
       84 JUMPIF                           R3 ; [+10]
       85 GETIMPORT                        R5 K3 [error]
       87 LOADK                            R7 K24 ["No hoverable element found in catalog item '%*'"]
       88 GETTABLEKS                       R9 R2 K6 ["Name"]
       90 NAMECALL                         R7 R7 K16 ["format"]
       92 CALL                             R7 2 1
       93 MOVE                             R6 R7
       94 CALL                             R5 1 0
       95 JUMPIFNOTEQKNIL                  R3 ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 FASTCALL2K                       ASSERT R6 K25 ; [+4]
      101 LOADK                            R7 K25 ["hoverTarget must exist"]
      102 GETIMPORT                        R5 K27 [assert]
      104 CALL                             R5 2 0
      105 GETUPVAL                         R5 1
      106 GETTABLEKS                       R5 R5 K28 ["act"]
      108 NEWCLOSURE                       R6 P0
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          REF R3
      111 CALL                             R5 1 0
      112 CLOSEUPVALS                      R3
      113 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R0 K2 ["SendMouseMoveEvent"]
        7 LOADN                            R1 9999
        8 LOADN                            R2 9999
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       13 GETTABLEKS                       R0 R0 K3 ["waitForInputEventsProcessed"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_85]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_87:
        0 LOADK                            R3 K0 ["MakeupDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_88:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AvatarScreen"]
        3 GETTABLEKS                       R0 R0 K1 ["getDummy"]
        5 CALL                             R0 0 1
        6 LOADK                            R3 K2 ["HumanoidDescription"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 1
       11 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K4 ["HumanoidDescription not found under dummy"]
       15 GETIMPORT                        R2 K6 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K7 ["count"]
       21 NAMECALL                         R3 R1 K8 ["GetChildren"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K9 [PROTO_87]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instanceByPath"]
        3 LOADK                            R1 K1 ["Children.ErrorAlert.Alert.Contents.Description"]
        4 CALL                             R0 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 LOADK                            R4 K2 ["TextLabel"]
        9 NAMECALL                         R2 R0 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["Description isn't a valid instance"]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 MOVE                             R1 R0
       19 JUMPIFNOT                        R1 ; [+2]
       20 GETTABLEKS                       R1 R0 K7 ["Text"]
       22 RETURN                           R1 1

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instanceByPath"]
        3 LOADK                            R1 K1 ["Children.GenerationCard.TitlePane.Title"]
        4 CALL                             R0 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 LOADK                            R4 K2 ["TextLabel"]
        9 NAMECALL                         R2 R0 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["Title isn't a valid instance"]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 MOVE                             R1 R0
       19 JUMPIFNOT                        R1 ; [+2]
       20 GETTABLEKS                       R1 R0 K7 ["Text"]
       22 RETURN                           R1 1

PROTO_91:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
        3 LOADK                            R1 K1 ["Children.Contents.SplitView.Pane 1.Child.ModelPreview.ModelPreview.ViewportFrame.WorldModel.Dummy"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_92:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.Controls.Controls.Contents.Start"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.GenerationCard"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["getSubWindow"]
        8 LOADN                            R1 1
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["clickStyledDialogButton"]
       13 MOVE                             R2 R0
       14 LOADN                            R3 1
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R1 R1 K1 ["isActive"]
        5 CALL                             R1 0 1
        6 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        8 LOADK                            R2 K2 ["Auto setup screen is not active"]
        9 GETIMPORT                        R0 K4 [assert]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["instanceByPath"]
       15 LOADK                            R2 K6 ["Children.Controls"]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_95:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R1 R1 K1 ["getDummy"]
        5 CALL                             R1 0 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_96:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.Contents.SplitView.Pane 1.Child.ToggleBar.Toggle"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 GETIMPORT                        R3 K3 [task.wait]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["expectInstanceByPath"]
        9 LOADK                            R3 K5 ["Children.Contents.SplitView.Pane 2.Child"]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       17 LOADK                            R5 K6 ["Sort clothing table pane not found"]
       18 GETIMPORT                        R3 K8 [assert]
       20 CALL                             R3 2 0
       21 NEWTABLE                         R3 0 0
       23 NAMECALL                         R4 R2 K9 ["GetDescendants"]
       25 CALL                             R4 1 3
       26 FORGPREP                         R4
       27 GETTABLEKS                       R9 R8 K10 ["Name"]
       29 JUMPIFNOTEQKS                    R9 K11 ["SelectInput"] ; [+13]
       31 LOADK                            R11 K12 ["GuiButton"]
       32 NAMECALL                         R9 R8 K13 ["IsA"]
       34 CALL                             R9 2 1
       35 JUMPIFNOT                        R9 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       38 MOVE                             R10 R3
       39 MOVE                             R11 R8
       40 GETIMPORT                        R9 K16 [table.insert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R4 2 ; [-17]
       45 ORK                              R4 R1 K17 [1]
       46 GETTABLE                         R5 R3 R4
       47 JUMPIFNOTEQKNIL                  R5 ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 LOADK                            R9 K18 ["SelectInput at row index %* not found (found %* SelectInputs in sort clothing table)"]
       52 MOVE                             R11 R4
       53 LENGTH                           R12 R3
       54 NAMECALL                         R9 R9 K19 ["format"]
       56 CALL                             R9 3 1
       57 MOVE                             R8 R9
       58 FASTCALL2                        ASSERT R7 R8 ; [+3]
       60 GETIMPORT                        R6 K8 [assert]
       62 CALL                             R6 2 0
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K20 ["selectDropdownOption"]
       66 MOVE                             R7 R5
       67 MOVE                             R8 R0
       68 CALL                             R6 2 0
       69 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StageSelect.SettingsButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StageSelect.Contents.Back.Button"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TopLevelDetector"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TopLevelDetector"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K2 ["Settings popup not open"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["act"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["X"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 1
        9 GETIMPORT                        R6 K3 [game]
       11 LOADN                            R7 0
       12 NAMECALL                         R0 R0 K4 ["SendMouseButtonEvent"]
       14 CALL                             R0 7 0
       15 GETUPVAL                         R0 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K0 ["X"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["Y"]
       22 LOADN                            R4 0
       23 LOADB                            R5 0
       24 GETIMPORT                        R6 K3 [game]
       26 LOADN                            R7 0
       27 NAMECALL                         R0 R0 K4 ["SendMouseButtonEvent"]
       29 CALL                             R0 7 0
       30 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TopLevelDetector"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Settings popup not open"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 NAMECALL                         R2 R1 K5 ["GetDescendants"]
       14 CALL                             R2 1 3
       15 FORGPREP                         R2
       16 LOADK                            R9 K6 ["TextLabel"]
       17 NAMECALL                         R7 R6 K7 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+36]
       21 GETIMPORT                        R7 K10 [string.find]
       23 GETTABLEKS                       R8 R6 K11 ["Text"]
       25 MOVE                             R9 R0
       26 LOADN                            R10 1
       27 LOADB                            R11 1
       28 CALL                             R7 4 1
       29 JUMPIFNOT                        R7 ; [+27]
       30 GETTABLEKS                       R7 R6 K12 ["AbsolutePosition"]
       32 GETTABLEKS                       R8 R6 K13 ["AbsoluteSize"]
       34 GETIMPORT                        R9 K16 [Vector2.new]
       36 GETTABLEKS                       R11 R7 K17 ["X"]
       38 GETTABLEKS                       R13 R8 K17 ["X"]
       40 DIVK                             R12 R13 K18 [2]
       41 ADD                              R10 R11 R12
       42 GETTABLEKS                       R12 R7 K19 ["Y"]
       44 GETTABLEKS                       R14 R8 K19 ["Y"]
       46 DIVK                             R13 R14 K18 [2]
       47 ADD                              R11 R12 R13
       48 CALL                             R9 2 1
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K20 ["act"]
       52 NEWCLOSURE                       R11 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R9
       55 CALL                             R10 1 0
       56 RETURN                           R0 0
       57 FORGLOOP                         R2 2 ; [-42]
       59 GETIMPORT                        R2 K22 [error]
       61 LOADK                            R4 K23 ["Setup type with key \"%*\" not found in settings"]
       62 MOVE                             R6 R0
       63 NAMECALL                         R4 R4 K24 ["format"]
       65 CALL                             R4 2 1
       66 MOVE                             R3 R4
       67 CALL                             R2 1 0
       68 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R0 R0 K1 ["clickSettings"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["AutoSetupScreen"]
        9 GETTABLEKS                       R0 R0 K2 ["clickSettingsSetupType"]
       11 LOADK                            R1 K3 [".AlignFront:"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["AutoSetupScreen"]
       16 GETTABLEKS                       R0 R0 K4 ["dismissSettings"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
        3 LOADK                            R1 K1 ["Children.Contents.SplitView.Pane 1.Child.ModelPreview.ModelPreview.ViewportFrame"]
        4 CALL                             R0 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 LOADK                            R4 K2 ["ViewportFrame"]
        9 NAMECALL                         R2 R0 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["ModelPreview ViewportFrame not found"]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K7 ["CurrentCamera"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       26 LOADK                            R4 K8 ["ModelPreview ViewportFrame has no CurrentCamera"]
       27 GETIMPORT                        R2 K6 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R1 K9 ["CFrame"]
       32 RETURN                           R2 1

PROTO_107:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["Provider.Buttons"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_108:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Provider.Buttons.AddSelected"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["Children.StopButton"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_110:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StopButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Toolbar"]
        4 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        9 LOADK                            R1 K3 ["Toolbar.ToolbarBase.1"]
       10 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerBodyPointsToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_113:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Toolbar"]
        4 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        9 LOADK                            R1 K3 ["Toolbar.ToolbarBase.2"]
       10 LOADK                            R2 K2 ["AvatarPreviewerEditingToolbar"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_115:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R1 R0 K2 ["Toolbar"]
        7 GETTABLEKS                       R1 R1 K3 ["ToolbarBase"]
        9 NAMECALL                         R2 R1 K4 ["GetChildren"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K5 ["Slider"]
       14 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+20]
       19 GETTABLEKS                       R7 R6 K6 ["Icon"]
       21 GETTABLEKS                       R7 R7 K6 ["Icon"]
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

PROTO_116:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R1 R0 K2 ["Toolbar"]
        7 GETTABLEKS                       R1 R1 K3 ["ToolbarBase"]
        9 NAMECALL                         R2 R1 K4 ["GetChildren"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K5 ["Slider"]
       14 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+20]
       19 GETTABLEKS                       R7 R6 K6 ["Icon"]
       21 GETTABLEKS                       R7 R7 K6 ["Icon"]
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

PROTO_117:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+21]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       10 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R0 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       20 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       22 GETTABLEKS                       R0 R0 K7 ["releaseKey"]
       24 GETIMPORT                        R1 K9 [Enum.KeyCode.B]
       26 CALL                             R0 1 0
       27 JUMP                             ; [+20]
       28 GETUPVAL                         R0 1
       29 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       31 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       33 GETTABLEKS                       R0 R0 K10 ["pressKey"]
       35 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 1
       39 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       41 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       43 GETTABLEKS                       R0 R0 K10 ["pressKey"]
       45 GETIMPORT                        R1 K9 [Enum.KeyCode.B]
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 1
       49 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       51 GETTABLEKS                       R0 R0 K11 ["waitForInputEventsProcessed"]
       53 CALL                             R0 0 0
       54 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_117]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       10 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R0 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       21 GETTABLEKS                       R0 R0 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R0 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 1
       29 GETTABLEKS                       R0 R0 K5 ["VirtualInput"]
       31 GETTABLEKS                       R0 R0 K9 ["waitForInputEventsProcessed"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_119]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 LOADNIL                          R4
        4 NAMECALL                         R0 R0 K0 ["SendMouseMoveDeltaEvent"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["VirtualInput"]
       10 GETTABLEKS                       R0 R0 K2 ["waitForInputEventsProcessed"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagVirtualInputManagerMouseMoveDeltaEvent is not enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 JUMPIFNOTEQKS                    R0 K3 ["radius"] ; [+7]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["CageEditingTool"]
       14 GETTABLEKS                       R2 R3 K5 ["ToggleB"]
       16 JUMP                             ; [+9]
       17 JUMPIFNOTEQKS                    R0 K6 ["falloff"] ; [+7]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["CageEditingTool"]
       22 GETTABLEKS                       R2 R3 K7 ["ToggleShiftB"]
       24 JUMP                             ; [+1]
       25 RETURN                           R0 0
       26 MOVE                             R3 R2
       27 CALL                             R3 0 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K8 ["act"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CALL                             R3 1 0
       36 MOVE                             R3 R2
       37 CALL                             R3 0 0
       38 RETURN                           R0 0

PROTO_123:
        0 LOADN                            R2 1
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["VirtualInput"]
        7 GETTABLEKS                       R3 R3 K1 ["Mouse"]
        9 GETTABLEKS                       R3 R3 K2 ["SendMouseWheelEvent"]
       11 LOADN                            R4 350
       12 LOADN                            R5 150
       13 GETUPVAL                         R6 2
       14 CALL                             R3 3 0
       15 FORNLOOP                         R0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       19 GETTABLEKS                       R0 R0 K3 ["waitForInputEventsProcessed"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_124:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R0 K0 ["radius"] ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["CageEditingTool"]
        6 GETTABLEKS                       R2 R3 K2 ["ToggleB"]
        8 JUMP                             ; [+9]
        9 JUMPIFNOTEQKS                    R0 K3 ["falloff"] ; [+7]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["CageEditingTool"]
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
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K8 ["act"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R3
       37 CALL                             R5 1 0
       38 MOVE                             R5 R2
       39 CALL                             R5 0 0
       40 RETURN                           R0 0

PROTO_125:
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
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K10 ["createBlockingRoot"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 3
       28 CALL                             R5 0 2
       29 GETIMPORT                        R7 K2 [Instance.new]
       31 LOADK                            R8 K7 ["ScreenGui"]
       32 CALL                             R7 1 1
       33 LOADK                            R9 K11 ["FocusContainer_%*"]
       34 MOVE                             R11 R2
       35 NAMECALL                         R9 R9 K6 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R8 R9
       39 SETTABLEKS                       R8 R7 K8 ["Name"]
       41 GETUPVAL                         R8 1
       42 SETTABLEKS                       R8 R7 K9 ["Parent"]
       44 GETTABLEKS                       R9 R5 K12 ["context"]
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K13 ["Focus"]
       49 GETTABLEKS                       R10 R10 K1 ["new"]
       51 MOVE                             R11 R7
       52 CALL                             R10 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R8 K16 [table.insert]
       56 CALL                             R8 -1 0
       57 DUPCLOSURE                       R8 K17 [PROTO_17]
       58 GETTABLEKS                       R9 R5 K18 ["plugin"]
       60 SETTABLEKS                       R8 R9 K19 ["GetSelectedRibbonTool"]
       62 DUPTABLE                         R8 K21 [{"isRunning"}]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R9 R8 K20 ["isRunning"]
       67 JUMPIFEQKNIL                     R0 ; [+17]
       69 GETTABLEKS                       R9 R0 K22 ["devFrameworkContexts"]
       71 JUMPIFEQKNIL                     R9 ; [+13]
       73 GETUPVAL                         R9 5
       74 GETTABLEKS                       R9 R9 K23 ["List"]
       76 GETTABLEKS                       R9 R9 K24 ["join"]
       78 GETTABLEKS                       R10 R5 K12 ["context"]
       80 GETTABLEKS                       R11 R0 K22 ["devFrameworkContexts"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R5 K12 ["context"]
       85 GETUPVAL                         R9 2
       86 GETTABLEKS                       R9 R9 K25 ["act"]
       88 NEWCLOSURE                       R10 P2
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R3
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          UPVAL U12
      100 CAPTURE                          VAL R8
      101 CAPTURE                          UPVAL U13
      102 CAPTURE                          UPVAL U14
      103 CAPTURE                          UPVAL U15
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U16
      106 CAPTURE                          VAL R4
      107 CAPTURE                          UPVAL U17
      108 CAPTURE                          VAL R5
      109 CALL                             R9 1 0
      110 NAMECALL                         R12 R3 K26 ["GetChildren"]
      112 CALL                             R12 1 1
      113 LENGTH                           R11 R12
      114 LOADN                            R12 0
      115 JUMPIFLT                         R12 R11 ; [+2]
      117 LOADB                            R10 0 +1
      118 LOADB                            R10 1
      119 FASTCALL2K                       ASSERT R10 K27 ; [+4]
      121 LOADK                            R11 K27 ["Container is empty after mount"]
      122 GETIMPORT                        R9 K29 [assert]
      124 CALL                             R9 2 0
      125 NEWTABLE                         R9 64 0
      127 GETUPVAL                         R11 1
      128 MOVE                             R13 R2
      129 NAMECALL                         R11 R11 K30 ["FindFirstChild"]
      131 CALL                             R11 2 1
      132 FASTCALL2K                       ASSERT R11 K31 ; [+4]
      134 LOADK                            R12 K31 ["Couldn't find previewer screen"]
      135 GETIMPORT                        R10 K29 [assert]
      137 CALL                             R10 2 1
      138 SETTABLEKS                       R10 R9 K32 ["ui"]
      140 SETTABLEKS                       R7 R9 K33 ["focusContainer"]
      142 GETTABLEKS                       R10 R5 K34 ["placesService"]
      144 SETTABLEKS                       R10 R9 K34 ["placesService"]
      146 NEWCLOSURE                       R10 P3
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R10 R9 K35 ["destroy"]
      153 NEWCLOSURE                       R10 P4
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          VAL R5
      156 SETTABLEKS                       R10 R9 K36 ["select"]
      158 NEWCLOSURE                       R10 P5
      159 CAPTURE                          VAL R5
      160 SETTABLEKS                       R10 R9 K37 ["getSelection"]
      162 NEWCLOSURE                       R10 P6
      163 CAPTURE                          VAL R5
      164 SETTABLEKS                       R10 R9 K38 ["getLastAnalyticsEvent"]
      166 NEWCLOSURE                       R10 P7
      167 CAPTURE                          VAL R5
      168 SETTABLEKS                       R10 R9 K39 ["subWindows"]
      170 NEWCLOSURE                       R10 P8
      171 CAPTURE                          VAL R5
      172 SETTABLEKS                       R10 R9 K40 ["getSubWindow"]
      174 DUPCLOSURE                       R10 K41 [PROTO_28]
      175 SETTABLEKS                       R10 R9 K42 ["getStyledDialogButton"]
      177 NEWCLOSURE                       R10 P10
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          UPVAL U18
      180 CAPTURE                          VAL R9
      181 SETTABLEKS                       R10 R9 K43 ["clickStyledDialogButton"]
      183 DUPCLOSURE                       R10 K44 [PROTO_31]
      184 SETTABLEKS                       R10 R9 K45 ["getStyledDialogContent"]
      186 DUPCLOSURE                       R10 K46 [PROTO_32]
      187 CAPTURE                          UPVAL U19
      188 CAPTURE                          UPVAL U20
      189 SETTABLEKS                       R10 R9 K47 ["clickButtonInDialog"]
      191 DUPCLOSURE                       R10 K48 [PROTO_33]
      192 CAPTURE                          UPVAL U19
      193 CAPTURE                          UPVAL U20
      194 SETTABLEKS                       R10 R9 K49 ["clickCheckboxInDialog"]
      196 NEWCLOSURE                       R10 P14
      197 CAPTURE                          VAL R1
      198 SETTABLEKS                       R10 R9 K50 ["getMockUGCAvatarService"]
      200 NEWCLOSURE                       R10 P15
      201 CAPTURE                          VAL R9
      202 CAPTURE                          UPVAL U21
      203 CAPTURE                          VAL R2
      204 SETTABLEKS                       R10 R9 K51 ["selectFreshLizard"]
      206 NEWCLOSURE                       R10 P16
      207 CAPTURE                          UPVAL U18
      208 CAPTURE                          VAL R2
      209 SETTABLEKS                       R10 R9 K52 ["pathOf"]
      211 NEWCLOSURE                       R10 P17
      212 CAPTURE                          UPVAL U18
      213 CAPTURE                          VAL R9
      214 SETTABLEKS                       R10 R9 K53 ["elementByPath"]
      216 NEWCLOSURE                       R10 P18
      217 CAPTURE                          UPVAL U18
      218 CAPTURE                          VAL R9
      219 SETTABLEKS                       R10 R9 K54 ["debugPath"]
      221 NEWCLOSURE                       R10 P19
      222 CAPTURE                          VAL R9
      223 SETTABLEKS                       R10 R9 K55 ["expectElementByPath"]
      225 NEWCLOSURE                       R10 P20
      226 CAPTURE                          VAL R9
      227 CAPTURE                          UPVAL U2
      228 CAPTURE                          UPVAL U21
      229 SETTABLEKS                       R10 R9 K56 ["expectInstanceByPath"]
      231 NEWCLOSURE                       R10 P21
      232 CAPTURE                          VAL R9
      233 SETTABLEKS                       R10 R9 K57 ["instanceByPath"]
      235 NEWCLOSURE                       R10 P22
      236 CAPTURE                          UPVAL U2
      237 CAPTURE                          VAL R9
      238 SETTABLEKS                       R10 R9 K58 ["clickPath"]
      240 NEWCLOSURE                       R10 P23
      241 CAPTURE                          VAL R9
      242 SETTABLEKS                       R10 R9 K59 ["getByImage"]
      244 NEWCLOSURE                       R10 P24
      245 CAPTURE                          UPVAL U2
      246 CAPTURE                          VAL R3
      247 SETTABLEKS                       R10 R9 K60 ["resize"]
      249 NEWCLOSURE                       R10 P25
      250 CAPTURE                          VAL R9
      251 SETTABLEKS                       R10 R9 K61 ["resizeToDefault"]
      253 NEWCLOSURE                       R10 P26
      254 CAPTURE                          UPVAL U2
      255 CAPTURE                          UPVAL U19
      256 CAPTURE                          VAL R7
      257 SETTABLEKS                       R10 R9 K62 ["selectDropdownOption"]
      259 NEWTABLE                         R10 0 0
      261 SETTABLEKS                       R10 R9 K63 ["AvatarScreen"]
      263 GETTABLEKS                       R10 R9 K63 ["AvatarScreen"]
      265 LOADK                            R11 K64 ["AvatarScreen.Contents.Tabs.AssetPalettes.ScrollingFrame.Scroller.Tabs"]
      266 SETTABLEKS                       R11 R10 K65 ["XPATH_ASSET_PALETTES"]
      268 NEWCLOSURE                       R10 P27
      269 CAPTURE                          VAL R9
      270 CAPTURE                          UPVAL U21
      271 NEWCLOSURE                       R11 P28
      272 CAPTURE                          VAL R9
      273 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      275 SETTABLEKS                       R11 R12 K66 ["isActive"]
      277 NEWCLOSURE                       R11 P29
      278 CAPTURE                          VAL R9
      279 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      281 SETTABLEKS                       R11 R12 K67 ["isPalettesPickTabMenuActive"]
      283 NEWCLOSURE                       R11 P30
      284 CAPTURE                          VAL R9
      285 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      287 SETTABLEKS                       R11 R12 K68 ["isCategoryPickTabMenuActive"]
      289 NEWCLOSURE                       R11 P31
      290 CAPTURE                          VAL R7
      291 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      293 SETTABLEKS                       R11 R12 K69 ["isAvatarSettingsActive"]
      295 NEWCLOSURE                       R11 P32
      296 CAPTURE                          VAL R9
      297 CAPTURE                          UPVAL U2
      298 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      300 SETTABLEKS                       R11 R12 K70 ["waitUntilActive"]
      302 NEWCLOSURE                       R11 P33
      303 CAPTURE                          VAL R10
      304 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      306 SETTABLEKS                       R11 R12 K71 ["clickCategory"]
      308 NEWCLOSURE                       R11 P34
      309 CAPTURE                          VAL R10
      310 CAPTURE                          VAL R9
      311 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      313 SETTABLEKS                       R11 R12 K72 ["clickPalette"]
      315 NEWCLOSURE                       R11 P35
      316 CAPTURE                          VAL R9
      317 CAPTURE                          UPVAL U2
      318 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      320 SETTABLEKS                       R11 R12 K73 ["clickBuiltin"]
      322 NEWCLOSURE                       R11 P36
      323 CAPTURE                          VAL R9
      324 CAPTURE                          UPVAL U2
      325 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      327 SETTABLEKS                       R11 R12 K74 ["clickInstance"]
      329 NEWCLOSURE                       R11 P37
      330 CAPTURE                          VAL R9
      331 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      333 SETTABLEKS                       R11 R12 K75 ["catalogItemCounts"]
      335 NEWCLOSURE                       R11 P38
      336 CAPTURE                          VAL R9
      337 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      339 SETTABLEKS                       R11 R12 K76 ["selectedPaletteText"]
      341 NEWCLOSURE                       R11 P39
      342 CAPTURE                          VAL R9
      343 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      345 SETTABLEKS                       R11 R12 K77 ["selectedPaletteKey"]
      347 NEWCLOSURE                       R11 P40
      348 CAPTURE                          VAL R9
      349 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      351 SETTABLEKS                       R11 R12 K78 ["getDummy"]
      353 NEWCLOSURE                       R11 P41
      354 CAPTURE                          UPVAL U22
      355 CAPTURE                          VAL R9
      356 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      358 SETTABLEKS                       R11 R12 K79 ["clickAddItem"]
      360 NEWCLOSURE                       R11 P42
      361 CAPTURE                          VAL R9
      362 CAPTURE                          UPVAL U19
      363 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      365 SETTABLEKS                       R11 R12 K80 ["getSidebarItems"]
      367 NEWCLOSURE                       R11 P43
      368 CAPTURE                          VAL R9
      369 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      371 SETTABLEKS                       R11 R12 K81 ["clickSubmitButton"]
      373 NEWCLOSURE                       R11 P44
      374 CAPTURE                          VAL R9
      375 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      377 SETTABLEKS                       R11 R12 K82 ["clickCheckBodyMode"]
      379 NEWCLOSURE                       R11 P45
      380 CAPTURE                          VAL R9
      381 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      383 SETTABLEKS                       R11 R12 K83 ["clickCheckFaceMode"]
      385 NEWCLOSURE                       R11 P46
      386 CAPTURE                          VAL R9
      387 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      389 SETTABLEKS                       R11 R12 K84 ["clickAvatarSettings"]
      391 NEWCLOSURE                       R11 P47
      392 CAPTURE                          VAL R9
      393 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      395 SETTABLEKS                       R11 R12 K85 ["clickBack"]
      397 NEWCLOSURE                       R11 P48
      398 CAPTURE                          VAL R9
      399 CAPTURE                          UPVAL U2
      400 CAPTURE                          UPVAL U18
      401 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      403 SETTABLEKS                       R11 R12 K86 ["clickHideShowButton"]
      405 NEWCLOSURE                       R11 P49
      406 CAPTURE                          VAL R9
      407 CAPTURE                          UPVAL U19
      408 CAPTURE                          UPVAL U2
      409 CAPTURE                          UPVAL U18
      410 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      412 SETTABLEKS                       R11 R12 K87 ["getSkinToneButtons"]
      414 NEWCLOSURE                       R11 P50
      415 CAPTURE                          VAL R9
      416 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      418 SETTABLEKS                       R11 R12 K88 ["createAndEquipMakeupItem"]
      420 NEWCLOSURE                       R11 P51
      421 CAPTURE                          VAL R9
      422 CAPTURE                          UPVAL U2
      423 CAPTURE                          UPVAL U18
      424 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      426 SETTABLEKS                       R11 R12 K89 ["hoverFirstCatalogItemOfSourceType"]
      428 DUPCLOSURE                       R11 K90 [PROTO_86]
      429 CAPTURE                          UPVAL U2
      430 CAPTURE                          UPVAL U18
      431 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      433 SETTABLEKS                       R11 R12 K91 ["moveMouseAway"]
      435 NEWCLOSURE                       R11 P53
      436 CAPTURE                          VAL R9
      437 CAPTURE                          UPVAL U23
      438 GETTABLEKS                       R12 R9 K63 ["AvatarScreen"]
      440 SETTABLEKS                       R11 R12 K92 ["countEquippedMakeup"]
      442 NEWTABLE                         R11 0 0
      444 SETTABLEKS                       R11 R9 K93 ["AutoSetupScreen"]
      446 NEWCLOSURE                       R11 P54
      447 CAPTURE                          VAL R9
      448 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      450 SETTABLEKS                       R11 R12 K94 ["getAlertDescription"]
      452 NEWCLOSURE                       R11 P55
      453 CAPTURE                          VAL R9
      454 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      456 SETTABLEKS                       R11 R12 K95 ["getAlertTitle"]
      458 NEWCLOSURE                       R11 P56
      459 CAPTURE                          VAL R9
      460 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      462 SETTABLEKS                       R11 R12 K78 ["getDummy"]
      464 NEWCLOSURE                       R11 P57
      465 CAPTURE                          VAL R9
      466 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      468 SETTABLEKS                       R11 R12 K96 ["startAutoSetup"]
      470 NEWCLOSURE                       R11 P58
      471 CAPTURE                          VAL R9
      472 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      474 SETTABLEKS                       R11 R12 K97 ["cancelAutoSetup"]
      476 NEWCLOSURE                       R11 P59
      477 CAPTURE                          VAL R9
      478 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      480 SETTABLEKS                       R11 R12 K98 ["controlsActive"]
      482 NEWCLOSURE                       R11 P60
      483 CAPTURE                          VAL R9
      484 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      486 SETTABLEKS                       R11 R12 K66 ["isActive"]
      488 NEWCLOSURE                       R11 P61
      489 CAPTURE                          VAL R9
      490 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      492 SETTABLEKS                       R11 R12 K99 ["toggleClothingTable"]
      494 NEWCLOSURE                       R11 P62
      495 CAPTURE                          UPVAL U2
      496 CAPTURE                          VAL R9
      497 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      499 SETTABLEKS                       R11 R12 K100 ["selectClothingType"]
      501 NEWCLOSURE                       R11 P63
      502 CAPTURE                          VAL R9
      503 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      505 SETTABLEKS                       R11 R12 K101 ["clickSettings"]
      507 NEWCLOSURE                       R11 P64
      508 CAPTURE                          VAL R9
      509 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      511 SETTABLEKS                       R11 R12 K85 ["clickBack"]
      513 NEWCLOSURE                       R11 P65
      514 CAPTURE                          VAL R7
      515 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      517 SETTABLEKS                       R11 R12 K102 ["isSettingsActive"]
      519 NEWCLOSURE                       R11 P66
      520 CAPTURE                          VAL R7
      521 CAPTURE                          UPVAL U2
      522 CAPTURE                          UPVAL U18
      523 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      525 SETTABLEKS                       R11 R12 K103 ["dismissSettings"]
      527 NEWCLOSURE                       R11 P67
      528 CAPTURE                          VAL R7
      529 CAPTURE                          UPVAL U2
      530 CAPTURE                          UPVAL U24
      531 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      533 SETTABLEKS                       R11 R12 K104 ["clickSettingsSetupType"]
      535 NEWCLOSURE                       R11 P68
      536 CAPTURE                          VAL R9
      537 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      539 SETTABLEKS                       R11 R12 K105 ["toggleAlignFrontAngle"]
      541 NEWCLOSURE                       R11 P69
      542 CAPTURE                          VAL R9
      543 GETTABLEKS                       R12 R9 K93 ["AutoSetupScreen"]
      545 SETTABLEKS                       R11 R12 K106 ["getModelPreviewCameraCFrame"]
      547 NEWTABLE                         R11 0 0
      549 SETTABLEKS                       R11 R9 K107 ["SelectScreen"]
      551 NEWCLOSURE                       R11 P70
      552 CAPTURE                          VAL R9
      553 GETTABLEKS                       R12 R9 K107 ["SelectScreen"]
      555 SETTABLEKS                       R11 R12 K66 ["isActive"]
      557 NEWCLOSURE                       R11 P71
      558 CAPTURE                          VAL R9
      559 GETTABLEKS                       R12 R9 K107 ["SelectScreen"]
      561 SETTABLEKS                       R11 R12 K108 ["clickAddSelected"]
      563 GETUPVAL                         R11 25
      564 MOVE                             R12 R9
      565 CALL                             R11 1 1
      566 SETTABLEKS                       R11 R9 K109 ["DisambiguationMenu"]
      568 NEWTABLE                         R11 0 0
      570 SETTABLEKS                       R11 R9 K110 ["TestingScreen"]
      572 NEWCLOSURE                       R11 P72
      573 CAPTURE                          VAL R9
      574 GETTABLEKS                       R12 R9 K110 ["TestingScreen"]
      576 SETTABLEKS                       R11 R12 K66 ["isActive"]
      578 NEWCLOSURE                       R11 P73
      579 CAPTURE                          VAL R9
      580 GETTABLEKS                       R12 R9 K110 ["TestingScreen"]
      582 SETTABLEKS                       R11 R12 K111 ["clickStop"]
      584 NEWTABLE                         R11 0 0
      586 SETTABLEKS                       R11 R9 K112 ["EditingTools"]
      588 NEWCLOSURE                       R11 P74
      589 CAPTURE                          VAL R9
      590 GETTABLEKS                       R12 R9 K112 ["EditingTools"]
      592 SETTABLEKS                       R11 R12 K113 ["clickBodyPointsToolButton"]
      594 DUPCLOSURE                       R11 K114 [PROTO_112]
      595 CAPTURE                          UPVAL U1
      596 GETTABLEKS                       R12 R9 K112 ["EditingTools"]
      598 SETTABLEKS                       R11 R12 K115 ["bodyPointsToolIsActive"]
      600 NEWCLOSURE                       R11 P76
      601 CAPTURE                          VAL R9
      602 GETTABLEKS                       R12 R9 K112 ["EditingTools"]
      604 SETTABLEKS                       R11 R12 K116 ["clickCageEditingToolButton"]
      606 DUPCLOSURE                       R11 K117 [PROTO_114]
      607 CAPTURE                          UPVAL U1
      608 GETTABLEKS                       R12 R9 K112 ["EditingTools"]
      610 SETTABLEKS                       R11 R12 K118 ["cageEditingToolIsActive"]
      612 NEWTABLE                         R11 0 0
      614 SETTABLEKS                       R11 R9 K119 ["CageEditingTool"]
      616 DUPCLOSURE                       R11 K120 [PROTO_115]
      617 CAPTURE                          UPVAL U1
      618 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      620 SETTABLEKS                       R11 R12 K121 ["getBrushRadiusSliderValue"]
      622 DUPCLOSURE                       R11 K122 [PROTO_116]
      623 CAPTURE                          UPVAL U1
      624 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      626 SETTABLEKS                       R11 R12 K123 ["getBrushFalloffSliderValue"]
      628 DUPCLOSURE                       R11 K124 [PROTO_118]
      629 CAPTURE                          UPVAL U2
      630 CAPTURE                          UPVAL U26
      631 CAPTURE                          UPVAL U18
      632 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      634 SETTABLEKS                       R11 R12 K125 ["ToggleShiftB"]
      636 DUPCLOSURE                       R11 K126 [PROTO_120]
      637 CAPTURE                          UPVAL U2
      638 CAPTURE                          UPVAL U26
      639 CAPTURE                          UPVAL U18
      640 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      642 SETTABLEKS                       R11 R12 K127 ["ToggleB"]
      644 NEWCLOSURE                       R11 P82
      645 CAPTURE                          UPVAL U27
      646 CAPTURE                          VAL R9
      647 CAPTURE                          UPVAL U2
      648 CAPTURE                          UPVAL U24
      649 CAPTURE                          UPVAL U18
      650 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      652 SETTABLEKS                       R11 R12 K128 ["activateShortcutAndMoveMouse"]
      654 NEWCLOSURE                       R11 P83
      655 CAPTURE                          VAL R9
      656 CAPTURE                          UPVAL U2
      657 CAPTURE                          UPVAL U18
      658 GETTABLEKS                       R12 R9 K119 ["CageEditingTool"]
      660 SETTABLEKS                       R11 R12 K129 ["activateShortcutAndMoveMouseWheel"]
      662 RETURN                           R9 1

PROTO_126:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 LOADN                            R2 -1
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 3
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 MOVE                             R2 R1
       10 CALL                             R2 0 0
       11 GETTABLEKS                       R2 R0 K0 ["destroy"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_127:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_128:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cloneLizard"]
        3 LOADK                            R1 K1 ["ClonedLizard"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_129:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_130:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["select"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_132:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["withTestPreviewer"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_133:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K0 ["destroy"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_134:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_135:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["select"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_137:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["withTestPreviewerEditingTools"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_138:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_139:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testAssets"]
        3 GETTABLEKS                       R0 R0 K1 ["AutoSetupTarget"]
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
       51 GETTABLEKS                       R9 R7 K16 ["Packages"]
       53 GETTABLEKS                       R9 R9 K17 ["Cryo"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETTABLEKS                       R10 R7 K16 ["Packages"]
       60 GETTABLEKS                       R10 R10 K18 ["Dash"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETTABLEKS                       R11 R7 K16 ["Packages"]
       67 GETTABLEKS                       R11 R11 K19 ["Framework"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K15 [require]
       72 GETTABLEKS                       R12 R7 K16 ["Packages"]
       74 GETTABLEKS                       R12 R12 K20 ["Foundation"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K15 [require]
       79 GETTABLEKS                       R13 R7 K16 ["Packages"]
       81 GETTABLEKS                       R13 R13 K21 ["React"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K15 [require]
       86 GETTABLEKS                       R14 R7 K16 ["Packages"]
       88 GETTABLEKS                       R14 R14 K22 ["ReactRoblox"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K15 [require]
       93 GETTABLEKS                       R15 R7 K16 ["Packages"]
       95 GETTABLEKS                       R15 R15 K23 ["Dev"]
       97 GETTABLEKS                       R15 R15 K24 ["ReactTestingLibrary"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K15 [require]
      102 GETTABLEKS                       R16 R7 K16 ["Packages"]
      104 GETTABLEKS                       R16 R16 K23 ["Dev"]
      106 GETTABLEKS                       R16 R16 K25 ["Rhodium"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K15 [require]
      111 GETTABLEKS                       R17 R7 K26 ["RhodiumTests"]
      113 GETTABLEKS                       R17 R17 K27 ["Utils"]
      115 GETTABLEKS                       R17 R17 K28 ["onTestEnd"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K15 [require]
      120 GETIMPORT                        R18 K11 [script]
      122 GETTABLEKS                       R18 R18 K29 ["clickFoundationButton"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K15 [require]
      127 GETIMPORT                        R19 K11 [script]
      129 GETTABLEKS                       R19 R19 K30 ["createDisambiguationMenuTestHelpers"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K15 [require]
      134 GETTABLEKS                       R20 R7 K26 ["RhodiumTests"]
      136 GETTABLEKS                       R20 R20 K31 ["createMockContext"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K15 [require]
      141 GETTABLEKS                       R21 R7 K32 ["Src"]
      143 GETTABLEKS                       R21 R21 K33 ["Types"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K15 [require]
      148 GETTABLEKS                       R22 R7 K32 ["Src"]
      150 GETTABLEKS                       R22 R22 K34 ["Components"]
      152 GETTABLEKS                       R22 R22 K35 ["AssetServiceContextMock"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K15 [require]
      157 GETTABLEKS                       R23 R7 K32 ["Src"]
      159 GETTABLEKS                       R23 R23 K34 ["Components"]
      161 GETTABLEKS                       R23 R23 K36 ["App"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R23 K15 [require]
      166 GETTABLEKS                       R24 R7 K32 ["Src"]
      168 GETTABLEKS                       R24 R24 K34 ["Components"]
      170 GETTABLEKS                       R24 R24 K37 ["ContextStack"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K15 [require]
      175 GETTABLEKS                       R25 R7 K32 ["Src"]
      177 GETTABLEKS                       R25 R25 K34 ["Components"]
      179 GETTABLEKS                       R25 R25 K38 ["EditingTools"]
      181 GETTABLEKS                       R25 R25 K39 ["EditingWorldModelContext"]
      183 CALL                             R24 1 1
      184 GETIMPORT                        R25 K15 [require]
      186 GETTABLEKS                       R26 R7 K32 ["Src"]
      188 GETTABLEKS                       R26 R26 K34 ["Components"]
      190 GETTABLEKS                       R26 R26 K40 ["PlacesServiceContext"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K15 [require]
      195 GETTABLEKS                       R27 R7 K32 ["Src"]
      197 GETTABLEKS                       R27 R27 K34 ["Components"]
      199 GETTABLEKS                       R27 R27 K41 ["RunServiceContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K15 [require]
      204 GETTABLEKS                       R28 R7 K32 ["Src"]
      206 GETTABLEKS                       R28 R28 K34 ["Components"]
      208 GETTABLEKS                       R28 R28 K42 ["UGCAvatarServiceContext"]
      210 CALL                             R27 1 1
      211 GETIMPORT                        R28 K15 [require]
      213 GETTABLEKS                       R29 R7 K26 ["RhodiumTests"]
      215 GETTABLEKS                       R29 R29 K43 ["UGCValidationContextMocks"]
      217 CALL                             R28 1 1
      218 GETIMPORT                        R29 K15 [require]
      220 GETTABLEKS                       R30 R7 K32 ["Src"]
      222 GETTABLEKS                       R30 R30 K44 ["Flags"]
      224 GETTABLEKS                       R30 R30 K45 ["getFFlagAvatarPreviewerEditingTools"]
      226 CALL                             R29 1 1
      227 GETIMPORT                        R30 K15 [require]
      229 GETTABLEKS                       R31 R7 K32 ["Src"]
      231 GETTABLEKS                       R31 R31 K44 ["Flags"]
      233 GETTABLEKS                       R31 R31 K46 ["getFFlagAvatarPreviewerLookComposer"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K15 [require]
      238 GETTABLEKS                       R32 R7 K32 ["Src"]
      240 GETTABLEKS                       R32 R32 K44 ["Flags"]
      242 GETTABLEKS                       R32 R32 K47 ["getFFlagVirtualInputManagerMouseMoveDeltaEvent"]
      244 CALL                             R31 1 1
      245 GETTABLEKS                       R32 R10 K48 ["ContextServices"]
      247 GETTABLEKS                       R33 R10 K49 ["TestHelpers"]
      249 GETTABLEKS                       R33 R33 K50 ["provideMockContext"]
      251 NEWTABLE                         R34 16 0
      253 GETTABLEKS                       R35 R3 K51 ["TestAssets"]
      255 SETTABLEKS                       R35 R34 K52 ["testAssets"]
      257 DUPCLOSURE                       R35 K53 [PROTO_1]
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R15
      260 SETTABLEKS                       R35 R34 K54 ["clickSimpleTab"]
      262 DUPCLOSURE                       R35 K55 [PROTO_2]
      263 SETTABLEKS                       R35 R34 K56 ["deferYield"]
      265 DUPCLOSURE                       R35 K57 [PROTO_4]
      266 CAPTURE                          VAL R13
      267 CAPTURE                          VAL R34
      268 SETTABLEKS                       R35 R34 K58 ["startAutoSetupAndWaitUntilClick"]
      270 DUPCLOSURE                       R35 K59 [PROTO_6]
      271 CAPTURE                          VAL R34
      272 CAPTURE                          VAL R13
      273 SETTABLEKS                       R35 R34 K60 ["startAutoSetupAndComplete"]
      275 DUPCLOSURE                       R35 K61 [PROTO_8]
      276 CAPTURE                          VAL R34
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R6
      279 SETTABLEKS                       R35 R34 K62 ["cloneLizard"]
      281 DUPCLOSURE                       R35 K63 [PROTO_10]
      282 CAPTURE                          VAL R34
      283 CAPTURE                          VAL R16
      284 CAPTURE                          VAL R6
      285 SETTABLEKS                       R35 R34 K64 ["cloneRigidHat"]
      287 DUPCLOSURE                       R35 K65 [PROTO_12]
      288 CAPTURE                          VAL R34
      289 CAPTURE                          VAL R16
      290 CAPTURE                          VAL R6
      291 SETTABLEKS                       R35 R34 K66 ["cloneLayeredJacket"]
      293 DUPCLOSURE                       R35 K67 [PROTO_16]
      294 CAPTURE                          VAL R29
      295 CAPTURE                          VAL R0
      296 DUPCLOSURE                       R36 K68 [PROTO_125]
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R13
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R32
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R23
      305 CAPTURE                          VAL R11
      306 CAPTURE                          VAL R27
      307 CAPTURE                          VAL R21
      308 CAPTURE                          VAL R25
      309 CAPTURE                          VAL R26
      310 CAPTURE                          VAL R28
      311 CAPTURE                          VAL R29
      312 CAPTURE                          VAL R24
      313 CAPTURE                          VAL R22
      314 CAPTURE                          VAL R33
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R17
      318 CAPTURE                          VAL R34
      319 CAPTURE                          VAL R30
      320 CAPTURE                          VAL R9
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R18
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R31
      325 DUPCLOSURE                       R37 K69 [PROTO_127]
      326 CAPTURE                          VAL R36
      327 CAPTURE                          VAL R35
      328 SETTABLEKS                       R37 R34 K70 ["withTestPreviewer"]
      330 DUPCLOSURE                       R37 K71 [PROTO_129]
      331 CAPTURE                          VAL R34
      332 SETTABLEKS                       R37 R34 K72 ["withClonedLizard"]
      334 DUPCLOSURE                       R37 K73 [PROTO_132]
      335 CAPTURE                          VAL R34
      336 SETTABLEKS                       R37 R34 K74 ["withPreviewerAndLizard"]
      338 DUPCLOSURE                       R37 K75 [PROTO_134]
      339 CAPTURE                          VAL R36
      340 SETTABLEKS                       R37 R34 K76 ["withTestPreviewerEditingTools"]
      342 DUPCLOSURE                       R37 K77 [PROTO_137]
      343 CAPTURE                          VAL R34
      344 SETTABLEKS                       R37 R34 K78 ["withPreviewerAndLizardEditingTools"]
      346 DUPCLOSURE                       R37 K79 [PROTO_139]
      347 CAPTURE                          VAL R34
      348 CAPTURE                          VAL R6
      349 CAPTURE                          VAL R16
      350 SETTABLEKS                       R37 R34 K80 ["cloneAutoSetupTarget"]
      352 RETURN                           R34 1
