PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"title"}]
        2 SETTABLEKS                       R0 R3 K0 ["title"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"subtitle"}]
        2 SETTABLEKS                       R0 R3 K0 ["subtitle"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["cancelRequested"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"status"}]
        9 SETTABLEKS                       R0 R3 K2 ["status"]
       11 NAMECALL                         R1 R1 K4 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K8 [{[1] = True, ["cancelButtonEnabled"] = True, ["title"], ["subtitle"], ["status"], ["cancelRequested"] = False}]
        2 GETTABLEKS                       R4 R0 K9 ["Title"]
        4 SETTABLEKS                       R4 R3 K3 ["title"]
        6 GETTABLEKS                       R4 R0 K10 ["Subtitle"]
        8 SETTABLEKS                       R4 R3 K4 ["subtitle"]
       10 GETTABLEKS                       R4 R0 K11 ["Status"]
       12 SETTABLEKS                       R4 R3 K5 ["status"]
       14 NAMECALL                         R1 R1 K12 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K6 [{[1] = False, ["title"] = "", ["subtitle"] = "", ["status"] = ""}]
        2 NAMECALL                         R0 R0 K7 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"imageRbxId"}]
        2 SETTABLEKS                       R0 R3 K0 ["imageRbxId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancellableDialogManager"]
        3 NAMECALL                         R0 R0 K1 ["OnPluginInitializedAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K10 [{[1] = "", ["subtitle"] = "", ["status"] = "", ["enabled"] = False, ["cancelButtonEnabled"] = True, ["cancelRequested"] = False, ["imageRbxId"] = ""}]
        1 SETTABLEKS                       R2 R0 K11 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K12 ["Localization"]
        6 GETTABLEKS                       R2 R2 K13 ["new"]
        8 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "CancellableDialog"}]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K19 ["localization"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K20 ["Analytics"]
       21 GETTABLEKS                       R2 R2 K13 ["new"]
       23 DUPCLOSURE                       R3 K21 [PROTO_0]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R0 K22 ["analytics"]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K13 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R0 K23 ["DEPRECATED_stylizer"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R3 R1 K24 ["Plugin"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R0 K25 ["design"]
       41 GETTABLEKS                       R2 R1 K24 ["Plugin"]
       43 LOADK                            R4 K26 ["CancellableDialogManager"]
       44 NAMECALL                         R2 R2 K27 ["GetPluginComponent"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       49 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       51 GETTABLEKS                       R2 R2 K29 ["UpdateTitleText"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R0
       55 NAMECALL                         R2 R2 K30 ["Connect"]
       57 CALL                             R2 2 1
       58 SETTABLEKS                       R2 R0 K31 ["updateTitleTextConnection"]
       60 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       62 GETTABLEKS                       R2 R2 K32 ["UpdateSubtitleText"]
       64 NEWCLOSURE                       R4 P2
       65 CAPTURE                          VAL R0
       66 NAMECALL                         R2 R2 K30 ["Connect"]
       68 CALL                             R2 2 1
       69 SETTABLEKS                       R2 R0 K33 ["updateSubtitleTextConnection"]
       71 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       73 GETTABLEKS                       R2 R2 K34 ["UpdateStatusText"]
       75 NEWCLOSURE                       R4 P3
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R2 R2 K30 ["Connect"]
       79 CALL                             R2 2 1
       80 SETTABLEKS                       R2 R0 K35 ["updateStatusTextConnection"]
       82 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       84 GETTABLEKS                       R2 R2 K36 ["ShowDialog"]
       86 NEWCLOSURE                       R4 P4
       87 CAPTURE                          VAL R0
       88 NAMECALL                         R2 R2 K30 ["Connect"]
       90 CALL                             R2 2 1
       91 SETTABLEKS                       R2 R0 K37 ["showDialogConnection"]
       93 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
       95 GETTABLEKS                       R2 R2 K38 ["HideDialog"]
       97 NEWCLOSURE                       R4 P5
       98 CAPTURE                          VAL R0
       99 NAMECALL                         R2 R2 K30 ["Connect"]
      101 CALL                             R2 2 1
      102 SETTABLEKS                       R2 R0 K39 ["hideDialogConnection"]
      104 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
      106 GETTABLEKS                       R2 R2 K40 ["DisableCancel"]
      108 NEWCLOSURE                       R4 P6
      109 CAPTURE                          VAL R0
      110 NAMECALL                         R2 R2 K30 ["Connect"]
      112 CALL                             R2 2 1
      113 SETTABLEKS                       R2 R0 K41 ["disableCancelButtonConnection"]
      115 GETTABLEKS                       R2 R0 K28 ["cancellableDialogManager"]
      117 GETTABLEKS                       R2 R2 K42 ["UpdateImage"]
      119 NEWCLOSURE                       R4 P7
      120 CAPTURE                          VAL R0
      121 NAMECALL                         R2 R2 K30 ["Connect"]
      123 CALL                             R2 2 1
      124 SETTABLEKS                       R2 R0 K43 ["updateImageConnection"]
      126 GETIMPORT                        R2 K46 [task.spawn]
      128 NEWCLOSURE                       R3 P8
      129 CAPTURE                          VAL R0
      130 CALL                             R2 1 0
      131 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancellableDialogManager"]
        3 NAMECALL                         R0 R0 K1 ["OnDialogShownAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancellableDialogManager"]
        3 NAMECALL                         R0 R0 K1 ["CancelAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["cancelRequested"] = True}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 GETIMPORT                        R0 K8 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["provide"]
        9 NEWTABLE                         R5 0 5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["new"]
       19 NAMECALL                         R8 R3 K5 ["getMouse"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 1
       23 GETTABLEKS                       R8 R0 K6 ["localization"]
       25 GETTABLEKS                       R9 R0 K7 ["analytics"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K4 ["new"]
       30 GETTABLEKS                       R11 R0 K8 ["design"]
       32 CALL                             R10 1 -1
       33 SETLIST                          R5 R6 -1 [1]
       35 DUPTABLE                         R6 K11 [{"Wrapper", "StyleLink"}]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K12 ["createElement"]
       39 GETUPVAL                         R8 5
       40 DUPTABLE                         R9 K21 [{"Title", "Subtitle", "Status", "Enabled", "CancelButtonEnabled", "Image", "OnDialogShown", "OnCancel"}]
       41 GETTABLEKS                       R10 R2 K22 ["title"]
       43 SETTABLEKS                       R10 R9 K13 ["Title"]
       45 GETTABLEKS                       R10 R2 K23 ["subtitle"]
       47 SETTABLEKS                       R10 R9 K14 ["Subtitle"]
       49 GETTABLEKS                       R10 R2 K24 ["status"]
       51 SETTABLEKS                       R10 R9 K15 ["Status"]
       53 GETTABLEKS                       R10 R2 K25 ["enabled"]
       55 SETTABLEKS                       R10 R9 K16 ["Enabled"]
       57 GETTABLEKS                       R10 R2 K26 ["cancelButtonEnabled"]
       59 SETTABLEKS                       R10 R9 K17 ["CancelButtonEnabled"]
       61 GETTABLEKS                       R10 R2 K27 ["imageRbxId"]
       63 SETTABLEKS                       R10 R9 K18 ["Image"]
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R10 R9 K19 ["OnDialogShown"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R10 R9 K20 ["OnCancel"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K9 ["Wrapper"]
       76 GETUPVAL                         R7 4
       77 GETTABLEKS                       R7 R7 K12 ["createElement"]
       79 LOADK                            R8 K10 ["StyleLink"]
       80 DUPTABLE                         R9 K29 [{"StyleSheet"}]
       81 GETTABLEKS                       R10 R0 K8 ["design"]
       83 SETTABLEKS                       R10 R9 K28 ["StyleSheet"]
       85 CALL                             R7 2 1
       86 SETTABLEKS                       R7 R6 K10 ["StyleLink"]
       88 CALL                             R4 2 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Design"]
       25 GETTABLEKS                       R5 R3 K11 ["Plugin"]
       27 GETTABLEKS                       R6 R3 K12 ["Mouse"]
       29 GETTABLEKS                       R7 R2 K13 ["Style"]
       31 GETTABLEKS                       R7 R7 K14 ["Themes"]
       33 GETTABLEKS                       R7 R7 K15 ["StudioTheme"]
       35 GETTABLEKS                       R8 R2 K16 ["Styling"]
       37 GETTABLEKS                       R8 R8 K17 ["registerPluginStyles"]
       39 GETTABLEKS                       R9 R0 K18 ["Src"]
       41 GETTABLEKS                       R9 R9 K19 ["Resources"]
       43 GETTABLEKS                       R9 R9 K20 ["Localization"]
       45 GETTABLEKS                       R9 R9 K21 ["SourceStrings"]
       47 GETTABLEKS                       R10 R0 K18 ["Src"]
       49 GETTABLEKS                       R10 R10 K19 ["Resources"]
       51 GETTABLEKS                       R10 R10 K20 ["Localization"]
       53 GETTABLEKS                       R10 R10 K22 ["LocalizedStrings"]
       55 GETTABLEKS                       R11 R0 K18 ["Src"]
       57 GETTABLEKS                       R11 R11 K23 ["Components"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R11 K24 ["DialogContainer"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R1 K25 ["PureComponent"]
       66 LOADK                            R15 K26 ["MainPlugin"]
       67 NAMECALL                         R13 R13 K27 ["extend"]
       69 CALL                             R13 2 1
       70 DUPCLOSURE                       R14 K28 [PROTO_9]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R14 R13 K29 ["init"]
       78 DUPCLOSURE                       R14 K30 [PROTO_14]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R12
       85 SETTABLEKS                       R14 R13 K31 ["render"]
       87 RETURN                           R13 1
