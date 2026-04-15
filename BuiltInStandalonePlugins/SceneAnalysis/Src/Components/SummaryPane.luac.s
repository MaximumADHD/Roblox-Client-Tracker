PROTO_0:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R1 K0 ["getNodeById"]
        8 MOVE                             R10 R7
        9 CALL                             R9 1 1
       10 JUMPIFNOT                        R9 ; [+21]
       11 GETTABLEKS                       R11 R9 K1 ["Children"]
       13 NOT                              R10 R11
       14 JUMPIF                           R10 ; [+9]
       15 GETIMPORT                        R11 K3 [next]
       17 GETTABLEKS                       R12 R9 K1 ["Children"]
       19 CALL                             R11 1 1
       20 JUMPIFEQKNIL                     R11 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 JUMPIFNOT                        R10 ; [+7]
       25 GETTABLEKS                       R11 R9 K4 ["Size"]
       27 JUMPIFNOT                        R11 ; [+4]
       28 GETTABLEKS                       R11 R9 K4 ["Size"]
       30 ADD                              R2 R2 R11
       31 ADDK                             R3 R3 K5 [1]
       32 FORGLOOP                         R4 1 ; [-27]
       34 RETURN                           R2 2

PROTO_1:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETIMPORT                        R2 K2 [next]
        6 GETTABLEKS                       R3 R0 K0 ["Children"]
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+14]
       11 GETIMPORT                        R2 K4 [pairs]
       13 GETTABLEKS                       R3 R0 K0 ["Children"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 CALL                             R7 1 1
       20 ADD                              R1 R1 R7
       21 FORGLOOP                         R2 2 ; [-5]
       23 RETURN                           R1 1
       24 GETTABLEKS                       R3 R0 K6 ["Size"]
       26 ORK                              R2 R3 K5 [0]
       27 ADD                              R1 R1 R2
       28 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["count"]
        2 ORK                              R1 R2 K0 [0]
        3 GETTABLEKS                       R3 R0 K2 ["root"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R3 R0 K2 ["root"]
        8 GETTABLEKS                       R2 R3 K3 ["Size"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADN                            R2 0
       12 LOADNIL                          R3
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["valueFormat"]
       16 JUMPIFNOTEQKS                    R4 K5 ["memory"] ; [+6]
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R4 K8 [string.format]
       25 LOADK                            R5 K9 ["%d"]
       26 MOVE                             R6 R2
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 LOADNIL                          R4
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K10 ["id"]
       33 JUMPIFNOTEQKS                    R5 K11 ["Script"] ; [+19]
       35 GETUPVAL                         R5 2
       36 LOADK                            R7 K12 ["SummaryPane"]
       37 LOADK                            R8 K13 ["TotalScriptMemory"]
       38 DUPTABLE                         R9 K14 [{"memory", "count"}]
       39 SETTABLEKS                       R3 R9 K5 ["memory"]
       41 GETIMPORT                        R10 K8 [string.format]
       43 LOADK                            R11 K9 ["%d"]
       44 MOVE                             R12 R1
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K1 ["count"]
       48 NAMECALL                         R5 R5 K15 ["getText"]
       50 CALL                             R5 4 1
       51 MOVE                             R4 R5
       52 JUMP                             ; [+208]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R5 R6 K10 ["id"]
       56 JUMPIFNOTEQKS                    R5 K16 ["Triangles"] ; [+60]
       58 LOADN                            R5 0
       59 LOADN                            R6 0
       60 GETTABLEKS                       R7 R0 K2 ["root"]
       62 JUMPIFNOT                        R7 ; [+31]
       63 GETTABLEKS                       R8 R0 K2 ["root"]
       65 GETTABLEKS                       R7 R8 K17 ["Children"]
       67 JUMPIFNOT                        R7 ; [+26]
       68 GETIMPORT                        R7 K19 [pairs]
       70 GETTABLEKS                       R10 R0 K2 ["root"]
       72 GETTABLEKS                       R8 R10 K17 ["Children"]
       74 CALL                             R7 1 3
       75 FORGPREP_NEXT                    R7
       76 GETTABLEKS                       R12 R11 K20 ["Name"]
       78 JUMPIFEQKS                       R12 K21 ["Shadows"] ; [+13]
       80 GETTABLEKS                       R12 R11 K22 ["triangles"]
       82 JUMPIF                           R12 ; [+4]
       83 GETTABLEKS                       R12 R11 K3 ["Size"]
       85 JUMPIF                           R12 ; [+1]
       86 LOADN                            R12 0
       87 ADD                              R5 R5 R12
       88 GETTABLEKS                       R13 R11 K23 ["drawcalls"]
       90 ORK                              R12 R13 K0 [0]
       91 ADD                              R6 R6 R12
       92 FORGLOOP                         R7 2 ; [-17]
       94 GETIMPORT                        R7 K8 [string.format]
       96 LOADK                            R8 K9 ["%d"]
       97 MOVE                             R9 R5
       98 CALL                             R7 2 1
       99 GETIMPORT                        R8 K8 [string.format]
      101 LOADK                            R9 K9 ["%d"]
      102 MOVE                             R10 R6
      103 CALL                             R8 2 1
      104 GETUPVAL                         R9 2
      105 LOADK                            R11 K12 ["SummaryPane"]
      106 LOADK                            R12 K24 ["TotalSceneTriangles"]
      107 DUPTABLE                         R13 K25 [{"triangles", "drawcalls"}]
      108 SETTABLEKS                       R7 R13 K22 ["triangles"]
      110 SETTABLEKS                       R8 R13 K23 ["drawcalls"]
      112 NAMECALL                         R9 R9 K15 ["getText"]
      114 CALL                             R9 4 1
      115 MOVE                             R4 R9
      116 JUMP                             ; [+144]
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R5 R6 K10 ["id"]
      120 JUMPIFNOTEQKS                    R5 K26 ["Animation"] ; [+22]
      122 GETUPVAL                         R5 1
      123 MOVE                             R6 R2
      124 CALL                             R5 1 1
      125 GETUPVAL                         R6 2
      126 LOADK                            R8 K12 ["SummaryPane"]
      127 LOADK                            R9 K27 ["TotalAnimationMemory"]
      128 DUPTABLE                         R10 K14 [{"memory", "count"}]
      129 SETTABLEKS                       R5 R10 K5 ["memory"]
      131 GETIMPORT                        R11 K8 [string.format]
      133 LOADK                            R12 K9 ["%d"]
      134 MOVE                             R13 R1
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K1 ["count"]
      138 NAMECALL                         R6 R6 K15 ["getText"]
      140 CALL                             R6 4 1
      141 MOVE                             R4 R6
      142 JUMP                             ; [+118]
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R5 R6 K10 ["id"]
      146 JUMPIFNOTEQKS                    R5 K28 ["Audio"] ; [+19]
      148 GETUPVAL                         R5 2
      149 LOADK                            R7 K12 ["SummaryPane"]
      150 LOADK                            R8 K29 ["TotalAudioMemory"]
      151 DUPTABLE                         R9 K14 [{"memory", "count"}]
      152 SETTABLEKS                       R3 R9 K5 ["memory"]
      154 GETIMPORT                        R10 K8 [string.format]
      156 LOADK                            R11 K9 ["%d"]
      157 MOVE                             R12 R1
      158 CALL                             R10 2 1
      159 SETTABLEKS                       R10 R9 K1 ["count"]
      161 NAMECALL                         R5 R5 K15 ["getText"]
      163 CALL                             R5 4 1
      164 MOVE                             R4 R5
      165 JUMP                             ; [+95]
      166 GETUPVAL                         R6 0
      167 GETTABLEKS                       R5 R6 K10 ["id"]
      169 JUMPIFNOTEQKS                    R5 K30 ["Unparented"] ; [+28]
      171 LOADN                            R5 0
      172 DUPCLOSURE                       R6 K31 [PROTO_1]
      173 CAPTURE                          VAL R6
      174 GETTABLEKS                       R7 R0 K2 ["root"]
      176 JUMPIFNOT                        R7 ; [+5]
      177 MOVE                             R7 R6
      178 GETTABLEKS                       R8 R0 K2 ["root"]
      180 CALL                             R7 1 1
      181 MOVE                             R5 R7
      182 GETUPVAL                         R7 2
      183 LOADK                            R9 K12 ["SummaryPane"]
      184 LOADK                            R10 K32 ["TotalUnparentedInstances"]
      185 DUPTABLE                         R11 K33 [{"count"}]
      186 GETIMPORT                        R12 K8 [string.format]
      188 LOADK                            R13 K9 ["%d"]
      189 MOVE                             R14 R5
      190 CALL                             R12 2 1
      191 SETTABLEKS                       R12 R11 K1 ["count"]
      193 NAMECALL                         R7 R7 K15 ["getText"]
      195 CALL                             R7 4 1
      196 MOVE                             R4 R7
      197 JUMP                             ; [+63]
      198 GETUPVAL                         R6 0
      199 GETTABLEKS                       R5 R6 K10 ["id"]
      201 JUMPIFNOTEQKS                    R5 K34 ["InstanceComposition"] ; [+19]
      203 GETUPVAL                         R5 2
      204 LOADK                            R7 K12 ["SummaryPane"]
      205 LOADK                            R8 K35 ["TotalInstances"]
      206 DUPTABLE                         R9 K37 [{"count", "categories"}]
      207 SETTABLEKS                       R3 R9 K1 ["count"]
      209 GETIMPORT                        R10 K8 [string.format]
      211 LOADK                            R11 K9 ["%d"]
      212 MOVE                             R12 R1
      213 CALL                             R10 2 1
      214 SETTABLEKS                       R10 R9 K36 ["categories"]
      216 NAMECALL                         R5 R5 K15 ["getText"]
      218 CALL                             R5 4 1
      219 MOVE                             R4 R5
      220 JUMP                             ; [+40]
      221 GETUPVAL                         R6 0
      222 GETTABLEKS                       R5 R6 K4 ["valueFormat"]
      224 JUMPIFNOTEQKS                    R5 K5 ["memory"] ; [+19]
      226 GETUPVAL                         R5 2
      227 LOADK                            R7 K12 ["SummaryPane"]
      228 LOADK                            R8 K38 ["TotalMemory"]
      229 DUPTABLE                         R9 K14 [{"memory", "count"}]
      230 SETTABLEKS                       R3 R9 K5 ["memory"]
      232 GETIMPORT                        R10 K8 [string.format]
      234 LOADK                            R11 K9 ["%d"]
      235 MOVE                             R12 R1
      236 CALL                             R10 2 1
      237 SETTABLEKS                       R10 R9 K1 ["count"]
      239 NAMECALL                         R5 R5 K15 ["getText"]
      241 CALL                             R5 4 1
      242 MOVE                             R4 R5
      243 JUMP                             ; [+17]
      244 GETUPVAL                         R5 2
      245 LOADK                            R7 K12 ["SummaryPane"]
      246 LOADK                            R8 K39 ["TotalCountGeneric"]
      247 DUPTABLE                         R9 K41 [{"total", "count"}]
      248 SETTABLEKS                       R3 R9 K40 ["total"]
      250 GETIMPORT                        R10 K8 [string.format]
      252 LOADK                            R11 K9 ["%d"]
      253 MOVE                             R12 R1
      254 CALL                             R10 2 1
      255 SETTABLEKS                       R10 R9 K1 ["count"]
      257 NAMECALL                         R5 R5 K15 ["getText"]
      259 CALL                             R5 4 1
      260 MOVE                             R4 R5
      261 GETUPVAL                         R5 3
      262 JUMPIFNOT                        R5 ; [+48]
      263 GETIMPORT                        R5 K43 [next]
      265 GETUPVAL                         R6 3
      266 CALL                             R5 1 1
      267 JUMPIFNOT                        R5 ; [+43]
      268 GETUPVAL                         R5 4
      269 GETUPVAL                         R6 3
      270 GETUPVAL                         R7 5
      271 CALL                             R5 2 2
      272 LOADN                            R7 0
      273 JUMPIFNOTLT                      R7 R6 ; [+37]
      275 LOADNIL                          R7
      276 GETUPVAL                         R9 0
      277 GETTABLEKS                       R8 R9 K4 ["valueFormat"]
      279 JUMPIFNOTEQKS                    R8 K5 ["memory"] ; [+6]
      281 GETUPVAL                         R8 1
      282 MOVE                             R9 R5
      283 CALL                             R8 1 1
      284 MOVE                             R7 R8
      285 JUMP                             ; [+6]
      286 GETIMPORT                        R8 K8 [string.format]
      288 LOADK                            R9 K9 ["%d"]
      289 MOVE                             R10 R5
      290 CALL                             R8 2 1
      291 MOVE                             R7 R8
      292 GETUPVAL                         R8 2
      293 LOADK                            R10 K12 ["SummaryPane"]
      294 LOADK                            R11 K44 ["SelectedItemsPrefix"]
      295 DUPTABLE                         R12 K47 [{"selected", "count", "summary"}]
      296 SETTABLEKS                       R7 R12 K45 ["selected"]
      298 GETIMPORT                        R13 K8 [string.format]
      300 LOADK                            R14 K9 ["%d"]
      301 MOVE                             R15 R6
      302 CALL                             R13 2 1
      303 SETTABLEKS                       R13 R12 K1 ["count"]
      305 SETTABLEKS                       R4 R12 K46 ["summary"]
      307 NAMECALL                         R8 R8 K15 ["getText"]
      309 CALL                             R8 4 -1
      310 RETURN                           R8 -1
      311 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["queryInfo"]
        2 GETTABLEKS                       R2 R0 K1 ["query"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedIdsHash"]
        6 GETTABLEKS                       R4 R0 K3 ["localization"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 GETTABLEKS                       R5 R2 K4 ["getNodesObservable"]
       14 CALL                             R5 0 1
       15 GETTABLEKS                       R6 R2 K5 ["getTotalCountObservable"]
       17 CALL                             R6 0 1
       18 GETTABLEKS                       R7 R5 K6 ["getBinding"]
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R8 R6 K6 ["getBinding"]
       23 CALL                             R8 0 1
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K7 ["joinBindings"]
       27 DUPTABLE                         R10 K10 [{"root", "count"}]
       28 SETTABLEKS                       R7 R10 K8 ["root"]
       30 SETTABLEKS                       R8 R10 K9 ["count"]
       32 CALL                             R9 1 1
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 NAMECALL                         R9 R9 K11 ["map"]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K12 ["createElement"]
       46 LOADK                            R11 K13 ["Frame"]
       47 NEWTABLE                         R12 8 0
       49 GETIMPORT                        R13 K16 [UDim2.new]
       51 LOADN                            R14 1
       52 LOADN                            R15 0
       53 LOADN                            R16 0
       54 LOADN                            R17 34
       55 CALL                             R13 4 1
       56 SETTABLEKS                       R13 R12 K17 ["Size"]
       58 LOADN                            R13 0
       59 SETTABLEKS                       R13 R12 K18 ["BorderSizePixel"]
       61 GETTABLEKS                       R14 R0 K20 ["ZIndex"]
       63 ORK                              R13 R14 K19 [1]
       64 SETTABLEKS                       R13 R12 K20 ["ZIndex"]
       66 GETTABLEKS                       R13 R0 K21 ["LayoutOrder"]
       68 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R13 R14 K22 ["Tag"]
       73 LOADK                            R14 K23 ["SceneAnalysis-SummaryBar"]
       74 SETTABLE                         R14 R12 R13
       75 DUPTABLE                         R13 K26 [{"Padding", "TextLabel"}]
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R14 R15 K12 ["createElement"]
       79 LOADK                            R15 K27 ["UIPadding"]
       80 DUPTABLE                         R16 K30 [{"PaddingLeft", "PaddingRight"}]
       81 GETIMPORT                        R17 K32 [UDim.new]
       83 LOADN                            R18 0
       84 LOADN                            R19 10
       85 CALL                             R17 2 1
       86 SETTABLEKS                       R17 R16 K28 ["PaddingLeft"]
       88 GETIMPORT                        R17 K32 [UDim.new]
       90 LOADN                            R18 0
       91 LOADN                            R19 10
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K29 ["PaddingRight"]
       95 CALL                             R14 2 1
       96 SETTABLEKS                       R14 R13 K24 ["Padding"]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K12 ["createElement"]
      101 LOADK                            R15 K25 ["TextLabel"]
      102 NEWTABLE                         R16 8 0
      104 GETIMPORT                        R17 K34 [UDim2.fromScale]
      106 LOADN                            R18 1
      107 LOADN                            R19 1
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K17 ["Size"]
      111 LOADN                            R17 1
      112 SETTABLEKS                       R17 R16 K35 ["BackgroundTransparency"]
      114 GETIMPORT                        R17 K39 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      118 GETIMPORT                        R17 K42 [Enum.TextYAlignment.Center]
      120 SETTABLEKS                       R17 R16 K40 ["TextYAlignment"]
      122 LOADN                            R17 18
      123 SETTABLEKS                       R17 R16 K43 ["TextSize"]
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R17 R18 K22 ["Tag"]
      128 LOADK                            R18 K44 ["SceneAnalysis-StandardText"]
      129 SETTABLE                         R18 R16 R17
      130 SETTABLEKS                       R9 R16 K45 ["Text"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K25 ["TextLabel"]
      135 CALL                             R10 3 1
      136 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["formatSize"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_3]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
