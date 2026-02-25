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
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K2 ["useSignalState"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K3 ["useObserveIsDisabled"]
       19 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       21 GETTABLEKS                       R5 R6 K5 ["id"]
       23 CALL                             R4 1 -1
       24 CALL                             R3 -1 1
       25 DUPTABLE                         R4 K14 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_StartOffset", "Property_EndOffset", "PlayingPreview"}]
       26 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
       28 DUPTABLE                         R6 K20 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
       29 LOADK                            R7 K21 ["TimeProgress"]
       30 SETTABLEKS                       R7 R6 K16 ["Name"]
       32 LOADK                            R7 K21 ["TimeProgress"]
       33 SETTABLEKS                       R7 R6 K17 ["Type"]
       35 GETTABLEKS                       R8 R0 K22 ["StateLookup"]
       37 GETTABLEKS                       R7 R8 K21 ["TimeProgress"]
       39 SETTABLEKS                       R7 R6 K18 ["Value"]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K19 ["ShowWhenCollapsed"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K6 ["Property_TimeProgress"]
       47 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
       49 DUPTABLE                         R6 K25 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
       50 LOADK                            R7 K26 ["AnimationId"]
       51 SETTABLEKS                       R7 R6 K16 ["Name"]
       53 LOADK                            R7 K27 ["Animation"]
       54 SETTABLEKS                       R7 R6 K17 ["Type"]
       56 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
       58 GETTABLEKS                       R7 R8 K26 ["AnimationId"]
       60 SETTABLEKS                       R7 R6 K18 ["Value"]
       62 LOADK                            R7 K29 [""]
       63 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
       65 SETTABLEKS                       R1 R6 K24 ["OnChanged"]
       67 CALL                             R5 1 1
       68 SETTABLEKS                       R5 R4 K7 ["Property_AnimationId"]
       70 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
       72 DUPTABLE                         R6 K30 [{"Name", "Type", "Value", "DefaultValue"}]
       73 LOADK                            R7 K31 ["PlayMode"]
       74 SETTABLEKS                       R7 R6 K16 ["Name"]
       76 LOADK                            R7 K32 ["Enum.AnimationNodePlayMode"]
       77 SETTABLEKS                       R7 R6 K17 ["Type"]
       79 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
       81 GETTABLEKS                       R7 R8 K31 ["PlayMode"]
       83 SETTABLEKS                       R7 R6 K18 ["Value"]
       85 GETIMPORT                        R7 K36 [Enum.AnimationNodePlayMode.Loop]
       87 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
       89 CALL                             R5 1 1
       90 SETTABLEKS                       R5 R4 K8 ["Property_Playmode"]
       92 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
       94 DUPTABLE                         R6 K30 [{"Name", "Type", "Value", "DefaultValue"}]
       95 LOADK                            R7 K37 ["Reverse"]
       96 SETTABLEKS                       R7 R6 K16 ["Name"]
       98 LOADK                            R7 K38 ["Boolean"]
       99 SETTABLEKS                       R7 R6 K17 ["Type"]
      101 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
      103 GETTABLEKS                       R7 R8 K37 ["Reverse"]
      105 SETTABLEKS                       R7 R6 K18 ["Value"]
      107 LOADB                            R7 0
      108 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
      110 CALL                             R5 1 1
      111 SETTABLEKS                       R5 R4 K9 ["Property_Reverse"]
      113 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
      115 DUPTABLE                         R6 K30 [{"Name", "Type", "Value", "DefaultValue"}]
      116 LOADK                            R7 K39 ["Speed"]
      117 SETTABLEKS                       R7 R6 K16 ["Name"]
      119 LOADK                            R7 K40 ["Number"]
      120 SETTABLEKS                       R7 R6 K17 ["Type"]
      122 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
      124 GETTABLEKS                       R7 R8 K39 ["Speed"]
      126 SETTABLEKS                       R7 R6 K18 ["Value"]
      128 LOADN                            R7 1
      129 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
      131 CALL                             R5 1 1
      132 SETTABLEKS                       R5 R4 K10 ["Property_Speed"]
      134 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
      136 DUPTABLE                         R6 K30 [{"Name", "Type", "Value", "DefaultValue"}]
      137 LOADK                            R7 K41 ["StartOffset"]
      138 SETTABLEKS                       R7 R6 K16 ["Name"]
      140 LOADK                            R7 K40 ["Number"]
      141 SETTABLEKS                       R7 R6 K17 ["Type"]
      143 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
      145 GETTABLEKS                       R7 R8 K41 ["StartOffset"]
      147 SETTABLEKS                       R7 R6 K18 ["Value"]
      149 LOADN                            R7 0
      150 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
      152 CALL                             R5 1 1
      153 SETTABLEKS                       R5 R4 K11 ["Property_StartOffset"]
      155 GETTABLEKS                       R5 R2 K15 ["nextProperty"]
      157 DUPTABLE                         R6 K30 [{"Name", "Type", "Value", "DefaultValue"}]
      158 LOADK                            R7 K42 ["EndOffset"]
      159 SETTABLEKS                       R7 R6 K16 ["Name"]
      161 LOADK                            R7 K40 ["Number"]
      162 SETTABLEKS                       R7 R6 K17 ["Type"]
      164 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
      166 GETTABLEKS                       R7 R8 K42 ["EndOffset"]
      168 SETTABLEKS                       R7 R6 K18 ["Value"]
      170 LOADN                            R7 0
      171 SETTABLEKS                       R7 R6 K23 ["DefaultValue"]
      173 CALL                             R5 1 1
      174 SETTABLEKS                       R5 R4 K12 ["Property_EndOffset"]
      176 GETUPVAL                         R7 4
      177 GETTABLEKS                       R6 R7 K43 ["PLAYING_PREVIEW_ENABLED"]
      179 JUMPIFNOT                        R6 ; [+18]
      180 GETUPVAL                         R6 0
      181 GETTABLEKS                       R5 R6 K44 ["createElement"]
      183 GETUPVAL                         R6 5
      184 DUPTABLE                         R7 K47 [{"GraphPayload", "LayoutOrder", "disabled"}]
      185 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
      187 SETTABLEKS                       R8 R7 K4 ["GraphPayload"]
      189 GETTABLEKS                       R8 R2 K48 ["nextOrder"]
      191 CALL                             R8 0 1
      192 SETTABLEKS                       R8 R7 K45 ["LayoutOrder"]
      194 SETTABLEKS                       R3 R7 K46 ["disabled"]
      196 CALL                             R5 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R5
      199 SETTABLEKS                       R5 R4 K13 ["PlayingPreview"]
      201 GETUPVAL                         R6 0
      202 GETTABLEKS                       R5 R6 K44 ["createElement"]
      204 GETUPVAL                         R6 6
      205 GETTABLEKS                       R7 R2 K49 ["nodeProps"]
      207 DUPTABLE                         R8 K51 [{"OutputPin"}]
      208 GETTABLEKS                       R9 R2 K52 ["outputPin"]
      210 CALL                             R9 0 1
      211 SETTABLEKS                       R9 R8 K50 ["OutputPin"]
      213 CALL                             R7 1 1
      214 MOVE                             R8 R4
      215 CALL                             R5 3 -1
      216 RETURN                           R5 -1

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
       45 GETTABLEKS                       R9 R0 K8 ["Components"]
       47 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       49 GETTABLEKS                       R7 R8 K10 ["CompositorNodes"]
       51 GETTABLEKS                       R6 R7 K16 ["CompositorStateUtils"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K13 ["Util"]
       58 GETTABLEKS                       R7 R8 K17 ["Constants"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Parent"]
       65 GETTABLEKS                       R8 R9 K18 ["SignalsReact"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K19 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 RETURN                           R8 1
