PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+13]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 LOADK                            R3 K1 ["rbxassetid://"]
        9 GETTABLEKS                       R5 R0 K2 ["assetId"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K4 [tostring]
       14 CALL                             R4 1 1
       15 CONCAT                           R2 R3 R4
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["disable"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K2 ["Value"]
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R4 R0 K3 ["DefaultValue"]
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K4 ["useAsync"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R4
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K5 ["useToggleState"]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U5
       48 NEWTABLE                         R9 0 1
       50 GETTABLEKS                       R10 R0 K7 ["IsParameterOverridden"]
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R10 0 1
       63 GETTABLEKS                       R11 R0 K9 ["OnChanged"]
       65 SETLIST                          R10 R11 1 [1]
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R9 R9 K10 ["createNextOrder"]
       71 CALL                             R9 0 1
       72 GETUPVAL                         R10 6
       73 GETTABLEKS                       R10 R10 K11 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K12 ["useTokens"]
       77 CALL                             R10 0 1
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K13 ["createElement"]
       81 GETUPVAL                         R12 6
       82 GETTABLEKS                       R12 R12 K14 ["View"]
       84 DUPTABLE                         R13 K18 [{"tag", "LayoutOrder", "testId"}]
       85 GETUPVAL                         R14 6
       86 GETTABLEKS                       R14 R14 K11 ["Hooks"]
       88 GETTABLEKS                       R14 R14 K19 ["useDefaultTags"]
       90 GETTABLEKS                       R15 R0 K20 ["tags"]
       92 GETUPVAL                         R17 7
       93 CALL                             R17 0 1
       94 JUMPIFNOT                        R17 ; [+2]
       95 LOADK                            R16 K21 ["row auto-y gap-small size-full-700 align-y-center"]
       96 JUMP                             ; [+1]
       97 LOADK                            R16 K22 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K15 ["tag"]
      101 GETTABLEKS                       R14 R0 K16 ["LayoutOrder"]
      103 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
      105 GETTABLEKS                       R14 R0 K17 ["testId"]
      107 SETTABLEKS                       R14 R13 K17 ["testId"]
      109 DUPTABLE                         R14 K26 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R15 R15 K13 ["createElement"]
      113 GETUPVAL                         R16 8
      114 DUPTABLE                         R17 K29 [{"tag", "LayoutOrder", "Text", "isDisabled"}]
      115 NEWTABLE                         R18 4 0
      117 LOADB                            R19 1
      118 SETTABLEKS                       R19 R18 K30 ["fill text-body-small text-align-x-left text-truncate-split"]
      120 GETUPVAL                         R19 7
      121 CALL                             R19 0 1
      122 SETTABLEKS                       R19 R18 K31 ["auto-y"]
      124 GETUPVAL                         R20 7
      125 CALL                             R20 0 1
      126 NOT                              R19 R20
      127 SETTABLEKS                       R19 R18 K32 ["auto-xy"]
      129 SETTABLEKS                       R18 R17 K15 ["tag"]
      131 MOVE                             R18 R9
      132 CALL                             R18 0 1
      133 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      135 GETTABLEKS                       R18 R0 K33 ["Label"]
      137 SETTABLEKS                       R18 R17 K27 ["Text"]
      139 GETTABLEKS                       R19 R0 K35 ["IsDisabled"]
      141 ORK                              R18 R19 K34 [False]
      142 SETTABLEKS                       R18 R17 K28 ["isDisabled"]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K23 ["CompositorNodeInputLabel"]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K13 ["createElement"]
      150 GETUPVAL                         R16 9
      151 DUPTABLE                         R17 K37 [{"LayoutOrder", "IsParameterOverridden", "OnParameterOverrideRevert"}]
      152 MOVE                             R18 R9
      153 CALL                             R18 0 1
      154 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      156 GETTABLEKS                       R18 R0 K7 ["IsParameterOverridden"]
      158 SETTABLEKS                       R18 R17 K7 ["IsParameterOverridden"]
      160 GETTABLEKS                       R18 R0 K36 ["OnParameterOverrideRevert"]
      162 SETTABLEKS                       R18 R17 K36 ["OnParameterOverrideRevert"]
      164 GETUPVAL                         R18 0
      165 GETTABLEKS                       R18 R18 K13 ["createElement"]
      167 GETUPVAL                         R19 10
      168 DUPTABLE                         R20 K43 [{"isDisabled", "isPopoverOpen", "size", "text", "onActivated", "onPressedOutside"}]
      169 GETTABLEKS                       R21 R0 K44 ["IsParameterized"]
      171 JUMPIF                           R21 ; [+4]
      172 GETTABLEKS                       R21 R0 K35 ["IsDisabled"]
      174 JUMPIF                           R21 ; [+1]
      175 LOADB                            R21 0
      176 SETTABLEKS                       R21 R20 K28 ["isDisabled"]
      178 GETTABLEKS                       R21 R6 K45 ["enabled"]
      180 SETTABLEKS                       R21 R20 K38 ["isPopoverOpen"]
      182 GETUPVAL                         R22 7
      183 CALL                             R22 0 1
      184 JUMPIFNOT                        R22 ; [+11]
      185 GETIMPORT                        R21 K48 [UDim2.new]
      187 LOADN                            R22 1
      188 LOADN                            R23 0
      189 LOADN                            R24 0
      190 GETTABLEKS                       R25 R10 K49 ["Size"]
      192 GETTABLEKS                       R25 R25 K50 ["Size_500"]
      194 CALL                             R21 4 1
      195 JUMP                             ; [+12]
      196 GETIMPORT                        R21 K48 [UDim2.new]
      198 GETTABLEKS                       R22 R7 K51 ["Scale"]
      200 GETTABLEKS                       R23 R7 K52 ["Offset"]
      202 LOADN                            R24 0
      203 GETTABLEKS                       R25 R10 K49 ["Size"]
      205 GETTABLEKS                       R25 R25 K50 ["Size_500"]
      207 CALL                             R21 4 1
      208 SETTABLEKS                       R21 R20 K39 ["size"]
      210 GETTABLEKS                       R22 R5 K53 ["status"]
      212 JUMPIFNOTEQKS                    R22 K54 ["ok"] ; [+4]
      214 GETTABLEKS                       R21 R5 K55 ["value"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R21
      218 SETTABLEKS                       R21 R20 K40 ["text"]
      220 GETTABLEKS                       R21 R6 K56 ["enable"]
      222 SETTABLEKS                       R21 R20 K41 ["onActivated"]
      224 GETTABLEKS                       R21 R6 K57 ["disable"]
      226 SETTABLEKS                       R21 R20 K42 ["onPressedOutside"]
      228 DUPTABLE                         R21 K59 [{"AssetPicker"}]
      229 GETUPVAL                         R22 0
      230 GETTABLEKS                       R22 R22 K13 ["createElement"]
      232 GETUPVAL                         R23 11
      233 GETTABLEKS                       R23 R23 K60 ["Components"]
      235 GETTABLEKS                       R23 R23 K58 ["AssetPicker"]
      237 DUPTABLE                         R24 K67 [{["assetType"] = "Animation", ["gameId"], ["showNewButton"] = False, ["onAssetSelected"], ["shareAccessToAssetsAsync"]}]
      238 GETTABLEKS                       R25 R3 K63 ["gameId"]
      240 SETTABLEKS                       R25 R24 K63 ["gameId"]
      242 SETTABLEKS                       R8 R24 K65 ["onAssetSelected"]
      244 GETTABLEKS                       R25 R1 K66 ["shareAccessToAssetsAsync"]
      246 SETTABLEKS                       R25 R24 K66 ["shareAccessToAssetsAsync"]
      248 CALL                             R22 2 1
      249 SETTABLEKS                       R22 R21 K58 ["AssetPicker"]
      251 CALL                             R18 3 -1
      252 CALL                             R15 -1 1
      253 SETTABLEKS                       R15 R14 K24 ["InputField"]
      255 GETUPVAL                         R15 0
      256 GETTABLEKS                       R15 R15 K13 ["createElement"]
      258 LOADK                            R16 K68 ["Folder"]
      259 NEWTABLE                         R17 0 0
      261 GETTABLEKS                       R18 R0 K69 ["children"]
      263 CALL                             R15 3 1
      264 SETTABLEKS                       R15 R14 K25 ["PinChildren"]
      266 CALL                             R11 3 -1
      267 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R3 K8 ["AssetAccessContext"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Contexts"]
       20 GETTABLEKS                       R4 R4 K9 ["AssetNameContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K7 ["Contexts"]
       32 GETTABLEKS                       R6 R6 K11 ["GameContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["NodeView"]
       41 GETTABLEKS                       R7 R7 K14 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R7 R7 K15 ["InputPropertyField"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K16 ["NodeGraphing"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K12 ["Components"]
       57 GETTABLEKS                       R9 R9 K13 ["NodeView"]
       59 GETTABLEKS                       R9 R9 K14 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R9 R9 K17 ["Util"]
       63 GETTABLEKS                       R9 R9 K18 ["PopoverDropdown"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R1 K19 ["Properties"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Components"]
       75 GETTABLEKS                       R11 R11 K13 ["NodeView"]
       77 GETTABLEKS                       R11 R11 K14 ["CompositorNodeProperty"]
       79 GETTABLEKS                       R11 R11 K20 ["PropertyConstants"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K12 ["Components"]
       86 GETTABLEKS                       R12 R12 K13 ["NodeView"]
       88 GETTABLEKS                       R12 R12 K14 ["CompositorNodeProperty"]
       90 GETTABLEKS                       R12 R12 K21 ["PropertyLabel"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K6 [require]
       95 GETTABLEKS                       R13 R1 K22 ["React"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K6 [require]
      100 GETTABLEKS                       R14 R1 K23 ["ReactUtils"]
      102 CALL                             R13 1 1
      103 GETTABLEKS                       R14 R7 K24 ["getFFlagAnimGraphUINodeFieldLayout"]
      105 DUPCLOSURE                       R15 K25 [PROTO_3]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 RETURN                           R15 1
