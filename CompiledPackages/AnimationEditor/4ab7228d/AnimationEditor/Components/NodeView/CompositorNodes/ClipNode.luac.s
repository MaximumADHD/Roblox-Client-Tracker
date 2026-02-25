PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["createPropertyHelpers"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K2 ["GraphPayload"]
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETTABLEKS                       R5 R0 K2 ["GraphPayload"]
       18 GETTABLEKS                       R4 R5 K3 ["weight"]
       20 JUMPIFEQKN                       R4 K4 [0] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 DUPTABLE                         R4 K13 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_StartOffset", "Property_EndOffset", "PlayingPreview"}]
       25 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
       27 DUPTABLE                         R6 K19 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
       28 LOADK                            R7 K20 ["TimeProgress"]
       29 SETTABLEKS                       R7 R6 K15 ["Name"]
       31 LOADK                            R7 K20 ["TimeProgress"]
       32 SETTABLEKS                       R7 R6 K16 ["Type"]
       34 GETTABLEKS                       R8 R0 K21 ["StateLookup"]
       36 GETTABLEKS                       R7 R8 K20 ["TimeProgress"]
       38 SETTABLEKS                       R7 R6 K17 ["Value"]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K18 ["ShowWhenCollapsed"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K5 ["Property_TimeProgress"]
       46 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
       48 DUPTABLE                         R6 K24 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
       49 LOADK                            R7 K25 ["AnimationId"]
       50 SETTABLEKS                       R7 R6 K15 ["Name"]
       52 LOADK                            R7 K26 ["Animation"]
       53 SETTABLEKS                       R7 R6 K16 ["Type"]
       55 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
       57 GETTABLEKS                       R7 R8 K25 ["AnimationId"]
       59 SETTABLEKS                       R7 R6 K17 ["Value"]
       61 LOADK                            R7 K28 [""]
       62 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
       64 SETTABLEKS                       R1 R6 K23 ["OnChanged"]
       66 CALL                             R5 1 1
       67 SETTABLEKS                       R5 R4 K6 ["Property_AnimationId"]
       69 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
       71 DUPTABLE                         R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
       72 LOADK                            R7 K30 ["PlayMode"]
       73 SETTABLEKS                       R7 R6 K15 ["Name"]
       75 LOADK                            R7 K31 ["Enum.AnimationNodePlayMode"]
       76 SETTABLEKS                       R7 R6 K16 ["Type"]
       78 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
       80 GETTABLEKS                       R7 R8 K30 ["PlayMode"]
       82 SETTABLEKS                       R7 R6 K17 ["Value"]
       84 GETIMPORT                        R7 K35 [Enum.AnimationNodePlayMode.Loop]
       86 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
       88 CALL                             R5 1 1
       89 SETTABLEKS                       R5 R4 K7 ["Property_Playmode"]
       91 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
       93 DUPTABLE                         R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
       94 LOADK                            R7 K36 ["Reverse"]
       95 SETTABLEKS                       R7 R6 K15 ["Name"]
       97 LOADK                            R7 K37 ["Boolean"]
       98 SETTABLEKS                       R7 R6 K16 ["Type"]
      100 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
      102 GETTABLEKS                       R7 R8 K36 ["Reverse"]
      104 SETTABLEKS                       R7 R6 K17 ["Value"]
      106 LOADB                            R7 0
      107 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
      109 CALL                             R5 1 1
      110 SETTABLEKS                       R5 R4 K8 ["Property_Reverse"]
      112 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
      114 DUPTABLE                         R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
      115 LOADK                            R7 K38 ["Speed"]
      116 SETTABLEKS                       R7 R6 K15 ["Name"]
      118 LOADK                            R7 K39 ["Number"]
      119 SETTABLEKS                       R7 R6 K16 ["Type"]
      121 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
      123 GETTABLEKS                       R7 R8 K38 ["Speed"]
      125 SETTABLEKS                       R7 R6 K17 ["Value"]
      127 LOADN                            R7 1
      128 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
      130 CALL                             R5 1 1
      131 SETTABLEKS                       R5 R4 K9 ["Property_Speed"]
      133 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
      135 DUPTABLE                         R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
      136 LOADK                            R7 K40 ["StartOffset"]
      137 SETTABLEKS                       R7 R6 K15 ["Name"]
      139 LOADK                            R7 K39 ["Number"]
      140 SETTABLEKS                       R7 R6 K16 ["Type"]
      142 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
      144 GETTABLEKS                       R7 R8 K40 ["StartOffset"]
      146 SETTABLEKS                       R7 R6 K17 ["Value"]
      148 LOADN                            R7 0
      149 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
      151 CALL                             R5 1 1
      152 SETTABLEKS                       R5 R4 K10 ["Property_StartOffset"]
      154 GETTABLEKS                       R5 R2 K14 ["nextProperty"]
      156 DUPTABLE                         R6 K29 [{"Name", "Type", "Value", "DefaultValue"}]
      157 LOADK                            R7 K41 ["EndOffset"]
      158 SETTABLEKS                       R7 R6 K15 ["Name"]
      160 LOADK                            R7 K39 ["Number"]
      161 SETTABLEKS                       R7 R6 K16 ["Type"]
      163 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
      165 GETTABLEKS                       R7 R8 K41 ["EndOffset"]
      167 SETTABLEKS                       R7 R6 K17 ["Value"]
      169 LOADN                            R7 0
      170 SETTABLEKS                       R7 R6 K22 ["DefaultValue"]
      172 CALL                             R5 1 1
      173 SETTABLEKS                       R5 R4 K11 ["Property_EndOffset"]
      175 GETUPVAL                         R7 2
      176 GETTABLEKS                       R6 R7 K42 ["PLAYING_PREVIEW_ENABLED"]
      178 JUMPIFNOT                        R6 ; [+18]
      179 GETUPVAL                         R6 0
      180 GETTABLEKS                       R5 R6 K43 ["createElement"]
      182 GETUPVAL                         R6 3
      183 DUPTABLE                         R7 K46 [{"GraphPayload", "LayoutOrder", "disabled"}]
      184 GETTABLEKS                       R8 R0 K2 ["GraphPayload"]
      186 SETTABLEKS                       R8 R7 K2 ["GraphPayload"]
      188 GETTABLEKS                       R8 R2 K47 ["nextOrder"]
      190 CALL                             R8 0 1
      191 SETTABLEKS                       R8 R7 K44 ["LayoutOrder"]
      193 SETTABLEKS                       R3 R7 K45 ["disabled"]
      195 CALL                             R5 2 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R5
      198 SETTABLEKS                       R5 R4 K12 ["PlayingPreview"]
      200 GETUPVAL                         R6 0
      201 GETTABLEKS                       R5 R6 K43 ["createElement"]
      203 GETUPVAL                         R6 4
      204 GETTABLEKS                       R7 R2 K48 ["nodeProps"]
      206 DUPTABLE                         R8 K50 [{"OutputPin"}]
      207 GETTABLEKS                       R9 R2 K51 ["outputPin"]
      209 CALL                             R9 0 1
      210 SETTABLEKS                       R9 R8 K49 ["OutputPin"]
      212 CALL                             R7 1 1
      213 MOVE                             R8 R4
      214 CALL                             R5 3 -1
      215 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R4 K11 ["CompositorNode"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Components"]
       29 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       31 GETTABLEKS                       R4 R5 K12 ["CompositorNodePreview"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["Nodes"]
       40 GETTABLEKS                       R5 R6 K15 ["CompositorNodeUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Util"]
       47 GETTABLEKS                       R6 R7 K16 ["Constants"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 RETURN                           R6 1
