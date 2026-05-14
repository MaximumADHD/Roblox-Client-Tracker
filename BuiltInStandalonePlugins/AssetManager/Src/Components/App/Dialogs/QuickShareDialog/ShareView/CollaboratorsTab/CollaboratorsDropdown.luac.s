PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["View"]
        8 DUPTABLE                         R4 K5 [{"onActivated", "tag"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       14 LOADK                            R5 K6 ["size-full-0 auto-y radius-small"]
       15 SETTABLEKS                       R5 R4 K4 ["tag"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K10 [{"Id", "Uri", "Text"}]
       22 GETTABLEKS                       R8 R1 K7 ["Id"]
       24 SETTABLEKS                       R8 R7 K7 ["Id"]
       26 GETTABLEKS                       R8 R1 K8 ["Uri"]
       28 SETTABLEKS                       R8 R7 K8 ["Uri"]
       30 GETTABLEKS                       R8 R1 K11 ["Name"]
       32 SETTABLEKS                       R8 R7 K9 ["Text"]
       34 CALL                             R5 2 -1
       35 CALL                             R2 -1 -1
       36 RETURN                           R2 -1

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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Items"]
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
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["onActivated"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"Item", "onActivated"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 GETUPVAL                         R5 2
        8 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ScrollView"]
        6 DUPTABLE                         R2 K6 [{"Size", "tag", "layout", "scroll"}]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K7 ["QuickShareDropdownSize"]
       10 SETTABLEKS                       R3 R2 K2 ["Size"]
       12 LOADK                            R3 K8 ["padding-xsmall radius-medium stroke-default"]
       13 SETTABLEKS                       R3 R2 K3 ["tag"]
       15 DUPTABLE                         R3 K10 [{"FillDirection"}]
       16 GETIMPORT                        R4 K13 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R4 R3 K9 ["FillDirection"]
       20 SETTABLEKS                       R3 R2 K4 ["layout"]
       22 DUPTABLE                         R3 K17 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       23 GETIMPORT                        R4 K20 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R4 R3 K14 ["AutomaticCanvasSize"]
       27 GETIMPORT                        R4 K23 [UDim2.fromOffset]
       29 LOADN                            R5 0
       30 LOADN                            R6 0
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K15 ["CanvasSize"]
       34 GETIMPORT                        R4 K24 [Enum.ScrollingDirection.Y]
       36 SETTABLEKS                       R4 R3 K16 ["ScrollingDirection"]
       38 SETTABLEKS                       R3 R2 K5 ["scroll"]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K0 ["createElement"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K25 ["View"]
       46 DUPTABLE                         R5 K26 [{"tag"}]
       47 LOADK                            R6 K27 ["col size-full-0 auto-y gap-xxsmall"]
       48 SETTABLEKS                       R6 R5 K3 ["tag"]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K28 ["map"]
       53 GETUPVAL                         R7 4
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CALL                             R6 2 -1
       59 CALL                             R3 -1 -1
       60 CALL                             R0 -1 -1
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADK                            R3 K2 [""]
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K1 ["useState"]
       17 LOADB                            R6 0
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R9 0 2
       28 GETTABLEKS                       R10 R0 K5 ["State"]
       30 MOVE                             R11 R2
       31 SETLIST                          R9 R10 2 [1]
       33 CALL                             R7 2 1
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R7
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R8
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K6 ["createElement"]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R11 R11 K7 ["View"]
       52 DUPTABLE                         R12 K10 [{"tag", "ref"}]
       53 LOADK                            R13 K11 ["size-full-0 auto-y"]
       54 SETTABLEKS                       R13 R12 K8 ["tag"]
       56 SETTABLEKS                       R4 R12 K9 ["ref"]
       58 DUPTABLE                         R13 K14 [{"Input", "DropdownPopover"}]
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R14 R14 K6 ["createElement"]
       62 GETUPVAL                         R15 3
       63 GETTABLEKS                       R15 R15 K15 ["TextInput"]
       65 DUPTABLE                         R16 K27 [{"LayoutOrder", "label", "placeholder", "text", "iconTrailing", "onChanged", "onFocusGained", "width", "size", "isDisabled", "testId"}]
       66 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
       68 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
       70 LOADK                            R17 K2 [""]
       71 SETTABLEKS                       R17 R16 K17 ["label"]
       73 LOADK                            R19 K28 ["QuickShare"]
       74 LOADK                            R20 K29 ["CollaboratorPlaceholder"]
       75 NAMECALL                         R17 R1 K30 ["getText"]
       77 CALL                             R17 3 1
       78 SETTABLEKS                       R17 R16 K18 ["placeholder"]
       80 SETTABLEKS                       R2 R16 K19 ["text"]
       82 LENGTH                           R18 R2
       83 LOADN                            R19 0
       84 JUMPIFNOTLT                      R19 R18 ; [+16]
       86 DUPTABLE                         R17 K33 [{"name", "onActivated"}]
       87 GETUPVAL                         R18 3
       88 GETTABLEKS                       R18 R18 K34 ["Enums"]
       90 GETTABLEKS                       R18 R18 K35 ["IconName"]
       92 GETTABLEKS                       R18 R18 K36 ["CircleX"]
       94 SETTABLEKS                       R18 R17 K31 ["name"]
       96 NEWCLOSURE                       R18 P3
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R18 R17 K32 ["onActivated"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R17
      102 SETTABLEKS                       R17 R16 K20 ["iconTrailing"]
      104 SETTABLEKS                       R3 R16 K21 ["onChanged"]
      106 NEWCLOSURE                       R17 P4
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R17 R16 K22 ["onFocusGained"]
      110 GETIMPORT                        R17 K39 [UDim.new]
      112 LOADN                            R18 1
      113 LOADN                            R19 0
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R16 K23 ["width"]
      117 GETUPVAL                         R17 3
      118 GETTABLEKS                       R17 R17 K34 ["Enums"]
      120 GETTABLEKS                       R17 R17 K40 ["InputSize"]
      122 GETTABLEKS                       R17 R17 K41 ["Small"]
      124 SETTABLEKS                       R17 R16 K24 ["size"]
      126 GETTABLEKS                       R17 R0 K25 ["isDisabled"]
      128 SETTABLEKS                       R17 R16 K25 ["isDisabled"]
      130 LOADK                            R17 K42 ["collaborators-dropdown"]
      131 SETTABLEKS                       R17 R16 K26 ["testId"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K12 ["Input"]
      136 GETUPVAL                         R14 1
      137 GETTABLEKS                       R14 R14 K6 ["createElement"]
      139 GETUPVAL                         R15 3
      140 GETTABLEKS                       R15 R15 K43 ["Popover"]
      142 GETTABLEKS                       R15 R15 K44 ["Root"]
      144 DUPTABLE                         R16 K46 [{"isOpen"}]
      145 SETTABLEKS                       R5 R16 K45 ["isOpen"]
      147 DUPTABLE                         R17 K49 [{"Anchor", "Content"}]
      148 GETUPVAL                         R18 1
      149 GETTABLEKS                       R18 R18 K6 ["createElement"]
      151 GETUPVAL                         R19 3
      152 GETTABLEKS                       R19 R19 K43 ["Popover"]
      154 GETTABLEKS                       R19 R19 K47 ["Anchor"]
      156 DUPTABLE                         R20 K51 [{"anchorRef"}]
      157 SETTABLEKS                       R4 R20 K50 ["anchorRef"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K47 ["Anchor"]
      162 GETUPVAL                         R18 1
      163 GETTABLEKS                       R18 R18 K6 ["createElement"]
      165 GETUPVAL                         R19 3
      166 GETTABLEKS                       R19 R19 K43 ["Popover"]
      168 GETTABLEKS                       R19 R19 K48 ["Content"]
      170 DUPTABLE                         R20 K57 [{"hasArrow", "radius", "side", "align", "onPressedOutside"}]
      171 LOADB                            R21 0
      172 SETTABLEKS                       R21 R20 K52 ["hasArrow"]
      174 GETUPVAL                         R21 3
      175 GETTABLEKS                       R21 R21 K34 ["Enums"]
      177 GETTABLEKS                       R21 R21 K58 ["Radius"]
      179 GETTABLEKS                       R21 R21 K59 ["Medium"]
      181 SETTABLEKS                       R21 R20 K53 ["radius"]
      183 GETUPVAL                         R21 3
      184 GETTABLEKS                       R21 R21 K34 ["Enums"]
      186 GETTABLEKS                       R21 R21 K60 ["PopoverSide"]
      188 GETTABLEKS                       R21 R21 K61 ["Bottom"]
      190 SETTABLEKS                       R21 R20 K54 ["side"]
      192 GETUPVAL                         R21 3
      193 GETTABLEKS                       R21 R21 K34 ["Enums"]
      195 GETTABLEKS                       R21 R21 K62 ["PopoverAlign"]
      197 GETTABLEKS                       R21 R21 K63 ["Center"]
      199 SETTABLEKS                       R21 R20 K55 ["align"]
      201 NEWCLOSURE                       R21 P5
      202 CAPTURE                          VAL R6
      203 SETTABLEKS                       R21 R20 K56 ["onPressedOutside"]
      205 GETUPVAL                         R21 1
      206 GETTABLEKS                       R21 R21 K6 ["createElement"]
      208 MOVE                             R22 R9
      209 CALL                             R21 1 -1
      210 CALL                             R18 -1 1
      211 SETTABLEKS                       R18 R17 K48 ["Content"]
      213 CALL                             R14 3 1
      214 SETTABLEKS                       R14 R13 K13 ["DropdownPopover"]
      216 CALL                             R10 3 -1
      217 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Resources"]
       52 GETTABLEKS                       R9 R9 K16 ["StyleConstants"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K13 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Util"]
       61 GETTABLEKS                       R10 R10 K18 ["hasMatchingTerm"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K13 ["Src"]
       68 GETTABLEKS                       R11 R11 K19 ["Components"]
       70 GETTABLEKS                       R11 R11 K20 ["App"]
       72 GETTABLEKS                       R11 R11 K21 ["Dialogs"]
       74 GETTABLEKS                       R11 R11 K22 ["QuickShareDialog"]
       76 GETTABLEKS                       R11 R11 K23 ["ShareView"]
       78 GETTABLEKS                       R11 R11 K24 ["EntryRow"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K25 [PROTO_1]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R10
       85 DUPCLOSURE                       R12 K26 [PROTO_2]
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R13 K27 [PROTO_10]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 RETURN                           R13 1
