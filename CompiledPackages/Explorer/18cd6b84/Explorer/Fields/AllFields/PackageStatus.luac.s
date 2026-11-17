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
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R3 K0 [""]
        3 RETURN                           R3 1
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETTABLEKS                       R4 R2 K1 ["kind"]
        9 JUMPIFEQKS                       R4 K2 ["Selected"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R4 R0 K3 ["modifiedState"]
       15 JUMPIFNOTEQKN                    R4 K4 [0] ; [+3]
       17 LOADK                            R4 K0 [""]
       18 RETURN                           R4 1
       19 GETTABLEKS                       R4 R0 K5 ["hasNewVersion"]
       21 JUMPIFNOT                        R4 ; [+34]
       22 GETTABLEKS                       R4 R0 K3 ["modifiedState"]
       24 JUMPIFNOTEQKN                    R4 K6 [1] ; [+20]
       26 GETUPVAL                         R4 0
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       31 JUMPIFNOT                        R3 ; [+2]
       32 LOADK                            R5 K8 ["UpdateAvailable_Overrides_Highlighted"]
       33 JUMP                             ; [+1]
       34 LOADK                            R5 K9 ["UpdateAvailable_Overrides"]
       35 MOVE                             R6 R1
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       41 LOADK                            R5 K10 ["UpdateAvailable_Modified"]
       42 MOVE                             R6 R1
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       48 GETUPVAL                         R6 0
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADK                            R5 K11 ["UpdateAvailable"]
       51 JUMP                             ; [+1]
       52 LOADK                            R5 K12 ["UpdateAvailable_Old"]
       53 MOVE                             R6 R1
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1
       56 GETTABLEKS                       R4 R0 K3 ["modifiedState"]
       58 JUMPIFNOTEQKN                    R4 K6 [1] ; [+42]
       60 GETTABLEKS                       R4 R0 K13 ["autoUpdate"]
       62 JUMPIFNOT                        R4 ; [+19]
       63 GETUPVAL                         R4 0
       64 JUMPIFNOT                        R4 ; [+10]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       68 JUMPIFNOT                        R3 ; [+2]
       69 LOADK                            R5 K14 ["AutoUpdateOn_Overrides_Highlighted"]
       70 JUMP                             ; [+1]
       71 LOADK                            R5 K15 ["AutoUpdateOn_Overrides"]
       72 MOVE                             R6 R1
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       78 LOADK                            R5 K16 ["Modified_AutoUpdateOn"]
       79 MOVE                             R6 R1
       80 CALL                             R4 2 -1
       81 RETURN                           R4 -1
       82 GETUPVAL                         R4 0
       83 JUMPIFNOT                        R4 ; [+10]
       84 GETUPVAL                         R4 1
       85 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       87 JUMPIFNOT                        R3 ; [+2]
       88 LOADK                            R5 K17 ["AutoUpdateOff_Overrides_Highlighted"]
       89 JUMP                             ; [+1]
       90 LOADK                            R5 K18 ["AutoUpdateOff_Overrides"]
       91 MOVE                             R6 R1
       92 CALL                             R4 2 -1
       93 RETURN                           R4 -1
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
       97 LOADK                            R5 K19 ["Modified_AutoUpdateOff"]
       98 MOVE                             R6 R1
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1
      101 GETTABLEKS                       R4 R0 K13 ["autoUpdate"]
      103 JUMPIFNOT                        R4 ; [+11]
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
      107 GETUPVAL                         R6 0
      108 JUMPIFNOT                        R6 ; [+2]
      109 LOADK                            R5 K20 ["AutoUpdateOn"]
      110 JUMP                             ; [+1]
      111 LOADK                            R5 K21 ["AutoUpdateOn_Old"]
      112 MOVE                             R6 R1
      113 CALL                             R4 2 -1
      114 RETURN                           R4 -1
      115 GETUPVAL                         R4 1
      116 GETTABLEKS                       R4 R4 K7 ["packageStatus"]
      118 GETUPVAL                         R6 0
      119 JUMPIFNOT                        R6 ; [+2]
      120 LOADK                            R5 K22 ["AutoUpdateOff"]
      121 JUMP                             ; [+1]
      122 LOADK                            R5 K23 ["AutoUpdateOff_Old"]
      123 MOVE                             R6 R1
      124 CALL                             R4 2 -1
      125 RETURN                           R4 -1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["modifiedState"]
        6 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K0 ["modifiedState"]
       12 JUMPIFNOTEQKN                    R2 K2 [1] ; [+27]
       14 GETTABLEKS                       R2 R1 K3 ["autoUpdate"]
       16 JUMPIFNOT                        R2 ; [+6]
       17 LOADK                            R4 K4 ["PackageStatus"]
       18 LOADK                            R5 K5 ["AutoUpdateDisabled"]
       19 NAMECALL                         R2 R0 K6 ["getText"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 0
       24 JUMPIFNOT                        R2 ; [+9]
       25 GETTABLEKS                       R2 R1 K7 ["hasNewVersion"]
       27 JUMPIFNOT                        R2 ; [+6]
       28 LOADK                            R4 K4 ["PackageStatus"]
       29 LOADK                            R5 K8 ["UnpublishedChangesUpdateAvailable"]
       30 NAMECALL                         R2 R0 K6 ["getText"]
       32 CALL                             R2 3 -1
       33 RETURN                           R2 -1
       34 LOADK                            R4 K4 ["PackageStatus"]
       35 LOADK                            R5 K9 ["UnpublishedChanges"]
       36 NAMECALL                         R2 R0 K6 ["getText"]
       38 CALL                             R2 3 -1
       39 RETURN                           R2 -1
       40 GETTABLEKS                       R2 R1 K7 ["hasNewVersion"]
       42 JUMPIFNOT                        R2 ; [+6]
       43 LOADK                            R4 K4 ["PackageStatus"]
       44 LOADK                            R5 K10 ["UpdateAvailable"]
       45 NAMECALL                         R2 R0 K6 ["getText"]
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1
       49 GETTABLEKS                       R2 R1 K3 ["autoUpdate"]
       51 JUMPIFNOT                        R2 ; [+6]
       52 LOADK                            R4 K4 ["PackageStatus"]
       53 LOADK                            R5 K11 ["AutoUpdateOn"]
       54 NAMECALL                         R2 R0 K6 ["getText"]
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1
       58 LOADK                            R4 K4 ["PackageStatus"]
       59 LOADK                            R5 K12 ["AutoUpdateOff"]
       60 NAMECALL                         R2 R0 K6 ["getText"]
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1

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
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K5 ["useEventCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["createElement"]
       29 LOADK                            R6 K7 ["ImageLabel"]
       30 NEWTABLE                         R7 8 0
       32 GETIMPORT                        R8 K10 [UDim2.fromOffset]
       34 LOADN                            R9 16
       35 LOADN                            R10 16
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K11 ["Size"]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K12 ["BackgroundTransparency"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K13 ["Event"]
       45 GETTABLEKS                       R8 R8 K14 ["MouseEnter"]
       47 SETTABLE                         R4 R7 R8
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K13 ["Event"]
       51 GETTABLEKS                       R8 R8 K15 ["MouseLeave"]
       53 GETTABLEKS                       R9 R3 K16 ["mouseLeave"]
       55 SETTABLE                         R9 R7 R8
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K17 ["Tag"]
       59 LOADK                            R9 K18 ["data-testid=PackageStatus"]
       60 SETTABLE                         R9 R7 R8
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K19 ["joinBindings"]
       64 DUPTABLE                         R9 K22 [{"value", "selectionState"}]
       65 GETTABLEKS                       R10 R0 K23 ["valueBinding"]
       67 SETTABLEKS                       R10 R9 K20 ["value"]
       69 GETTABLEKS                       R10 R0 K24 ["selectionStateBinding"]
       71 SETTABLEKS                       R10 R9 K21 ["selectionState"]
       73 CALL                             R8 1 1
       74 NEWCLOSURE                       R10 P1
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R2
       77 NAMECALL                         R8 R8 K25 ["map"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K26 ["Image"]
       82 CALL                             R5 2 -1
       83 RETURN                           R5 -1

PROTO_12:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"valueBinding", "fireAction", "selectionStateBinding"}]
        5 SETTABLEKS                       R0 R5 K1 ["valueBinding"]
        7 SETTABLEKS                       R1 R5 K2 ["fireAction"]
        9 SETTABLEKS                       R2 R5 K3 ["selectionStateBinding"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

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
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K16 ["ThemeContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K18 ["useTooltipActions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K20 [game]
       60 LOADK                            R10 K21 ["ExplorerPackageIconOverrides"]
       61 LOADB                            R11 0
       62 NAMECALL                         R8 R8 K22 ["DefineFastFlag"]
       64 CALL                             R8 3 1
       65 DUPCLOSURE                       R9 K23 [PROTO_0]
       66 DUPTABLE                         R10 K28 [{["ModifiedState"] = True, ["HasNewVersion"] = True, ["AutoUpdate"] = True, ["Parent"] = True}]
       67 DUPCLOSURE                       R11 K29 [PROTO_6]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R12 K30 [PROTO_7]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R3
       73 DUPCLOSURE                       R13 K31 [PROTO_8]
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R14 K32 [PROTO_11]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R12
       83 DUPTABLE                         R15 K41 [{["key"] = "packageStatus", ["icon"] = "", ["watch"], ["validateArgs"], ["render"], ["permanent"] = True}]
       84 SETTABLEKS                       R11 R15 K37 ["watch"]
       86 DUPCLOSURE                       R16 K42 [PROTO_12]
       87 SETTABLEKS                       R16 R15 K38 ["validateArgs"]
       89 DUPCLOSURE                       R16 K43 [PROTO_13]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R14
       92 SETTABLEKS                       R16 R15 K39 ["render"]
       94 RETURN                           R15 1
