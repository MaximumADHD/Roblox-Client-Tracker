PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"onActivated", "tag"}]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       12 LOADK                            R5 K5 ["size-full-0 auto-y radius-small"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K1 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K9 [{"Id", "Uri", "Text"}]
       20 GETTABLEKS                       R8 R1 K6 ["Id"]
       22 SETTABLEKS                       R8 R7 K6 ["Id"]
       24 GETTABLEKS                       R8 R1 K7 ["Uri"]
       26 SETTABLEKS                       R8 R7 K7 ["Uri"]
       28 GETTABLEKS                       R8 R1 K10 ["Name"]
       30 SETTABLEKS                       R8 R7 K8 ["Text"]
       32 CALL                             R5 2 -1
       33 CALL                             R2 -1 -1
       34 RETURN                           R2 -1

PROTO_2:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R9 R7 K1 ["Name"]
       13 NEWTABLE                         R10 0 1
       15 MOVE                             R11 R1
       16 SETLIST                          R10 R11 1 [1]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       22 MOVE                             R9 R2
       23 MOVE                             R10 R7
       24 GETIMPORT                        R8 K4 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 ; [-18]
       29 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Items"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 [""]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["onActivated"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"Item", "onActivated"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 GETUPVAL                         R5 2
        8 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{"Size", "tag", "layout", "scroll"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K6 ["AMR_QUICKSHARE_DROPDOWN_SIZE"]
        8 SETTABLEKS                       R3 R2 K1 ["Size"]
       10 LOADK                            R3 K7 ["padding-xsmall radius-medium stroke-default"]
       11 SETTABLEKS                       R3 R2 K2 ["tag"]
       13 DUPTABLE                         R3 K9 [{"FillDirection"}]
       14 GETIMPORT                        R4 K12 [Enum.FillDirection.Vertical]
       16 SETTABLEKS                       R4 R3 K8 ["FillDirection"]
       18 SETTABLEKS                       R3 R2 K3 ["layout"]
       20 DUPTABLE                         R3 K16 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       21 GETIMPORT                        R4 K19 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R4 R3 K13 ["AutomaticCanvasSize"]
       25 GETIMPORT                        R4 K22 [UDim2.fromOffset]
       27 LOADN                            R5 0
       28 LOADN                            R6 0
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K14 ["CanvasSize"]
       32 GETIMPORT                        R4 K23 [Enum.ScrollingDirection.Y]
       34 SETTABLEKS                       R4 R3 K15 ["ScrollingDirection"]
       36 SETTABLEKS                       R3 R2 K4 ["scroll"]
       38 NEWTABLE                         R3 0 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K0 ["createElement"]
       43 GETUPVAL                         R5 3
       44 DUPTABLE                         R6 K24 [{"tag"}]
       45 LOADK                            R7 K25 ["col size-full-0 auto-y gap-xxsmall"]
       46 SETTABLEKS                       R7 R6 K2 ["tag"]
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R7 R8 K26 ["map"]
       51 GETUPVAL                         R8 5
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CALL                             R7 2 -1
       57 CALL                             R4 -1 -1
       58 SETLIST                          R3 R4 -1 [1]
       60 CALL                             R0 3 -1
       61 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 LOADK                            R3 K2 [""]
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K1 ["useState"]
       17 LOADB                            R6 0
       18 CALL                             R5 1 2
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K4 ["useMemo"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R9 0 2
       28 GETTABLEKS                       R10 R0 K5 ["State"]
       30 MOVE                             R11 R2
       31 SETLIST                          R9 R10 2 [1]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 GETUPVAL                         R11 3
       42 CALL                             R11 0 1
       43 JUMPIFNOT                        R11 ; [+7]
       44 NEWTABLE                         R10 0 1
       46 GETTABLEKS                       R11 R0 K7 ["onActivated"]
       48 SETLIST                          R10 R11 1 [1]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R10
       52 CALL                             R8 2 1
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          VAL R8
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R10 R11 K8 ["createElement"]
       65 GETUPVAL                         R11 6
       66 DUPTABLE                         R12 K11 [{"tag", "ref"}]
       67 LOADK                            R13 K12 ["size-full-0 auto-y"]
       68 SETTABLEKS                       R13 R12 K9 ["tag"]
       70 SETTABLEKS                       R4 R12 K10 ["ref"]
       72 DUPTABLE                         R13 K15 [{"Input", "DropdownPopover"}]
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R14 R15 K8 ["createElement"]
       76 GETUPVAL                         R15 9
       77 DUPTABLE                         R16 K27 [{"LayoutOrder", "label", "placeholder", "text", "iconTrailing", "onChanged", "onFocusGained", "width", "size", "isDisabled", "testId"}]
       78 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
       80 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
       82 LOADK                            R17 K2 [""]
       83 SETTABLEKS                       R17 R16 K17 ["label"]
       85 LOADK                            R19 K28 ["QuickShare"]
       86 LOADK                            R20 K29 ["CollaboratorPlaceholder"]
       87 NAMECALL                         R17 R1 K30 ["getText"]
       89 CALL                             R17 3 1
       90 SETTABLEKS                       R17 R16 K18 ["placeholder"]
       92 SETTABLEKS                       R2 R16 K19 ["text"]
       94 LENGTH                           R18 R2
       95 LOADN                            R19 0
       96 JUMPIFNOTLT                      R19 R18 ; [+16]
       98 DUPTABLE                         R17 K32 [{"name", "onActivated"}]
       99 GETUPVAL                         R21 10
      100 GETTABLEKS                       R20 R21 K33 ["Enums"]
      102 GETTABLEKS                       R19 R20 K34 ["IconName"]
      104 GETTABLEKS                       R18 R19 K35 ["CircleX"]
      106 SETTABLEKS                       R18 R17 K31 ["name"]
      108 NEWCLOSURE                       R18 P3
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R18 R17 K7 ["onActivated"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R17
      114 SETTABLEKS                       R17 R16 K20 ["iconTrailing"]
      116 SETTABLEKS                       R3 R16 K21 ["onChanged"]
      118 NEWCLOSURE                       R17 P4
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R17 R16 K22 ["onFocusGained"]
      122 GETIMPORT                        R17 K38 [UDim.new]
      124 LOADN                            R18 1
      125 LOADN                            R19 0
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K23 ["width"]
      129 GETUPVAL                         R20 10
      130 GETTABLEKS                       R19 R20 K33 ["Enums"]
      132 GETTABLEKS                       R18 R19 K39 ["InputSize"]
      134 GETTABLEKS                       R17 R18 K40 ["Small"]
      136 SETTABLEKS                       R17 R16 K24 ["size"]
      138 GETTABLEKS                       R17 R0 K25 ["isDisabled"]
      140 SETTABLEKS                       R17 R16 K25 ["isDisabled"]
      142 LOADK                            R17 K41 ["collaborators-dropdown"]
      143 SETTABLEKS                       R17 R16 K26 ["testId"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K13 ["Input"]
      148 GETUPVAL                         R15 1
      149 GETTABLEKS                       R14 R15 K8 ["createElement"]
      151 GETUPVAL                         R16 11
      152 GETTABLEKS                       R15 R16 K42 ["Root"]
      154 DUPTABLE                         R16 K44 [{"isOpen"}]
      155 SETTABLEKS                       R5 R16 K43 ["isOpen"]
      157 DUPTABLE                         R17 K47 [{"Anchor", "Content"}]
      158 GETUPVAL                         R19 1
      159 GETTABLEKS                       R18 R19 K8 ["createElement"]
      161 GETUPVAL                         R20 11
      162 GETTABLEKS                       R19 R20 K45 ["Anchor"]
      164 DUPTABLE                         R20 K49 [{"anchorRef"}]
      165 SETTABLEKS                       R4 R20 K48 ["anchorRef"]
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K45 ["Anchor"]
      170 GETUPVAL                         R19 1
      171 GETTABLEKS                       R18 R19 K8 ["createElement"]
      173 GETUPVAL                         R20 11
      174 GETTABLEKS                       R19 R20 K46 ["Content"]
      176 DUPTABLE                         R20 K55 [{"hasArrow", "radius", "side", "align", "onPressedOutside"}]
      177 LOADB                            R21 0
      178 SETTABLEKS                       R21 R20 K50 ["hasArrow"]
      180 GETUPVAL                         R24 10
      181 GETTABLEKS                       R23 R24 K33 ["Enums"]
      183 GETTABLEKS                       R22 R23 K56 ["Radius"]
      185 GETTABLEKS                       R21 R22 K57 ["Medium"]
      187 SETTABLEKS                       R21 R20 K51 ["radius"]
      189 GETUPVAL                         R24 10
      190 GETTABLEKS                       R23 R24 K33 ["Enums"]
      192 GETTABLEKS                       R22 R23 K58 ["PopoverSide"]
      194 GETTABLEKS                       R21 R22 K59 ["Bottom"]
      196 SETTABLEKS                       R21 R20 K52 ["side"]
      198 GETUPVAL                         R24 10
      199 GETTABLEKS                       R23 R24 K33 ["Enums"]
      201 GETTABLEKS                       R22 R23 K60 ["PopoverAlign"]
      203 GETTABLEKS                       R21 R22 K61 ["Center"]
      205 SETTABLEKS                       R21 R20 K53 ["align"]
      207 NEWCLOSURE                       R21 P5
      208 CAPTURE                          VAL R6
      209 SETTABLEKS                       R21 R20 K54 ["onPressedOutside"]
      211 GETUPVAL                         R22 1
      212 GETTABLEKS                       R21 R22 K8 ["createElement"]
      214 MOVE                             R22 R9
      215 CALL                             R21 1 -1
      216 CALL                             R18 -1 1
      217 SETTABLEKS                       R18 R17 K46 ["Content"]
      219 CALL                             R14 3 1
      220 SETTABLEKS                       R14 R13 K14 ["DropdownPopover"]
      222 CALL                             R10 3 -1
      223 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["ScrollView"]
       32 GETTABLEKS                       R6 R3 K12 ["TextInput"]
       34 GETTABLEKS                       R7 R3 K13 ["Popover"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R10 R0 K6 ["Packages"]
       40 GETTABLEKS                       R9 R10 K14 ["Framework"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       45 GETTABLEKS                       R10 R9 K16 ["Localization"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R13 R0 K17 ["Src"]
       51 GETTABLEKS                       R12 R13 K18 ["Types"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K5 [require]
       56 GETTABLEKS                       R15 R0 K17 ["Src"]
       58 GETTABLEKS                       R14 R15 K19 ["Resources"]
       60 GETTABLEKS                       R13 R14 K20 ["StyleConstants"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R16 R0 K17 ["Src"]
       67 GETTABLEKS                       R15 R16 K21 ["Util"]
       69 GETTABLEKS                       R14 R15 K22 ["hasMatchingTerm"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R21 R0 K17 ["Src"]
       76 GETTABLEKS                       R20 R21 K23 ["Components"]
       78 GETTABLEKS                       R19 R20 K24 ["App"]
       80 GETTABLEKS                       R18 R19 K25 ["Dialogs"]
       82 GETTABLEKS                       R17 R18 K26 ["QuickShareDialog"]
       84 GETTABLEKS                       R16 R17 K27 ["ShareView"]
       86 GETTABLEKS                       R15 R16 K28 ["EntryRow"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R18 R0 K17 ["Src"]
       93 GETTABLEKS                       R17 R18 K29 ["Flags"]
       95 GETTABLEKS                       R16 R17 K30 ["getFFlagAmrMiscCallbackFixes"]
       97 CALL                             R15 1 1
       98 DUPCLOSURE                       R16 K31 [PROTO_1]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R14
      102 DUPCLOSURE                       R17 K32 [PROTO_2]
      103 CAPTURE                          VAL R13
      104 DUPCLOSURE                       R18 K33 [PROTO_10]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R7
      117 RETURN                           R18 1
