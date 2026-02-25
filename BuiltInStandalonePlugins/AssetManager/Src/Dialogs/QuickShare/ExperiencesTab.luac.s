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
        8 GETTABLEKS                       R4 R2 K3 ["selection"]
       10 GETTABLEKS                       R5 R2 K4 ["selectionSet"]
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
       35 CALL                             R10 1 1
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       39 NEWCLOSURE                       R12 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CALL                             R11 1 1
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       48 NEWCLOSURE                       R13 P2
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R9
       51 CALL                             R12 1 1
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R13 R14 K8 ["createElement"]
       55 GETUPVAL                         R14 4
       56 DUPTABLE                         R15 K10 [{"tag"}]
       57 LOADK                            R16 K11 ["col size-full gap-medium data-testid=experiencestab-view"]
       58 SETTABLEKS                       R16 R15 K9 ["tag"]
       60 DUPTABLE                         R16 K14 [{"AddView", "SelectionView"}]
       61 GETUPVAL                         R18 1
       62 GETTABLEKS                       R17 R18 K8 ["createElement"]
       64 GETUPVAL                         R18 4
       65 DUPTABLE                         R19 K16 [{"LayoutOrder", "tag"}]
       66 LOADN                            R20 1
       67 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
       69 LOADK                            R20 K17 ["row size-full-0 auto-y gap-small"]
       70 SETTABLEKS                       R20 R19 K9 ["tag"]
       72 NEWTABLE                         R20 0 2
       74 GETUPVAL                         R22 1
       75 GETTABLEKS                       R21 R22 K8 ["createElement"]
       77 GETUPVAL                         R22 4
       78 DUPTABLE                         R23 K10 [{"tag"}]
       79 LOADK                            R24 K18 ["fill auto-y"]
       80 SETTABLEKS                       R24 R23 K9 ["tag"]
       82 NEWTABLE                         R24 0 1
       84 GETUPVAL                         R26 1
       85 GETTABLEKS                       R25 R26 K8 ["createElement"]
       87 GETUPVAL                         R26 5
       88 DUPTABLE                         R27 K27 [{"label", "placeholder", "text", "iconTrailing", "onChanged", "hasError", "width", "size"}]
       89 LOADK                            R28 K6 [""]
       90 SETTABLEKS                       R28 R27 K19 ["label"]
       92 LOADK                            R30 K28 ["QuickShare"]
       93 LOADK                            R31 K29 ["ExperienceIdPlaceholder"]
       94 NAMECALL                         R28 R1 K30 ["getText"]
       96 CALL                             R28 3 1
       97 SETTABLEKS                       R28 R27 K20 ["placeholder"]
       99 SETTABLEKS                       R6 R27 K21 ["text"]
      101 LENGTH                           R29 R6
      102 LOADN                            R30 0
      103 JUMPIFNOTLT                      R30 R29 ; [+16]
      105 DUPTABLE                         R28 K33 [{"name", "onActivated"}]
      106 GETUPVAL                         R32 6
      107 GETTABLEKS                       R31 R32 K34 ["Enums"]
      109 GETTABLEKS                       R30 R31 K35 ["IconName"]
      111 GETTABLEKS                       R29 R30 K36 ["CircleX"]
      113 SETTABLEKS                       R29 R28 K31 ["name"]
      115 NEWCLOSURE                       R29 P3
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R29 R28 K32 ["onActivated"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R28
      121 SETTABLEKS                       R28 R27 K22 ["iconTrailing"]
      123 SETTABLEKS                       R12 R27 K23 ["onChanged"]
      125 SETTABLEKS                       R8 R27 K24 ["hasError"]
      127 GETIMPORT                        R28 K39 [UDim.new]
      129 LOADN                            R29 1
      130 LOADN                            R30 0
      131 CALL                             R28 2 1
      132 SETTABLEKS                       R28 R27 K25 ["width"]
      134 GETUPVAL                         R31 6
      135 GETTABLEKS                       R30 R31 K34 ["Enums"]
      137 GETTABLEKS                       R29 R30 K40 ["InputSize"]
      139 GETTABLEKS                       R28 R29 K41 ["Small"]
      141 SETTABLEKS                       R28 R27 K26 ["size"]
      143 CALL                             R25 2 -1
      144 SETLIST                          R24 R25 -1 [1]
      146 CALL                             R21 3 1
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R22 R23 K8 ["createElement"]
      150 GETUPVAL                         R23 4
      151 DUPTABLE                         R24 K10 [{"tag"}]
      152 LOADK                            R25 K42 ["size-1500-0 auto-y"]
      153 SETTABLEKS                       R25 R24 K9 ["tag"]
      155 NEWTABLE                         R25 0 1
      157 GETUPVAL                         R27 1
      158 GETTABLEKS                       R26 R27 K8 ["createElement"]
      160 GETUPVAL                         R27 7
      161 DUPTABLE                         R28 K45 [{"text", "onActivated", "variant", "size", "width", "testId"}]
      162 LOADK                            R31 K28 ["QuickShare"]
      163 LOADK                            R32 K46 ["AddButton"]
      164 NAMECALL                         R29 R1 K30 ["getText"]
      166 CALL                             R29 3 1
      167 SETTABLEKS                       R29 R28 K21 ["text"]
      169 SETTABLEKS                       R10 R28 K32 ["onActivated"]
      171 GETUPVAL                         R32 6
      172 GETTABLEKS                       R31 R32 K34 ["Enums"]
      174 GETTABLEKS                       R30 R31 K47 ["ButtonVariant"]
      176 GETTABLEKS                       R29 R30 K48 ["Standard"]
      178 SETTABLEKS                       R29 R28 K43 ["variant"]
      180 GETUPVAL                         R32 6
      181 GETTABLEKS                       R31 R32 K34 ["Enums"]
      183 GETTABLEKS                       R30 R31 K40 ["InputSize"]
      185 GETTABLEKS                       R29 R30 K41 ["Small"]
      187 SETTABLEKS                       R29 R28 K26 ["size"]
      189 GETIMPORT                        R29 K39 [UDim.new]
      191 LOADN                            R30 1
      192 LOADN                            R31 0
      193 CALL                             R29 2 1
      194 SETTABLEKS                       R29 R28 K25 ["width"]
      196 LOADK                            R29 K49 ["experience-add-button"]
      197 SETTABLEKS                       R29 R28 K44 ["testId"]
      199 CALL                             R26 2 -1
      200 SETLIST                          R25 R26 -1 [1]
      202 CALL                             R22 3 -1
      203 SETLIST                          R20 R21 -1 [1]
      205 CALL                             R17 3 1
      206 SETTABLEKS                       R17 R16 K12 ["AddView"]
      208 GETUPVAL                         R18 1
      209 GETTABLEKS                       R17 R18 K8 ["createElement"]
      211 GETUPVAL                         R18 8
      212 DUPTABLE                         R19 K52 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
      213 LOADN                            R20 2
      214 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      216 LOADK                            R22 K28 ["QuickShare"]
      217 LOADK                            R23 K53 ["ExperiencesHintTitle"]
      218 NAMECALL                         R20 R1 K30 ["getText"]
      220 CALL                             R20 3 1
      221 SETTABLEKS                       R20 R19 K50 ["PlaceholderText"]
      223 LOADK                            R22 K28 ["QuickShare"]
      224 LOADK                            R23 K54 ["ExperiencesHintDescription"]
      225 NAMECALL                         R20 R1 K30 ["getText"]
      227 CALL                             R20 3 1
      228 SETTABLEKS                       R20 R19 K51 ["PlaceholderSubtext"]
      230 GETUPVAL                         R21 9
      231 GETTABLEKS                       R20 R21 K55 ["map"]
      233 MOVE                             R21 R4
      234 NEWCLOSURE                       R22 P4
      235 CAPTURE                          UPVAL U1
      236 CAPTURE                          UPVAL U10
      237 CAPTURE                          VAL R11
      238 CALL                             R20 2 -1
      239 CALL                             R17 -1 1
      240 SETTABLEKS                       R17 R16 K13 ["SelectionView"]
      242 CALL                             R13 3 -1
      243 RETURN                           R13 -1

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
       52 GETTABLEKS                       R11 R10 K18 ["PermissionsGrantSubject"]
       54 GETTABLEKS                       R12 R10 K19 ["PermissionsGrantAction"]
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R17 R0 K16 ["Src"]
       60 GETTABLEKS                       R16 R17 K20 ["Dialogs"]
       62 GETTABLEKS                       R15 R16 K21 ["QuickShare"]
       64 GETTABLEKS                       R14 R15 K22 ["SelectedView"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R18 R0 K16 ["Src"]
       71 GETTABLEKS                       R17 R18 K20 ["Dialogs"]
       73 GETTABLEKS                       R16 R17 K21 ["QuickShare"]
       75 GETTABLEKS                       R15 R16 K23 ["SelectedEntry"]
       77 CALL                             R14 1 1
       78 DUPCLOSURE                       R15 K24 [PROTO_5]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R14
       90 RETURN                           R15 1
