PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Visible"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 SUBK                             R2 R0 K1 [1]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 DUPTABLE                         R5 K6 [{"Type", "Selected", "Setting", "SettingValue"}]
       10 LOADK                            R6 K7 ["SelectOption"]
       11 SETTABLEKS                       R6 R5 K2 ["Type"]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K8 ["Value"]
       16 JUMPIFEQ                         R2 R7 ; [+2]
       18 LOADB                            R6 0 +1
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K3 ["Selected"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K4 ["Setting"]
       25 SETTABLEKS                       R6 R5 K4 ["Setting"]
       27 SETTABLEKS                       R2 R5 K5 ["SettingValue"]
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1

PROTO_1:
        0 SUBK                             R2 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 DUPTABLE                         R5 K5 [{"Type", "Selected", "Setting", "SettingValue"}]
        4 LOADK                            R6 K6 ["SelectOption"]
        5 SETTABLEKS                       R6 R5 K1 ["Type"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K7 ["Value"]
       10 JUMPIFEQ                         R2 R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["Selected"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K3 ["Setting"]
       19 SETTABLEKS                       R6 R5 K3 ["Setting"]
       21 SETTABLEKS                       R2 R5 K4 ["SettingValue"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

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
       20 DUPTABLE                         R2 K2 [{"Type", "Children"}]
       21 LOADK                            R3 K3 ["Column"]
       22 SETTABLEKS                       R3 R2 K0 ["Type"]
       24 SETTABLEKS                       R1 R2 K1 ["Children"]
       26 GETUPVAL                         R4 7
       27 GETTABLEKS                       R3 R4 K4 ["OpenMenu"]
       29 NEWTABLE                         R4 0 1
       31 MOVE                             R5 R2
       32 SETLIST                          R4 R5 1 [1]
       34 MOVE                             R5 R0
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETTABLEKS                       R3 R2 K2 ["Setting"]
        8 JUMPIF                           R3 ; [+12]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R5 K4 ["Missing Setting field for SelectInput with id %*"]
       12 GETTABLEKS                       R7 R2 K5 ["Id"]
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K7 ["toString"]
       24 GETTABLEKS                       R4 R2 K2 ["Setting"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R6 R0 K8 ["Items"]
       29 GETTABLEKS                       R5 R6 K9 ["Settings"]
       31 GETTABLE                         R4 R5 R3
       32 JUMPIF                           R4 ; [+13]
       33 GETTABLEKS                       R5 R0 K3 ["Warn"]
       35 LOADK                            R7 K10 ["Missing Setting %* for SelectInput with id %*"]
       36 MOVE                             R9 R3
       37 GETTABLEKS                       R10 R2 K5 ["Id"]
       39 NAMECALL                         R7 R7 K6 ["format"]
       41 CALL                             R7 3 1
       42 MOVE                             R6 R7
       43 CALL                             R5 1 0
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETTABLEKS                       R6 R4 K11 ["Value"]
       48 FASTCALL1                        TYPEOF R6 ; [+2]
       49 GETIMPORT                        R5 K13 [typeof]
       51 CALL                             R5 1 1
       52 JUMPIFEQKS                       R5 K14 ["number"] ; [+16]
       54 GETTABLEKS                       R5 R0 K3 ["Warn"]
       56 LOADK                            R7 K15 ["Setting %* has an invalid value %* for SelectInput with id %*"]
       57 MOVE                             R9 R3
       58 GETTABLEKS                       R10 R4 K11 ["Value"]
       60 GETTABLEKS                       R11 R2 K5 ["Id"]
       62 NAMECALL                         R7 R7 K6 ["format"]
       64 CALL                             R7 4 1
       65 MOVE                             R6 R7
       66 CALL                             R5 1 0
       67 LOADNIL                          R5
       68 RETURN                           R5 1
       69 GETTABLEKS                       R5 R4 K16 ["Values"]
       71 JUMPIF                           R5 ; [+13]
       72 GETTABLEKS                       R6 R0 K3 ["Warn"]
       74 LOADK                            R8 K17 ["Setting %* has no Values field for SelectInput with id %*"]
       75 MOVE                             R10 R3
       76 GETTABLEKS                       R11 R2 K5 ["Id"]
       78 NAMECALL                         R8 R8 K6 ["format"]
       80 CALL                             R8 3 1
       81 MOVE                             R7 R8
       82 CALL                             R6 1 0
       83 LOADNIL                          R6
       84 RETURN                           R6 1
       85 GETTABLEKS                       R8 R4 K11 ["Value"]
       87 ADDK                             R7 R8 K18 [1]
       88 GETTABLE                         R6 R5 R7
       89 JUMPIF                           R6 ; [+16]
       90 GETTABLEKS                       R7 R0 K3 ["Warn"]
       92 LOADK                            R9 K19 ["Setting %* has no Value %* for SelectInput with id %*"]
       93 MOVE                             R11 R3
       94 GETTABLEKS                       R13 R4 K11 ["Value"]
       96 ADDK                             R12 R13 K18 [1]
       97 GETTABLEKS                       R13 R2 K5 ["Id"]
       99 NAMECALL                         R9 R9 K6 ["format"]
      101 CALL                             R9 4 1
      102 MOVE                             R8 R9
      103 CALL                             R7 1 0
      104 LOADNIL                          R7
      105 RETURN                           R7 1
      106 NEWCLOSURE                       R7 P0
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          VAL R5
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R0
      115 GETTABLEKS                       R9 R4 K20 ["Enabled"]
      117 JUMPIFEQKNIL                     R9 ; [+4]
      119 GETTABLEKS                       R8 R4 K20 ["Enabled"]
      121 JUMP                             ; [+1]
      122 LOADB                            R8 1
      123 GETTABLEKS                       R10 R4 K21 ["Visible"]
      125 JUMPIFEQKNIL                     R10 ; [+4]
      127 GETTABLEKS                       R9 R4 K21 ["Visible"]
      129 JUMP                             ; [+1]
      130 LOADB                            R9 1
      131 GETUPVAL                         R10 6
      132 GETUPVAL                         R11 7
      133 DUPTABLE                         R12 K33 [{"Disabled", "Visible", "Size", "Text", "Icon", "IconSide", "LayoutOrder", "OnSelect", "MenuData", "Uri", "Tooltip", "TooltipTitle"}]
      134 NOT                              R13 R8
      135 SETTABLEKS                       R13 R12 K22 ["Disabled"]
      137 SETTABLEKS                       R9 R12 K21 ["Visible"]
      139 GETTABLEKS                       R13 R2 K23 ["Size"]
      141 SETTABLEKS                       R13 R12 K23 ["Size"]
      143 GETUPVAL                         R13 8
      144 MOVE                             R14 R1
      145 LOADK                            R15 K24 ["Text"]
      146 MOVE                             R16 R6
      147 MOVE                             R17 R2
      148 MOVE                             R18 R4
      149 CALL                             R13 5 1
      150 SETTABLEKS                       R13 R12 K24 ["Text"]
      152 GETTABLEKS                       R13 R6 K25 ["Icon"]
      154 JUMPIF                           R13 ; [+5]
      155 GETTABLEKS                       R13 R2 K25 ["Icon"]
      157 JUMPIF                           R13 ; [+2]
      158 GETTABLEKS                       R13 R4 K25 ["Icon"]
      160 SETTABLEKS                       R13 R12 K25 ["Icon"]
      162 GETTABLEKS                       R13 R2 K26 ["IconSide"]
      164 SETTABLEKS                       R13 R12 K26 ["IconSide"]
      166 GETTABLEKS                       R13 R0 K27 ["LayoutOrder"]
      168 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      170 SETTABLEKS                       R7 R12 K28 ["OnSelect"]
      172 GETTABLEKS                       R13 R0 K29 ["MenuData"]
      174 SETTABLEKS                       R13 R12 K29 ["MenuData"]
      176 GETUPVAL                         R14 1
      177 GETTABLEKS                       R13 R14 K34 ["child"]
      179 GETTABLEKS                       R14 R0 K35 ["WidgetUri"]
      181 GETTABLEKS                       R15 R2 K5 ["Id"]
      183 CALL                             R13 2 1
      184 SETTABLEKS                       R13 R12 K30 ["Uri"]
      186 GETUPVAL                         R13 8
      187 MOVE                             R14 R1
      188 LOADK                            R15 K31 ["Tooltip"]
      189 MOVE                             R16 R6
      190 MOVE                             R17 R2
      191 MOVE                             R18 R4
      192 CALL                             R13 5 1
      193 SETTABLEKS                       R13 R12 K31 ["Tooltip"]
      195 GETUPVAL                         R13 8
      196 MOVE                             R14 R1
      197 LOADK                            R15 K24 ["Text"]
      198 MOVE                             R16 R6
      199 MOVE                             R17 R2
      200 MOVE                             R18 R4
      201 CALL                             R13 5 1
      202 SETTABLEKS                       R13 R12 K32 ["TooltipTitle"]
      204 CALL                             R10 2 -1
      205 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R5 K11 ["getFFlagStudioRibbonSettingsContextSupport"]
       24 CALL                             R3 1 1
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K6 ["Packages"]
       30 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R6 R4 K13 ["Util"]
       35 GETTABLEKS                       R5 R6 K14 ["StudioUri"]
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R9 R0 K9 ["Src"]
       41 GETTABLEKS                       R8 R9 K15 ["Components"]
       43 GETTABLEKS                       R7 R8 K16 ["RibbonSelectInput"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R11 R0 K9 ["Src"]
       50 GETTABLEKS                       R10 R11 K15 ["Components"]
       52 GETTABLEKS                       R9 R10 K17 ["ControlsView"]
       54 GETTABLEKS                       R8 R9 K18 ["getLocalizedField"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R11 K19 ["Hooks"]
       63 GETTABLEKS                       R9 R10 K20 ["useMenu"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Packages"]
       70 GETTABLEKS                       R10 R11 K21 ["Dash"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R9 K22 ["join"]
       75 GETTABLEKS                       R11 R9 K23 ["map"]
       77 GETTABLEKS                       R12 R9 K24 ["collectArray"]
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R15 R0 K6 ["Packages"]
       83 GETTABLEKS                       R14 R15 K25 ["Framework"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R13 K26 ["ContextServices"]
       88 GETTABLEKS                       R15 R14 K27 ["Localization"]
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R20 R0 K9 ["Src"]
       94 GETTABLEKS                       R19 R20 K15 ["Components"]
       96 GETTABLEKS                       R18 R19 K17 ["ControlsView"]
       98 GETTABLEKS                       R17 R18 K28 ["ControlProps"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R19 R0 K9 ["Src"]
      105 GETTABLEKS                       R18 R19 K29 ["Types"]
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
