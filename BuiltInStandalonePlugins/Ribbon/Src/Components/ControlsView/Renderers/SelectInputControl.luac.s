PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Visible"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 SUBK                             R2 R0 K1 [1]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 DUPTABLE                         R5 K7 [{["Type"] = "SelectOption", ["Selected"], ["Setting"], ["SettingValue"]}]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K8 ["Value"]
       13 JUMPIFEQ                         R2 R7 ; [+2]
       15 LOADB                            R6 0 +1
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K4 ["Selected"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K5 ["Setting"]
       22 SETTABLEKS                       R6 R5 K5 ["Setting"]
       24 SETTABLEKS                       R2 R5 K6 ["SettingValue"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_1:
        0 SUBK                             R2 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 DUPTABLE                         R5 K6 [{["Type"] = "SelectOption", ["Selected"], ["Setting"], ["SettingValue"]}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K7 ["Value"]
        7 JUMPIFEQ                         R2 R7 ; [+2]
        9 LOADB                            R6 0 +1
       10 LOADB                            R6 1
       11 SETTABLEKS                       R6 R5 K3 ["Selected"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["Setting"]
       16 SETTABLEKS                       R6 R5 K4 ["Setting"]
       18 SETTABLEKS                       R2 R5 K5 ["SettingValue"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+8]
       12 GETUPVAL                         R2 6
       13 GETUPVAL                         R3 2
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 DUPTABLE                         R2 K3 [{[1] = "Column", ["Children"]}]
       21 SETTABLEKS                       R1 R2 K2 ["Children"]
       23 GETUPVAL                         R3 7
       24 GETTABLEKS                       R3 R3 K4 ["OpenMenu"]
       26 NEWTABLE                         R4 0 1
       28 MOVE                             R5 R2
       29 SETLIST                          R4 R5 1 [1]
       31 MOVE                             R5 R0
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETTABLEKS                       R3 R2 K2 ["Setting"]
        8 JUMPIF                           R3 ; [+11]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R4 K4 ["Missing Setting field for SelectInput with id %*"]
       12 GETTABLEKS                       R6 R2 K5 ["Id"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 1
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["toString"]
       23 GETTABLEKS                       R4 R2 K2 ["Setting"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R0 K8 ["Items"]
       28 GETTABLEKS                       R5 R5 K9 ["Settings"]
       30 GETTABLE                         R4 R5 R3
       31 JUMPIF                           R4 ; [+12]
       32 GETTABLEKS                       R5 R0 K3 ["Warn"]
       34 LOADK                            R6 K10 ["Missing Setting %* for SelectInput with id %*"]
       35 MOVE                             R8 R3
       36 GETTABLEKS                       R9 R2 K5 ["Id"]
       38 NAMECALL                         R6 R6 K6 ["format"]
       40 CALL                             R6 3 1
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETTABLEKS                       R6 R4 K11 ["Value"]
       46 FASTCALL1                        TYPEOF R6 ; [+2]
       47 GETIMPORT                        R5 K13 [typeof]
       49 CALL                             R5 1 1
       50 JUMPIFEQKS                       R5 K14 ["number"] ; [+15]
       52 GETTABLEKS                       R5 R0 K3 ["Warn"]
       54 LOADK                            R6 K15 ["Setting %* has an invalid value %* for SelectInput with id %*"]
       55 MOVE                             R8 R3
       56 GETTABLEKS                       R9 R4 K11 ["Value"]
       58 GETTABLEKS                       R10 R2 K5 ["Id"]
       60 NAMECALL                         R6 R6 K6 ["format"]
       62 CALL                             R6 4 1
       63 CALL                             R5 1 0
       64 LOADNIL                          R5
       65 RETURN                           R5 1
       66 GETTABLEKS                       R5 R4 K16 ["Values"]
       68 JUMPIF                           R5 ; [+12]
       69 GETTABLEKS                       R6 R0 K3 ["Warn"]
       71 LOADK                            R7 K17 ["Setting %* has no Values field for SelectInput with id %*"]
       72 MOVE                             R9 R3
       73 GETTABLEKS                       R10 R2 K5 ["Id"]
       75 NAMECALL                         R7 R7 K6 ["format"]
       77 CALL                             R7 3 1
       78 CALL                             R6 1 0
       79 LOADNIL                          R6
       80 RETURN                           R6 1
       81 GETTABLEKS                       R8 R4 K11 ["Value"]
       83 ADDK                             R7 R8 K18 [1]
       84 GETTABLE                         R6 R5 R7
       85 JUMPIF                           R6 ; [+15]
       86 GETTABLEKS                       R7 R0 K3 ["Warn"]
       88 LOADK                            R8 K19 ["Setting %* has no Value %* for SelectInput with id %*"]
       89 MOVE                             R10 R3
       90 GETTABLEKS                       R12 R4 K11 ["Value"]
       92 ADDK                             R11 R12 K18 [1]
       93 GETTABLEKS                       R12 R2 K5 ["Id"]
       95 NAMECALL                         R8 R8 K6 ["format"]
       97 CALL                             R8 4 1
       98 CALL                             R7 1 0
       99 LOADNIL                          R7
      100 RETURN                           R7 1
      101 NEWCLOSURE                       R7 P0
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R5
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R0
      110 GETTABLEKS                       R9 R4 K20 ["Enabled"]
      112 JUMPIFEQKNIL                     R9 ; [+4]
      114 GETTABLEKS                       R8 R4 K20 ["Enabled"]
      116 JUMP                             ; [+1]
      117 LOADB                            R8 1
      118 GETTABLEKS                       R10 R4 K21 ["Visible"]
      120 JUMPIFEQKNIL                     R10 ; [+4]
      122 GETTABLEKS                       R9 R4 K21 ["Visible"]
      124 JUMP                             ; [+1]
      125 LOADB                            R9 1
      126 GETUPVAL                         R10 6
      127 GETUPVAL                         R11 7
      128 DUPTABLE                         R12 K33 [{"Disabled", "Visible", "Size", "Text", "Icon", "IconSide", "LayoutOrder", "OnSelect", "MenuData", "Uri", "Tooltip", "TooltipTitle"}]
      129 NOT                              R13 R8
      130 SETTABLEKS                       R13 R12 K22 ["Disabled"]
      132 SETTABLEKS                       R9 R12 K21 ["Visible"]
      134 GETTABLEKS                       R13 R2 K23 ["Size"]
      136 SETTABLEKS                       R13 R12 K23 ["Size"]
      138 GETUPVAL                         R13 8
      139 MOVE                             R14 R1
      140 LOADK                            R15 K24 ["Text"]
      141 MOVE                             R16 R6
      142 MOVE                             R17 R2
      143 MOVE                             R18 R4
      144 CALL                             R13 5 1
      145 SETTABLEKS                       R13 R12 K24 ["Text"]
      147 GETTABLEKS                       R13 R6 K25 ["Icon"]
      149 JUMPIF                           R13 ; [+5]
      150 GETTABLEKS                       R13 R2 K25 ["Icon"]
      152 JUMPIF                           R13 ; [+2]
      153 GETTABLEKS                       R13 R4 K25 ["Icon"]
      155 SETTABLEKS                       R13 R12 K25 ["Icon"]
      157 GETTABLEKS                       R13 R2 K26 ["IconSide"]
      159 SETTABLEKS                       R13 R12 K26 ["IconSide"]
      161 GETTABLEKS                       R13 R0 K27 ["LayoutOrder"]
      163 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      165 SETTABLEKS                       R7 R12 K28 ["OnSelect"]
      167 GETTABLEKS                       R13 R0 K29 ["MenuData"]
      169 SETTABLEKS                       R13 R12 K29 ["MenuData"]
      171 GETUPVAL                         R13 1
      172 GETTABLEKS                       R13 R13 K34 ["child"]
      174 GETTABLEKS                       R14 R0 K35 ["WidgetUri"]
      176 GETTABLEKS                       R15 R2 K5 ["Id"]
      178 CALL                             R13 2 1
      179 SETTABLEKS                       R13 R12 K30 ["Uri"]
      181 GETUPVAL                         R13 8
      182 MOVE                             R14 R1
      183 LOADK                            R15 K31 ["Tooltip"]
      184 MOVE                             R16 R6
      185 MOVE                             R17 R2
      186 MOVE                             R18 R4
      187 CALL                             R13 5 1
      188 SETTABLEKS                       R13 R12 K31 ["Tooltip"]
      190 GETUPVAL                         R13 8
      191 MOVE                             R14 R1
      192 LOADK                            R15 K24 ["Text"]
      193 MOVE                             R16 R6
      194 MOVE                             R17 R2
      195 MOVE                             R18 R4
      196 CALL                             R13 5 1
      197 SETTABLEKS                       R13 R12 K32 ["TooltipTitle"]
      199 CALL                             R10 2 -1
      200 RETURN                           R10 -1

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
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFFlagStudioRibbonSettingsContextSupport"]
       24 CALL                             R3 1 1
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Packages"]
       30 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Src"]
       41 GETTABLEKS                       R7 R7 K15 ["Components"]
       43 GETTABLEKS                       R7 R7 K16 ["RibbonSelectInput"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K9 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["ControlsView"]
       54 GETTABLEKS                       R8 R8 K18 ["getLocalizedField"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       63 GETTABLEKS                       R9 R9 K20 ["useMenu"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K6 ["Packages"]
       70 GETTABLEKS                       R10 R10 K21 ["Dash"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R9 K22 ["join"]
       75 GETTABLEKS                       R11 R9 K23 ["map"]
       77 GETTABLEKS                       R12 R9 K24 ["collectArray"]
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K6 ["Packages"]
       83 GETTABLEKS                       R14 R14 K25 ["Framework"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R13 K26 ["ContextServices"]
       88 GETTABLEKS                       R15 R14 K27 ["Localization"]
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R17 R0 K9 ["Src"]
       94 GETTABLEKS                       R17 R17 K15 ["Components"]
       96 GETTABLEKS                       R17 R17 K17 ["ControlsView"]
       98 GETTABLEKS                       R17 R17 K28 ["ControlProps"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R18 R0 K9 ["Src"]
      105 GETTABLEKS                       R18 R18 K29 ["Types"]
      107 CALL                             R17 1 1
      108 DUPCLOSURE                       R18 K30 [PROTO_3]
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R7
      118 RETURN                           R18 1
