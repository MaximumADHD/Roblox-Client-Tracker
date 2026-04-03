PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["getAssetNameAsync"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

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
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K2 ["Value"]
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R4 R0 K3 ["DefaultValue"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K4 ["useAsync"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R4
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R6 R7 K5 ["useToggleState"]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U5
       48 NEWTABLE                         R9 0 1
       50 GETTABLEKS                       R10 R0 K7 ["IsParameterOverridden"]
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R8 R9 K8 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R10 0 0
       63 CALL                             R8 2 1
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R9 R10 K9 ["createNextOrder"]
       67 CALL                             R9 0 1
       68 GETUPVAL                         R12 6
       69 GETTABLEKS                       R11 R12 K10 ["Hooks"]
       71 GETTABLEKS                       R10 R11 K11 ["useTokens"]
       73 CALL                             R10 0 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K12 ["createElement"]
       77 GETUPVAL                         R13 6
       78 GETTABLEKS                       R12 R13 K13 ["View"]
       80 DUPTABLE                         R13 K16 [{"tag", "LayoutOrder"}]
       81 GETUPVAL                         R16 6
       82 GETTABLEKS                       R15 R16 K10 ["Hooks"]
       84 GETTABLEKS                       R14 R15 K17 ["useDefaultTags"]
       86 GETTABLEKS                       R15 R0 K18 ["tags"]
       88 LOADK                            R16 K19 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K14 ["tag"]
       92 GETTABLEKS                       R14 R0 K15 ["LayoutOrder"]
       94 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       96 DUPTABLE                         R14 K23 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R15 R16 K12 ["createElement"]
      100 GETUPVAL                         R16 7
      101 DUPTABLE                         R17 K26 [{"tag", "LayoutOrder", "Text", "isDisabled"}]
      102 LOADK                            R18 K27 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
      103 SETTABLEKS                       R18 R17 K14 ["tag"]
      105 MOVE                             R18 R9
      106 CALL                             R18 0 1
      107 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      109 GETTABLEKS                       R18 R0 K28 ["Label"]
      111 SETTABLEKS                       R18 R17 K24 ["Text"]
      113 GETTABLEKS                       R18 R0 K29 ["IsReadOnly"]
      115 JUMPIF                           R18 ; [+4]
      116 GETTABLEKS                       R18 R0 K30 ["IsDisabled"]
      118 JUMPIF                           R18 ; [+1]
      119 LOADB                            R18 0
      120 SETTABLEKS                       R18 R17 K25 ["isDisabled"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K20 ["CompositorNodeInputLabel"]
      125 GETUPVAL                         R16 0
      126 GETTABLEKS                       R15 R16 K12 ["createElement"]
      128 GETUPVAL                         R16 8
      129 DUPTABLE                         R17 K32 [{"LayoutOrder", "IsParameterOverridden", "OnParameterOverrideRevert"}]
      130 MOVE                             R18 R9
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      134 GETTABLEKS                       R18 R0 K7 ["IsParameterOverridden"]
      136 SETTABLEKS                       R18 R17 K7 ["IsParameterOverridden"]
      138 GETTABLEKS                       R18 R0 K31 ["OnParameterOverrideRevert"]
      140 SETTABLEKS                       R18 R17 K31 ["OnParameterOverrideRevert"]
      142 GETUPVAL                         R19 0
      143 GETTABLEKS                       R18 R19 K12 ["createElement"]
      145 GETUPVAL                         R19 9
      146 DUPTABLE                         R20 K38 [{"isDisabled", "isPopoverOpen", "size", "text", "onActivated", "onPressedOutside"}]
      147 GETTABLEKS                       R21 R0 K39 ["IsParameterized"]
      149 JUMPIF                           R21 ; [+4]
      150 GETTABLEKS                       R21 R0 K29 ["IsReadOnly"]
      152 JUMPIF                           R21 ; [+1]
      153 LOADB                            R21 0
      154 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
      156 GETTABLEKS                       R21 R6 K40 ["enabled"]
      158 SETTABLEKS                       R21 R20 K33 ["isPopoverOpen"]
      160 GETIMPORT                        R21 K43 [UDim2.new]
      162 GETTABLEKS                       R22 R7 K44 ["Scale"]
      164 GETTABLEKS                       R23 R7 K45 ["Offset"]
      166 LOADN                            R24 0
      167 GETTABLEKS                       R26 R10 K46 ["Size"]
      169 GETTABLEKS                       R25 R26 K47 ["Size_500"]
      171 CALL                             R21 4 1
      172 SETTABLEKS                       R21 R20 K34 ["size"]
      174 GETTABLEKS                       R22 R5 K48 ["status"]
      176 JUMPIFNOTEQKS                    R22 K49 ["ok"] ; [+4]
      178 GETTABLEKS                       R21 R5 K50 ["value"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R21
      182 SETTABLEKS                       R21 R20 K35 ["text"]
      184 GETTABLEKS                       R21 R6 K51 ["enable"]
      186 SETTABLEKS                       R21 R20 K36 ["onActivated"]
      188 GETTABLEKS                       R21 R6 K52 ["disable"]
      190 SETTABLEKS                       R21 R20 K37 ["onPressedOutside"]
      192 DUPTABLE                         R21 K54 [{"AssetPicker"}]
      193 GETUPVAL                         R23 0
      194 GETTABLEKS                       R22 R23 K12 ["createElement"]
      196 GETUPVAL                         R25 10
      197 GETTABLEKS                       R24 R25 K55 ["Components"]
      199 GETTABLEKS                       R23 R24 K53 ["AssetPicker"]
      201 DUPTABLE                         R24 K61 [{"assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
      202 LOADK                            R25 K62 ["Animation"]
      203 SETTABLEKS                       R25 R24 K56 ["assetType"]
      205 GETTABLEKS                       R25 R3 K57 ["gameId"]
      207 SETTABLEKS                       R25 R24 K57 ["gameId"]
      209 LOADB                            R25 0
      210 SETTABLEKS                       R25 R24 K58 ["showNewButton"]
      212 SETTABLEKS                       R8 R24 K59 ["onAssetSelected"]
      214 GETTABLEKS                       R25 R1 K60 ["shareAccessToAssetsAsync"]
      216 SETTABLEKS                       R25 R24 K60 ["shareAccessToAssetsAsync"]
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K53 ["AssetPicker"]
      221 CALL                             R18 3 -1
      222 CALL                             R15 -1 1
      223 SETTABLEKS                       R15 R14 K21 ["InputField"]
      225 GETUPVAL                         R16 0
      226 GETTABLEKS                       R15 R16 K12 ["createElement"]
      228 LOADK                            R16 K63 ["Folder"]
      229 NEWTABLE                         R17 0 0
      231 GETTABLEKS                       R18 R0 K64 ["children"]
      233 CALL                             R15 3 1
      234 SETTABLEKS                       R15 R14 K22 ["PinChildren"]
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
       18 GETTABLEKS                       R5 R0 K7 ["Contexts"]
       20 GETTABLEKS                       R4 R5 K9 ["AssetNameContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K7 ["Contexts"]
       32 GETTABLEKS                       R6 R7 K11 ["GameContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R10 R0 K12 ["Components"]
       39 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       41 GETTABLEKS                       R8 R9 K14 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R7 R8 K15 ["InputPropertyField"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R12 R0 K12 ["Components"]
       50 GETTABLEKS                       R11 R12 K13 ["NodeView"]
       52 GETTABLEKS                       R10 R11 K14 ["CompositorNodeProperty"]
       54 GETTABLEKS                       R9 R10 K16 ["Util"]
       56 GETTABLEKS                       R8 R9 K17 ["PopoverDropdown"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R1 K18 ["Properties"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R13 R0 K12 ["Components"]
       68 GETTABLEKS                       R12 R13 K13 ["NodeView"]
       70 GETTABLEKS                       R11 R12 K14 ["CompositorNodeProperty"]
       72 GETTABLEKS                       R10 R11 K19 ["PropertyConstants"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R14 R0 K12 ["Components"]
       79 GETTABLEKS                       R13 R14 K13 ["NodeView"]
       81 GETTABLEKS                       R12 R13 K14 ["CompositorNodeProperty"]
       83 GETTABLEKS                       R11 R12 K20 ["PropertyLabel"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R12 R1 K21 ["React"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETTABLEKS                       R13 R1 K22 ["ReactUtils"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K23 [PROTO_3]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 RETURN                           R13 1
