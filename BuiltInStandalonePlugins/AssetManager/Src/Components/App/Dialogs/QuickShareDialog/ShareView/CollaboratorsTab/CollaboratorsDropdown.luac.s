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
        8 DUPTABLE                         R4 K6 [{["onActivated"], ["tag"] = "size-full-0 auto-y radius-small"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K1 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K10 [{"Id", "Uri", "Text"}]
       19 GETTABLEKS                       R8 R1 K7 ["Id"]
       21 SETTABLEKS                       R8 R7 K7 ["Id"]
       23 GETTABLEKS                       R8 R1 K8 ["Uri"]
       25 SETTABLEKS                       R8 R7 K8 ["Uri"]
       27 GETTABLEKS                       R8 R1 K11 ["Name"]
       29 SETTABLEKS                       R8 R7 K9 ["Text"]
       31 CALL                             R5 2 -1
       32 CALL                             R2 -1 -1
       33 RETURN                           R2 -1

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
        6 DUPTABLE                         R2 K7 [{["Size"], ["tag"] = "padding-xsmall stroke-default radius-medium", ["layout"], ["scroll"]}]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K8 ["QuickShareDropdownSize"]
       10 SETTABLEKS                       R3 R2 K2 ["Size"]
       12 DUPTABLE                         R3 K10 [{"FillDirection"}]
       13 GETIMPORT                        R4 K13 [Enum.FillDirection.Vertical]
       15 SETTABLEKS                       R4 R3 K9 ["FillDirection"]
       17 SETTABLEKS                       R3 R2 K5 ["layout"]
       19 DUPTABLE                         R3 K17 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       20 GETIMPORT                        R4 K20 [Enum.AutomaticSize.Y]
       22 SETTABLEKS                       R4 R3 K14 ["AutomaticCanvasSize"]
       24 GETIMPORT                        R4 K23 [UDim2.fromOffset]
       26 LOADN                            R5 0
       27 LOADN                            R6 0
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K15 ["CanvasSize"]
       31 GETIMPORT                        R4 K24 [Enum.ScrollingDirection.Y]
       33 SETTABLEKS                       R4 R3 K16 ["ScrollingDirection"]
       35 SETTABLEKS                       R3 R2 K6 ["scroll"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K0 ["createElement"]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K25 ["View"]
       43 DUPTABLE                         R5 K27 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K28 ["map"]
       47 GETUPVAL                         R7 4
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CALL                             R6 2 -1
       53 CALL                             R3 -1 -1
       54 CALL                             R0 -1 -1
       55 RETURN                           R0 -1

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
       52 DUPTABLE                         R12 K11 [{["tag"] = "size-full-0 auto-y", ["ref"]}]
       53 SETTABLEKS                       R4 R12 K10 ["ref"]
       55 DUPTABLE                         R13 K14 [{"Input", "DropdownPopover"}]
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K6 ["createElement"]
       59 GETUPVAL                         R15 3
       60 GETTABLEKS                       R15 R15 K15 ["TextInput"]
       62 DUPTABLE                         R16 K28 [{["LayoutOrder"], ["label"] = "", ["placeholder"], ["text"], ["iconTrailing"], ["onChanged"], ["onFocusGained"], ["width"], ["size"], ["isDisabled"], ["testId"] = "collaborators-dropdown"}]
       63 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
       65 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
       67 LOADK                            R19 K29 ["QuickShare"]
       68 LOADK                            R20 K30 ["CollaboratorPlaceholder"]
       69 NAMECALL                         R17 R1 K31 ["getText"]
       71 CALL                             R17 3 1
       72 SETTABLEKS                       R17 R16 K18 ["placeholder"]
       74 SETTABLEKS                       R2 R16 K19 ["text"]
       76 LENGTH                           R18 R2
       77 LOADN                            R19 0
       78 JUMPIFNOTLT                      R19 R18 ; [+16]
       80 DUPTABLE                         R17 K34 [{"name", "onActivated"}]
       81 GETUPVAL                         R18 3
       82 GETTABLEKS                       R18 R18 K35 ["Enums"]
       84 GETTABLEKS                       R18 R18 K36 ["IconName"]
       86 GETTABLEKS                       R18 R18 K37 ["CircleX"]
       88 SETTABLEKS                       R18 R17 K32 ["name"]
       90 NEWCLOSURE                       R18 P3
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R18 R17 K33 ["onActivated"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R17
       96 SETTABLEKS                       R17 R16 K20 ["iconTrailing"]
       98 SETTABLEKS                       R3 R16 K21 ["onChanged"]
      100 NEWCLOSURE                       R17 P4
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R17 R16 K22 ["onFocusGained"]
      104 GETIMPORT                        R17 K40 [UDim.new]
      106 LOADN                            R18 1
      107 LOADN                            R19 0
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K23 ["width"]
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R17 R17 K35 ["Enums"]
      114 GETTABLEKS                       R17 R17 K41 ["InputSize"]
      116 GETTABLEKS                       R17 R17 K42 ["Small"]
      118 SETTABLEKS                       R17 R16 K24 ["size"]
      120 GETTABLEKS                       R17 R0 K25 ["isDisabled"]
      122 SETTABLEKS                       R17 R16 K25 ["isDisabled"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K12 ["Input"]
      127 GETUPVAL                         R14 1
      128 GETTABLEKS                       R14 R14 K6 ["createElement"]
      130 GETUPVAL                         R15 3
      131 GETTABLEKS                       R15 R15 K43 ["Popover"]
      133 GETTABLEKS                       R15 R15 K44 ["Root"]
      135 DUPTABLE                         R16 K46 [{"isOpen"}]
      136 SETTABLEKS                       R5 R16 K45 ["isOpen"]
      138 DUPTABLE                         R17 K49 [{"Anchor", "Content"}]
      139 GETUPVAL                         R18 1
      140 GETTABLEKS                       R18 R18 K6 ["createElement"]
      142 GETUPVAL                         R19 3
      143 GETTABLEKS                       R19 R19 K43 ["Popover"]
      145 GETTABLEKS                       R19 R19 K47 ["Anchor"]
      147 DUPTABLE                         R20 K51 [{"anchorRef"}]
      148 SETTABLEKS                       R4 R20 K50 ["anchorRef"]
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K47 ["Anchor"]
      153 GETUPVAL                         R18 1
      154 GETTABLEKS                       R18 R18 K6 ["createElement"]
      156 GETUPVAL                         R19 3
      157 GETTABLEKS                       R19 R19 K43 ["Popover"]
      159 GETTABLEKS                       R19 R19 K48 ["Content"]
      161 DUPTABLE                         R20 K58 [{["hasArrow"] = False, ["radius"], ["side"], ["align"], ["onPressedOutside"]}]
      162 GETUPVAL                         R21 3
      163 GETTABLEKS                       R21 R21 K35 ["Enums"]
      165 GETTABLEKS                       R21 R21 K59 ["Radius"]
      167 GETTABLEKS                       R21 R21 K60 ["Medium"]
      169 SETTABLEKS                       R21 R20 K54 ["radius"]
      171 GETUPVAL                         R21 3
      172 GETTABLEKS                       R21 R21 K35 ["Enums"]
      174 GETTABLEKS                       R21 R21 K61 ["PopoverSide"]
      176 GETTABLEKS                       R21 R21 K62 ["Bottom"]
      178 SETTABLEKS                       R21 R20 K55 ["side"]
      180 GETUPVAL                         R21 3
      181 GETTABLEKS                       R21 R21 K35 ["Enums"]
      183 GETTABLEKS                       R21 R21 K63 ["PopoverAlign"]
      185 GETTABLEKS                       R21 R21 K64 ["Center"]
      187 SETTABLEKS                       R21 R20 K56 ["align"]
      189 NEWCLOSURE                       R21 P5
      190 CAPTURE                          VAL R6
      191 SETTABLEKS                       R21 R20 K57 ["onPressedOutside"]
      193 GETUPVAL                         R21 1
      194 GETTABLEKS                       R21 R21 K6 ["createElement"]
      196 MOVE                             R22 R9
      197 CALL                             R21 1 -1
      198 CALL                             R18 -1 1
      199 SETTABLEKS                       R18 R17 K48 ["Content"]
      201 CALL                             R14 3 1
      202 SETTABLEKS                       R14 R13 K13 ["DropdownPopover"]
      204 CALL                             R10 3 -1
      205 RETURN                           R10 -1

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
