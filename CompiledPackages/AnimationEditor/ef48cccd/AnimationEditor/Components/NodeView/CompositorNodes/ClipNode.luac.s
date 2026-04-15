PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetAnimationClipAsync"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       15 LOADK                            R4 K2 ["AnimationId"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R2 K3 ["Loop"]
       20 JUMPIFNOT                        R3 ; [+7]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       24 LOADK                            R4 K4 ["PlayMode"]
       25 GETIMPORT                        R5 K7 [Enum.AnimationNodePlayMode.Loop]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        8 LOADK                            R3 K1 ["Trim"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 JUMPIF                           R1 ; [0]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useCallback"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K1 ["createPropertyHelpers"]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K2 ["join"]
       25 DUPTABLE                         R5 K6 [{"Duration", "EndTime", "StartTime"}]
       26 LOADN                            R6 5
       27 SETTABLEKS                       R6 R5 K3 ["Duration"]
       29 GETTABLEKS                       R8 R0 K8 ["PropertyLookup"]
       31 GETTABLEKS                       R7 R8 K7 ["Trim"]
       33 JUMPIFNOT                        R7 ; [+5]
       34 GETTABLEKS                       R7 R0 K8 ["PropertyLookup"]
       36 GETTABLEKS                       R6 R7 K9 ["TrimEnd"]
       38 JUMPIF                           R6 ; [+1]
       39 LOADNIL                          R6
       40 SETTABLEKS                       R6 R5 K4 ["EndTime"]
       42 GETTABLEKS                       R8 R0 K8 ["PropertyLookup"]
       44 GETTABLEKS                       R7 R8 K7 ["Trim"]
       46 JUMPIFNOT                        R7 ; [+5]
       47 GETTABLEKS                       R7 R0 K8 ["PropertyLookup"]
       49 GETTABLEKS                       R6 R7 K10 ["TrimStart"]
       51 JUMPIF                           R6 ; [+1]
       52 LOADNIL                          R6
       53 SETTABLEKS                       R6 R5 K5 ["StartTime"]
       55 GETTABLEKS                       R7 R0 K12 ["StateLookup"]
       57 GETTABLEKS                       R6 R7 K11 ["TimeProgress"]
       59 CALL                             R4 2 1
       60 DUPTABLE                         R5 K21 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
       61 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
       63 DUPTABLE                         R7 K27 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
       64 LOADK                            R8 K11 ["TimeProgress"]
       65 SETTABLEKS                       R8 R7 K23 ["Name"]
       67 LOADK                            R8 K11 ["TimeProgress"]
       68 SETTABLEKS                       R8 R7 K24 ["Type"]
       70 SETTABLEKS                       R4 R7 K25 ["Value"]
       72 LOADB                            R8 1
       73 SETTABLEKS                       R8 R7 K26 ["ShowWhenCollapsed"]
       75 CALL                             R6 1 1
       76 SETTABLEKS                       R6 R5 K13 ["Property_TimeProgress"]
       78 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
       80 DUPTABLE                         R7 K31 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
       81 LOADK                            R8 K32 ["AnimationId"]
       82 SETTABLEKS                       R8 R7 K23 ["Name"]
       84 LOADK                            R8 K33 ["Animation"]
       85 SETTABLEKS                       R8 R7 K24 ["Type"]
       87 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
       89 GETTABLEKS                       R8 R9 K32 ["AnimationId"]
       91 SETTABLEKS                       R8 R7 K25 ["Value"]
       93 LOADK                            R8 K34 [""]
       94 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
       96 SETTABLEKS                       R1 R7 K29 ["OnChanged"]
       98 LOADB                            R8 1
       99 SETTABLEKS                       R8 R7 K30 ["HidePin"]
      101 CALL                             R6 1 1
      102 SETTABLEKS                       R6 R5 K14 ["Property_AnimationId"]
      104 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      106 DUPTABLE                         R7 K35 [{"Name", "Type", "Value", "DefaultValue"}]
      107 LOADK                            R8 K36 ["PlayMode"]
      108 SETTABLEKS                       R8 R7 K23 ["Name"]
      110 LOADK                            R8 K37 ["Enum.AnimationNodePlayMode"]
      111 SETTABLEKS                       R8 R7 K24 ["Type"]
      113 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      115 GETTABLEKS                       R8 R9 K36 ["PlayMode"]
      117 SETTABLEKS                       R8 R7 K25 ["Value"]
      119 GETIMPORT                        R8 K41 [Enum.AnimationNodePlayMode.Loop]
      121 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      123 CALL                             R6 1 1
      124 SETTABLEKS                       R6 R5 K15 ["Property_Playmode"]
      126 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      128 DUPTABLE                         R7 K35 [{"Name", "Type", "Value", "DefaultValue"}]
      129 LOADK                            R8 K42 ["Reverse"]
      130 SETTABLEKS                       R8 R7 K23 ["Name"]
      132 LOADK                            R8 K43 ["Boolean"]
      133 SETTABLEKS                       R8 R7 K24 ["Type"]
      135 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      137 GETTABLEKS                       R8 R9 K42 ["Reverse"]
      139 SETTABLEKS                       R8 R7 K25 ["Value"]
      141 LOADB                            R8 0
      142 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      144 CALL                             R6 1 1
      145 SETTABLEKS                       R6 R5 K16 ["Property_Reverse"]
      147 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      149 DUPTABLE                         R7 K46 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      150 LOADK                            R8 K47 ["Speed"]
      151 SETTABLEKS                       R8 R7 K23 ["Name"]
      153 LOADK                            R8 K48 ["Number"]
      154 SETTABLEKS                       R8 R7 K24 ["Type"]
      156 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      158 GETTABLEKS                       R8 R9 K47 ["Speed"]
      160 SETTABLEKS                       R8 R7 K25 ["Value"]
      162 LOADN                            R8 1
      163 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      165 GETUPVAL                         R9 4
      166 CALL                             R9 0 1
      167 JUMPIFNOT                        R9 ; [+2]
      168 LOADNIL                          R8
      169 JUMP                             ; [+1]
      170 LOADK                            R8 K49 [0.1]
      171 SETTABLEKS                       R8 R7 K44 ["Step"]
      173 GETUPVAL                         R9 4
      174 CALL                             R9 0 1
      175 JUMPIFNOT                        R9 ; [+2]
      176 LOADNIL                          R8
      177 JUMP                             ; [+5]
      178 GETUPVAL                         R10 5
      179 GETTABLEKS                       R9 R10 K50 ["NUMBER_PRECISION"]
      181 GETTABLEKS                       R8 R9 K51 ["Float"]
      183 SETTABLEKS                       R8 R7 K45 ["Precision"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K17 ["Property_Speed"]
      188 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      190 DUPTABLE                         R7 K52 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      191 LOADK                            R8 K7 ["Trim"]
      192 SETTABLEKS                       R8 R7 K23 ["Name"]
      194 LOADK                            R8 K43 ["Boolean"]
      195 SETTABLEKS                       R8 R7 K24 ["Type"]
      197 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      199 GETTABLEKS                       R8 R9 K7 ["Trim"]
      201 SETTABLEKS                       R8 R7 K25 ["Value"]
      203 LOADB                            R8 0
      204 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      206 SETTABLEKS                       R2 R7 K29 ["OnChanged"]
      208 CALL                             R6 1 1
      209 SETTABLEKS                       R6 R5 K18 ["Property_Trim"]
      211 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      213 DUPTABLE                         R7 K54 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled"}]
      214 LOADK                            R8 K10 ["TrimStart"]
      215 SETTABLEKS                       R8 R7 K23 ["Name"]
      217 LOADK                            R8 K55 ["Timestamp"]
      218 SETTABLEKS                       R8 R7 K24 ["Type"]
      220 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      222 GETTABLEKS                       R8 R9 K10 ["TrimStart"]
      224 SETTABLEKS                       R8 R7 K25 ["Value"]
      226 LOADN                            R8 0
      227 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      229 GETTABLEKS                       R10 R0 K8 ["PropertyLookup"]
      231 GETTABLEKS                       R9 R10 K7 ["Trim"]
      233 NOT                              R8 R9
      234 SETTABLEKS                       R8 R7 K53 ["IsDisabled"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K19 ["Property_TrimStart"]
      239 GETTABLEKS                       R6 R3 K22 ["nextProperty"]
      241 DUPTABLE                         R7 K54 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled"}]
      242 LOADK                            R8 K9 ["TrimEnd"]
      243 SETTABLEKS                       R8 R7 K23 ["Name"]
      245 LOADK                            R8 K55 ["Timestamp"]
      246 SETTABLEKS                       R8 R7 K24 ["Type"]
      248 GETTABLEKS                       R9 R0 K8 ["PropertyLookup"]
      250 GETTABLEKS                       R8 R9 K9 ["TrimEnd"]
      252 SETTABLEKS                       R8 R7 K25 ["Value"]
      254 LOADN                            R8 0
      255 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      257 GETTABLEKS                       R10 R0 K8 ["PropertyLookup"]
      259 GETTABLEKS                       R9 R10 K7 ["Trim"]
      261 NOT                              R8 R9
      262 SETTABLEKS                       R8 R7 K53 ["IsDisabled"]
      264 CALL                             R6 1 1
      265 SETTABLEKS                       R6 R5 K20 ["Property_TrimEnd"]
      267 GETUPVAL                         R7 0
      268 GETTABLEKS                       R6 R7 K56 ["createElement"]
      270 GETUPVAL                         R7 6
      271 GETTABLEKS                       R8 R3 K57 ["nodeProps"]
      273 DUPTABLE                         R9 K59 [{"OutputPin"}]
      274 GETTABLEKS                       R10 R3 K60 ["outputPin"]
      276 CALL                             R10 0 1
      277 SETTABLEKS                       R10 R9 K58 ["OutputPin"]
      279 CALL                             R8 1 1
      280 MOVE                             R9 R5
      281 CALL                             R6 3 -1
      282 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R8 R1 K13 ["Components"]
       31 GETTABLEKS                       R7 R8 K14 ["NodeView"]
       33 GETTABLEKS                       R6 R7 K15 ["CompositorNodes"]
       35 GETTABLEKS                       R5 R6 K16 ["CompositorNode"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R1 K17 ["Util"]
       42 GETTABLEKS                       R7 R8 K18 ["Nodes"]
       44 GETTABLEKS                       R6 R7 K19 ["CompositorNodeUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R8 R1 K17 ["Util"]
       51 GETTABLEKS                       R7 R8 K20 ["Constants"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R9 R1 K21 ["Flags"]
       58 GETTABLEKS                       R8 R9 K22 ["getFFlagAnimGraphFloatStep003"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K23 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 RETURN                           R8 1
