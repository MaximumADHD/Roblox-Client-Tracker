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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["View"]
        8 DUPTABLE                         R4 K5 [{"onActivated", "tag"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       14 LOADK                            R5 K6 ["size-full-0 auto-y radius-small"]
       15 SETTABLEKS                       R5 R4 K4 ["tag"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["createElement"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ScrollView"]
        6 DUPTABLE                         R2 K6 [{"Size", "tag", "layout", "scroll"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K7 ["QuickShareDropdownSize"]
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
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["createElement"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K25 ["View"]
       46 DUPTABLE                         R5 K26 [{"tag"}]
       47 LOADK                            R6 K27 ["col size-full-0 auto-y gap-xxsmall"]
       48 SETTABLEKS                       R6 R5 K3 ["tag"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R6 R7 K28 ["map"]
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
       58 CAPTURE                          VAL R7
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R8
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K8 ["createElement"]
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R11 R12 K9 ["View"]
       67 DUPTABLE                         R12 K12 [{"tag", "ref"}]
       68 LOADK                            R13 K13 ["size-full-0 auto-y"]
       69 SETTABLEKS                       R13 R12 K10 ["tag"]
       71 SETTABLEKS                       R4 R12 K11 ["ref"]
       73 DUPTABLE                         R13 K16 [{"Input", "DropdownPopover"}]
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R14 R15 K8 ["createElement"]
       77 GETUPVAL                         R16 4
       78 GETTABLEKS                       R15 R16 K17 ["TextInput"]
       80 DUPTABLE                         R16 K29 [{"LayoutOrder", "label", "placeholder", "text", "iconTrailing", "onChanged", "onFocusGained", "width", "size", "isDisabled", "testId"}]
       81 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
       83 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
       85 LOADK                            R17 K2 [""]
       86 SETTABLEKS                       R17 R16 K19 ["label"]
       88 LOADK                            R19 K30 ["QuickShare"]
       89 LOADK                            R20 K31 ["CollaboratorPlaceholder"]
       90 NAMECALL                         R17 R1 K32 ["getText"]
       92 CALL                             R17 3 1
       93 SETTABLEKS                       R17 R16 K20 ["placeholder"]
       95 SETTABLEKS                       R2 R16 K21 ["text"]
       97 LENGTH                           R18 R2
       98 LOADN                            R19 0
       99 JUMPIFNOTLT                      R19 R18 ; [+16]
      101 DUPTABLE                         R17 K34 [{"name", "onActivated"}]
      102 GETUPVAL                         R21 4
      103 GETTABLEKS                       R20 R21 K35 ["Enums"]
      105 GETTABLEKS                       R19 R20 K36 ["IconName"]
      107 GETTABLEKS                       R18 R19 K37 ["CircleX"]
      109 SETTABLEKS                       R18 R17 K33 ["name"]
      111 NEWCLOSURE                       R18 P3
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R18 R17 K7 ["onActivated"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R17
      117 SETTABLEKS                       R17 R16 K22 ["iconTrailing"]
      119 SETTABLEKS                       R3 R16 K23 ["onChanged"]
      121 NEWCLOSURE                       R17 P4
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R17 R16 K24 ["onFocusGained"]
      125 GETIMPORT                        R17 K40 [UDim.new]
      127 LOADN                            R18 1
      128 LOADN                            R19 0
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K25 ["width"]
      132 GETUPVAL                         R20 4
      133 GETTABLEKS                       R19 R20 K35 ["Enums"]
      135 GETTABLEKS                       R18 R19 K41 ["InputSize"]
      137 GETTABLEKS                       R17 R18 K42 ["Small"]
      139 SETTABLEKS                       R17 R16 K26 ["size"]
      141 GETTABLEKS                       R17 R0 K27 ["isDisabled"]
      143 SETTABLEKS                       R17 R16 K27 ["isDisabled"]
      145 LOADK                            R17 K43 ["collaborators-dropdown"]
      146 SETTABLEKS                       R17 R16 K28 ["testId"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K14 ["Input"]
      151 GETUPVAL                         R15 1
      152 GETTABLEKS                       R14 R15 K8 ["createElement"]
      154 GETUPVAL                         R17 4
      155 GETTABLEKS                       R16 R17 K44 ["Popover"]
      157 GETTABLEKS                       R15 R16 K45 ["Root"]
      159 DUPTABLE                         R16 K47 [{"isOpen"}]
      160 SETTABLEKS                       R5 R16 K46 ["isOpen"]
      162 DUPTABLE                         R17 K50 [{"Anchor", "Content"}]
      163 GETUPVAL                         R19 1
      164 GETTABLEKS                       R18 R19 K8 ["createElement"]
      166 GETUPVAL                         R21 4
      167 GETTABLEKS                       R20 R21 K44 ["Popover"]
      169 GETTABLEKS                       R19 R20 K48 ["Anchor"]
      171 DUPTABLE                         R20 K52 [{"anchorRef"}]
      172 SETTABLEKS                       R4 R20 K51 ["anchorRef"]
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K48 ["Anchor"]
      177 GETUPVAL                         R19 1
      178 GETTABLEKS                       R18 R19 K8 ["createElement"]
      180 GETUPVAL                         R21 4
      181 GETTABLEKS                       R20 R21 K44 ["Popover"]
      183 GETTABLEKS                       R19 R20 K49 ["Content"]
      185 DUPTABLE                         R20 K58 [{"hasArrow", "radius", "side", "align", "onPressedOutside"}]
      186 LOADB                            R21 0
      187 SETTABLEKS                       R21 R20 K53 ["hasArrow"]
      189 GETUPVAL                         R24 4
      190 GETTABLEKS                       R23 R24 K35 ["Enums"]
      192 GETTABLEKS                       R22 R23 K59 ["Radius"]
      194 GETTABLEKS                       R21 R22 K60 ["Medium"]
      196 SETTABLEKS                       R21 R20 K54 ["radius"]
      198 GETUPVAL                         R24 4
      199 GETTABLEKS                       R23 R24 K35 ["Enums"]
      201 GETTABLEKS                       R22 R23 K61 ["PopoverSide"]
      203 GETTABLEKS                       R21 R22 K62 ["Bottom"]
      205 SETTABLEKS                       R21 R20 K55 ["side"]
      207 GETUPVAL                         R24 4
      208 GETTABLEKS                       R23 R24 K35 ["Enums"]
      210 GETTABLEKS                       R22 R23 K63 ["PopoverAlign"]
      212 GETTABLEKS                       R21 R22 K64 ["Center"]
      214 SETTABLEKS                       R21 R20 K56 ["align"]
      216 NEWCLOSURE                       R21 P5
      217 CAPTURE                          VAL R6
      218 SETTABLEKS                       R21 R20 K57 ["onPressedOutside"]
      220 GETUPVAL                         R22 1
      221 GETTABLEKS                       R21 R22 K8 ["createElement"]
      223 MOVE                             R22 R9
      224 CALL                             R21 1 -1
      225 CALL                             R18 -1 1
      226 SETTABLEKS                       R18 R17 K49 ["Content"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K15 ["DropdownPopover"]
      231 CALL                             R10 3 -1
      232 RETURN                           R10 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R11 R0 K13 ["Src"]
       50 GETTABLEKS                       R10 R11 K15 ["Resources"]
       52 GETTABLEKS                       R9 R10 K16 ["StyleConstants"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R12 R0 K13 ["Src"]
       59 GETTABLEKS                       R11 R12 K17 ["Util"]
       61 GETTABLEKS                       R10 R11 K18 ["hasMatchingTerm"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R17 R0 K13 ["Src"]
       68 GETTABLEKS                       R16 R17 K19 ["Components"]
       70 GETTABLEKS                       R15 R16 K20 ["App"]
       72 GETTABLEKS                       R14 R15 K21 ["Dialogs"]
       74 GETTABLEKS                       R13 R14 K22 ["QuickShareDialog"]
       76 GETTABLEKS                       R12 R13 K23 ["ShareView"]
       78 GETTABLEKS                       R11 R12 K24 ["EntryRow"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K13 ["Src"]
       85 GETTABLEKS                       R13 R14 K25 ["Flags"]
       87 GETTABLEKS                       R12 R13 K26 ["getFFlagAmrMiscCallbackFixes"]
       89 CALL                             R11 1 1
       90 DUPCLOSURE                       R12 K27 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R10
       94 DUPCLOSURE                       R13 K28 [PROTO_2]
       95 CAPTURE                          VAL R9
       96 DUPCLOSURE                       R14 K29 [PROTO_10]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R12
      105 RETURN                           R14 1
