PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["join"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["Input"]
       14 GETTABLEKS                       R3 R3 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Position"}]
       17 SETTABLEKS                       R0 R4 K4 ["Position"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       14 GETTABLEKS                       R6 R0 K3 ["Input"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["View"]
       25 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       26 NEWTABLE                         R6 2 0
       28 LOADB                            R7 1
       29 SETTABLEKS                       R7 R6 K9 ["row align-y-center gap-small size-full-700 auto-y padding-x-small"]
       31 GETUPVAL                         R8 4
       32 CALL                             R8 0 1
       33 NOT                              R7 R8
       34 SETTABLEKS                       R7 R6 K10 ["flex-x-fill"]
       36 SETTABLEKS                       R6 R5 K6 ["tag"]
       38 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       40 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       42 DUPTABLE                         R6 K14 [{"InputLabelWeight", "Position", "PinChildren"}]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K4 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K23 [{"Name", "Label", "Weight", "LayoutOrder", "OnDelete", "OnRename", "IsHovered", "HasDuplicateName", "TrailingValue"}]
       48 GETTABLEKS                       R10 R0 K3 ["Input"]
       50 GETTABLEKS                       R10 R10 K15 ["Name"]
       52 SETTABLEKS                       R10 R9 K15 ["Name"]
       54 GETTABLEKS                       R10 R0 K3 ["Input"]
       56 GETTABLEKS                       R10 R10 K24 ["ConnectedNodeName"]
       58 SETTABLEKS                       R10 R9 K16 ["Label"]
       60 GETTABLEKS                       R10 R0 K3 ["Input"]
       62 GETTABLEKS                       R10 R10 K17 ["Weight"]
       64 SETTABLEKS                       R10 R9 K17 ["Weight"]
       66 MOVE                             R10 R1
       67 CALL                             R10 0 1
       68 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       70 GETTABLEKS                       R10 R0 K18 ["OnDelete"]
       72 SETTABLEKS                       R10 R9 K18 ["OnDelete"]
       74 GETUPVAL                         R11 4
       75 CALL                             R11 0 1
       76 JUMPIFNOT                        R11 ; [+3]
       77 GETTABLEKS                       R10 R0 K19 ["OnRename"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R9 K19 ["OnRename"]
       83 GETTABLEKS                       R10 R0 K20 ["IsHovered"]
       85 SETTABLEKS                       R10 R9 K20 ["IsHovered"]
       87 GETTABLEKS                       R10 R0 K21 ["HasDuplicateName"]
       89 SETTABLEKS                       R10 R9 K21 ["HasDuplicateName"]
       91 GETUPVAL                         R11 4
       92 CALL                             R11 0 1
       93 JUMPIFNOT                        R11 ; [+56]
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K4 ["createElement"]
       97 GETUPVAL                         R11 3
       98 GETTABLEKS                       R11 R11 K25 ["NumberInput"]
      100 DUPTABLE                         R12 K37 [{["size"], ["width"], ["label"] = "", ["value"], ["step"] = 0.005, ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R13 R13 K38 ["Enums"]
      104 GETTABLEKS                       R13 R13 K39 ["InputSize"]
      106 GETTABLEKS                       R13 R13 K40 ["XSmall"]
      108 SETTABLEKS                       R13 R12 K26 ["size"]
      110 GETIMPORT                        R13 K43 [UDim.new]
      112 LOADN                            R14 1
      113 LOADN                            R15 0
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K27 ["width"]
      117 GETTABLEKS                       R13 R0 K3 ["Input"]
      119 GETTABLEKS                       R13 R13 K44 ["Value"]
      121 GETTABLEKS                       R13 R13 K12 ["Position"]
      123 SETTABLEKS                       R13 R12 K30 ["value"]
      125 GETUPVAL                         R13 6
      126 GETTABLEKS                       R13 R13 K45 ["NUMBER_PRECISION"]
      128 GETTABLEKS                       R13 R13 K46 ["Float"]
      130 SETTABLEKS                       R13 R12 K33 ["precision"]
      132 SETTABLEKS                       R2 R12 K34 ["onChanged"]
      134 GETUPVAL                         R13 3
      135 GETTABLEKS                       R13 R13 K38 ["Enums"]
      137 GETTABLEKS                       R13 R13 K47 ["NumberInputControlsVariant"]
      139 GETTABLEKS                       R13 R13 K48 ["None"]
      141 SETTABLEKS                       R13 R12 K35 ["controlsVariant"]
      143 GETUPVAL                         R13 7
      144 GETTABLEKS                       R13 R13 K49 ["On"]
      146 SETTABLEKS                       R13 R12 K36 ["scrubBehavior"]
      148 CALL                             R10 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R10
      151 SETTABLEKS                       R10 R9 K22 ["TrailingValue"]
      153 CALL                             R7 2 1
      154 SETTABLEKS                       R7 R6 K11 ["InputLabelWeight"]
      156 GETUPVAL                         R8 4
      157 CALL                             R8 0 1
      158 JUMPIFNOT                        R8 ; [+2]
      159 LOADNIL                          R7
      160 JUMP                             ; [+52]
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R7 R7 K4 ["createElement"]
      164 GETUPVAL                         R8 3
      165 GETTABLEKS                       R8 R8 K25 ["NumberInput"]
      167 DUPTABLE                         R9 K50 [{["size"], ["label"] = "", ["value"], ["step"] = 0.005, ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      168 GETUPVAL                         R10 3
      169 GETTABLEKS                       R10 R10 K38 ["Enums"]
      171 GETTABLEKS                       R10 R10 K39 ["InputSize"]
      173 GETTABLEKS                       R10 R10 K40 ["XSmall"]
      175 SETTABLEKS                       R10 R9 K26 ["size"]
      177 GETTABLEKS                       R10 R0 K3 ["Input"]
      179 GETTABLEKS                       R10 R10 K44 ["Value"]
      181 GETTABLEKS                       R10 R10 K12 ["Position"]
      183 SETTABLEKS                       R10 R9 K30 ["value"]
      185 MOVE                             R10 R1
      186 CALL                             R10 0 1
      187 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      189 GETUPVAL                         R10 6
      190 GETTABLEKS                       R10 R10 K45 ["NUMBER_PRECISION"]
      192 GETTABLEKS                       R10 R10 K46 ["Float"]
      194 SETTABLEKS                       R10 R9 K33 ["precision"]
      196 SETTABLEKS                       R2 R9 K34 ["onChanged"]
      198 GETUPVAL                         R10 3
      199 GETTABLEKS                       R10 R10 K38 ["Enums"]
      201 GETTABLEKS                       R10 R10 K47 ["NumberInputControlsVariant"]
      203 GETTABLEKS                       R10 R10 K48 ["None"]
      205 SETTABLEKS                       R10 R9 K35 ["controlsVariant"]
      207 GETUPVAL                         R10 7
      208 GETTABLEKS                       R10 R10 K49 ["On"]
      210 SETTABLEKS                       R10 R9 K36 ["scrubBehavior"]
      212 CALL                             R7 2 1
      213 SETTABLEKS                       R7 R6 K12 ["Position"]
      215 GETUPVAL                         R7 1
      216 GETTABLEKS                       R7 R7 K4 ["createElement"]
      218 LOADK                            R8 K51 ["Folder"]
      219 NEWTABLE                         R9 0 0
      221 DUPTABLE                         R10 K53 [{"RenderedPinInput"}]
      222 GETUPVAL                         R11 1
      223 GETTABLEKS                       R11 R11 K4 ["createElement"]
      225 GETUPVAL                         R12 8
      226 GETTABLEKS                       R12 R12 K54 ["RenderedCompositorPin"]
      228 DUPTABLE                         R13 K62 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["selected"]}]
      229 GETIMPORT                        R14 K65 [UDim2.fromOffset]
      231 LOADN                            R15 -21
      232 LOADN                            R16 14
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K12 ["Position"]
      236 GETUPVAL                         R14 8
      237 GETTABLEKS                       R14 R14 K66 ["DEFAULT_PIN_DATA_TYPE"]
      239 SETTABLEKS                       R14 R13 K56 ["pinDataType"]
      241 GETTABLEKS                       R14 R0 K67 ["NodeId"]
      243 SETTABLEKS                       R14 R13 K57 ["pinNodeId"]
      245 GETTABLEKS                       R14 R0 K3 ["Input"]
      247 GETTABLEKS                       R14 R14 K15 ["Name"]
      249 SETTABLEKS                       R14 R13 K58 ["pinName"]
      251 GETTABLEKS                       R14 R0 K3 ["Input"]
      253 GETTABLEKS                       R14 R14 K68 ["InputId"]
      255 SETTABLEKS                       R14 R13 K59 ["pinInputId"]
      257 GETTABLEKS                       R14 R0 K3 ["Input"]
      259 GETTABLEKS                       R14 R14 K44 ["Value"]
      261 SETTABLEKS                       R14 R13 K60 ["pinValue"]
      263 GETTABLEKS                       R14 R0 K69 ["IsSelected"]
      265 SETTABLEKS                       R14 R13 K61 ["selected"]
      267 CALL                             R11 2 1
      268 SETTABLEKS                       R11 R10 K52 ["RenderedPinInput"]
      270 CALL                             R7 3 1
      271 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      273 CALL                             R3 3 -1
      274 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputLabelWeight"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["InputPanelTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Parent"]
       61 GETTABLEKS                       R8 R8 K17 ["React"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Parent"]
       68 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R3 K19 ["Enums"]
       73 GETTABLEKS                       R9 R9 K20 ["ScrubBehavior"]
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K21 ["Flags"]
       79 GETTABLEKS                       R11 R11 K22 ["getFFlagAnimGraphUIInputIds"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K23 [PROTO_1]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 RETURN                           R11 1
