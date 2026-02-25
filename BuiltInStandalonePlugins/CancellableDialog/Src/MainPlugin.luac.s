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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["cancelRequested"]
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
        1 DUPTABLE                         R3 K6 [{"enabled", "cancelButtonEnabled", "title", "subtitle", "status", "cancelRequested"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["enabled"]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["cancelButtonEnabled"]
        8 GETTABLEKS                       R4 R0 K7 ["Title"]
       10 SETTABLEKS                       R4 R3 K2 ["title"]
       12 GETTABLEKS                       R4 R0 K8 ["Subtitle"]
       14 SETTABLEKS                       R4 R3 K3 ["subtitle"]
       16 GETTABLEKS                       R4 R0 K9 ["Status"]
       18 SETTABLEKS                       R4 R3 K4 ["status"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K5 ["cancelRequested"]
       23 NAMECALL                         R1 R1 K10 ["setState"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{"enabled", "title", "subtitle", "status"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 LOADK                            R3 K5 [""]
        6 SETTABLEKS                       R3 R2 K1 ["title"]
        8 LOADK                            R3 K5 [""]
        9 SETTABLEKS                       R3 R2 K2 ["subtitle"]
       11 LOADK                            R3 K5 [""]
       12 SETTABLEKS                       R3 R2 K3 ["status"]
       14 NAMECALL                         R0 R0 K6 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"cancelButtonEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["cancelButtonEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"imageRbxId"}]
        2 SETTABLEKS                       R0 R3 K0 ["imageRbxId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancellableDialogManager"]
        3 NAMECALL                         R0 R0 K1 ["OnPluginInitializedAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K7 [{"title", "subtitle", "status", "enabled", "cancelButtonEnabled", "cancelRequested", "imageRbxId"}]
        1 LOADK                            R3 K8 [""]
        2 SETTABLEKS                       R3 R2 K0 ["title"]
        4 LOADK                            R3 K8 [""]
        5 SETTABLEKS                       R3 R2 K1 ["subtitle"]
        7 LOADK                            R3 K8 [""]
        8 SETTABLEKS                       R3 R2 K2 ["status"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["enabled"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K4 ["cancelButtonEnabled"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["cancelRequested"]
       19 LOADK                            R3 K8 [""]
       20 SETTABLEKS                       R3 R2 K6 ["imageRbxId"]
       22 SETTABLEKS                       R2 R0 K9 ["state"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K10 ["Localization"]
       27 GETTABLEKS                       R2 R3 K11 ["new"]
       29 DUPTABLE                         R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       30 GETUPVAL                         R4 1
       31 SETTABLEKS                       R4 R3 K12 ["stringResourceTable"]
       33 GETUPVAL                         R4 2
       34 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       36 LOADK                            R4 K16 ["CancellableDialog"]
       37 SETTABLEKS                       R4 R3 K14 ["pluginName"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R0 K17 ["localization"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K18 ["Analytics"]
       45 GETTABLEKS                       R2 R3 K11 ["new"]
       47 DUPCLOSURE                       R3 K19 [PROTO_0]
       48 NEWTABLE                         R4 0 0
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R0 K20 ["analytics"]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R2 R3 K11 ["new"]
       56 CALL                             R2 0 1
       57 SETTABLEKS                       R2 R0 K21 ["DEPRECATED_stylizer"]
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R3 R1 K22 ["Plugin"]
       62 CALL                             R2 1 1
       63 SETTABLEKS                       R2 R0 K23 ["design"]
       65 GETTABLEKS                       R2 R1 K22 ["Plugin"]
       67 LOADK                            R4 K24 ["CancellableDialogManager"]
       68 NAMECALL                         R2 R2 K25 ["GetPluginComponent"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R0 K26 ["cancellableDialogManager"]
       73 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
       75 GETTABLEKS                       R2 R3 K27 ["UpdateTitleText"]
       77 NEWCLOSURE                       R4 P1
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R2 R2 K28 ["Connect"]
       81 CALL                             R2 2 1
       82 SETTABLEKS                       R2 R0 K29 ["updateTitleTextConnection"]
       84 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
       86 GETTABLEKS                       R2 R3 K30 ["UpdateSubtitleText"]
       88 NEWCLOSURE                       R4 P2
       89 CAPTURE                          VAL R0
       90 NAMECALL                         R2 R2 K28 ["Connect"]
       92 CALL                             R2 2 1
       93 SETTABLEKS                       R2 R0 K31 ["updateSubtitleTextConnection"]
       95 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
       97 GETTABLEKS                       R2 R3 K32 ["UpdateStatusText"]
       99 NEWCLOSURE                       R4 P3
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R2 R2 K28 ["Connect"]
      103 CALL                             R2 2 1
      104 SETTABLEKS                       R2 R0 K33 ["updateStatusTextConnection"]
      106 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
      108 GETTABLEKS                       R2 R3 K34 ["ShowDialog"]
      110 NEWCLOSURE                       R4 P4
      111 CAPTURE                          VAL R0
      112 NAMECALL                         R2 R2 K28 ["Connect"]
      114 CALL                             R2 2 1
      115 SETTABLEKS                       R2 R0 K35 ["showDialogConnection"]
      117 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
      119 GETTABLEKS                       R2 R3 K36 ["HideDialog"]
      121 NEWCLOSURE                       R4 P5
      122 CAPTURE                          VAL R0
      123 NAMECALL                         R2 R2 K28 ["Connect"]
      125 CALL                             R2 2 1
      126 SETTABLEKS                       R2 R0 K37 ["hideDialogConnection"]
      128 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
      130 GETTABLEKS                       R2 R3 K38 ["DisableCancel"]
      132 NEWCLOSURE                       R4 P6
      133 CAPTURE                          VAL R0
      134 NAMECALL                         R2 R2 K28 ["Connect"]
      136 CALL                             R2 2 1
      137 SETTABLEKS                       R2 R0 K39 ["disableCancelButtonConnection"]
      139 GETTABLEKS                       R3 R0 K26 ["cancellableDialogManager"]
      141 GETTABLEKS                       R2 R3 K40 ["UpdateImage"]
      143 NEWCLOSURE                       R4 P7
      144 CAPTURE                          VAL R0
      145 NAMECALL                         R2 R2 K28 ["Connect"]
      147 CALL                             R2 2 1
      148 SETTABLEKS                       R2 R0 K41 ["updateImageConnection"]
      150 GETIMPORT                        R2 K44 [task.spawn]
      152 NEWCLOSURE                       R3 P8
      153 CAPTURE                          VAL R0
      154 CALL                             R2 1 0
      155 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancellableDialogManager"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancellableDialogManager"]
        3 NAMECALL                         R0 R0 K1 ["CancelAsync"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"cancelButtonEnabled", "cancelRequested"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["cancelButtonEnabled"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["cancelRequested"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 GETIMPORT                        R0 K6 [task.spawn]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["provide"]
        9 NEWTABLE                         R5 0 5
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K4 ["new"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K4 ["new"]
       19 NAMECALL                         R8 R3 K5 ["getMouse"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 1
       23 GETTABLEKS                       R8 R0 K6 ["localization"]
       25 GETTABLEKS                       R9 R0 K7 ["analytics"]
       27 GETUPVAL                         R11 3
       28 GETTABLEKS                       R10 R11 K4 ["new"]
       30 GETTABLEKS                       R11 R0 K8 ["design"]
       32 CALL                             R10 1 -1
       33 SETLIST                          R5 R6 -1 [1]
       35 DUPTABLE                         R6 K11 [{"Wrapper", "StyleLink"}]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R7 R8 K12 ["createElement"]
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
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R7 R8 K12 ["createElement"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Design"]
       25 GETTABLEKS                       R5 R3 K11 ["Plugin"]
       27 GETTABLEKS                       R6 R3 K12 ["Mouse"]
       29 GETTABLEKS                       R9 R2 K13 ["Style"]
       31 GETTABLEKS                       R8 R9 K14 ["Themes"]
       33 GETTABLEKS                       R7 R8 K15 ["StudioTheme"]
       35 GETTABLEKS                       R9 R2 K16 ["Styling"]
       37 GETTABLEKS                       R8 R9 K17 ["registerPluginStyles"]
       39 GETTABLEKS                       R12 R0 K18 ["Src"]
       41 GETTABLEKS                       R11 R12 K19 ["Resources"]
       43 GETTABLEKS                       R10 R11 K20 ["Localization"]
       45 GETTABLEKS                       R9 R10 K21 ["SourceStrings"]
       47 GETTABLEKS                       R13 R0 K18 ["Src"]
       49 GETTABLEKS                       R12 R13 K19 ["Resources"]
       51 GETTABLEKS                       R11 R12 K20 ["Localization"]
       53 GETTABLEKS                       R10 R11 K22 ["LocalizedStrings"]
       55 GETTABLEKS                       R12 R0 K18 ["Src"]
       57 GETTABLEKS                       R11 R12 K23 ["Components"]
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
