PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Header", "Description", "NoDirectories", "Add"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Permissions"]
        3 LOADK                            R4 K6 ["UploadDirectoriesHeader"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Header"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["Permissions"]
       11 LOADK                            R4 K8 ["UploadDirectoriesDescription"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Description"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["Permissions"]
       19 LOADK                            R4 K9 ["NoUploadDirectories"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["NoDirectories"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["Permissions"]
       27 LOADK                            R4 K10 ["AddUploadDirectory"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRemove"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 NEWTABLE                         R3 0 0
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R5 R0 K3 ["directories"]
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R10 3
       25 GETUPVAL                         R11 4
       26 DUPTABLE                         R12 K14 [{["text"], ["trailing"], ["onActivated"], ["isChecked"] = False, ["isDisabled"], ["variant"], ["size"], ["testId"], ["LayoutOrder"]}]
       27 SETTABLEKS                       R9 R12 K4 ["text"]
       29 DUPTABLE                         R13 K16 [{"iconName", "onActivated"}]
       30 GETUPVAL                         R14 5
       31 GETTABLEKS                       R14 R14 K17 ["X"]
       33 SETTABLEKS                       R14 R13 K15 ["iconName"]
       35 NEWCLOSURE                       R14 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R9
       38 SETTABLEKS                       R14 R13 K6 ["onActivated"]
       40 SETTABLEKS                       R13 R12 K5 ["trailing"]
       42 DUPCLOSURE                       R13 K18 [PROTO_2]
       43 SETTABLEKS                       R13 R12 K6 ["onActivated"]
       45 GETTABLEKS                       R13 R0 K9 ["isDisabled"]
       47 SETTABLEKS                       R13 R12 K9 ["isDisabled"]
       49 GETUPVAL                         R13 6
       50 GETTABLEKS                       R13 R13 K19 ["Standard"]
       52 SETTABLEKS                       R13 R12 K10 ["variant"]
       54 GETUPVAL                         R13 7
       55 GETTABLEKS                       R13 R13 K20 ["Small"]
       57 SETTABLEKS                       R13 R12 K11 ["size"]
       59 GETUPVAL                         R13 8
       60 GETTABLEKS                       R13 R13 K21 ["UploadDirectories"]
       62 GETTABLEKS                       R13 R13 K22 ["DirectoryRow"]
       64 MOVE                             R14 R9
       65 CALL                             R13 1 1
       66 SETTABLEKS                       R13 R12 K12 ["testId"]
       68 MOVE                             R13 R4
       69 CALL                             R13 0 1
       70 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       72 CALL                             R10 2 1
       73 SETTABLE                         R10 R3 R9
       74 FORGLOOP                         R5 2 ; [-51]
       76 GETUPVAL                         R5 3
       77 GETUPVAL                         R6 9
       78 DUPTABLE                         R7 K25 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-right-medium", ["testId"], ["LayoutOrder"]}]
       79 GETUPVAL                         R8 8
       80 GETTABLEKS                       R8 R8 K21 ["UploadDirectories"]
       82 GETTABLEKS                       R8 R8 K26 ["Container"]
       84 SETTABLEKS                       R8 R7 K12 ["testId"]
       86 GETTABLEKS                       R8 R0 K13 ["LayoutOrder"]
       88 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       90 DUPTABLE                         R8 K31 [{"Header", "Description", "DirectoryList", "AddButton"}]
       91 GETUPVAL                         R9 3
       92 GETUPVAL                         R10 10
       93 DUPTABLE                         R11 K35 [{["tag"] = "size-full-0 auto-y text-label-small text-wrap text-align-x-left content-emphasis", ["fontStyle"], ["Text"], ["LayoutOrder"]}]
       94 DUPTABLE                         R12 K37 [{"Font"}]
       95 GETIMPORT                        R13 K40 [Enum.Font.BuilderSansBold]
       97 SETTABLEKS                       R13 R12 K36 ["Font"]
       99 SETTABLEKS                       R12 R11 K33 ["fontStyle"]
      101 GETTABLEKS                       R12 R1 K27 ["Header"]
      103 SETTABLEKS                       R12 R11 K34 ["Text"]
      105 MOVE                             R12 R2
      106 CALL                             R12 0 1
      107 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K27 ["Header"]
      112 GETUPVAL                         R9 3
      113 GETUPVAL                         R10 10
      114 DUPTABLE                         R11 K42 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      115 GETTABLEKS                       R12 R1 K28 ["Description"]
      117 SETTABLEKS                       R12 R11 K34 ["Text"]
      119 MOVE                             R12 R2
      120 CALL                             R12 0 1
      121 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K28 ["Description"]
      126 GETTABLEKS                       R11 R0 K3 ["directories"]
      128 LENGTH                           R10 R11
      129 LOADN                            R11 0
      130 JUMPIFNOTLT                      R11 R10 ; [+25]
      132 GETUPVAL                         R9 3
      133 GETUPVAL                         R10 9
      134 DUPTABLE                         R11 K45 [{["tag"] = "size-full-0 auto-xy", ["layout"], ["LayoutOrder"]}]
      135 DUPTABLE                         R12 K50 [{["FillDirection"], ["Padding"], ["Wraps"] = True}]
      136 GETIMPORT                        R13 K52 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R13 R12 K46 ["FillDirection"]
      140 GETIMPORT                        R13 K55 [UDim.new]
      142 LOADN                            R14 0
      143 LOADN                            R15 8
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K47 ["Padding"]
      147 SETTABLEKS                       R12 R11 K44 ["layout"]
      149 MOVE                             R12 R2
      150 CALL                             R12 0 1
      151 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      153 MOVE                             R12 R3
      154 CALL                             R9 3 1
      155 JUMP                             ; [+12]
      156 GETUPVAL                         R9 3
      157 GETUPVAL                         R10 10
      158 DUPTABLE                         R11 K57 [{["tag"] = "size-full-0 auto-y padding-top-xsmall text-body-small text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      159 GETTABLEKS                       R12 R1 K58 ["NoDirectories"]
      161 SETTABLEKS                       R12 R11 K34 ["Text"]
      163 MOVE                             R12 R2
      164 CALL                             R12 0 1
      165 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      167 CALL                             R9 2 1
      168 SETTABLEKS                       R9 R8 K29 ["DirectoryList"]
      170 GETUPVAL                         R9 3
      171 GETUPVAL                         R10 11
      172 DUPTABLE                         R11 K60 [{"text", "icon", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      173 GETTABLEKS                       R12 R1 K61 ["Add"]
      175 SETTABLEKS                       R12 R11 K4 ["text"]
      177 GETUPVAL                         R12 5
      178 GETTABLEKS                       R12 R12 K62 ["PlusSmall"]
      180 SETTABLEKS                       R12 R11 K59 ["icon"]
      182 GETUPVAL                         R12 12
      183 GETTABLEKS                       R12 R12 K20 ["Small"]
      185 SETTABLEKS                       R12 R11 K11 ["size"]
      187 GETUPVAL                         R12 13
      188 GETTABLEKS                       R12 R12 K19 ["Standard"]
      190 SETTABLEKS                       R12 R11 K10 ["variant"]
      192 LOADB                            R12 1
      193 GETTABLEKS                       R13 R0 K9 ["isDisabled"]
      195 JUMPIFEQKB                       R13 TRUE ; [+7]
      197 GETTABLEKS                       R13 R0 K63 ["isAddDisabled"]
      199 JUMPIFEQKB                       R13 TRUE ; [+2]
      201 LOADB                            R12 0 +1
      202 LOADB                            R12 1
      203 SETTABLEKS                       R12 R11 K9 ["isDisabled"]
      205 GETTABLEKS                       R12 R0 K64 ["onAdd"]
      207 SETTABLEKS                       R12 R11 K6 ["onActivated"]
      209 GETUPVAL                         R12 8
      210 GETTABLEKS                       R12 R12 K21 ["UploadDirectories"]
      212 GETTABLEKS                       R12 R12 K30 ["AddButton"]
      214 SETTABLEKS                       R12 R11 K12 ["testId"]
      216 MOVE                             R12 R2
      217 CALL                             R12 0 1
      218 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      220 CALL                             R9 2 1
      221 SETTABLEKS                       R9 R8 K30 ["AddButton"]
      223 CALL                             R5 3 -1
      224 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["TestIds"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Resources"]
       18 GETTABLEKS                       R3 R3 K9 ["Localization"]
       20 GETTABLEKS                       R3 R3 K10 ["Translator"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K15 ["Button"]
       46 GETTABLEKS                       R7 R3 K16 ["Chip"]
       48 GETTABLEKS                       R8 R3 K17 ["Text"]
       50 GETTABLEKS                       R9 R3 K18 ["View"]
       52 GETTABLEKS                       R10 R3 K19 ["Enums"]
       54 GETTABLEKS                       R10 R10 K20 ["ButtonSize"]
       56 GETTABLEKS                       R11 R3 K19 ["Enums"]
       58 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       60 GETTABLEKS                       R12 R3 K19 ["Enums"]
       62 GETTABLEKS                       R12 R12 K22 ["ChipSize"]
       64 GETTABLEKS                       R13 R3 K19 ["Enums"]
       66 GETTABLEKS                       R13 R13 K23 ["ChipVariant"]
       68 GETTABLEKS                       R14 R3 K19 ["Enums"]
       70 GETTABLEKS                       R14 R14 K24 ["IconName"]
       72 GETTABLEKS                       R15 R5 K25 ["createNextOrder"]
       74 GETTABLEKS                       R16 R4 K26 ["createElement"]
       76 DUPCLOSURE                       R17 K27 [PROTO_3]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R11
       91 RETURN                           R17 1
