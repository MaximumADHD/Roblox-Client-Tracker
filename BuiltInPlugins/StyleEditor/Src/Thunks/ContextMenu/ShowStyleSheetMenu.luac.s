PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R1 K2 [string.find]
        4 GETTABLEKS                       R2 R0 K3 ["Id"]
        6 LOADK                            R3 K4 ["/Folder$"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 LOADB                            R5 1
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K5 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K6 ["Data"]
       20 GETTABLEKS                       R1 R1 K7 ["Selector"]
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R1
       26 LOADB                            R7 1
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["Category"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R1
       10 CALL                             R4 2 -1
       11 NAMECALL                         R2 R2 K2 ["dispatch"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["Parent"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K1 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["getNewSelectorAction"]
        8 GETUPVAL                         R5 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 MOVE                             R7 R3
       16 CALL                             R4 3 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["getRenameAction"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U5
       22 MOVE                             R7 R3
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K4 ["getStyleSheetCategoryActions"]
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U1
       31 MOVE                             R8 R3
       32 CALL                             R6 2 1
       33 GETUPVAL                         R8 7
       34 JUMPIFNOT                        R8 ; [+11]
       35 GETTABLEKS                       R9 R2 K5 ["Clipboard"]
       37 GETTABLEKS                       R9 R9 K6 ["Instances"]
       39 LENGTH                           R8 R9
       40 LOADN                            R9 0
       41 JUMPIFLT                         R9 R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 JUMP                             ; [+8]
       46 GETTABLEKS                       R8 R2 K5 ["Clipboard"]
       48 GETTABLEKS                       R8 R8 K7 ["DEPRECATED_Instance"]
       50 JUMPIFNOTEQKNIL                  R8 ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 GETUPVAL                         R9 1
       55 LOADK                            R11 K9 ["StyleCategory"]
       56 NAMECALL                         R9 R9 K10 ["GetAttribute"]
       58 CALL                             R9 2 1
       59 ORK                              R8 R9 K8 [""]
       60 GETUPVAL                         R9 8
       61 GETTABLEKS                       R9 R9 K11 ["isTheme"]
       63 GETUPVAL                         R10 1
       64 CALL                             R9 1 1
       65 JUMPIFEQKS                       R8 K12 ["Tokens"] ; [+2]
       67 LOADB                            R10 0 +1
       68 LOADB                            R10 1
       69 OR                               R11 R10 R9
       70 DUPTABLE                         R12 K16 [{["Id"] = "StyleSheet", ["Children"]}]
       71 NEWTABLE                         R13 0 8
       73 GETUPVAL                         R14 9
       74 MOVE                             R15 R4
       75 DUPTABLE                         R16 K18 [{"Hidden"}]
       76 SETTABLEKS                       R11 R16 K17 ["Hidden"]
       78 CALL                             R14 2 1
       79 MOVE                             R15 R5
       80 DUPTABLE                         R16 K23 [{["Id"] = "Duplicate", ["Text"], ["Icon"], ["OnItemClicked"]}]
       81 LOADK                            R19 K24 ["ContextMenu"]
       82 LOADK                            R20 K19 ["Duplicate"]
       83 NAMECALL                         R17 R3 K25 ["getText"]
       85 CALL                             R17 3 1
       86 SETTABLEKS                       R17 R16 K20 ["Text"]
       88 GETUPVAL                         R17 10
       89 GETTABLEKS                       R17 R17 K26 ["duplicate"]
       91 CALL                             R17 0 1
       92 SETTABLEKS                       R17 R16 K21 ["Icon"]
       94 NEWCLOSURE                       R17 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U11
       97 CAPTURE                          UPVAL U1
       98 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      100 DUPTABLE                         R17 K28 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
      101 LOADK                            R20 K24 ["ContextMenu"]
      102 LOADK                            R21 K27 ["Delete"]
      103 NAMECALL                         R18 R3 K25 ["getText"]
      105 CALL                             R18 3 1
      106 SETTABLEKS                       R18 R17 K20 ["Text"]
      108 GETUPVAL                         R18 10
      109 GETTABLEKS                       R18 R18 K29 ["delete"]
      111 CALL                             R18 0 1
      112 SETTABLEKS                       R18 R17 K21 ["Icon"]
      114 NEWCLOSURE                       R18 P4
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U12
      117 CAPTURE                          UPVAL U1
      118 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      120 DUPTABLE                         R18 K32 [{["Id"] = "PasteInto", ["Text"], ["Icon"], ["Hidden"], ["Enabled"], ["OnItemClicked"]}]
      121 LOADK                            R21 K24 ["ContextMenu"]
      122 LOADK                            R22 K30 ["PasteInto"]
      123 NAMECALL                         R19 R3 K25 ["getText"]
      125 CALL                             R19 3 1
      126 SETTABLEKS                       R19 R18 K20 ["Text"]
      128 GETUPVAL                         R19 10
      129 GETTABLEKS                       R19 R19 K33 ["paste"]
      131 CALL                             R19 0 1
      132 SETTABLEKS                       R19 R18 K21 ["Icon"]
      134 SETTABLEKS                       R11 R18 K17 ["Hidden"]
      136 SETTABLEKS                       R7 R18 K31 ["Enabled"]
      138 NEWCLOSURE                       R19 P5
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U13
      141 CAPTURE                          UPVAL U1
      142 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      144 DUPTABLE                         R19 K35 [{["Id"] = "ShowInExplorer", ["Text"], ["Icon"], ["OnItemClicked"]}]
      145 LOADK                            R22 K24 ["ContextMenu"]
      146 LOADK                            R23 K34 ["ShowInExplorer"]
      147 NAMECALL                         R20 R3 K25 ["getText"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K20 ["Text"]
      152 GETUPVAL                         R20 0
      153 GETTABLEKS                       R20 R20 K36 ["getClassIcon"]
      155 LOADK                            R21 K37 ["ReplicatedStorage"]
      156 CALL                             R20 1 1
      157 SETTABLEKS                       R20 R19 K21 ["Icon"]
      159 NEWCLOSURE                       R20 P6
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U14
      162 CAPTURE                          UPVAL U1
      163 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      165 DUPTABLE                         R20 K40 [{["Id"] = "RemoveFromCategory", ["Text"], ["Icon"], ["Hidden"], ["OnItemClicked"], ["Data"]}]
      166 LOADK                            R23 K24 ["ContextMenu"]
      167 JUMPIFNOT                        R9 ; [+2]
      168 LOADK                            R24 K41 ["RemoveFromThemes"]
      169 JUMP                             ; [+1]
      170 LOADK                            R24 K42 ["RemoveFromTokens"]
      171 NAMECALL                         R21 R3 K25 ["getText"]
      173 CALL                             R21 3 1
      174 SETTABLEKS                       R21 R20 K20 ["Text"]
      176 GETUPVAL                         R21 10
      177 GETTABLEKS                       R21 R21 K43 ["remove"]
      179 CALL                             R21 0 1
      180 SETTABLEKS                       R21 R20 K21 ["Icon"]
      182 NOT                              R21 R11
      183 SETTABLEKS                       R21 R20 K17 ["Hidden"]
      185 NEWCLOSURE                       R21 P7
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U15
      188 CAPTURE                          UPVAL U1
      189 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      191 DUPTABLE                         R21 K45 [{"Category"}]
      192 SETTABLEKS                       R8 R21 K44 ["Category"]
      194 SETTABLEKS                       R21 R20 K39 ["Data"]
      196 DUPTABLE                         R21 K47 [{["Id"] = "SetCategory", ["Text"], ["Icon"], ["Hidden"], ["Children"]}]
      197 LOADK                            R24 K24 ["ContextMenu"]
      198 LOADK                            R25 K46 ["SetCategory"]
      199 NAMECALL                         R22 R3 K25 ["getText"]
      201 CALL                             R22 3 1
      202 SETTABLEKS                       R22 R21 K20 ["Text"]
      204 GETUPVAL                         R22 10
      205 GETTABLEKS                       R22 R22 K48 ["set"]
      207 CALL                             R22 0 1
      208 SETTABLEKS                       R22 R21 K21 ["Icon"]
      210 SETTABLEKS                       R11 R21 K17 ["Hidden"]
      212 SETTABLEKS                       R6 R21 K15 ["Children"]
      214 SETLIST                          R13 R14 8 [1]
      216 SETTABLEKS                       R13 R12 K15 ["Children"]
      218 GETUPVAL                         R13 0
      219 GETTABLEKS                       R13 R13 K49 ["trackClicks"]
      221 MOVE                             R14 R12
      222 GETTABLEKS                       R15 R1 K50 ["Telemetry"]
      224 CALL                             R13 2 0
      225 GETUPVAL                         R13 0
      226 GETTABLEKS                       R13 R13 K51 ["showContextMenu"]
      228 GETTABLEKS                       R14 R1 K52 ["Plugin"]
      230 MOVE                             R15 R12
      231 CALL                             R13 2 0
      232 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["DesignHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["MenuHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Resources"]
       44 GETTABLEKS                       R5 R5 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R5 K13 ["Thunks"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R5 K14 ["Change"]
       55 GETTABLEKS                       R7 R7 K15 ["ClearStyleSheetCategory"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R8 R5 K14 ["Change"]
       62 GETTABLEKS                       R8 R8 K16 ["CreateFolder"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R5 K14 ["Change"]
       69 GETTABLEKS                       R9 R9 K17 ["CreateStyleRule"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R5 K14 ["Change"]
       76 GETTABLEKS                       R10 R10 K18 ["DeleteInstance"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R5 K14 ["Change"]
       83 GETTABLEKS                       R11 R11 K19 ["DuplicateInstance"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K4 [require]
       88 GETTABLEKS                       R12 R5 K14 ["Change"]
       90 GETTABLEKS                       R12 R12 K20 ["PasteInstanceInto"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R13 R5 K14 ["Change"]
       97 GETTABLEKS                       R13 R13 K21 ["SetStyleSheetCategory"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K4 [require]
      102 GETTABLEKS                       R14 R5 K14 ["Change"]
      104 GETTABLEKS                       R14 R14 K22 ["ShowInstanceInExplorer"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K4 [require]
      109 GETTABLEKS                       R15 R0 K5 ["Src"]
      111 GETTABLEKS                       R15 R15 K23 ["Flags"]
      113 GETTABLEKS                       R15 R15 K24 ["getFFlagStyleQuery"]
      115 CALL                             R14 1 1
      116 CALL                             R14 0 1
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R16 R0 K5 ["Src"]
      121 GETTABLEKS                       R16 R16 K23 ["Flags"]
      123 GETTABLEKS                       R16 R16 K25 ["getFFlagStyleEditorCreateFolder"]
      125 CALL                             R15 1 1
      126 CALL                             R15 0 1
      127 GETIMPORT                        R16 K4 [require]
      129 GETTABLEKS                       R17 R0 K26 ["Packages"]
      131 GETTABLEKS                       R17 R17 K27 ["Dash"]
      133 CALL                             R16 1 1
      134 GETTABLEKS                       R17 R16 K28 ["join"]
      136 GETIMPORT                        R18 K4 [require]
      138 GETTABLEKS                       R19 R0 K5 ["Src"]
      140 GETTABLEKS                       R19 R19 K29 ["Types"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K4 [require]
      145 GETTABLEKS                       R20 R0 K5 ["Src"]
      147 GETTABLEKS                       R20 R20 K13 ["Thunks"]
      149 GETTABLEKS                       R20 R20 K29 ["Types"]
      151 CALL                             R19 1 1
      152 DUPCLOSURE                       R20 K30 [PROTO_9]
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R6
      167 RETURN                           R20 1
