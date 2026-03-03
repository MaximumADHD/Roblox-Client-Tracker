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
       41 CALL                             R8 1 1
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R8
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R10 R11 K7 ["createElement"]
       54 GETUPVAL                         R11 5
       55 DUPTABLE                         R12 K10 [{"tag", "ref"}]
       56 LOADK                            R13 K11 ["size-full-0 auto-y"]
       57 SETTABLEKS                       R13 R12 K8 ["tag"]
       59 SETTABLEKS                       R4 R12 K9 ["ref"]
       61 DUPTABLE                         R13 K14 [{"Input", "DropdownPopover"}]
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R14 R15 K7 ["createElement"]
       65 GETUPVAL                         R15 8
       66 DUPTABLE                         R16 K26 [{"LayoutOrder", "label", "placeholder", "text", "iconTrailing", "onChanged", "onFocusGained", "width", "size", "isDisabled", "testId"}]
       67 GETTABLEKS                       R17 R0 K15 ["LayoutOrder"]
       69 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
       71 LOADK                            R17 K2 [""]
       72 SETTABLEKS                       R17 R16 K16 ["label"]
       74 LOADK                            R19 K27 ["QuickShare"]
       75 LOADK                            R20 K28 ["CollaboratorPlaceholder"]
       76 NAMECALL                         R17 R1 K29 ["getText"]
       78 CALL                             R17 3 1
       79 SETTABLEKS                       R17 R16 K17 ["placeholder"]
       81 SETTABLEKS                       R2 R16 K18 ["text"]
       83 LENGTH                           R18 R2
       84 LOADN                            R19 0
       85 JUMPIFNOTLT                      R19 R18 ; [+16]
       87 DUPTABLE                         R17 K32 [{"name", "onActivated"}]
       88 GETUPVAL                         R21 9
       89 GETTABLEKS                       R20 R21 K33 ["Enums"]
       91 GETTABLEKS                       R19 R20 K34 ["IconName"]
       93 GETTABLEKS                       R18 R19 K35 ["CircleX"]
       95 SETTABLEKS                       R18 R17 K30 ["name"]
       97 NEWCLOSURE                       R18 P3
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R18 R17 K31 ["onActivated"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R17
      103 SETTABLEKS                       R17 R16 K19 ["iconTrailing"]
      105 SETTABLEKS                       R3 R16 K20 ["onChanged"]
      107 NEWCLOSURE                       R17 P4
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R17 R16 K21 ["onFocusGained"]
      111 GETIMPORT                        R17 K38 [UDim.new]
      113 LOADN                            R18 1
      114 LOADN                            R19 0
      115 CALL                             R17 2 1
      116 SETTABLEKS                       R17 R16 K22 ["width"]
      118 GETUPVAL                         R20 9
      119 GETTABLEKS                       R19 R20 K33 ["Enums"]
      121 GETTABLEKS                       R18 R19 K39 ["InputSize"]
      123 GETTABLEKS                       R17 R18 K40 ["Small"]
      125 SETTABLEKS                       R17 R16 K23 ["size"]
      127 GETTABLEKS                       R17 R0 K24 ["isDisabled"]
      129 SETTABLEKS                       R17 R16 K24 ["isDisabled"]
      131 LOADK                            R17 K41 ["collaborators-dropdown"]
      132 SETTABLEKS                       R17 R16 K25 ["testId"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K12 ["Input"]
      137 GETUPVAL                         R15 1
      138 GETTABLEKS                       R14 R15 K7 ["createElement"]
      140 GETUPVAL                         R16 10
      141 GETTABLEKS                       R15 R16 K42 ["Root"]
      143 DUPTABLE                         R16 K44 [{"isOpen"}]
      144 SETTABLEKS                       R5 R16 K43 ["isOpen"]
      146 DUPTABLE                         R17 K47 [{"Anchor", "Content"}]
      147 GETUPVAL                         R19 1
      148 GETTABLEKS                       R18 R19 K7 ["createElement"]
      150 GETUPVAL                         R20 10
      151 GETTABLEKS                       R19 R20 K45 ["Anchor"]
      153 DUPTABLE                         R20 K49 [{"anchorRef"}]
      154 SETTABLEKS                       R4 R20 K48 ["anchorRef"]
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K45 ["Anchor"]
      159 GETUPVAL                         R19 1
      160 GETTABLEKS                       R18 R19 K7 ["createElement"]
      162 GETUPVAL                         R20 10
      163 GETTABLEKS                       R19 R20 K46 ["Content"]
      165 DUPTABLE                         R20 K55 [{"hasArrow", "radius", "side", "align", "onPressedOutside"}]
      166 LOADB                            R21 0
      167 SETTABLEKS                       R21 R20 K50 ["hasArrow"]
      169 GETUPVAL                         R24 9
      170 GETTABLEKS                       R23 R24 K33 ["Enums"]
      172 GETTABLEKS                       R22 R23 K56 ["Radius"]
      174 GETTABLEKS                       R21 R22 K57 ["Medium"]
      176 SETTABLEKS                       R21 R20 K51 ["radius"]
      178 GETUPVAL                         R24 9
      179 GETTABLEKS                       R23 R24 K33 ["Enums"]
      181 GETTABLEKS                       R22 R23 K58 ["PopoverSide"]
      183 GETTABLEKS                       R21 R22 K59 ["Bottom"]
      185 SETTABLEKS                       R21 R20 K52 ["side"]
      187 GETUPVAL                         R24 9
      188 GETTABLEKS                       R23 R24 K33 ["Enums"]
      190 GETTABLEKS                       R22 R23 K60 ["PopoverAlign"]
      192 GETTABLEKS                       R21 R22 K61 ["Center"]
      194 SETTABLEKS                       R21 R20 K53 ["align"]
      196 NEWCLOSURE                       R21 P5
      197 CAPTURE                          VAL R6
      198 SETTABLEKS                       R21 R20 K54 ["onPressedOutside"]
      200 GETUPVAL                         R22 1
      201 GETTABLEKS                       R21 R22 K7 ["createElement"]
      203 MOVE                             R22 R9
      204 CALL                             R21 1 -1
      205 CALL                             R18 -1 1
      206 SETTABLEKS                       R18 R17 K46 ["Content"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K13 ["DropdownPopover"]
      211 CALL                             R10 3 -1
      212 RETURN                           R10 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["ScrollView"]
       25 GETTABLEKS                       R5 R2 K11 ["TextInput"]
       27 GETTABLEKS                       R6 R2 K12 ["Popover"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R9 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["ContextServices"]
       38 GETTABLEKS                       R9 R8 K15 ["Localization"]
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R12 R0 K6 ["Packages"]
       44 GETTABLEKS                       R11 R12 K16 ["Dash"]
       46 CALL                             R10 1 1
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
       65 GETTABLEKS                       R17 R0 K17 ["Src"]
       67 GETTABLEKS                       R16 R17 K21 ["Dialogs"]
       69 GETTABLEKS                       R15 R16 K22 ["QuickShare"]
       71 GETTABLEKS                       R14 R15 K23 ["EntryRow"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R17 R0 K17 ["Src"]
       78 GETTABLEKS                       R16 R17 K24 ["Util"]
       80 GETTABLEKS                       R15 R16 K25 ["hasMatchingTerm"]
       82 CALL                             R14 1 1
       83 DUPCLOSURE                       R15 K26 [PROTO_1]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R13
       87 DUPCLOSURE                       R16 K27 [PROTO_2]
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R17 K28 [PROTO_10]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R6
      101 RETURN                           R17 1
