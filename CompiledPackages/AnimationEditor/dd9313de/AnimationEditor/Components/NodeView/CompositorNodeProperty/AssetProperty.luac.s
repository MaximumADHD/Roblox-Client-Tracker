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

PROTO_2:
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

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K3 ["useToggleState"]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R8 0 1
       31 GETTABLEKS                       R9 R0 K5 ["IsParameterOverridden"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R9 0 0
       44 CALL                             R7 2 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K7 ["useEffect"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R10 0 2
       54 GETTABLEKS                       R11 R0 K8 ["Value"]
       56 GETTABLEKS                       R12 R0 K9 ["DefaultValue"]
       58 SETLIST                          R10 R11 2 [1]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R8 R9 K10 ["createNextOrder"]
       64 CALL                             R8 0 1
       65 GETUPVAL                         R11 6
       66 GETTABLEKS                       R10 R11 K11 ["Hooks"]
       68 GETTABLEKS                       R9 R10 K12 ["useTokens"]
       70 CALL                             R9 0 1
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R10 R11 K13 ["createElement"]
       74 GETUPVAL                         R12 6
       75 GETTABLEKS                       R11 R12 K14 ["View"]
       77 DUPTABLE                         R12 K17 [{"tag", "LayoutOrder"}]
       78 GETUPVAL                         R15 6
       79 GETTABLEKS                       R14 R15 K11 ["Hooks"]
       81 GETTABLEKS                       R13 R14 K18 ["useDefaultTags"]
       83 GETTABLEKS                       R14 R0 K19 ["tags"]
       85 LOADK                            R15 K20 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K15 ["tag"]
       89 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
       91 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
       93 DUPTABLE                         R13 K24 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R14 R15 K13 ["createElement"]
       97 GETUPVAL                         R15 7
       98 DUPTABLE                         R16 K27 [{"tag", "LayoutOrder", "Text", "isDisabled"}]
       99 LOADK                            R17 K28 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
      100 SETTABLEKS                       R17 R16 K15 ["tag"]
      102 MOVE                             R17 R8
      103 CALL                             R17 0 1
      104 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      106 GETTABLEKS                       R17 R0 K29 ["Label"]
      108 SETTABLEKS                       R17 R16 K25 ["Text"]
      110 GETTABLEKS                       R17 R0 K30 ["IsReadOnly"]
      112 JUMPIF                           R17 ; [+4]
      113 GETTABLEKS                       R17 R0 K31 ["IsDisabled"]
      115 JUMPIF                           R17 ; [+1]
      116 LOADB                            R17 0
      117 SETTABLEKS                       R17 R16 K26 ["isDisabled"]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K21 ["CompositorNodeInputLabel"]
      122 GETUPVAL                         R15 0
      123 GETTABLEKS                       R14 R15 K13 ["createElement"]
      125 GETUPVAL                         R15 8
      126 DUPTABLE                         R16 K33 [{"LayoutOrder", "IsParameterOverridden", "OnParameterOverrideRevert"}]
      127 MOVE                             R17 R8
      128 CALL                             R17 0 1
      129 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      131 GETTABLEKS                       R17 R0 K5 ["IsParameterOverridden"]
      133 SETTABLEKS                       R17 R16 K5 ["IsParameterOverridden"]
      135 GETTABLEKS                       R17 R0 K32 ["OnParameterOverrideRevert"]
      137 SETTABLEKS                       R17 R16 K32 ["OnParameterOverrideRevert"]
      139 GETUPVAL                         R18 0
      140 GETTABLEKS                       R17 R18 K13 ["createElement"]
      142 GETUPVAL                         R18 9
      143 DUPTABLE                         R19 K39 [{"isDisabled", "isPopoverOpen", "size", "text", "onActivated", "onPressedOutside"}]
      144 GETTABLEKS                       R20 R0 K40 ["IsParameterized"]
      146 JUMPIF                           R20 ; [+4]
      147 GETTABLEKS                       R20 R0 K30 ["IsReadOnly"]
      149 JUMPIF                           R20 ; [+1]
      150 LOADB                            R20 0
      151 SETTABLEKS                       R20 R19 K26 ["isDisabled"]
      153 GETTABLEKS                       R20 R5 K41 ["enabled"]
      155 SETTABLEKS                       R20 R19 K34 ["isPopoverOpen"]
      157 GETIMPORT                        R20 K44 [UDim2.new]
      159 GETTABLEKS                       R21 R6 K45 ["Scale"]
      161 GETTABLEKS                       R22 R6 K46 ["Offset"]
      163 LOADN                            R23 0
      164 GETTABLEKS                       R25 R9 K47 ["Size"]
      166 GETTABLEKS                       R24 R25 K48 ["Size_500"]
      168 CALL                             R20 4 1
      169 SETTABLEKS                       R20 R19 K35 ["size"]
      171 SETTABLEKS                       R3 R19 K36 ["text"]
      173 GETTABLEKS                       R20 R5 K49 ["enable"]
      175 SETTABLEKS                       R20 R19 K37 ["onActivated"]
      177 GETTABLEKS                       R20 R5 K50 ["disable"]
      179 SETTABLEKS                       R20 R19 K38 ["onPressedOutside"]
      181 DUPTABLE                         R20 K52 [{"AssetPicker"}]
      182 GETUPVAL                         R22 0
      183 GETTABLEKS                       R21 R22 K13 ["createElement"]
      185 GETUPVAL                         R24 10
      186 GETTABLEKS                       R23 R24 K53 ["Components"]
      188 GETTABLEKS                       R22 R23 K51 ["AssetPicker"]
      190 DUPTABLE                         R23 K59 [{"assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
      191 GETIMPORT                        R24 K63 [Enum.AssetType.Animation]
      193 SETTABLEKS                       R24 R23 K54 ["assetType"]
      195 GETTABLEKS                       R24 R2 K55 ["gameId"]
      197 SETTABLEKS                       R24 R23 K55 ["gameId"]
      199 LOADB                            R24 0
      200 SETTABLEKS                       R24 R23 K56 ["showNewButton"]
      202 SETTABLEKS                       R7 R23 K57 ["onAssetSelected"]
      204 GETTABLEKS                       R24 R1 K58 ["shareAccessToAssetsAsync"]
      206 SETTABLEKS                       R24 R23 K58 ["shareAccessToAssetsAsync"]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K51 ["AssetPicker"]
      211 CALL                             R17 3 -1
      212 CALL                             R14 -1 1
      213 SETTABLEKS                       R14 R13 K22 ["InputField"]
      215 GETUPVAL                         R15 0
      216 GETTABLEKS                       R14 R15 K13 ["createElement"]
      218 LOADK                            R15 K64 ["Folder"]
      219 NEWTABLE                         R16 0 0
      221 GETTABLEKS                       R17 R0 K65 ["children"]
      223 CALL                             R14 3 1
      224 SETTABLEKS                       R14 R13 K23 ["PinChildren"]
      226 CALL                             R10 3 -1
      227 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R4 K8 ["AssetAccessContext"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Util"]
       20 GETTABLEKS                       R5 R6 K10 ["Nodes"]
       22 GETTABLEKS                       R4 R5 K11 ["AssetUtils"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K7 ["Contexts"]
       34 GETTABLEKS                       R6 R7 K13 ["GameContext"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R10 R0 K14 ["Components"]
       41 GETTABLEKS                       R9 R10 K15 ["NodeView"]
       43 GETTABLEKS                       R8 R9 K16 ["CompositorNodeProperty"]
       45 GETTABLEKS                       R7 R8 K17 ["InputPropertyField"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R12 R0 K14 ["Components"]
       52 GETTABLEKS                       R11 R12 K15 ["NodeView"]
       54 GETTABLEKS                       R10 R11 K16 ["CompositorNodeProperty"]
       56 GETTABLEKS                       R9 R10 K9 ["Util"]
       58 GETTABLEKS                       R8 R9 K18 ["PopoverDropdown"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R1 K19 ["Properties"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R13 R0 K14 ["Components"]
       70 GETTABLEKS                       R12 R13 K15 ["NodeView"]
       72 GETTABLEKS                       R11 R12 K16 ["CompositorNodeProperty"]
       74 GETTABLEKS                       R10 R11 K20 ["PropertyConstants"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R14 R0 K14 ["Components"]
       81 GETTABLEKS                       R13 R14 K15 ["NodeView"]
       83 GETTABLEKS                       R12 R13 K16 ["CompositorNodeProperty"]
       85 GETTABLEKS                       R11 R12 K21 ["PropertyLabel"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K6 [require]
       90 GETTABLEKS                       R12 R1 K22 ["React"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K6 [require]
       95 GETTABLEKS                       R13 R1 K23 ["ReactUtils"]
       97 CALL                             R12 1 1
       98 DUPCLOSURE                       R13 K24 [PROTO_4]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 RETURN                           R13 1
