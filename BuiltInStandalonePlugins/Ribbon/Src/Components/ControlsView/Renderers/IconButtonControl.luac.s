PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Items"]
        3 GETTABLEKS                       R2 R2 K1 ["Actions"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["toString"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETTABLE                         R1 R2 R3
       11 MOVE                             R2 R1
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETTABLEKS                       R2 R1 K3 ["Enabled"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Activate"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MdiInstance"]
        3 GETTABLEKS                       R1 R1 K1 ["FocusedDataModelSession"]
        5 JUMPIFNOT                        R1 ; [+46]
        6 GETTABLEKS                       R2 R1 K2 ["CurrentDataModelType"]
        8 GETTABLEKS                       R2 R2 K3 ["Name"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Uri"]
       13 GETTABLEKS                       R3 R3 K5 ["DataModel"]
       15 JUMPIFNOTEQKS                    R3 K6 ["Edit"] ; [+36]
       17 JUMPIFEQKS                       R2 K6 ["Edit"] ; [+34]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Uri"]
       22 GETTABLEKS                       R3 R3 K7 ["PluginType"]
       24 JUMPIFEQKS                       R3 K8 ["Local"] ; [+8]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K4 ["Uri"]
       29 GETTABLEKS                       R3 R3 K7 ["PluginType"]
       31 JUMPIFNOTEQKS                    R3 K9 ["Cloud"] ; [+20]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K10 ["join"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["Uri"]
       39 DUPTABLE                         R5 K11 [{"DataModel"}]
       40 SETTABLEKS                       R2 R5 K5 ["DataModel"]
       42 CALL                             R3 2 1
       43 GETIMPORT                        R4 K13 [pcall]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R0
       49 CALL                             R4 1 1
       50 JUMPIFNOT                        R4 ; [+1]
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K14 ["Activate"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K4 ["Uri"]
       58 MOVE                             R4 R0
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R2 K2 ["ActionGroup"]
       10 JUMPIFNOT                        R5 ; [+28]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R2 K2 ["ActionGroup"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CALL                             R5 2 1
       18 JUMPIF                           R5 ; [+1]
       19 LOADN                            R5 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K3 ["toString"]
       23 GETTABLEKS                       R8 R2 K2 ["ActionGroup"]
       25 GETTABLE                         R7 R8 R5
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R0 K4 ["Items"]
       29 GETTABLEKS                       R7 R7 K5 ["Actions"]
       31 GETTABLE                         R3 R7 R6
       32 GETTABLEKS                       R7 R2 K6 ["ActionGroupIcons"]
       34 JUMPIFNOT                        R7 ; [+18]
       35 GETTABLEKS                       R7 R2 K6 ["ActionGroupIcons"]
       37 GETTABLE                         R4 R7 R5
       38 JUMP                             ; [+14]
       39 GETTABLEKS                       R5 R2 K7 ["Action"]
       41 JUMPIFNOT                        R5 ; [+11]
       42 GETTABLEKS                       R5 R0 K4 ["Items"]
       44 GETTABLEKS                       R5 R5 K5 ["Actions"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K3 ["toString"]
       49 GETTABLEKS                       R7 R2 K7 ["Action"]
       51 CALL                             R6 1 1
       52 GETTABLE                         R3 R5 R6
       53 JUMPIF                           R3 ; [+13]
       54 GETTABLEKS                       R5 R0 K8 ["Warn"]
       56 LOADK                            R7 K9 ["Missing Action for IconButton %*"]
       57 GETTABLEKS                       R9 R2 K10 ["Id"]
       59 NAMECALL                         R7 R7 K11 ["format"]
       61 CALL                             R7 2 1
       62 MOVE                             R6 R7
       63 CALL                             R5 1 0
       64 LOADNIL                          R5
       65 CLOSEUPVALS                      R3
       66 RETURN                           R5 1
       67 GETTABLEKS                       R5 R3 K12 ["Exists"]
       69 JUMPIF                           R5 ; [+3]
       70 LOADNIL                          R5
       71 CLOSEUPVALS                      R3
       72 RETURN                           R5 1
       73 GETUPVAL                         R5 3
       74 MOVE                             R6 R0
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 4
       77 GETUPVAL                         R7 5
       78 DUPTABLE                         R8 K28 [{"OnSelect", "Disabled", "Selected", "ShowContextMenu", "ControlIndices", "Uri", "Icon", "IconOnly", "Shortcuts", "Tooltip", "LayoutOrder", "Text", "ShortTitle", "Size", "Visible"}]
       79 NEWCLOSURE                       R9 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          REF R3
       82 CAPTURE                          UPVAL U2
       83 SETTABLEKS                       R9 R8 K13 ["OnSelect"]
       85 GETTABLEKS                       R10 R3 K29 ["Enabled"]
       87 NOT                              R9 R10
       88 SETTABLEKS                       R9 R8 K14 ["Disabled"]
       90 GETTABLEKS                       R9 R3 K30 ["Checked"]
       92 SETTABLEKS                       R9 R8 K15 ["Selected"]
       94 GETTABLEKS                       R9 R0 K16 ["ShowContextMenu"]
       96 SETTABLEKS                       R9 R8 K16 ["ShowContextMenu"]
       98 GETTABLEKS                       R9 R0 K17 ["ControlIndices"]
      100 SETTABLEKS                       R9 R8 K17 ["ControlIndices"]
      102 GETUPVAL                         R9 2
      103 GETTABLEKS                       R9 R9 K31 ["child"]
      105 GETTABLEKS                       R10 R0 K32 ["WidgetUri"]
      107 GETTABLEKS                       R11 R2 K10 ["Id"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K18 ["Uri"]
      112 MOVE                             R9 R4
      113 JUMPIF                           R9 ; [+7]
      114 GETTABLEKS                       R9 R2 K19 ["Icon"]
      116 JUMPIF                           R9 ; [+4]
      117 GETTABLEKS                       R9 R3 K19 ["Icon"]
      119 JUMPIF                           R9 ; [+1]
      120 GETUPVAL                         R9 6
      121 SETTABLEKS                       R9 R8 K19 ["Icon"]
      123 GETTABLEKS                       R9 R0 K33 ["HideLabels"]
      125 JUMPIF                           R9 ; [+2]
      126 GETTABLEKS                       R9 R2 K20 ["IconOnly"]
      128 SETTABLEKS                       R9 R8 K20 ["IconOnly"]
      130 GETTABLEKS                       R9 R3 K21 ["Shortcuts"]
      132 SETTABLEKS                       R9 R8 K21 ["Shortcuts"]
      134 GETUPVAL                         R9 7
      135 MOVE                             R10 R1
      136 LOADK                            R11 K22 ["Tooltip"]
      137 MOVE                             R12 R2
      138 MOVE                             R13 R3
      139 CALL                             R9 4 1
      140 SETTABLEKS                       R9 R8 K22 ["Tooltip"]
      142 GETTABLEKS                       R9 R0 K23 ["LayoutOrder"]
      144 SETTABLEKS                       R9 R8 K23 ["LayoutOrder"]
      146 GETUPVAL                         R9 7
      147 MOVE                             R10 R1
      148 LOADK                            R11 K24 ["Text"]
      149 MOVE                             R12 R2
      150 MOVE                             R13 R3
      151 CALL                             R9 4 1
      152 SETTABLEKS                       R9 R8 K24 ["Text"]
      154 GETUPVAL                         R10 8
      155 CALL                             R10 0 1
      156 JUMPIFNOT                        R10 ; [+3]
      157 GETTABLEKS                       R9 R3 K25 ["ShortTitle"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R9
      161 SETTABLEKS                       R9 R8 K25 ["ShortTitle"]
      163 GETTABLEKS                       R9 R2 K26 ["Size"]
      165 SETTABLEKS                       R9 R8 K26 ["Size"]
      167 GETTABLEKS                       R10 R3 K34 ["VisibleOnRibbon"]
      169 JUMPIFEQKNIL                     R10 ; [+5]
      171 JUMPIFNOT                        R5 ; [+3]
      172 GETTABLEKS                       R9 R3 K34 ["VisibleOnRibbon"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R9 R3 K27 ["Visible"]
      177 SETTABLEKS                       R9 R8 K27 ["Visible"]
      179 CALL                             R6 2 -1
      180 CLOSEUPVALS                      R3
      181 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["findIndex"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["IconHelper"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Packages"]
       38 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K12 ["Util"]
       43 GETTABLEKS                       R7 R7 K15 ["StudioUri"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R9 R9 K16 ["Components"]
       51 GETTABLEKS                       R9 R9 K17 ["RibbonButton"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Components"]
       60 GETTABLEKS                       R10 R10 K18 ["ControlsView"]
       62 GETTABLEKS                       R10 R10 K19 ["getLocalizedField"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Packages"]
       69 GETTABLEKS                       R11 R11 K20 ["Framework"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R10 K21 ["ContextServices"]
       74 GETTABLEKS                       R12 R11 K22 ["Localization"]
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K11 ["Src"]
       80 GETTABLEKS                       R14 R14 K12 ["Util"]
       82 GETTABLEKS                       R14 R14 K23 ["isControlInCustomTab"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K11 ["Src"]
       89 GETTABLEKS                       R15 R15 K24 ["SharedFlags"]
       91 GETTABLEKS                       R15 R15 K25 ["getFeatureStudioActionShortNames"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R16 R0 K11 ["Src"]
       98 GETTABLEKS                       R16 R16 K16 ["Components"]
      100 GETTABLEKS                       R16 R16 K18 ["ControlsView"]
      102 GETTABLEKS                       R16 R16 K26 ["ControlProps"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R16 R5 K27 ["getPathForIcon"]
      107 LOADK                            R17 K28 ["Placeholder"]
      108 LOADK                            R18 K29 ["Large"]
      109 CALL                             R16 2 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R0 K11 ["Src"]
      114 GETTABLEKS                       R18 R18 K30 ["Types"]
      116 CALL                             R17 1 1
      117 DUPCLOSURE                       R18 K31 [PROTO_3]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R14
      127 RETURN                           R18 1
