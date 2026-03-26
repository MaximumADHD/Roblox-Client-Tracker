PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADN                            R1 0
        7 JUMPIFLE                         R0 R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R2 R0
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 3
       17 DUPTABLE                         R3 K7 [{"Id", "Name", "Uri", "Subject", "Action"}]
       18 SETTABLEKS                       R0 R3 K2 ["Id"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R5 R0
       22 GETIMPORT                        R4 K9 [tostring]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K3 ["Name"]
       27 LOADK                            R5 K10 ["rbxthumb://type=GameIcon&id=%*&w=128&h=128"]
       28 MOVE                             R7 R0
       29 NAMECALL                         R5 R5 K11 ["format"]
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 SETTABLEKS                       R4 R3 K4 ["Uri"]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R4 R5 K12 ["Universe"]
       38 SETTABLEKS                       R4 R3 K5 ["Subject"]
       40 GETUPVAL                         R5 5
       41 GETTABLEKS                       R4 R5 K13 ["Use"]
       43 SETTABLEKS                       R4 R3 K6 ["Action"]
       45 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       47 GETIMPORT                        R1 K16 [table.insert]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 1
       51 LOADB                            R2 1
       52 SETTABLE                         R2 R1 R0
       53 GETUPVAL                         R1 6
       54 GETIMPORT                        R2 K18 [table.clone]
       56 GETUPVAL                         R3 7
       57 CALL                             R2 1 -1
       58 CALL                             R1 -1 0
       59 GETUPVAL                         R1 8
       60 LOADK                            R2 K19 [""]
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 LOADNIL                          R4
        4 SETTABLE                         R4 R2 R3
        5 GETIMPORT                        R2 K3 [table.remove]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 2
       11 GETIMPORT                        R3 K5 [table.clone]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Item", "Index", "onItemRemoved"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 SETTABLEKS                       R1 R4 K2 ["Index"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["onItemRemoved"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["State"]
        6 GETTABLEKS                       R3 R0 K2 ["SetState"]
        8 GETTABLEKS                       R4 R2 K3 ["Selection"]
       10 GETTABLEKS                       R5 R2 K4 ["SelectionSet"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["useState"]
       15 LOADK                            R7 K6 [""]
       16 CALL                             R6 1 2
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K5 ["useState"]
       20 LOADB                            R9 0
       21 CALL                             R8 1 2
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       25 NEWCLOSURE                       R11 P0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R9
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R7
       35 GETUPVAL                         R13 4
       36 CALL                             R13 0 1
       37 JUMPIFNOT                        R13 ; [+8]
       38 NEWTABLE                         R12 0 3
       40 MOVE                             R13 R4
       41 MOVE                             R14 R5
       42 MOVE                             R15 R6
       43 SETLIST                          R12 R13 3 [1]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R12
       47 CALL                             R10 2 1
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       51 NEWCLOSURE                       R12 P1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 GETUPVAL                         R14 4
       57 CALL                             R14 0 1
       58 JUMPIFNOT                        R14 ; [+7]
       59 NEWTABLE                         R13 0 2
       61 MOVE                             R14 R4
       62 MOVE                             R15 R5
       63 SETLIST                          R13 R14 2 [1]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R13
       67 CALL                             R11 2 1
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       71 NEWCLOSURE                       R13 P2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 GETUPVAL                         R15 4
       75 CALL                             R15 0 1
       76 JUMPIFNOT                        R15 ; [+3]
       77 NEWTABLE                         R14 0 0
       79 JUMP                             ; [+1]
       80 LOADNIL                          R14
       81 CALL                             R12 2 1
       82 GETUPVAL                         R14 1
       83 GETTABLEKS                       R13 R14 K8 ["createElement"]
       85 GETUPVAL                         R14 5
       86 DUPTABLE                         R15 K10 [{"tag"}]
       87 LOADK                            R16 K11 ["col size-full gap-medium data-testid=experiencestab-view"]
       88 SETTABLEKS                       R16 R15 K9 ["tag"]
       90 DUPTABLE                         R16 K14 [{"AddView", "SelectionView"}]
       91 GETUPVAL                         R18 1
       92 GETTABLEKS                       R17 R18 K8 ["createElement"]
       94 GETUPVAL                         R18 5
       95 DUPTABLE                         R19 K16 [{"LayoutOrder", "tag"}]
       96 LOADN                            R20 1
       97 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
       99 LOADK                            R20 K17 ["row size-full-0 auto-y gap-small"]
      100 SETTABLEKS                       R20 R19 K9 ["tag"]
      102 NEWTABLE                         R20 0 2
      104 GETUPVAL                         R22 1
      105 GETTABLEKS                       R21 R22 K8 ["createElement"]
      107 GETUPVAL                         R22 5
      108 DUPTABLE                         R23 K10 [{"tag"}]
      109 LOADK                            R24 K18 ["fill auto-y"]
      110 SETTABLEKS                       R24 R23 K9 ["tag"]
      112 NEWTABLE                         R24 0 1
      114 GETUPVAL                         R26 1
      115 GETTABLEKS                       R25 R26 K8 ["createElement"]
      117 GETUPVAL                         R26 6
      118 DUPTABLE                         R27 K27 [{"label", "placeholder", "text", "iconTrailing", "onChanged", "hasError", "width", "size"}]
      119 LOADK                            R28 K6 [""]
      120 SETTABLEKS                       R28 R27 K19 ["label"]
      122 LOADK                            R30 K28 ["QuickShare"]
      123 LOADK                            R31 K29 ["ExperienceIdPlaceholder"]
      124 NAMECALL                         R28 R1 K30 ["getText"]
      126 CALL                             R28 3 1
      127 SETTABLEKS                       R28 R27 K20 ["placeholder"]
      129 SETTABLEKS                       R6 R27 K21 ["text"]
      131 LENGTH                           R29 R6
      132 LOADN                            R30 0
      133 JUMPIFNOTLT                      R30 R29 ; [+16]
      135 DUPTABLE                         R28 K33 [{"name", "onActivated"}]
      136 GETUPVAL                         R32 7
      137 GETTABLEKS                       R31 R32 K34 ["Enums"]
      139 GETTABLEKS                       R30 R31 K35 ["IconName"]
      141 GETTABLEKS                       R29 R30 K36 ["CircleX"]
      143 SETTABLEKS                       R29 R28 K31 ["name"]
      145 NEWCLOSURE                       R29 P3
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R29 R28 K32 ["onActivated"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R28
      151 SETTABLEKS                       R28 R27 K22 ["iconTrailing"]
      153 SETTABLEKS                       R12 R27 K23 ["onChanged"]
      155 SETTABLEKS                       R8 R27 K24 ["hasError"]
      157 GETIMPORT                        R28 K39 [UDim.new]
      159 LOADN                            R29 1
      160 LOADN                            R30 0
      161 CALL                             R28 2 1
      162 SETTABLEKS                       R28 R27 K25 ["width"]
      164 GETUPVAL                         R31 7
      165 GETTABLEKS                       R30 R31 K34 ["Enums"]
      167 GETTABLEKS                       R29 R30 K40 ["InputSize"]
      169 GETTABLEKS                       R28 R29 K41 ["Small"]
      171 SETTABLEKS                       R28 R27 K26 ["size"]
      173 CALL                             R25 2 -1
      174 SETLIST                          R24 R25 -1 [1]
      176 CALL                             R21 3 1
      177 GETUPVAL                         R23 1
      178 GETTABLEKS                       R22 R23 K8 ["createElement"]
      180 GETUPVAL                         R23 5
      181 DUPTABLE                         R24 K10 [{"tag"}]
      182 LOADK                            R25 K42 ["size-1500-0 auto-y"]
      183 SETTABLEKS                       R25 R24 K9 ["tag"]
      185 NEWTABLE                         R25 0 1
      187 GETUPVAL                         R27 1
      188 GETTABLEKS                       R26 R27 K8 ["createElement"]
      190 GETUPVAL                         R27 8
      191 DUPTABLE                         R28 K46 [{"text", "onActivated", "variant", "size", "width", "isDisabled", "testId"}]
      192 LOADK                            R31 K28 ["QuickShare"]
      193 LOADK                            R32 K47 ["AddButton"]
      194 NAMECALL                         R29 R1 K30 ["getText"]
      196 CALL                             R29 3 1
      197 SETTABLEKS                       R29 R28 K21 ["text"]
      199 SETTABLEKS                       R10 R28 K32 ["onActivated"]
      201 GETUPVAL                         R32 7
      202 GETTABLEKS                       R31 R32 K34 ["Enums"]
      204 GETTABLEKS                       R30 R31 K48 ["ButtonVariant"]
      206 GETTABLEKS                       R29 R30 K49 ["Standard"]
      208 SETTABLEKS                       R29 R28 K43 ["variant"]
      210 GETUPVAL                         R32 7
      211 GETTABLEKS                       R31 R32 K34 ["Enums"]
      213 GETTABLEKS                       R30 R31 K40 ["InputSize"]
      215 GETTABLEKS                       R29 R30 K41 ["Small"]
      217 SETTABLEKS                       R29 R28 K26 ["size"]
      219 GETIMPORT                        R29 K39 [UDim.new]
      221 LOADN                            R30 1
      222 LOADN                            R31 0
      223 CALL                             R29 2 1
      224 SETTABLEKS                       R29 R28 K25 ["width"]
      226 GETTABLEKS                       R30 R0 K50 ["CanAdd"]
      228 NOT                              R29 R30
      229 SETTABLEKS                       R29 R28 K44 ["isDisabled"]
      231 LOADK                            R29 K51 ["experience-add-button"]
      232 SETTABLEKS                       R29 R28 K45 ["testId"]
      234 CALL                             R26 2 -1
      235 SETLIST                          R25 R26 -1 [1]
      237 CALL                             R22 3 -1
      238 SETLIST                          R20 R21 -1 [1]
      240 CALL                             R17 3 1
      241 SETTABLEKS                       R17 R16 K12 ["AddView"]
      243 GETUPVAL                         R18 1
      244 GETTABLEKS                       R17 R18 K8 ["createElement"]
      246 GETUPVAL                         R18 9
      247 DUPTABLE                         R19 K54 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
      248 LOADN                            R20 2
      249 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      251 LOADK                            R22 K28 ["QuickShare"]
      252 LOADK                            R23 K55 ["ExperiencesHintTitle"]
      253 NAMECALL                         R20 R1 K30 ["getText"]
      255 CALL                             R20 3 1
      256 SETTABLEKS                       R20 R19 K52 ["PlaceholderText"]
      258 LOADK                            R22 K28 ["QuickShare"]
      259 LOADK                            R23 K56 ["ExperiencesHintDescription"]
      260 NAMECALL                         R20 R1 K30 ["getText"]
      262 CALL                             R20 3 1
      263 SETTABLEKS                       R20 R19 K53 ["PlaceholderSubtext"]
      265 GETUPVAL                         R21 10
      266 GETTABLEKS                       R20 R21 K57 ["map"]
      268 MOVE                             R21 R4
      269 NEWCLOSURE                       R22 P4
      270 CAPTURE                          UPVAL U1
      271 CAPTURE                          UPVAL U11
      272 CAPTURE                          VAL R11
      273 CALL                             R20 2 -1
      274 CALL                             R17 -1 1
      275 SETTABLEKS                       R17 R16 K13 ["SelectionView"]
      277 CALL                             R13 3 -1
      278 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["TextInput"]
       25 GETTABLEKS                       R5 R2 K11 ["Button"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R8 R7 K14 ["Localization"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R11 R0 K6 ["Packages"]
       42 GETTABLEKS                       R10 R11 K15 ["Dash"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R12 R0 K16 ["Src"]
       49 GETTABLEKS                       R11 R12 K17 ["Types"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R11 R10 K18 ["PermissionsSubject"]
       54 GETTABLEKS                       R12 R10 K19 ["PermissionsAction"]
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R20 R0 K16 ["Src"]
       60 GETTABLEKS                       R19 R20 K20 ["Components"]
       62 GETTABLEKS                       R18 R19 K21 ["App"]
       64 GETTABLEKS                       R17 R18 K22 ["Dialogs"]
       66 GETTABLEKS                       R16 R17 K23 ["QuickShareDialog"]
       68 GETTABLEKS                       R15 R16 K24 ["ShareView"]
       70 GETTABLEKS                       R14 R15 K25 ["SelectedView"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R21 R0 K16 ["Src"]
       77 GETTABLEKS                       R20 R21 K20 ["Components"]
       79 GETTABLEKS                       R19 R20 K21 ["App"]
       81 GETTABLEKS                       R18 R19 K22 ["Dialogs"]
       83 GETTABLEKS                       R17 R18 K23 ["QuickShareDialog"]
       85 GETTABLEKS                       R16 R17 K24 ["ShareView"]
       87 GETTABLEKS                       R15 R16 K26 ["SelectedEntry"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R18 R0 K16 ["Src"]
       94 GETTABLEKS                       R17 R18 K27 ["Flags"]
       96 GETTABLEKS                       R16 R17 K28 ["getFFlagAmrMiscCallbackFixes"]
       98 CALL                             R15 1 1
       99 DUPCLOSURE                       R16 K29 [PROTO_5]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R14
      112 RETURN                           R16 1
