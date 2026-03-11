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
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R9 0 1
       43 GETTABLEKS                       R10 R2 K7 ["gameId"]
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R10 0 0
       56 CALL                             R8 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K8 ["useEffect"]
       60 NEWCLOSURE                       R10 P3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R11 0 2
       66 GETTABLEKS                       R12 R0 K9 ["Value"]
       68 GETTABLEKS                       R13 R0 K10 ["DefaultValue"]
       70 SETLIST                          R11 R12 2 [1]
       72 CALL                             R9 2 0
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R9 R10 K11 ["createNextOrder"]
       76 CALL                             R9 0 1
       77 GETUPVAL                         R12 6
       78 GETTABLEKS                       R11 R12 K12 ["Hooks"]
       80 GETTABLEKS                       R10 R11 K13 ["useTokens"]
       82 CALL                             R10 0 1
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R11 R12 K14 ["createElement"]
       86 GETUPVAL                         R13 6
       87 GETTABLEKS                       R12 R13 K15 ["View"]
       89 DUPTABLE                         R13 K18 [{"tag", "LayoutOrder"}]
       90 GETUPVAL                         R16 6
       91 GETTABLEKS                       R15 R16 K12 ["Hooks"]
       93 GETTABLEKS                       R14 R15 K19 ["useDefaultTags"]
       95 GETTABLEKS                       R15 R0 K20 ["tags"]
       97 LOADK                            R16 K21 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K16 ["tag"]
      101 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      103 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      105 DUPTABLE                         R14 K25 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
      106 GETUPVAL                         R16 0
      107 GETTABLEKS                       R15 R16 K14 ["createElement"]
      109 GETUPVAL                         R16 7
      110 DUPTABLE                         R17 K28 [{"tag", "LayoutOrder", "Text", "isDisabled"}]
      111 LOADK                            R18 K29 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
      112 SETTABLEKS                       R18 R17 K16 ["tag"]
      114 MOVE                             R18 R9
      115 CALL                             R18 0 1
      116 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      118 GETTABLEKS                       R18 R0 K30 ["Label"]
      120 SETTABLEKS                       R18 R17 K26 ["Text"]
      122 GETTABLEKS                       R18 R0 K31 ["IsReadOnly"]
      124 JUMPIF                           R18 ; [+4]
      125 GETTABLEKS                       R18 R0 K32 ["IsDisabled"]
      127 JUMPIF                           R18 ; [+1]
      128 LOADB                            R18 0
      129 SETTABLEKS                       R18 R17 K27 ["isDisabled"]
      131 CALL                             R15 2 1
      132 SETTABLEKS                       R15 R14 K22 ["CompositorNodeInputLabel"]
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R15 R16 K14 ["createElement"]
      137 GETUPVAL                         R16 8
      138 DUPTABLE                         R17 K34 [{"LayoutOrder", "IsParameterOverridden", "OnParameterOverrideRevert"}]
      139 MOVE                             R18 R9
      140 CALL                             R18 0 1
      141 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      143 GETTABLEKS                       R18 R0 K5 ["IsParameterOverridden"]
      145 SETTABLEKS                       R18 R17 K5 ["IsParameterOverridden"]
      147 GETTABLEKS                       R18 R0 K33 ["OnParameterOverrideRevert"]
      149 SETTABLEKS                       R18 R17 K33 ["OnParameterOverrideRevert"]
      151 GETUPVAL                         R19 0
      152 GETTABLEKS                       R18 R19 K14 ["createElement"]
      154 GETUPVAL                         R19 9
      155 DUPTABLE                         R20 K40 [{"isDisabled", "isPopoverOpen", "size", "text", "onActivated", "onPressedOutside"}]
      156 GETTABLEKS                       R21 R0 K41 ["IsParameterized"]
      158 JUMPIF                           R21 ; [+4]
      159 GETTABLEKS                       R21 R0 K31 ["IsReadOnly"]
      161 JUMPIF                           R21 ; [+1]
      162 LOADB                            R21 0
      163 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
      165 GETTABLEKS                       R21 R5 K42 ["enabled"]
      167 SETTABLEKS                       R21 R20 K35 ["isPopoverOpen"]
      169 GETIMPORT                        R21 K45 [UDim2.new]
      171 GETTABLEKS                       R22 R6 K46 ["Scale"]
      173 GETTABLEKS                       R23 R6 K47 ["Offset"]
      175 LOADN                            R24 0
      176 GETTABLEKS                       R26 R10 K48 ["Size"]
      178 GETTABLEKS                       R25 R26 K49 ["Size_500"]
      180 CALL                             R21 4 1
      181 SETTABLEKS                       R21 R20 K36 ["size"]
      183 SETTABLEKS                       R3 R20 K37 ["text"]
      185 GETTABLEKS                       R21 R5 K50 ["enable"]
      187 SETTABLEKS                       R21 R20 K38 ["onActivated"]
      189 GETTABLEKS                       R21 R5 K51 ["disable"]
      191 SETTABLEKS                       R21 R20 K39 ["onPressedOutside"]
      193 DUPTABLE                         R21 K53 [{"AssetPicker"}]
      194 GETUPVAL                         R23 0
      195 GETTABLEKS                       R22 R23 K14 ["createElement"]
      197 GETUPVAL                         R25 10
      198 GETTABLEKS                       R24 R25 K54 ["Components"]
      200 GETTABLEKS                       R23 R24 K52 ["AssetPicker"]
      202 DUPTABLE                         R24 K60 [{"assetType", "showNewButton", "onAssetSelected", "getGameIdAsync", "shareAccessToAssetsAsync"}]
      203 GETIMPORT                        R25 K64 [Enum.AssetType.Animation]
      205 SETTABLEKS                       R25 R24 K55 ["assetType"]
      207 LOADB                            R25 0
      208 SETTABLEKS                       R25 R24 K56 ["showNewButton"]
      210 SETTABLEKS                       R8 R24 K57 ["onAssetSelected"]
      212 SETTABLEKS                       R7 R24 K58 ["getGameIdAsync"]
      214 GETTABLEKS                       R25 R1 K59 ["shareAccessToAssetsAsync"]
      216 SETTABLEKS                       R25 R24 K59 ["shareAccessToAssetsAsync"]
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K52 ["AssetPicker"]
      221 CALL                             R18 3 -1
      222 CALL                             R15 -1 1
      223 SETTABLEKS                       R15 R14 K23 ["InputField"]
      225 GETUPVAL                         R16 0
      226 GETTABLEKS                       R15 R16 K14 ["createElement"]
      228 LOADK                            R16 K65 ["Folder"]
      229 NEWTABLE                         R17 0 0
      231 GETTABLEKS                       R18 R0 K66 ["children"]
      233 CALL                             R15 3 1
      234 SETTABLEKS                       R15 R14 K24 ["PinChildren"]
      236 CALL                             R11 3 -1
      237 RETURN                           R11 -1

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
       98 DUPCLOSURE                       R13 K24 [PROTO_5]
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
