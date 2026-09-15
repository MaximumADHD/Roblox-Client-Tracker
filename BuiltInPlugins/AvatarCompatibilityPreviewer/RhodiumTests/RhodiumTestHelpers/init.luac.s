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
       12 JUMPIF                           R2 ; [+21]
       13 ADDK                             R3 R3 K3 [1]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["act"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["deferYield"]
       20 CALL                             R4 1 0
       21 LOADN                            R4 20
       22 JUMPIFNOTLT                      R4 R3 ; [+10]
       24 JUMPIF                           R2 ; [+8]
       25 GETIMPORT                        R4 K7 [error]
       27 LOADK                            R5 K8 ["Auto setup did not complete after %* tries"]
       28 MOVE                             R7 R3
       29 NAMECALL                         R5 R5 K9 ["format"]
       31 CALL                             R5 2 1
       32 CALL                             R4 1 0
       33 JUMPBACK                         ; [-22]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0

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
       10 NEWTABLE                         R4 0 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["Provider"]
       18 DUPTABLE                         R7 K7 [{"value"}]
       19 GETUPVAL                         R8 4
       20 CALL                             R8 0 1
       21 SETTABLEKS                       R8 R7 K6 ["value"]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K5 ["Provider"]
       30 DUPTABLE                         R8 K7 [{"value"}]
       31 GETUPVAL                         R9 6
       32 CALL                             R9 0 1
       33 SETTABLEKS                       R9 R8 K6 ["value"]
       35 CALL                             R6 2 -1
       36 SETLIST                          R4 R5 -1 [1]
       38 NEWTABLE                         R5 0 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["createElement"]
       43 GETUPVAL                         R7 7
       44 GETTABLEKS                       R7 R7 K8 ["FoundationProvider"]
       46 DUPTABLE                         R8 K11 [{"theme", "overlayGui"}]
       47 GETUPVAL                         R9 7
       48 GETTABLEKS                       R9 R9 K12 ["Enums"]
       50 GETTABLEKS                       R9 R9 K13 ["Theme"]
       52 GETTABLEKS                       R9 R9 K14 ["Dark"]
       54 SETTABLEKS                       R9 R8 K9 ["theme"]
       56 GETUPVAL                         R9 8
       57 SETTABLEKS                       R9 R8 K10 ["overlayGui"]
       59 CALL                             R6 2 -1
       60 SETLIST                          R5 R6 -1 [1]
       62 NEWTABLE                         R6 0 6
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K0 ["createElement"]
       67 GETUPVAL                         R8 9
       68 GETTABLEKS                       R8 R8 K5 ["Provider"]
       70 DUPTABLE                         R9 K7 [{"value"}]
       71 GETUPVAL                         R10 10
       72 SETTABLEKS                       R10 R9 K6 ["value"]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K0 ["createElement"]
       78 GETUPVAL                         R9 11
       79 CALL                             R8 1 1
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K0 ["createElement"]
       83 GETUPVAL                         R10 12
       84 GETTABLEKS                       R10 R10 K5 ["Provider"]
       86 DUPTABLE                         R11 K7 [{"value"}]
       87 GETUPVAL                         R12 13
       88 GETTABLEKS                       R12 R12 K15 ["placesService"]
       90 SETTABLEKS                       R12 R11 K6 ["value"]
       92 CALL                             R9 2 1
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K0 ["createElement"]
       96 GETUPVAL                         R11 14
       97 GETTABLEKS                       R11 R11 K5 ["Provider"]
       99 DUPTABLE                         R12 K7 [{"value"}]
      100 GETUPVAL                         R13 15
      101 SETTABLEKS                       R13 R12 K6 ["value"]
      103 CALL                             R10 2 1
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R11 R11 K0 ["createElement"]
      107 GETUPVAL                         R12 16
      108 GETTABLEKS                       R12 R12 K16 ["NeverReturnsProvider"]
      110 CALL                             R11 1 1
      111 GETUPVAL                         R13 17
      112 CALL                             R13 0 1
      113 JUMPIFNOT                        R13 ; [+8]
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K0 ["createElement"]
      117 GETUPVAL                         R13 18
      118 GETTABLEKS                       R13 R13 K5 ["Provider"]
      120 CALL                             R12 1 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R12
      123 SETLIST                          R6 R7 6 [1]
      125 GETUPVAL                         R8 19
      126 JUMPIFEQKNIL                     R8 ; [+10]
      128 GETUPVAL                         R8 19
      129 GETTABLEKS                       R8 R8 K17 ["wrapAppContexts"]
      131 JUMPIFEQKNIL                     R8 ; [+5]
      133 GETUPVAL                         R7 19
      134 GETTABLEKS                       R7 R7 K17 ["wrapAppContexts"]
      136 JUMP                             ; [+2]
      137 NEWTABLE                         R7 0 0
      139 CALL                             R3 4 1
      140 SETTABLEKS                       R3 R2 K1 ["providers"]
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R3 R3 K0 ["createElement"]
      145 GETUPVAL                         R4 20
      146 CALL                             R3 1 -1
      147 CALL                             R0 -1 1
      148 GETUPVAL                         R1 21
      149 GETUPVAL                         R3 22
      150 GETUPVAL                         R4 23
      151 GETTABLEKS                       R4 R4 K18 ["context"]
      153 MOVE                             R5 R0
      154 CALL                             R3 2 -1
      155 NAMECALL                         R1 R1 K19 ["render"]
      157 CALL                             R1 -1 0
      158 RETURN                           R0 0

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
       14 LOADK                            R6 K7 ["Button with text \"%*\" not found"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K8 ["format"]
       18 CALL                             R6 2 1
       19 FASTCALL2                        ASSERT R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K10 [assert]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R3
       27 DUPTABLE                         R6 K13 [{["forceResize"] = True}]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

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
       16 LOADK                            R5 K5 ["No clickable Foundation checkbox at index %* in sub-window"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K6 ["format"]
       20 CALL                             R5 2 1
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K8 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R2
       28 DUPTABLE                         R5 K12 [{["resizeAncestors"] = True, ["forceResize"] = True}]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["select"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["cloneLizard"]
        8 LOADK                            R3 K2 ["FreshLizard_%*"]
        9 GETUPVAL                         R5 2
       10 NAMECALL                         R3 R3 K3 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

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
       12 JUMPIFEQKNIL                     R1 ; [+14]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["XPath"]
       17 GETTABLEKS                       R3 R3 K5 ["new"]
       19 LOADK                            R4 K6 ["game.CoreGui.%*.%*"]
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 NAMECALL                         R4 R4 K7 ["format"]
       24 CALL                             R4 3 1
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["XPath"]
       30 GETTABLEKS                       R3 R3 K5 ["new"]
       32 LOADK                            R4 K6 ["game.CoreGui.%*.%*"]
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R2
       35 NAMECALL                         R4 R4 K7 ["format"]
       37 CALL                             R4 3 1
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1

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
       48 JUMPIFNOT                        R2 ; [+34]
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
       68 LOADK                            R12 K16 ["\t- %*"]
       69 GETTABLEKS                       R14 R9 K17 ["Name"]
       71 NAMECALL                         R12 R12 K18 ["format"]
       73 CALL                             R12 2 1
       74 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       76 MOVE                             R11 R4
       77 GETIMPORT                        R10 K13 [table.insert]
       79 CALL                             R10 2 0
       80 FORGLOOP                         R5 2 ; [-13]
       82 JUMP                             ; [+7]
       83 FASTCALL2K                       TABLE_INSERT R4 K19 ; [+5]
       85 MOVE                             R6 R4
       86 LOADK                            R7 K19 ["No segment found"]
       87 GETIMPORT                        R5 K13 [table.insert]
       89 CALL                             R5 2 0
       90 GETIMPORT                        R5 K21 [table.concat]
       92 MOVE                             R6 R4
       93 LOADK                            R7 K22 ["\n"]
       94 CALL                             R5 2 -1
       95 RETURN                           R5 -1

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
       11 JUMPIFNOTEQKNIL                  R3 ; [+27]
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
       27 LOADK                            R6 K9 ["%* was not found\nClosest match: %*"]
       28 MOVE                             R8 R4
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K10 ["debugPath"]
       32 MOVE                             R10 R0
       33 MOVE                             R11 R1
       34 CALL                             R9 2 1
       35 NAMECALL                         R6 R6 K11 ["format"]
       37 CALL                             R6 3 1
       38 CALL                             R5 1 0
       39 RETURN                           R2 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["getByTestId"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["act"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resize"]
        3 LOADN                            R1 1024
        4 LOADN                            R2 758
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_52:
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
       32 JUMPIFNOT                        R9 ; [+15]
       33 GETIMPORT                        R9 K11 [string.find]
       35 GETTABLEKS                       R10 R8 K12 ["Text"]
       37 LOADK                            R11 K13 [".%*:"]
       38 MOVE                             R13 R1
       39 NAMECALL                         R11 R11 K14 ["format"]
       41 CALL                             R11 2 1
       42 LOADN                            R12 1
       43 LOADB                            R13 1
       44 CALL                             R9 4 1
       45 JUMPIFNOT                        R9 ; [+2]
       46 MOVE                             R3 R8
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R4 2 ; [-21]
       50 JUMPIFNOTEQKNIL                  R3 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 LOADK                            R6 K15 ["Dropdown option for localization key \"%*\" not found"]
       55 MOVE                             R8 R1
       56 NAMECALL                         R6 R6 K14 ["format"]
       58 CALL                             R6 2 1
       59 FASTCALL2                        ASSERT R5 R6 ; [+3]
       61 GETIMPORT                        R4 K5 [assert]
       63 CALL                             R4 2 0
       64 LOADK                            R6 K16 ["TextButton"]
       65 NAMECALL                         R4 R3 K17 ["FindFirstAncestorWhichIsA"]
       67 CALL                             R4 2 1
       68 JUMPIFNOTEQKNIL                  R4 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 LOADK                            R7 K18 ["Could not find TextButton ancestor for dropdown option \"%*\""]
       73 MOVE                             R9 R1
       74 NAMECALL                         R7 R7 K14 ["format"]
       76 CALL                             R7 2 1
       77 FASTCALL2                        ASSERT R6 R7 ; [+3]
       79 GETIMPORT                        R5 K5 [assert]
       81 CALL                             R5 2 0
       82 GETUPVAL                         R5 2
       83 LOADK                            R7 K19 ["TopLevelDetector"]
       84 NAMECALL                         R5 R5 K2 ["FindFirstChild"]
       86 CALL                             R5 2 1
       87 LOADB                            R7 0
       88 JUMPIFEQKNIL                     R5 ; [+5]
       90 LOADK                            R9 K20 ["ImageButton"]
       91 NAMECALL                         R7 R5 K8 ["IsA"]
       93 CALL                             R7 2 1
       94 FASTCALL2K                       ASSERT R7 K21 ; [+4]
       96 LOADK                            R8 K21 ["TopLevelDetector ImageButton not found in focus container"]
       97 GETIMPORT                        R6 K5 [assert]
       99 CALL                             R6 2 0
      100 LOADK                            R8 K22 ["ScrollBlocker"]
      101 NAMECALL                         R6 R5 K2 ["FindFirstChild"]
      103 CALL                             R6 2 1
      104 LOADB                            R8 0
      105 JUMPIFEQKNIL                     R6 ; [+5]
      107 LOADK                            R10 K23 ["ScrollingFrame"]
      108 NAMECALL                         R8 R6 K8 ["IsA"]
      110 CALL                             R8 2 1
      111 FASTCALL2K                       ASSERT R8 K24 ; [+4]
      113 LOADK                            R9 K24 ["ScrollBlocker ScrollingFrame not found inside TopLevelDetector"]
      114 GETIMPORT                        R7 K5 [assert]
      116 CALL                             R7 2 0
      117 GETTABLEKS                       R7 R5 K25 ["AbsoluteSize"]
      119 GETIMPORT                        R8 K28 [UDim2.fromOffset]
      121 GETTABLEKS                       R9 R7 K29 ["X"]
      123 GETTABLEKS                       R10 R7 K30 ["Y"]
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R6 K31 ["Size"]
      128 GETTABLEKS                       R8 R6 K31 ["Size"]
      130 SETTABLEKS                       R8 R6 K32 ["CanvasSize"]
      132 GETIMPORT                        R8 K34 [UDim2.new]
      134 CALL                             R8 0 1
      135 SETTABLEKS                       R8 R5 K31 ["Size"]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K0 ["act"]
      140 NEWCLOSURE                       R9 P1
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          VAL R4
      143 CALL                             R8 1 0
      144 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["expectInstanceByPath"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+8]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R4 K3 ["Tab bar %* not found"]
        9 MOVE                             R6 R0
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 CALL                             R3 1 0
       14 NAMECALL                         R3 R2 K5 ["GetChildren"]
       16 CALL                             R3 1 3
       17 FORGPREP                         R3
       18 LOADK                            R10 K6 ["TextButton"]
       19 NAMECALL                         R8 R7 K7 ["IsA"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+31]
       23 GETTABLEKS                       R8 R7 K8 ["Row"]
       25 GETTABLEKS                       R8 R8 K9 ["Label"]
       27 GETTABLEKS                       R8 R8 K10 ["Text"]
       29 LOADK                            R10 K11 ["%%.%*:"]
       30 MOVE                             R12 R1
       31 NAMECALL                         R10 R10 K4 ["format"]
       33 CALL                             R10 2 1
       34 NAMECALL                         R8 R8 K12 ["match"]
       36 CALL                             R8 2 1
       37 JUMPIFNOT                        R8 ; [+16]
       38 LOADK                            R11 K6 ["TextButton"]
       39 NAMECALL                         R9 R7 K7 ["IsA"]
       41 CALL                             R9 2 1
       42 FASTCALL2K                       ASSERT R9 K13 ; [+4]
       44 LOADK                            R10 K13 ["Tab should be a button"]
       45 GETIMPORT                        R8 K15 [assert]
       47 CALL                             R8 2 0
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K16 ["clickSimpleTab"]
       51 MOVE                             R9 R7
       52 CALL                             R8 1 0
       53 RETURN                           R0 0
       54 FORGLOOP                         R3 2 ; [-37]
       56 GETIMPORT                        R3 K2 [error]
       58 LOADK                            R4 K17 ["Could not find %*"]
       59 MOVE                             R6 R1
       60 NAMECALL                         R4 R4 K4 ["format"]
       62 CALL                             R4 2 1
       63 CALL                             R3 1 0
       64 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.AssetPalettes.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Tabs.TabBar.PickTabMenu"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TopLevelDetector"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["AvatarScreen.Contents.Tabs.TabBar.ScrollingFrame.Scroller.Tabs"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AvatarScreen"]
        4 GETTABLEKS                       R2 R2 K1 ["XPATH_ASSET_PALETTES"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expectElementByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_builtin_%*.Contents.TextButton"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["act"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expectElementByPath"]
        3 LOADK                            R2 K1 ["AvatarScreen.Contents.Contents.CatalogContainer.CatalogContainer.Catalog.ScrollingFrame.Scroller.item_instance_%*.Contents.TextButton"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["act"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_65:
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
       22 JUMPIFEQKNIL                     R8 ; [+48]
       24 JUMPIFEQKNIL                     R9 ; [+46]
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
       51 JUMP                             ; [+19]
       52 JUMPIFNOTEQKS                    R8 K18 ["instance"] ; [+10]
       54 FASTCALL2                        MATH_MAX R2 R10 ; [+5]
       56 MOVE                             R12 R2
       57 MOVE                             R13 R10
       58 GETIMPORT                        R11 K17 [math.max]
       60 CALL                             R11 2 1
       61 MOVE                             R2 R11
       62 JUMP                             ; [+8]
       63 GETIMPORT                        R11 K3 [error]
       65 LOADK                            R12 K19 ["Unknown item type: %*"]
       66 MOVE                             R14 R8
       67 NAMECALL                         R12 R12 K20 ["format"]
       69 CALL                             R12 2 1
       70 CALL                             R11 1 0
       71 FORGLOOP                         R3 2 ; [-56]
       73 DUPTABLE                         R3 K23 [{"builtins", "instances"}]
       74 SETTABLEKS                       R1 R3 K21 ["builtins"]
       76 SETTABLEKS                       R2 R3 K22 ["instances"]
       78 RETURN                           R3 1

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.Contents.Contents.Preview.DummyPreview.DummyPreview"]
        4 CALL                             R0 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 LOADK                            R4 K2 ["ViewportFrame"]
        9 NAMECALL                         R2 R0 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["AvatarScreen ViewportFrame not found"]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K7 ["CurrentCamera"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       26 LOADK                            R4 K8 ["AvatarScreen ViewportFrame has no CurrentCamera"]
       27 GETIMPORT                        R2 K6 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R1 K9 ["CFrame"]
       32 RETURN                           R2 1

PROTO_70:
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

PROTO_71:
        0 LOADK                            R4 K0 ["ImageLabel"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Image"]
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 RETURN                           R1 1

PROTO_72:
        0 GETTABLEKS                       R3 R0 K0 ["yPosition"]
        2 GETTABLEKS                       R4 R1 K0 ["yPosition"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_73:
        0 DUPCLOSURE                       R0 K0 [PROTO_71]
        1 DUPCLOSURE                       R1 K1 [PROTO_72]
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

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.Publish"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckBody"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.CheckFace"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.SettingsButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["AvatarScreen.StageSelect.Contents.Back.Button"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["clickWithoutValidation"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_84:
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
       29 DUPCLOSURE                       R4 K12 [PROTO_81]
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

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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
       27 JUMPIF                           R2 ; [+29]
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
       46 LOADK                            R5 K12 ["No catalog item found with source '%*'. Scroller children: %*"]
       47 MOVE                             R7 R0
       48 GETIMPORT                        R8 K14 [table.concat]
       50 MOVE                             R9 R3
       51 LOADK                            R10 K15 [", "]
       52 CALL                             R8 2 1
       53 NAMECALL                         R5 R5 K16 ["format"]
       55 CALL                             R5 3 1
       56 CALL                             R4 1 0
       57 LOADNIL                          R3
       58 LOADK                            R6 K17 ["Contents"]
       59 LOADB                            R7 1
       60 NAMECALL                         R4 R2 K18 ["FindFirstChild"]
       62 CALL                             R4 3 1
       63 JUMPIFNOT                        R4 ; [+7]
       64 LOADK                            R7 K19 ["GuiObject"]
       65 NAMECALL                         R5 R4 K20 ["IsA"]
       67 CALL                             R5 2 1
       68 JUMPIFNOT                        R5 ; [+2]
       69 MOVE                             R3 R4
       70 JUMP                             ; [+12]
       71 LOADK                            R7 K21 ["TextButton"]
       72 LOADB                            R8 1
       73 NAMECALL                         R5 R2 K22 ["FindFirstChildWhichIsA"]
       75 CALL                             R5 3 1
       76 JUMPIF                           R5 ; [+5]
       77 LOADK                            R7 K23 ["ImageButton"]
       78 LOADB                            R8 1
       79 NAMECALL                         R5 R2 K22 ["FindFirstChildWhichIsA"]
       81 CALL                             R5 3 1
       82 MOVE                             R3 R5
       83 JUMPIF                           R3 ; [+9]
       84 GETIMPORT                        R5 K3 [error]
       86 LOADK                            R6 K24 ["No hoverable element found in catalog item '%*'"]
       87 GETTABLEKS                       R8 R2 K6 ["Name"]
       89 NAMECALL                         R6 R6 K16 ["format"]
       91 CALL                             R6 2 1
       92 CALL                             R5 1 0
       93 JUMPIFNOTEQKNIL                  R3 ; [+2]
       95 LOADB                            R6 0 +1
       96 LOADB                            R6 1
       97 FASTCALL2K                       ASSERT R6 K25 ; [+4]
       99 LOADK                            R7 K25 ["hoverTarget must exist"]
      100 GETIMPORT                        R5 K27 [assert]
      102 CALL                             R5 2 0
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K28 ["act"]
      106 NEWCLOSURE                       R6 P0
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          REF R3
      109 CALL                             R5 1 0
      110 CLOSEUPVALS                      R3
      111 RETURN                           R0 0

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_88]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_90:
        0 LOADK                            R3 K0 ["MakeupDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_91:
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
       24 DUPCLOSURE                       R4 K9 [PROTO_90]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_92:
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

PROTO_93:
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

PROTO_94:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expectInstanceByPath"]
        3 LOADK                            R1 K1 ["Children.Contents.SplitView.Pane 1.Child.ModelPreview.ModelPreview.ViewportFrame.WorldModel.Dummy"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.Controls.Controls.Contents.Start"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_96:
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

PROTO_97:
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

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AutoSetupScreen"]
        3 GETTABLEKS                       R1 R1 K1 ["getDummy"]
        5 CALL                             R1 0 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_99:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.Contents.SplitView.Pane 1.Child.ToggleBar.Toggle"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_100:
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
       51 LOADK                            R8 K18 ["SelectInput at row index %* not found (found %* SelectInputs in sort clothing table)"]
       52 MOVE                             R10 R4
       53 LENGTH                           R11 R3
       54 NAMECALL                         R8 R8 K19 ["format"]
       56 CALL                             R8 3 1
       57 FASTCALL2                        ASSERT R7 R8 ; [+3]
       59 GETIMPORT                        R6 K8 [assert]
       61 CALL                             R6 2 0
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K20 ["selectDropdownOption"]
       65 MOVE                             R7 R5
       66 MOVE                             R8 R0
       67 CALL                             R6 2 0
       68 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StageSelect.SettingsButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StageSelect.Contents.Back.Button"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TopLevelDetector"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_104:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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
       61 LOADK                            R3 K23 ["Setup type with key \"%*\" not found in settings"]
       62 MOVE                             R5 R0
       63 NAMECALL                         R3 R3 K24 ["format"]
       65 CALL                             R3 2 1
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_108:
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

PROTO_109:
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

PROTO_110:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["Provider.Buttons"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_111:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Provider.Buttons.AddSelected"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByText"]
        9 LOADK                            R2 K3 ["SelectScreen.AvatarCreationTitle"]
       10 DUPTABLE                         R3 K6 [{["exact"] = False}]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_113:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-creation-generate"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-screen"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-empty"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-confirm"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-failed"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-generating"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-generating-cancel"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-preview-image"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["queryByTestId"]
        7 LOADK                            R2 K2 ["avatar-chat-image-dialog--container"]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["getByTestId"]
        7 LOADK                            R1 K2 ["avatar-chat-image-dialog--actions-container"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["within"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K3 ["queryByTestId"]
       16 LOADK                            R3 K4 ["avatar-chat-image-dialog--actions-container--button-1"]
       17 CALL                             R2 1 1
       18 JUMPIF                           R2 ; [+4]
       19 GETTABLEKS                       R2 R1 K1 ["getByTestId"]
       21 LOADK                            R3 K5 ["--foundation-button"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 2
       24 MOVE                             R4 R2
       25 DUPTABLE                         R5 K9 [{["resizeAncestors"] = True, ["forceResize"] = True}]
       26 CALL                             R3 2 0
       27 GETIMPORT                        R3 K12 [os.clock]
       29 CALL                             R3 0 1
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K13 ["AvatarChatScreen"]
       33 GETTABLEKS                       R4 R4 K14 ["isImageDialogOpen"]
       35 CALL                             R4 0 1
       36 JUMPIFNOT                        R4 ; [+18]
       37 GETIMPORT                        R5 K12 [os.clock]
       39 CALL                             R5 0 1
       40 SUB                              R4 R5 R3
       41 LOADN                            R5 1
       42 JUMPIFNOTLE                      R5 R4 ; [+5]
       44 GETIMPORT                        R4 K16 [error]
       46 LOADK                            R5 K17 ["Image dialog didn't close within timeout"]
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R4 R4 K18 ["act"]
       51 GETIMPORT                        R5 K21 [task.wait]
       53 CALL                             R4 1 0
       54 JUMPBACK                         ; [-25]
       55 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-turn-failed"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_124:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-turn-cancelled"]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_125:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["queryAllByTestId"]
        9 LOADK                            R2 K3 ["avatar-chat-turn"]
       10 CALL                             R1 1 1
       11 LENGTH                           R0 R1
       12 RETURN                           R0 1

PROTO_126:
        0 GETTABLEKS                       R3 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["LayoutOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_127:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["within"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ui"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["getAllByTestId"]
        9 LOADK                            R3 K3 ["avatar-chat-turn"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K6 [table.sort]
       13 MOVE                             R4 R2
       14 DUPCLOSURE                       R5 K7 [PROTO_126]
       15 CALL                             R3 2 0
       16 GETTABLE                         R3 R2 R0
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 LOADK                            R6 K8 ["No chat turn at index %*"]
       22 MOVE                             R8 R0
       23 NAMECALL                         R6 R6 K9 ["format"]
       25 CALL                             R6 2 1
       26 FASTCALL2                        ASSERT R5 R6 ; [+3]
       28 GETIMPORT                        R4 K11 [assert]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["within"]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R4 R4 K12 ["queryByTestId"]
       38 MOVE                             R5 R1
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKNIL                  R4 ; [+17]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["within"]
       45 MOVE                             R5 R3
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K13 ["getByTestId"]
       49 LOADK                            R5 K14 ["avatar-chat-turn-header"]
       50 CALL                             R4 1 1
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K15 ["act"]
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R4
       57 CALL                             R5 1 0
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K0 ["within"]
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R4 R4 K13 ["getByTestId"]
       65 MOVE                             R5 R1
       66 CALL                             R4 1 1
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K15 ["act"]
       70 NEWCLOSURE                       R6 P2
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          VAL R4
       73 CALL                             R5 1 0
       74 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["avatar-chat-regenerate"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["change"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"target"}]
        7 DUPTABLE                         R3 K5 [{"Text"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K4 ["Text"]
       11 SETTABLEKS                       R3 R2 K2 ["target"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ui"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["getByPlaceholderText"]
        9 LOADK                            R2 K3 ["Studio.Test.AvatarChatScreen.InputPlaceholder:[]"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["act"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-send"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AvatarChatScreen"]
        3 GETTABLEKS                       R1 R1 K1 ["typePrompt"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["AvatarChatScreen"]
       10 GETTABLEKS                       R1 R1 K2 ["clickSend"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_135:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-confirm"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-regenerate"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-cancel"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_138:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickByTestId"]
        3 LOADK                            R1 K1 ["avatar-chat-back"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_139:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceByPath"]
        3 LOADK                            R2 K1 ["Children.StopButton"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_140:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickPath"]
        3 LOADK                            R1 K1 ["Children.StopButton"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_141:
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

PROTO_142:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerBodyPointsToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_143:
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

PROTO_144:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarPreviewerCageEditingToolToolbar"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_147]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_149:
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

PROTO_150:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_149]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
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

PROTO_155:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["AvatarPreviewer_%*"]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R4 R4 K5 ["GenerateGUID"]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K6 ["format"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K2 [Instance.new]
       14 LOADK                            R4 K7 ["ScreenGui"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R2 R3 K8 ["Name"]
       18 GETUPVAL                         R4 1
       19 SETTABLEKS                       R4 R3 K9 ["Parent"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K10 ["createBlockingRoot"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 3
       27 CALL                             R5 0 2
       28 GETIMPORT                        R7 K2 [Instance.new]
       30 LOADK                            R8 K7 ["ScreenGui"]
       31 CALL                             R7 1 1
       32 LOADK                            R8 K11 ["FocusContainer_%*"]
       33 MOVE                             R10 R2
       34 NAMECALL                         R8 R8 K6 ["format"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K8 ["Name"]
       39 GETUPVAL                         R8 1
       40 SETTABLEKS                       R8 R7 K9 ["Parent"]
       42 GETTABLEKS                       R9 R5 K12 ["context"]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K13 ["Focus"]
       47 GETTABLEKS                       R10 R10 K1 ["new"]
       49 MOVE                             R11 R7
       50 CALL                             R10 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R8 K16 [table.insert]
       54 CALL                             R8 -1 0
       55 DUPCLOSURE                       R8 K17 [PROTO_17]
       56 GETTABLEKS                       R9 R5 K18 ["plugin"]
       58 SETTABLEKS                       R8 R9 K19 ["GetSelectedRibbonTool"]
       60 DUPTABLE                         R8 K21 [{"isRunning"}]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R9 R8 K20 ["isRunning"]
       65 JUMPIFEQKNIL                     R0 ; [+17]
       67 GETTABLEKS                       R9 R0 K22 ["devFrameworkContexts"]
       69 JUMPIFEQKNIL                     R9 ; [+13]
       71 GETUPVAL                         R9 5
       72 GETTABLEKS                       R9 R9 K23 ["List"]
       74 GETTABLEKS                       R9 R9 K24 ["join"]
       76 GETTABLEKS                       R10 R5 K12 ["context"]
       78 GETTABLEKS                       R11 R0 K22 ["devFrameworkContexts"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R5 K12 ["context"]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R9 R9 K25 ["act"]
       86 NEWCLOSURE                       R10 P2
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          UPVAL U12
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U13
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U14
       99 CAPTURE                          UPVAL U15
      100 CAPTURE                          VAL R6
      101 CAPTURE                          UPVAL U16
      102 CAPTURE                          VAL R8
      103 CAPTURE                          UPVAL U17
      104 CAPTURE                          UPVAL U18
      105 CAPTURE                          UPVAL U19
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U20
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U21
      110 CAPTURE                          VAL R5
      111 CALL                             R9 1 0
      112 NAMECALL                         R12 R3 K26 ["GetChildren"]
      114 CALL                             R12 1 1
      115 LENGTH                           R11 R12
      116 LOADN                            R12 0
      117 JUMPIFLT                         R12 R11 ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 FASTCALL2K                       ASSERT R10 K27 ; [+4]
      123 LOADK                            R11 K27 ["Container is empty after mount"]
      124 GETIMPORT                        R9 K29 [assert]
      126 CALL                             R9 2 0
      127 NEWTABLE                         R9 64 0
      129 GETUPVAL                         R11 1
      130 MOVE                             R13 R2
      131 NAMECALL                         R11 R11 K30 ["FindFirstChild"]
      133 CALL                             R11 2 1
      134 FASTCALL2K                       ASSERT R11 K31 ; [+4]
      136 LOADK                            R12 K31 ["Couldn't find previewer screen"]
      137 GETIMPORT                        R10 K29 [assert]
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K32 ["ui"]
      142 SETTABLEKS                       R7 R9 K33 ["focusContainer"]
      144 GETTABLEKS                       R10 R5 K34 ["placesService"]
      146 SETTABLEKS                       R10 R9 K34 ["placesService"]
      148 NEWCLOSURE                       R10 P3
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R10 R9 K35 ["destroy"]
      155 NEWCLOSURE                       R10 P4
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          VAL R5
      158 SETTABLEKS                       R10 R9 K36 ["select"]
      160 NEWCLOSURE                       R10 P5
      161 CAPTURE                          VAL R5
      162 SETTABLEKS                       R10 R9 K37 ["getSelection"]
      164 NEWCLOSURE                       R10 P6
      165 CAPTURE                          VAL R5
      166 SETTABLEKS                       R10 R9 K38 ["getLastAnalyticsEvent"]
      168 NEWCLOSURE                       R10 P7
      169 CAPTURE                          VAL R5
      170 SETTABLEKS                       R10 R9 K39 ["subWindows"]
      172 NEWCLOSURE                       R10 P8
      173 CAPTURE                          VAL R5
      174 SETTABLEKS                       R10 R9 K40 ["getSubWindow"]
      176 DUPCLOSURE                       R10 K41 [PROTO_28]
      177 SETTABLEKS                       R10 R9 K42 ["getStyledDialogButton"]
      179 NEWCLOSURE                       R10 P10
      180 CAPTURE                          UPVAL U2
      181 CAPTURE                          UPVAL U22
      182 CAPTURE                          VAL R9
      183 SETTABLEKS                       R10 R9 K43 ["clickStyledDialogButton"]
      185 DUPCLOSURE                       R10 K44 [PROTO_31]
      186 SETTABLEKS                       R10 R9 K45 ["getStyledDialogContent"]
      188 DUPCLOSURE                       R10 K46 [PROTO_32]
      189 CAPTURE                          UPVAL U23
      190 CAPTURE                          UPVAL U24
      191 SETTABLEKS                       R10 R9 K47 ["clickButtonInDialog"]
      193 DUPCLOSURE                       R10 K48 [PROTO_33]
      194 CAPTURE                          UPVAL U23
      195 CAPTURE                          UPVAL U24
      196 SETTABLEKS                       R10 R9 K49 ["clickCheckboxInDialog"]
      198 NEWCLOSURE                       R10 P14
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R10 R9 K50 ["getMockUGCAvatarService"]
      202 NEWCLOSURE                       R10 P15
      203 CAPTURE                          VAL R9
      204 CAPTURE                          UPVAL U25
      205 CAPTURE                          VAL R2
      206 SETTABLEKS                       R10 R9 K51 ["selectFreshLizard"]
      208 NEWCLOSURE                       R10 P16
      209 CAPTURE                          UPVAL U22
      210 CAPTURE                          VAL R2
      211 SETTABLEKS                       R10 R9 K52 ["pathOf"]
      213 NEWCLOSURE                       R10 P17
      214 CAPTURE                          UPVAL U22
      215 CAPTURE                          VAL R9
      216 SETTABLEKS                       R10 R9 K53 ["elementByPath"]
      218 NEWCLOSURE                       R10 P18
      219 CAPTURE                          UPVAL U22
      220 CAPTURE                          VAL R9
      221 SETTABLEKS                       R10 R9 K54 ["debugPath"]
      223 NEWCLOSURE                       R10 P19
      224 CAPTURE                          VAL R9
      225 SETTABLEKS                       R10 R9 K55 ["expectElementByPath"]
      227 NEWCLOSURE                       R10 P20
      228 CAPTURE                          VAL R9
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U25
      231 SETTABLEKS                       R10 R9 K56 ["expectInstanceByPath"]
      233 NEWCLOSURE                       R10 P21
      234 CAPTURE                          VAL R9
      235 SETTABLEKS                       R10 R9 K57 ["instanceByPath"]
      237 NEWCLOSURE                       R10 P22
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          VAL R9
      240 SETTABLEKS                       R10 R9 K58 ["clickPath"]
      242 NEWCLOSURE                       R10 P23
      243 CAPTURE                          UPVAL U23
      244 CAPTURE                          VAL R9
      245 CAPTURE                          UPVAL U2
      246 SETTABLEKS                       R10 R9 K59 ["clickByTestId"]
      248 NEWCLOSURE                       R10 P24
      249 CAPTURE                          VAL R9
      250 SETTABLEKS                       R10 R9 K60 ["getByImage"]
      252 NEWCLOSURE                       R10 P25
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          VAL R3
      255 SETTABLEKS                       R10 R9 K61 ["resize"]
      257 NEWCLOSURE                       R10 P26
      258 CAPTURE                          VAL R9
      259 SETTABLEKS                       R10 R9 K62 ["resizeToDefault"]
      261 NEWCLOSURE                       R10 P27
      262 CAPTURE                          UPVAL U2
      263 CAPTURE                          UPVAL U23
      264 CAPTURE                          VAL R7
      265 SETTABLEKS                       R10 R9 K63 ["selectDropdownOption"]
      267 NEWTABLE                         R10 0 0
      269 SETTABLEKS                       R10 R9 K64 ["AvatarScreen"]
      271 GETTABLEKS                       R10 R9 K64 ["AvatarScreen"]
      273 LOADK                            R11 K65 ["AvatarScreen.Contents.Tabs.AssetPalettes.ScrollingFrame.Scroller.Tabs"]
      274 SETTABLEKS                       R11 R10 K66 ["XPATH_ASSET_PALETTES"]
      276 NEWCLOSURE                       R10 P28
      277 CAPTURE                          VAL R9
      278 CAPTURE                          UPVAL U25
      279 NEWCLOSURE                       R11 P29
      280 CAPTURE                          VAL R9
      281 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      283 SETTABLEKS                       R11 R12 K67 ["isActive"]
      285 NEWCLOSURE                       R11 P30
      286 CAPTURE                          VAL R9
      287 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      289 SETTABLEKS                       R11 R12 K68 ["isPalettesPickTabMenuActive"]
      291 NEWCLOSURE                       R11 P31
      292 CAPTURE                          VAL R9
      293 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      295 SETTABLEKS                       R11 R12 K69 ["isCategoryPickTabMenuActive"]
      297 NEWCLOSURE                       R11 P32
      298 CAPTURE                          VAL R7
      299 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      301 SETTABLEKS                       R11 R12 K70 ["isAvatarSettingsActive"]
      303 NEWCLOSURE                       R11 P33
      304 CAPTURE                          VAL R9
      305 CAPTURE                          UPVAL U2
      306 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      308 SETTABLEKS                       R11 R12 K71 ["waitUntilActive"]
      310 NEWCLOSURE                       R11 P34
      311 CAPTURE                          VAL R10
      312 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      314 SETTABLEKS                       R11 R12 K72 ["clickCategory"]
      316 NEWCLOSURE                       R11 P35
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R9
      319 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      321 SETTABLEKS                       R11 R12 K73 ["clickPalette"]
      323 NEWCLOSURE                       R11 P36
      324 CAPTURE                          VAL R9
      325 CAPTURE                          UPVAL U2
      326 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      328 SETTABLEKS                       R11 R12 K74 ["clickBuiltin"]
      330 NEWCLOSURE                       R11 P37
      331 CAPTURE                          VAL R9
      332 CAPTURE                          UPVAL U2
      333 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      335 SETTABLEKS                       R11 R12 K75 ["clickInstance"]
      337 NEWCLOSURE                       R11 P38
      338 CAPTURE                          VAL R9
      339 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      341 SETTABLEKS                       R11 R12 K76 ["catalogItemCounts"]
      343 NEWCLOSURE                       R11 P39
      344 CAPTURE                          VAL R9
      345 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      347 SETTABLEKS                       R11 R12 K77 ["selectedPaletteText"]
      349 NEWCLOSURE                       R11 P40
      350 CAPTURE                          VAL R9
      351 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      353 SETTABLEKS                       R11 R12 K78 ["selectedPaletteKey"]
      355 NEWCLOSURE                       R11 P41
      356 CAPTURE                          VAL R9
      357 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      359 SETTABLEKS                       R11 R12 K79 ["getDummy"]
      361 NEWCLOSURE                       R11 P42
      362 CAPTURE                          VAL R9
      363 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      365 SETTABLEKS                       R11 R12 K80 ["getCameraCFrame"]
      367 NEWCLOSURE                       R11 P43
      368 CAPTURE                          UPVAL U26
      369 CAPTURE                          VAL R9
      370 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      372 SETTABLEKS                       R11 R12 K81 ["clickAddItem"]
      374 NEWCLOSURE                       R11 P44
      375 CAPTURE                          VAL R9
      376 CAPTURE                          UPVAL U23
      377 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      379 SETTABLEKS                       R11 R12 K82 ["getSidebarItems"]
      381 NEWCLOSURE                       R11 P45
      382 CAPTURE                          VAL R9
      383 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      385 SETTABLEKS                       R11 R12 K83 ["clickSubmitButton"]
      387 NEWCLOSURE                       R11 P46
      388 CAPTURE                          VAL R9
      389 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      391 SETTABLEKS                       R11 R12 K84 ["clickCheckBodyMode"]
      393 NEWCLOSURE                       R11 P47
      394 CAPTURE                          VAL R9
      395 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      397 SETTABLEKS                       R11 R12 K85 ["clickCheckFaceMode"]
      399 NEWCLOSURE                       R11 P48
      400 CAPTURE                          VAL R9
      401 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      403 SETTABLEKS                       R11 R12 K86 ["clickAvatarSettings"]
      405 NEWCLOSURE                       R11 P49
      406 CAPTURE                          VAL R9
      407 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      409 SETTABLEKS                       R11 R12 K87 ["clickBack"]
      411 NEWCLOSURE                       R11 P50
      412 CAPTURE                          VAL R9
      413 CAPTURE                          UPVAL U2
      414 CAPTURE                          UPVAL U22
      415 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      417 SETTABLEKS                       R11 R12 K88 ["clickHideShowButton"]
      419 NEWCLOSURE                       R11 P51
      420 CAPTURE                          VAL R9
      421 CAPTURE                          UPVAL U23
      422 CAPTURE                          UPVAL U2
      423 CAPTURE                          UPVAL U22
      424 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      426 SETTABLEKS                       R11 R12 K89 ["getSkinToneButtons"]
      428 NEWCLOSURE                       R11 P52
      429 CAPTURE                          VAL R9
      430 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      432 SETTABLEKS                       R11 R12 K90 ["createAndEquipMakeupItem"]
      434 NEWCLOSURE                       R11 P53
      435 CAPTURE                          VAL R9
      436 CAPTURE                          UPVAL U2
      437 CAPTURE                          UPVAL U22
      438 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      440 SETTABLEKS                       R11 R12 K91 ["hoverFirstCatalogItemOfSourceType"]
      442 DUPCLOSURE                       R11 K92 [PROTO_89]
      443 CAPTURE                          UPVAL U2
      444 CAPTURE                          UPVAL U22
      445 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      447 SETTABLEKS                       R11 R12 K93 ["moveMouseAway"]
      449 NEWCLOSURE                       R11 P55
      450 CAPTURE                          VAL R9
      451 CAPTURE                          UPVAL U27
      452 GETTABLEKS                       R12 R9 K64 ["AvatarScreen"]
      454 SETTABLEKS                       R11 R12 K94 ["countEquippedMakeup"]
      456 NEWTABLE                         R11 0 0
      458 SETTABLEKS                       R11 R9 K95 ["AutoSetupScreen"]
      460 NEWCLOSURE                       R11 P56
      461 CAPTURE                          VAL R9
      462 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      464 SETTABLEKS                       R11 R12 K96 ["getAlertDescription"]
      466 NEWCLOSURE                       R11 P57
      467 CAPTURE                          VAL R9
      468 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      470 SETTABLEKS                       R11 R12 K97 ["getAlertTitle"]
      472 NEWCLOSURE                       R11 P58
      473 CAPTURE                          VAL R9
      474 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      476 SETTABLEKS                       R11 R12 K79 ["getDummy"]
      478 NEWCLOSURE                       R11 P59
      479 CAPTURE                          VAL R9
      480 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      482 SETTABLEKS                       R11 R12 K98 ["startAutoSetup"]
      484 NEWCLOSURE                       R11 P60
      485 CAPTURE                          VAL R9
      486 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      488 SETTABLEKS                       R11 R12 K99 ["cancelAutoSetup"]
      490 NEWCLOSURE                       R11 P61
      491 CAPTURE                          VAL R9
      492 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      494 SETTABLEKS                       R11 R12 K100 ["controlsActive"]
      496 NEWCLOSURE                       R11 P62
      497 CAPTURE                          VAL R9
      498 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      500 SETTABLEKS                       R11 R12 K67 ["isActive"]
      502 NEWCLOSURE                       R11 P63
      503 CAPTURE                          VAL R9
      504 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      506 SETTABLEKS                       R11 R12 K101 ["toggleClothingTable"]
      508 NEWCLOSURE                       R11 P64
      509 CAPTURE                          UPVAL U2
      510 CAPTURE                          VAL R9
      511 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      513 SETTABLEKS                       R11 R12 K102 ["selectClothingType"]
      515 NEWCLOSURE                       R11 P65
      516 CAPTURE                          VAL R9
      517 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      519 SETTABLEKS                       R11 R12 K103 ["clickSettings"]
      521 NEWCLOSURE                       R11 P66
      522 CAPTURE                          VAL R9
      523 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      525 SETTABLEKS                       R11 R12 K87 ["clickBack"]
      527 NEWCLOSURE                       R11 P67
      528 CAPTURE                          VAL R7
      529 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      531 SETTABLEKS                       R11 R12 K104 ["isSettingsActive"]
      533 NEWCLOSURE                       R11 P68
      534 CAPTURE                          VAL R7
      535 CAPTURE                          UPVAL U2
      536 CAPTURE                          UPVAL U22
      537 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      539 SETTABLEKS                       R11 R12 K105 ["dismissSettings"]
      541 NEWCLOSURE                       R11 P69
      542 CAPTURE                          VAL R7
      543 CAPTURE                          UPVAL U2
      544 CAPTURE                          UPVAL U28
      545 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      547 SETTABLEKS                       R11 R12 K106 ["clickSettingsSetupType"]
      549 NEWCLOSURE                       R11 P70
      550 CAPTURE                          VAL R9
      551 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      553 SETTABLEKS                       R11 R12 K107 ["toggleAlignFrontAngle"]
      555 NEWCLOSURE                       R11 P71
      556 CAPTURE                          VAL R9
      557 GETTABLEKS                       R12 R9 K95 ["AutoSetupScreen"]
      559 SETTABLEKS                       R11 R12 K108 ["getModelPreviewCameraCFrame"]
      561 NEWTABLE                         R11 0 0
      563 SETTABLEKS                       R11 R9 K109 ["SelectScreen"]
      565 NEWCLOSURE                       R11 P72
      566 CAPTURE                          VAL R9
      567 GETTABLEKS                       R12 R9 K109 ["SelectScreen"]
      569 SETTABLEKS                       R11 R12 K67 ["isActive"]
      571 NEWCLOSURE                       R11 P73
      572 CAPTURE                          VAL R9
      573 GETTABLEKS                       R12 R9 K109 ["SelectScreen"]
      575 SETTABLEKS                       R11 R12 K110 ["clickAddSelected"]
      577 NEWCLOSURE                       R11 P74
      578 CAPTURE                          UPVAL U23
      579 CAPTURE                          VAL R9
      580 GETTABLEKS                       R12 R9 K109 ["SelectScreen"]
      582 SETTABLEKS                       R11 R12 K111 ["isAvatarCreationEntryActive"]
      584 NEWCLOSURE                       R11 P75
      585 CAPTURE                          VAL R9
      586 GETTABLEKS                       R12 R9 K109 ["SelectScreen"]
      588 SETTABLEKS                       R11 R12 K112 ["clickGenerateAvatar"]
      590 NEWTABLE                         R11 0 0
      592 SETTABLEKS                       R11 R9 K113 ["AvatarChatScreen"]
      594 NEWCLOSURE                       R11 P76
      595 CAPTURE                          UPVAL U23
      596 CAPTURE                          VAL R9
      597 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      599 SETTABLEKS                       R11 R12 K67 ["isActive"]
      601 NEWCLOSURE                       R11 P77
      602 CAPTURE                          UPVAL U23
      603 CAPTURE                          VAL R9
      604 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      606 SETTABLEKS                       R11 R12 K114 ["isEmpty"]
      608 NEWCLOSURE                       R11 P78
      609 CAPTURE                          UPVAL U23
      610 CAPTURE                          VAL R9
      611 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      613 SETTABLEKS                       R11 R12 K115 ["hasConfirmAction"]
      615 NEWCLOSURE                       R11 P79
      616 CAPTURE                          UPVAL U23
      617 CAPTURE                          VAL R9
      618 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      620 SETTABLEKS                       R11 R12 K116 ["hasFailedState"]
      622 NEWCLOSURE                       R11 P80
      623 CAPTURE                          UPVAL U23
      624 CAPTURE                          VAL R9
      625 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      627 SETTABLEKS                       R11 R12 K117 ["isGenerating3D"]
      629 NEWCLOSURE                       R11 P81
      630 CAPTURE                          VAL R9
      631 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      633 SETTABLEKS                       R11 R12 K118 ["clickGenerating3DCancel"]
      635 NEWCLOSURE                       R11 P82
      636 CAPTURE                          VAL R9
      637 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      639 SETTABLEKS                       R11 R12 K119 ["clickPreviewImage"]
      641 DUPCLOSURE                       R11 K120 [PROTO_121]
      642 CAPTURE                          UPVAL U23
      643 CAPTURE                          UPVAL U1
      644 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      646 SETTABLEKS                       R11 R12 K121 ["isImageDialogOpen"]
      648 NEWCLOSURE                       R11 P84
      649 CAPTURE                          UPVAL U23
      650 CAPTURE                          UPVAL U1
      651 CAPTURE                          UPVAL U24
      652 CAPTURE                          VAL R9
      653 CAPTURE                          UPVAL U2
      654 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      656 SETTABLEKS                       R11 R12 K122 ["closeImageDialog"]
      658 NEWCLOSURE                       R11 P85
      659 CAPTURE                          UPVAL U23
      660 CAPTURE                          VAL R9
      661 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      663 SETTABLEKS                       R11 R12 K123 ["hasFailedTurn"]
      665 NEWCLOSURE                       R11 P86
      666 CAPTURE                          UPVAL U23
      667 CAPTURE                          VAL R9
      668 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      670 SETTABLEKS                       R11 R12 K124 ["isTurnCancelled"]
      672 NEWCLOSURE                       R11 P87
      673 CAPTURE                          UPVAL U23
      674 CAPTURE                          VAL R9
      675 GETTABLEKS                       R12 R9 K113 ["AvatarChatScreen"]
      677 SETTABLEKS                       R11 R12 K125 ["turnCount"]
      679 NEWCLOSURE                       R11 P88
      680 CAPTURE                          UPVAL U23
      681 CAPTURE                          VAL R9
      682 CAPTURE                          UPVAL U2
      683 NEWCLOSURE                       R12 P89
      684 CAPTURE                          VAL R11
      685 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      687 SETTABLEKS                       R12 R13 K126 ["clickTurnRegenerate"]
      689 NEWCLOSURE                       R12 P90
      690 CAPTURE                          UPVAL U23
      691 CAPTURE                          VAL R9
      692 CAPTURE                          UPVAL U2
      693 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      695 SETTABLEKS                       R12 R13 K127 ["typePrompt"]
      697 NEWCLOSURE                       R12 P91
      698 CAPTURE                          VAL R9
      699 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      701 SETTABLEKS                       R12 R13 K128 ["clickSend"]
      703 NEWCLOSURE                       R12 P92
      704 CAPTURE                          VAL R9
      705 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      707 SETTABLEKS                       R12 R13 K129 ["submitPrompt"]
      709 NEWCLOSURE                       R12 P93
      710 CAPTURE                          VAL R9
      711 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      713 SETTABLEKS                       R12 R13 K130 ["clickConfirm"]
      715 NEWCLOSURE                       R12 P94
      716 CAPTURE                          VAL R9
      717 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      719 SETTABLEKS                       R12 R13 K131 ["clickRegenerate"]
      721 NEWCLOSURE                       R12 P95
      722 CAPTURE                          VAL R9
      723 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      725 SETTABLEKS                       R12 R13 K132 ["clickCancel"]
      727 NEWCLOSURE                       R12 P96
      728 CAPTURE                          VAL R9
      729 GETTABLEKS                       R13 R9 K113 ["AvatarChatScreen"]
      731 SETTABLEKS                       R12 R13 K87 ["clickBack"]
      733 GETUPVAL                         R12 29
      734 MOVE                             R13 R9
      735 CALL                             R12 1 1
      736 SETTABLEKS                       R12 R9 K133 ["DisambiguationMenu"]
      738 NEWTABLE                         R12 0 0
      740 SETTABLEKS                       R12 R9 K134 ["TestingScreen"]
      742 NEWCLOSURE                       R12 P97
      743 CAPTURE                          VAL R9
      744 GETTABLEKS                       R13 R9 K134 ["TestingScreen"]
      746 SETTABLEKS                       R12 R13 K67 ["isActive"]
      748 NEWCLOSURE                       R12 P98
      749 CAPTURE                          VAL R9
      750 GETTABLEKS                       R13 R9 K134 ["TestingScreen"]
      752 SETTABLEKS                       R12 R13 K135 ["clickStop"]
      754 NEWTABLE                         R12 0 0
      756 SETTABLEKS                       R12 R9 K136 ["EditingTools"]
      758 NEWCLOSURE                       R12 P99
      759 CAPTURE                          VAL R9
      760 GETTABLEKS                       R13 R9 K136 ["EditingTools"]
      762 SETTABLEKS                       R12 R13 K137 ["clickBodyPointsToolButton"]
      764 DUPCLOSURE                       R12 K138 [PROTO_142]
      765 CAPTURE                          UPVAL U1
      766 GETTABLEKS                       R13 R9 K136 ["EditingTools"]
      768 SETTABLEKS                       R12 R13 K139 ["bodyPointsToolIsActive"]
      770 NEWCLOSURE                       R12 P101
      771 CAPTURE                          VAL R9
      772 GETTABLEKS                       R13 R9 K136 ["EditingTools"]
      774 SETTABLEKS                       R12 R13 K140 ["clickCageEditingToolButton"]
      776 DUPCLOSURE                       R12 K141 [PROTO_144]
      777 CAPTURE                          UPVAL U1
      778 GETTABLEKS                       R13 R9 K136 ["EditingTools"]
      780 SETTABLEKS                       R12 R13 K142 ["cageEditingToolIsActive"]
      782 NEWTABLE                         R12 0 0
      784 SETTABLEKS                       R12 R9 K143 ["CageEditingTool"]
      786 DUPCLOSURE                       R12 K144 [PROTO_145]
      787 CAPTURE                          UPVAL U1
      788 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      790 SETTABLEKS                       R12 R13 K145 ["getBrushRadiusSliderValue"]
      792 DUPCLOSURE                       R12 K146 [PROTO_146]
      793 CAPTURE                          UPVAL U1
      794 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      796 SETTABLEKS                       R12 R13 K147 ["getBrushFalloffSliderValue"]
      798 DUPCLOSURE                       R12 K148 [PROTO_148]
      799 CAPTURE                          UPVAL U2
      800 CAPTURE                          UPVAL U30
      801 CAPTURE                          UPVAL U22
      802 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      804 SETTABLEKS                       R12 R13 K149 ["ToggleShiftB"]
      806 DUPCLOSURE                       R12 K150 [PROTO_150]
      807 CAPTURE                          UPVAL U2
      808 CAPTURE                          UPVAL U30
      809 CAPTURE                          UPVAL U22
      810 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      812 SETTABLEKS                       R12 R13 K151 ["ToggleB"]
      814 NEWCLOSURE                       R12 P107
      815 CAPTURE                          UPVAL U31
      816 CAPTURE                          VAL R9
      817 CAPTURE                          UPVAL U2
      818 CAPTURE                          UPVAL U28
      819 CAPTURE                          UPVAL U22
      820 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      822 SETTABLEKS                       R12 R13 K152 ["activateShortcutAndMoveMouse"]
      824 NEWCLOSURE                       R12 P108
      825 CAPTURE                          VAL R9
      826 CAPTURE                          UPVAL U2
      827 CAPTURE                          UPVAL U22
      828 GETTABLEKS                       R13 R9 K143 ["CageEditingTool"]
      830 SETTABLEKS                       R12 R13 K153 ["activateShortcutAndMoveMouseWheel"]
      832 RETURN                           R9 1

PROTO_156:
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

PROTO_157:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_158:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cloneLizard"]
        3 LOADK                            R1 K1 ["ClonedLizard"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_159:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_160:
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

PROTO_161:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_162:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["withTestPreviewer"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_163:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K0 ["destroy"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_164:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_165:
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

PROTO_166:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withClonedLizard"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_167:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["withTestPreviewerEditingTools"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_168:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_169:
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
      190 GETTABLEKS                       R26 R26 K40 ["HumanoidServiceContext"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K15 [require]
      195 GETTABLEKS                       R27 R7 K32 ["Src"]
      197 GETTABLEKS                       R27 R27 K34 ["Components"]
      199 GETTABLEKS                       R27 R27 K41 ["PlacesServiceContext"]
      201 CALL                             R26 1 1
      202 GETIMPORT                        R27 K15 [require]
      204 GETTABLEKS                       R28 R7 K32 ["Src"]
      206 GETTABLEKS                       R28 R28 K34 ["Components"]
      208 GETTABLEKS                       R28 R28 K42 ["PlayersServiceContext"]
      210 CALL                             R27 1 1
      211 GETIMPORT                        R28 K15 [require]
      213 GETTABLEKS                       R29 R7 K32 ["Src"]
      215 GETTABLEKS                       R29 R29 K34 ["Components"]
      217 GETTABLEKS                       R29 R29 K43 ["RunServiceContext"]
      219 CALL                             R28 1 1
      220 GETIMPORT                        R29 K15 [require]
      222 GETTABLEKS                       R30 R7 K32 ["Src"]
      224 GETTABLEKS                       R30 R30 K34 ["Components"]
      226 GETTABLEKS                       R30 R30 K44 ["UGCAvatarServiceContext"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K15 [require]
      231 GETTABLEKS                       R31 R7 K26 ["RhodiumTests"]
      233 GETTABLEKS                       R31 R31 K45 ["UGCValidationContextMocks"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K15 [require]
      238 GETIMPORT                        R32 K11 [script]
      240 GETTABLEKS                       R32 R32 K46 ["HumanoidServiceContextMock"]
      242 CALL                             R31 1 1
      243 GETIMPORT                        R32 K15 [require]
      245 GETIMPORT                        R33 K11 [script]
      247 GETTABLEKS                       R33 R33 K47 ["PlayersServiceContextMock"]
      249 CALL                             R32 1 1
      250 GETIMPORT                        R33 K15 [require]
      252 GETTABLEKS                       R34 R7 K32 ["Src"]
      254 GETTABLEKS                       R34 R34 K48 ["Flags"]
      256 GETTABLEKS                       R34 R34 K49 ["getFFlagAvatarPreviewerEditingTools"]
      258 CALL                             R33 1 1
      259 GETIMPORT                        R34 K15 [require]
      261 GETTABLEKS                       R35 R7 K32 ["Src"]
      263 GETTABLEKS                       R35 R35 K48 ["Flags"]
      265 GETTABLEKS                       R35 R35 K50 ["getFFlagAvatarPreviewerLookComposer"]
      267 CALL                             R34 1 1
      268 GETIMPORT                        R35 K15 [require]
      270 GETTABLEKS                       R36 R7 K32 ["Src"]
      272 GETTABLEKS                       R36 R36 K48 ["Flags"]
      274 GETTABLEKS                       R36 R36 K51 ["getFFlagVirtualInputManagerMouseMoveDeltaEvent"]
      276 CALL                             R35 1 1
      277 GETTABLEKS                       R36 R10 K52 ["ContextServices"]
      279 GETTABLEKS                       R37 R10 K53 ["TestHelpers"]
      281 GETTABLEKS                       R37 R37 K54 ["provideMockContext"]
      283 NEWTABLE                         R38 16 0
      285 GETTABLEKS                       R39 R3 K55 ["TestAssets"]
      287 SETTABLEKS                       R39 R38 K56 ["testAssets"]
      289 DUPCLOSURE                       R39 K57 [PROTO_1]
      290 CAPTURE                          VAL R13
      291 CAPTURE                          VAL R15
      292 SETTABLEKS                       R39 R38 K58 ["clickSimpleTab"]
      294 DUPCLOSURE                       R39 K59 [PROTO_2]
      295 SETTABLEKS                       R39 R38 K60 ["deferYield"]
      297 DUPCLOSURE                       R39 K61 [PROTO_4]
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R38
      300 SETTABLEKS                       R39 R38 K62 ["startAutoSetupAndWaitUntilClick"]
      302 DUPCLOSURE                       R39 K63 [PROTO_6]
      303 CAPTURE                          VAL R38
      304 CAPTURE                          VAL R13
      305 SETTABLEKS                       R39 R38 K64 ["startAutoSetupAndComplete"]
      307 DUPCLOSURE                       R39 K65 [PROTO_8]
      308 CAPTURE                          VAL R38
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R6
      311 SETTABLEKS                       R39 R38 K66 ["cloneLizard"]
      313 DUPCLOSURE                       R39 K67 [PROTO_10]
      314 CAPTURE                          VAL R38
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R6
      317 SETTABLEKS                       R39 R38 K68 ["cloneRigidHat"]
      319 DUPCLOSURE                       R39 K69 [PROTO_12]
      320 CAPTURE                          VAL R38
      321 CAPTURE                          VAL R16
      322 CAPTURE                          VAL R6
      323 SETTABLEKS                       R39 R38 K70 ["cloneLayeredJacket"]
      325 DUPCLOSURE                       R39 K71 [PROTO_16]
      326 CAPTURE                          VAL R33
      327 CAPTURE                          VAL R0
      328 DUPCLOSURE                       R40 K72 [PROTO_155]
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R13
      332 CAPTURE                          VAL R19
      333 CAPTURE                          VAL R36
      334 CAPTURE                          VAL R8
      335 CAPTURE                          VAL R12
      336 CAPTURE                          VAL R23
      337 CAPTURE                          VAL R25
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R27
      340 CAPTURE                          VAL R32
      341 CAPTURE                          VAL R11
      342 CAPTURE                          VAL R29
      343 CAPTURE                          VAL R21
      344 CAPTURE                          VAL R26
      345 CAPTURE                          VAL R28
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R33
      348 CAPTURE                          VAL R24
      349 CAPTURE                          VAL R22
      350 CAPTURE                          VAL R37
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R14
      353 CAPTURE                          VAL R17
      354 CAPTURE                          VAL R38
      355 CAPTURE                          VAL R34
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R5
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R4
      360 CAPTURE                          VAL R35
      361 DUPCLOSURE                       R41 K73 [PROTO_157]
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R39
      364 SETTABLEKS                       R41 R38 K74 ["withTestPreviewer"]
      366 DUPCLOSURE                       R41 K75 [PROTO_159]
      367 CAPTURE                          VAL R38
      368 SETTABLEKS                       R41 R38 K76 ["withClonedLizard"]
      370 DUPCLOSURE                       R41 K77 [PROTO_162]
      371 CAPTURE                          VAL R38
      372 SETTABLEKS                       R41 R38 K78 ["withPreviewerAndLizard"]
      374 DUPCLOSURE                       R41 K79 [PROTO_164]
      375 CAPTURE                          VAL R40
      376 SETTABLEKS                       R41 R38 K80 ["withTestPreviewerEditingTools"]
      378 DUPCLOSURE                       R41 K81 [PROTO_167]
      379 CAPTURE                          VAL R38
      380 SETTABLEKS                       R41 R38 K82 ["withPreviewerAndLizardEditingTools"]
      382 DUPCLOSURE                       R41 K83 [PROTO_169]
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R6
      385 CAPTURE                          VAL R16
      386 SETTABLEKS                       R41 R38 K84 ["cloneAutoSetupTarget"]
      388 RETURN                           R38 1
