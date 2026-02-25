PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gameId"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 LOADK                            R3 K1 ["rbxassetid://"]
        4 GETTABLEKS                       R5 R0 K2 ["assetId"]
        6 FASTCALL1                        TOSTRING R5 ; [+2]
        7 GETIMPORT                        R4 K4 [tostring]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K5 ["disable"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["DefaultValue"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["safeGetProductInfoAsync"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R3 R1 K3 ["Name"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["useToggleState"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R0 K5 ["IsParameterOverridden"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R8 0 1
       36 GETTABLEKS                       R9 R1 K7 ["gameId"]
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R9 0 0
       49 CALL                             R7 2 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K8 ["useEffect"]
       53 NEWCLOSURE                       R9 P3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R10 0 2
       59 GETTABLEKS                       R11 R0 K9 ["Value"]
       61 GETTABLEKS                       R12 R0 K10 ["DefaultValue"]
       63 SETLIST                          R10 R11 2 [1]
       65 CALL                             R8 2 0
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R8 R9 K11 ["createNextOrder"]
       69 CALL                             R8 0 1
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R10 R11 K12 ["Hooks"]
       73 GETTABLEKS                       R9 R10 K13 ["useTokens"]
       75 CALL                             R9 0 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R10 R11 K14 ["createElement"]
       79 GETUPVAL                         R12 5
       80 GETTABLEKS                       R11 R12 K15 ["View"]
       82 DUPTABLE                         R12 K18 [{"tag", "LayoutOrder"}]
       83 LOADK                            R13 K19 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       84 SETTABLEKS                       R13 R12 K16 ["tag"]
       86 GETTABLEKS                       R13 R0 K17 ["LayoutOrder"]
       88 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       90 DUPTABLE                         R13 K23 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K14 ["createElement"]
       94 GETUPVAL                         R15 6
       95 DUPTABLE                         R16 K26 [{"tag", "LayoutOrder", "Text", "isDisabled"}]
       96 LOADK                            R17 K27 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       97 SETTABLEKS                       R17 R16 K16 ["tag"]
       99 MOVE                             R17 R8
      100 CALL                             R17 0 1
      101 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      103 GETTABLEKS                       R17 R0 K28 ["Label"]
      105 SETTABLEKS                       R17 R16 K24 ["Text"]
      107 GETTABLEKS                       R17 R0 K29 ["IsReadOnly"]
      109 SETTABLEKS                       R17 R16 K25 ["isDisabled"]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K20 ["CompositorNodeInputLabel"]
      114 GETUPVAL                         R15 0
      115 GETTABLEKS                       R14 R15 K14 ["createElement"]
      117 GETUPVAL                         R15 7
      118 DUPTABLE                         R16 K31 [{"LayoutOrder", "IsParameterOverridden", "OnParameterOverrideRevert"}]
      119 MOVE                             R17 R8
      120 CALL                             R17 0 1
      121 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      123 GETTABLEKS                       R17 R0 K5 ["IsParameterOverridden"]
      125 SETTABLEKS                       R17 R16 K5 ["IsParameterOverridden"]
      127 GETTABLEKS                       R17 R0 K30 ["OnParameterOverrideRevert"]
      129 SETTABLEKS                       R17 R16 K30 ["OnParameterOverrideRevert"]
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R17 R18 K14 ["createElement"]
      134 GETUPVAL                         R18 8
      135 DUPTABLE                         R19 K37 [{"isDisabled", "isPopoverOpen", "size", "text", "onActivated", "onPressedOutside"}]
      136 GETTABLEKS                       R20 R0 K38 ["IsParameterized"]
      138 JUMPIF                           R20 ; [+4]
      139 GETTABLEKS                       R20 R0 K29 ["IsReadOnly"]
      141 JUMPIF                           R20 ; [+1]
      142 LOADB                            R20 0
      143 SETTABLEKS                       R20 R19 K25 ["isDisabled"]
      145 GETTABLEKS                       R20 R4 K39 ["enabled"]
      147 SETTABLEKS                       R20 R19 K32 ["isPopoverOpen"]
      149 GETIMPORT                        R20 K42 [UDim2.new]
      151 GETTABLEKS                       R21 R5 K43 ["Scale"]
      153 GETTABLEKS                       R22 R5 K44 ["Offset"]
      155 LOADN                            R23 0
      156 GETTABLEKS                       R25 R9 K45 ["Size"]
      158 GETTABLEKS                       R24 R25 K46 ["Size_500"]
      160 CALL                             R20 4 1
      161 SETTABLEKS                       R20 R19 K33 ["size"]
      163 SETTABLEKS                       R2 R19 K34 ["text"]
      165 GETTABLEKS                       R20 R4 K47 ["enable"]
      167 SETTABLEKS                       R20 R19 K35 ["onActivated"]
      169 GETTABLEKS                       R20 R4 K48 ["disable"]
      171 SETTABLEKS                       R20 R19 K36 ["onPressedOutside"]
      173 DUPTABLE                         R20 K50 [{"AssetPicker"}]
      174 GETUPVAL                         R22 0
      175 GETTABLEKS                       R21 R22 K14 ["createElement"]
      177 GETUPVAL                         R24 9
      178 GETTABLEKS                       R23 R24 K51 ["Components"]
      180 GETTABLEKS                       R22 R23 K49 ["AssetPicker"]
      182 DUPTABLE                         R23 K55 [{"assetType", "getGameIdAsync", "onAssetSelected"}]
      183 GETIMPORT                        R24 K59 [Enum.AssetType.Animation]
      185 SETTABLEKS                       R24 R23 K52 ["assetType"]
      187 SETTABLEKS                       R6 R23 K53 ["getGameIdAsync"]
      189 SETTABLEKS                       R7 R23 K54 ["onAssetSelected"]
      191 CALL                             R21 2 1
      192 SETTABLEKS                       R21 R20 K49 ["AssetPicker"]
      194 CALL                             R17 3 -1
      195 CALL                             R14 -1 1
      196 SETTABLEKS                       R14 R13 K21 ["InputField"]
      198 GETUPVAL                         R15 0
      199 GETTABLEKS                       R14 R15 K14 ["createElement"]
      201 LOADK                            R15 K60 ["Folder"]
      202 NEWTABLE                         R16 0 0
      204 GETTABLEKS                       R17 R0 K61 ["children"]
      206 CALL                             R14 3 1
      207 SETTABLEKS                       R14 R13 K22 ["PinChildren"]
      209 CALL                             R10 3 -1
      210 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["Nodes"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetUtils"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       27 GETTABLEKS                       R5 R6 K12 ["GameContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R9 R0 K13 ["Components"]
       34 GETTABLEKS                       R8 R9 K14 ["NodeView"]
       36 GETTABLEKS                       R7 R8 K15 ["CompositorNodeProperty"]
       38 GETTABLEKS                       R6 R7 K16 ["InputPropertyField"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R11 R0 K13 ["Components"]
       45 GETTABLEKS                       R10 R11 K14 ["NodeView"]
       47 GETTABLEKS                       R9 R10 K15 ["CompositorNodeProperty"]
       49 GETTABLEKS                       R8 R9 K7 ["Util"]
       51 GETTABLEKS                       R7 R8 K17 ["PopoverDropdown"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETTABLEKS                       R8 R1 K18 ["Properties"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R12 R0 K13 ["Components"]
       63 GETTABLEKS                       R11 R12 K14 ["NodeView"]
       65 GETTABLEKS                       R10 R11 K15 ["CompositorNodeProperty"]
       67 GETTABLEKS                       R9 R10 K19 ["PropertyConstants"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R13 R0 K13 ["Components"]
       74 GETTABLEKS                       R12 R13 K14 ["NodeView"]
       76 GETTABLEKS                       R11 R12 K15 ["CompositorNodeProperty"]
       78 GETTABLEKS                       R10 R11 K20 ["PropertyLabel"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K6 [require]
       83 GETTABLEKS                       R11 R1 K21 ["React"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R12 R1 K22 ["ReactUtils"]
       90 CALL                             R11 1 1
       91 DUPCLOSURE                       R12 K23 [PROTO_5]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R7
      102 RETURN                           R12 1
