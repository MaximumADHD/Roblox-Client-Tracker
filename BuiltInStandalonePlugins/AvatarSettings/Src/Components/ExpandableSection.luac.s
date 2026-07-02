PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["alwaysExpanded"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["set"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["enabled"]
       11 NOT                              R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["settings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Settings must not be nil in AvatarSettingsContext"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K5 ["use"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["useToggleState"]
       24 LOADB                            R4 1
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 GETTABLEKS                       R5 R0 K7 ["showWarning"]
       30 JUMPIFNOT                        R5 ; [+14]
       31 GETTABLEKS                       R6 R1 K1 ["settings"]
       33 GETTABLEKS                       R6 R6 K8 ["navigationBarSettings"]
       35 GETTABLEKS                       R6 R6 K9 ["avatarType"]
       37 GETTABLEKS                       R6 R6 K10 ["value"]
       39 GETIMPORT                        R7 K14 [Enum.GameAvatarType.PlayerChoice]
       41 JUMPIFEQ                         R6 R7 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 GETUPVAL                         R6 5
       46 GETUPVAL                         R7 6
       47 NEWTABLE                         R8 2 0
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K15 ["Tag"]
       52 LOADK                            R10 K16 ["Component-ExpandableSection X-Border X-Top X-Column"]
       53 SETTABLE                         R10 R8 R9
       54 GETTABLEKS                       R9 R0 K17 ["layoutOrder"]
       56 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       58 DUPTABLE                         R9 K21 [{"Header", "Content"}]
       59 GETUPVAL                         R10 5
       60 GETUPVAL                         R11 6
       61 NEWTABLE                         R12 2 0
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K15 ["Tag"]
       66 LOADK                            R14 K22 ["Component-ExpandableSection-Header X-Row X-Middle X-Border"]
       67 SETTABLE                         R14 R12 R13
       68 NEWCLOSURE                       R13 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R13 R12 K23 ["OnClick"]
       73 DUPTABLE                         R13 K27 [{"Arrow", "Title", "Warning"}]
       74 GETUPVAL                         R14 5
       75 GETUPVAL                         R15 7
       76 NEWTABLE                         R16 2 0
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R17 R17 K15 ["Tag"]
       81 GETUPVAL                         R18 8
       82 GETTABLEKS                       R18 R18 K28 ["Styling"]
       84 GETTABLEKS                       R18 R18 K29 ["joinTags"]
       86 LOADK                            R19 K30 ["Component-ExpandableSection-Arrow"]
       87 GETTABLEKS                       R21 R0 K31 ["alwaysExpanded"]
       89 JUMPIF                           R21 ; [+3]
       90 GETTABLEKS                       R21 R3 K32 ["enabled"]
       92 JUMPIFNOT                        R21 ; [+2]
       93 LOADK                            R20 K33 ["Expanded"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R20
       96 GETTABLEKS                       R22 R0 K31 ["alwaysExpanded"]
       98 JUMPIFNOT                        R22 ; [+2]
       99 LOADK                            R21 K34 ["Invisible"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R21
      102 CALL                             R18 3 1
      103 SETTABLE                         R18 R16 R17
      104 MOVE                             R17 R4
      105 CALL                             R17 0 1
      106 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K24 ["Arrow"]
      111 GETUPVAL                         R14 5
      112 LOADK                            R15 K35 ["TextLabel"]
      113 NEWTABLE                         R16 8 0
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K15 ["Tag"]
      118 LOADK                            R18 K36 ["Component-TextLabel SourceSans Bold"]
      119 SETTABLE                         R18 R16 R17
      120 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      122 LOADN                            R18 -16
      123 LOADN                            R19 20
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K40 ["Size"]
      127 GETTABLEKS                       R17 R0 K41 ["text"]
      129 SETTABLEKS                       R17 R16 K42 ["Text"]
      131 MOVE                             R17 R4
      132 CALL                             R17 0 1
      133 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      135 GETIMPORT                        R17 K45 [Enum.AutomaticSize.X]
      137 SETTABLEKS                       R17 R16 K43 ["AutomaticSize"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K25 ["Title"]
      142 MOVE                             R14 R5
      143 JUMPIFNOT                        R14 ; [+28]
      144 GETUPVAL                         R14 5
      145 LOADK                            R15 K46 ["ImageLabel"]
      146 NEWTABLE                         R16 2 0
      148 GETUPVAL                         R17 0
      149 GETTABLEKS                       R17 R17 K15 ["Tag"]
      151 LOADK                            R18 K47 ["Component-WarningIcon"]
      152 SETTABLE                         R18 R16 R17
      153 MOVE                             R17 R4
      154 CALL                             R17 0 1
      155 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      157 DUPTABLE                         R17 K49 [{"WarningMessage"}]
      158 GETUPVAL                         R18 5
      159 GETUPVAL                         R19 9
      160 DUPTABLE                         R20 K50 [{"Text"}]
      161 LOADK                            R23 K51 ["General"]
      162 LOADK                            R24 K52 ["R15AndR6SectionWarningText"]
      163 NAMECALL                         R21 R2 K53 ["getText"]
      165 CALL                             R21 3 1
      166 SETTABLEKS                       R21 R20 K42 ["Text"]
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K48 ["WarningMessage"]
      171 CALL                             R14 3 1
      172 SETTABLEKS                       R14 R13 K26 ["Warning"]
      174 CALL                             R10 3 1
      175 SETTABLEKS                       R10 R9 K19 ["Header"]
      177 GETTABLEKS                       R10 R3 K32 ["enabled"]
      179 JUMPIFNOT                        R10 ; [+12]
      180 GETUPVAL                         R10 5
      181 GETUPVAL                         R11 6
      182 NEWTABLE                         R12 1 0
      184 GETUPVAL                         R13 0
      185 GETTABLEKS                       R13 R13 K15 ["Tag"]
      187 LOADK                            R14 K54 ["Component-ExpandableSection-Content X-Column X-Left"]
      188 SETTABLE                         R14 R12 R13
      189 GETTABLEKS                       R13 R0 K55 ["children"]
      191 CALL                             R10 3 1
      192 SETTABLEKS                       R10 R9 K20 ["Content"]
      194 CALL                             R6 3 -1
      195 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K15 ["Localization"]
       43 GETTABLEKS                       R7 R2 K16 ["UI"]
       45 GETTABLEKS                       R8 R7 K17 ["Pane"]
       47 GETTABLEKS                       R9 R7 K18 ["Image"]
       49 GETTABLEKS                       R10 R7 K19 ["Tooltip"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K6 ["Src"]
       55 GETTABLEKS                       R12 R12 K7 ["Components"]
       57 GETTABLEKS                       R12 R12 K20 ["HoverTextBox"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R4 K21 ["createNextOrder"]
       62 GETTABLEKS                       R13 R3 K22 ["createElement"]
       64 DUPCLOSURE                       R14 K23 [PROTO_1]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R10
       75 RETURN                           R14 1
