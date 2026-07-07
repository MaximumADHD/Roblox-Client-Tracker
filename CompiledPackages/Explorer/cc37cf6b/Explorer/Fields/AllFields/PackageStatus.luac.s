PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETIMPORT                        R1 K3 [table.freeze]
        5 DUPTABLE                         R2 K7 [{"modifiedState", "hasNewVersion", "autoUpdate"}]
        6 GETTABLEKS                       R3 R0 K8 ["ModifiedState"]
        8 SETTABLEKS                       R3 R2 K4 ["modifiedState"]
       10 GETTABLEKS                       R3 R0 K9 ["HasNewVersion"]
       12 SETTABLEKS                       R3 R2 K5 ["hasNewVersion"]
       14 GETTABLEKS                       R3 R0 K10 ["AutoUpdate"]
       16 SETTABLEKS                       R3 R2 K6 ["autoUpdate"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 GETIMPORT                        R2 K5 [task.defer]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R0
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["ChildAdded"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R3 R3 K1 ["Connect"]
       10 CALL                             R3 2 1
       11 LOADK                            R6 K2 ["PackageLink"]
       12 NAMECALL                         R4 R0 K3 ["FindFirstChildOfClass"]
       14 CALL                             R4 2 1
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R4 ; [+32]
       17 GETTABLEKS                       R6 R4 K4 ["Parent"]
       19 JUMPIFNOT                        R6 ; [+17]
       20 GETIMPORT                        R5 K7 [table.freeze]
       22 DUPTABLE                         R6 K11 [{"modifiedState", "hasNewVersion", "autoUpdate"}]
       23 GETTABLEKS                       R7 R4 K12 ["ModifiedState"]
       25 SETTABLEKS                       R7 R6 K8 ["modifiedState"]
       27 GETTABLEKS                       R7 R4 K13 ["HasNewVersion"]
       29 SETTABLEKS                       R7 R6 K9 ["hasNewVersion"]
       31 GETTABLEKS                       R7 R4 K14 ["AutoUpdate"]
       33 SETTABLEKS                       R7 R6 K10 ["autoUpdate"]
       35 CALL                             R5 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 GETTABLEKS                       R6 R4 K15 ["Changed"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R4
       45 NAMECALL                         R6 R6 K1 ["Connect"]
       47 CALL                             R6 2 1
       48 MOVE                             R2 R6
       49 MOVE                             R6 R5
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R2
       53 CLOSEUPVALS                      R2
       54 RETURN                           R6 2

PROTO_7:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["modifiedState"]
        4 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        6 LOADK                            R3 K2 [""]
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+9]
       11 LOADB                            R3 0
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETTABLEKS                       R4 R2 K3 ["kind"]
       16 JUMPIFEQKS                       R4 K4 ["Selected"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETTABLEKS                       R4 R0 K5 ["hasNewVersion"]
       22 JUMPIFNOT                        R4 ; [+37]
       23 GETTABLEKS                       R4 R0 K0 ["modifiedState"]
       25 JUMPIFNOTEQKN                    R4 K6 [1] ; [+23]
       27 GETUPVAL                         R4 1
       28 JUMPIFNOT                        R4 ; [+13]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       32 GETUPVAL                         R6 0
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+3]
       35 JUMPIFNOT                        R3 ; [+2]
       36 LOADK                            R5 K8 ["UpdateAvailable_Overrides_Highlighted"]
       37 JUMP                             ; [+1]
       38 LOADK                            R5 K9 ["UpdateAvailable_Overrides"]
       39 MOVE                             R6 R1
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       45 LOADK                            R5 K10 ["UpdateAvailable_Modified"]
       46 MOVE                             R6 R1
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       52 GETUPVAL                         R6 1
       53 JUMPIFNOT                        R6 ; [+2]
       54 LOADK                            R5 K11 ["UpdateAvailable"]
       55 JUMP                             ; [+1]
       56 LOADK                            R5 K12 ["UpdateAvailable_Old"]
       57 MOVE                             R6 R1
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1
       60 GETTABLEKS                       R4 R0 K0 ["modifiedState"]
       62 JUMPIFNOTEQKN                    R4 K6 [1] ; [+48]
       64 GETTABLEKS                       R4 R0 K13 ["autoUpdate"]
       66 JUMPIFNOT                        R4 ; [+22]
       67 GETUPVAL                         R4 1
       68 JUMPIFNOT                        R4 ; [+13]
       69 GETUPVAL                         R4 2
       70 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       72 GETUPVAL                         R6 0
       73 CALL                             R6 0 1
       74 JUMPIFNOT                        R6 ; [+3]
       75 JUMPIFNOT                        R3 ; [+2]
       76 LOADK                            R5 K14 ["AutoUpdateOn_Overrides_Highlighted"]
       77 JUMP                             ; [+1]
       78 LOADK                            R5 K15 ["AutoUpdateOn_Overrides"]
       79 MOVE                             R6 R1
       80 CALL                             R4 2 -1
       81 RETURN                           R4 -1
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       85 LOADK                            R5 K16 ["Modified_AutoUpdateOn"]
       86 MOVE                             R6 R1
       87 CALL                             R4 2 -1
       88 RETURN                           R4 -1
       89 GETUPVAL                         R4 1
       90 JUMPIFNOT                        R4 ; [+13]
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       94 GETUPVAL                         R6 0
       95 CALL                             R6 0 1
       96 JUMPIFNOT                        R6 ; [+3]
       97 JUMPIFNOT                        R3 ; [+2]
       98 LOADK                            R5 K17 ["AutoUpdateOff_Overrides_Highlighted"]
       99 JUMP                             ; [+1]
      100 LOADK                            R5 K18 ["AutoUpdateOff_Overrides"]
      101 MOVE                             R6 R1
      102 CALL                             R4 2 -1
      103 RETURN                           R4 -1
      104 GETUPVAL                         R4 2
      105 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
      107 LOADK                            R5 K19 ["Modified_AutoUpdateOff"]
      108 MOVE                             R6 R1
      109 CALL                             R4 2 -1
      110 RETURN                           R4 -1
      111 GETTABLEKS                       R4 R0 K13 ["autoUpdate"]
      113 JUMPIFNOT                        R4 ; [+11]
      114 GETUPVAL                         R4 2
      115 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
      117 GETUPVAL                         R6 1
      118 JUMPIFNOT                        R6 ; [+2]
      119 LOADK                            R5 K20 ["AutoUpdateOn"]
      120 JUMP                             ; [+1]
      121 LOADK                            R5 K21 ["AutoUpdateOn_Old"]
      122 MOVE                             R6 R1
      123 CALL                             R4 2 -1
      124 RETURN                           R4 -1
      125 GETUPVAL                         R4 2
      126 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
      128 GETUPVAL                         R6 1
      129 JUMPIFNOT                        R6 ; [+2]
      130 LOADK                            R5 K22 ["AutoUpdateOff"]
      131 JUMP                             ; [+1]
      132 LOADK                            R5 K23 ["AutoUpdateOff_Old"]
      133 MOVE                             R6 R1
      134 CALL                             R4 2 -1
      135 RETURN                           R4 -1

PROTO_8:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETTABLEKS                       R2 R1 K0 ["modifiedState"]
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K0 ["modifiedState"]
       10 JUMPIFNOTEQKN                    R2 K2 [1] ; [+27]
       12 GETTABLEKS                       R2 R1 K3 ["autoUpdate"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 LOADK                            R4 K4 ["PackageStatus"]
       16 LOADK                            R5 K5 ["AutoUpdateDisabled"]
       17 NAMECALL                         R2 R0 K6 ["getText"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1
       21 GETUPVAL                         R2 0
       22 JUMPIFNOT                        R2 ; [+9]
       23 GETTABLEKS                       R2 R1 K7 ["hasNewVersion"]
       25 JUMPIFNOT                        R2 ; [+6]
       26 LOADK                            R4 K4 ["PackageStatus"]
       27 LOADK                            R5 K8 ["UnpublishedChangesUpdateAvailable"]
       28 NAMECALL                         R2 R0 K6 ["getText"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1
       32 LOADK                            R4 K4 ["PackageStatus"]
       33 LOADK                            R5 K9 ["UnpublishedChanges"]
       34 NAMECALL                         R2 R0 K6 ["getText"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1
       38 GETTABLEKS                       R2 R1 K7 ["hasNewVersion"]
       40 JUMPIFNOT                        R2 ; [+6]
       41 LOADK                            R4 K4 ["PackageStatus"]
       42 LOADK                            R5 K10 ["UpdateAvailable"]
       43 NAMECALL                         R2 R0 K6 ["getText"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1
       47 GETTABLEKS                       R2 R1 K3 ["autoUpdate"]
       49 JUMPIFNOT                        R2 ; [+6]
       50 LOADK                            R4 K4 ["PackageStatus"]
       51 LOADK                            R5 K11 ["AutoUpdateOn"]
       52 NAMECALL                         R2 R0 K6 ["getText"]
       54 CALL                             R2 3 -1
       55 RETURN                           R2 -1
       56 LOADK                            R4 K4 ["PackageStatus"]
       57 LOADK                            R5 K12 ["AutoUpdateOff"]
       58 NAMECALL                         R2 R0 K6 ["getText"]
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R5 R5 K0 ["valueBinding"]
        5 NAMECALL                         R5 R5 K1 ["getValue"]
        7 CALL                             R5 1 -1
        8 CALL                             R3 -1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K2 ["mouseEnter"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLEKS                       R4 R0 K2 ["selectionState"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["theme"]
        5 LOADNIL                          R4
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 3
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       30 GETTABLEKS                       R9 R3 K7 ["mouseEnter"]
       32 SETLIST                          R6 R7 3 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K8 ["createElement"]
       38 LOADK                            R6 K9 ["ImageLabel"]
       39 NEWTABLE                         R7 8 0
       41 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       43 LOADN                            R9 16
       44 LOADN                            R10 16
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K13 ["Size"]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K15 ["Event"]
       54 GETTABLEKS                       R8 R8 K16 ["MouseEnter"]
       56 SETTABLE                         R4 R7 R8
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K15 ["Event"]
       60 GETTABLEKS                       R8 R8 K17 ["MouseLeave"]
       62 GETTABLEKS                       R9 R3 K18 ["mouseLeave"]
       64 SETTABLE                         R9 R7 R8
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K19 ["Tag"]
       68 LOADK                            R9 K20 ["data-testid=PackageStatus"]
       69 SETTABLE                         R9 R7 R8
       70 GETUPVAL                         R9 5
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+20]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K21 ["joinBindings"]
       76 DUPTABLE                         R9 K24 [{"value", "selectionState"}]
       77 GETTABLEKS                       R10 R0 K6 ["valueBinding"]
       79 SETTABLEKS                       R10 R9 K22 ["value"]
       81 GETTABLEKS                       R10 R0 K25 ["selectionStateBinding"]
       83 SETTABLEKS                       R10 R9 K23 ["selectionState"]
       85 CALL                             R8 1 1
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R2
       89 NAMECALL                         R8 R8 K26 ["map"]
       91 CALL                             R8 2 1
       92 JUMP                             ; [+8]
       93 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R2
       98 NAMECALL                         R8 R8 K26 ["map"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K27 ["Image"]
      103 CALL                             R5 2 -1
      104 RETURN                           R5 -1

PROTO_13:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"valueBinding", "fireAction", "selectionStateBinding"}]
        5 SETTABLEKS                       R0 R5 K1 ["valueBinding"]
        7 SETTABLEKS                       R1 R5 K2 ["fireAction"]
        9 GETUPVAL                         R7 2
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R2
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K3 ["selectionStateBinding"]
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K15 ["ThemeContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["getEngineFeatureExplorerUseHighlightedIcons"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K19 ["useTooltipActions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K21 [game]
       60 LOADK                            R10 K22 ["ExplorerPackageIconOverrides"]
       61 LOADB                            R11 0
       62 NAMECALL                         R8 R8 K23 ["DefineFastFlag"]
       64 CALL                             R8 3 1
       65 DUPCLOSURE                       R9 K24 [PROTO_0]
       66 DUPTABLE                         R10 K29 [{["ModifiedState"] = True, ["HasNewVersion"] = True, ["AutoUpdate"] = True, ["Parent"] = True}]
       67 DUPCLOSURE                       R11 K30 [PROTO_6]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R12 K31 [PROTO_7]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 DUPCLOSURE                       R13 K32 [PROTO_8]
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R14 K33 [PROTO_12]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R12
       84 DUPTABLE                         R15 K42 [{["key"] = "packageStatus", ["icon"] = "", ["watch"], ["validateArgs"], ["render"], ["permanent"] = True}]
       85 SETTABLEKS                       R11 R15 K38 ["watch"]
       87 DUPCLOSURE                       R16 K43 [PROTO_13]
       88 SETTABLEKS                       R16 R15 K39 ["validateArgs"]
       90 DUPCLOSURE                       R16 K44 [PROTO_14]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R16 R15 K40 ["render"]
       96 RETURN                           R15 1
