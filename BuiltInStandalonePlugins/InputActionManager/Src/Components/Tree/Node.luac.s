PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setExpanded"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["expanded"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K0 ["inputType"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["createNextOrder"]
        9 CALL                             R3 0 1
       10 LOADN                            R6 1
       11 GETTABLEKS                       R4 R0 K2 ["depth"]
       13 LOADN                            R5 1
       14 FORNPREP                         R4
       15 LOADK                            R8 K3 ["DepthMarker%*"]
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R8 K4 ["format"]
       19 CALL                             R8 2 1
       20 MOVE                             R7 R8
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K5 ["createElement"]
       24 GETUPVAL                         R9 3
       25 DUPTABLE                         R10 K8 [{"LayoutOrder", "tag"}]
       26 MOVE                             R11 R3
       27 CALL                             R11 0 1
       28 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       30 LOADK                            R11 K9 ["spacer align-y-center align-x-center"]
       31 SETTABLEKS                       R11 R10 K7 ["tag"]
       33 DUPTABLE                         R11 K11 [{"Divider"}]
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R12 R13 K5 ["createElement"]
       37 GETUPVAL                         R13 4
       38 DUPTABLE                         R14 K13 [{"orientation", "tag"}]
       39 GETUPVAL                         R18 5
       40 GETTABLEKS                       R17 R18 K14 ["Enums"]
       42 GETTABLEKS                       R16 R17 K15 ["Orientation"]
       44 GETTABLEKS                       R15 R16 K16 ["Vertical"]
       46 SETTABLEKS                       R15 R14 K12 ["orientation"]
       48 LOADK                            R15 K17 ["auto-y"]
       49 SETTABLEKS                       R15 R14 K7 ["tag"]
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K10 ["Divider"]
       54 CALL                             R8 3 1
       55 SETTABLE                         R8 R1 R7
       56 FORNLOOP                         R4
       57 GETTABLEKS                       R4 R0 K18 ["expandable"]
       59 JUMPIFNOT                        R4 ; [+57]
       60 GETTABLEKS                       R4 R0 K19 ["setExpanded"]
       62 JUMPIFNOT                        R4 ; [+54]
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R4 R5 K5 ["createElement"]
       66 GETUPVAL                         R5 3
       67 DUPTABLE                         R6 K8 [{"LayoutOrder", "tag"}]
       68 MOVE                             R7 R3
       69 CALL                             R7 0 1
       70 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       72 LOADK                            R7 K9 ["spacer align-y-center align-x-center"]
       73 SETTABLEKS                       R7 R6 K7 ["tag"]
       75 DUPTABLE                         R7 K21 [{"IconButton"}]
       76 GETUPVAL                         R9 2
       77 GETTABLEKS                       R8 R9 K5 ["createElement"]
       79 GETUPVAL                         R9 6
       80 DUPTABLE                         R10 K26 [{"icon", "onActivated", "size", "testId"}]
       81 GETTABLEKS                       R12 R0 K27 ["expanded"]
       83 JUMPIFNOT                        R12 ; [+2]
       84 LOADK                            R11 K28 ["icons/actions/truncationCollapse_small"]
       85 JUMP                             ; [+1]
       86 LOADK                            R11 K29 ["icons/actions/truncationExpand_small"]
       87 SETTABLEKS                       R11 R10 K22 ["icon"]
       89 NEWCLOSURE                       R11 P0
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R11 R10 K23 ["onActivated"]
       93 GETUPVAL                         R14 5
       94 GETTABLEKS                       R13 R14 K14 ["Enums"]
       96 GETTABLEKS                       R12 R13 K30 ["IconSize"]
       98 GETTABLEKS                       R11 R12 K31 ["Small"]
      100 SETTABLEKS                       R11 R10 K24 ["size"]
      102 LOADK                            R12 K32 ["tree-node-expand-button-%*"]
      103 GETTABLEKS                       R14 R0 K33 ["name"]
      105 NAMECALL                         R12 R12 K4 ["format"]
      107 CALL                             R12 2 1
      108 MOVE                             R11 R12
      109 SETTABLEKS                       R11 R10 K25 ["testId"]
      111 CALL                             R8 2 1
      112 SETTABLEKS                       R8 R7 K20 ["IconButton"]
      114 CALL                             R4 3 1
      115 SETTABLEKS                       R4 R1 K34 ["ExpandButton"]
      117 DUPTABLE                         R4 K37 [{"ClassImage", "InstanceName"}]
      118 GETUPVAL                         R6 2
      119 GETTABLEKS                       R5 R6 K5 ["createElement"]
      121 GETUPVAL                         R6 3
      122 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
      123 MOVE                             R8 R3
      124 CALL                             R8 0 1
      125 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      127 LOADK                            R8 K9 ["spacer align-y-center align-x-center"]
      128 SETTABLEKS                       R8 R7 K7 ["tag"]
      130 DUPTABLE                         R8 K39 [{"Image"}]
      131 GETUPVAL                         R10 2
      132 GETTABLEKS                       R9 R10 K5 ["createElement"]
      134 GETUPVAL                         R10 7
      135 DUPTABLE                         R11 K43 [{"Image", "imageRectOffset", "imageRectSize", "ScaleType", "tag"}]
      136 GETTABLEKS                       R12 R2 K38 ["Image"]
      138 SETTABLEKS                       R12 R11 K38 ["Image"]
      140 GETTABLEKS                       R12 R2 K44 ["ImageRectOffset"]
      142 SETTABLEKS                       R12 R11 K40 ["imageRectOffset"]
      144 GETTABLEKS                       R12 R2 K45 ["ImageRectSize"]
      146 SETTABLEKS                       R12 R11 K41 ["imageRectSize"]
      148 GETIMPORT                        R12 K48 [Enum.ScaleType.Fit]
      150 SETTABLEKS                       R12 R11 K42 ["ScaleType"]
      152 LOADK                            R12 K49 ["spacer icon align-y-center align-x-center"]
      153 SETTABLEKS                       R12 R11 K7 ["tag"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K38 ["Image"]
      158 CALL                             R5 3 1
      159 SETTABLEKS                       R5 R4 K35 ["ClassImage"]
      161 GETUPVAL                         R6 2
      162 GETTABLEKS                       R5 R6 K5 ["createElement"]
      164 GETUPVAL                         R6 3
      165 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
      166 MOVE                             R8 R3
      167 CALL                             R8 0 1
      168 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      170 LOADK                            R8 K50 ["row align-y-center grow"]
      171 SETTABLEKS                       R8 R7 K7 ["tag"]
      173 DUPTABLE                         R8 K52 [{"Text"}]
      174 GETUPVAL                         R10 2
      175 GETTABLEKS                       R9 R10 K5 ["createElement"]
      177 GETUPVAL                         R11 5
      178 GETTABLEKS                       R10 R11 K51 ["Text"]
      180 DUPTABLE                         R11 K53 [{"tag", "Text"}]
      181 LOADK                            R12 K54 ["label text-body-medium auto-xy"]
      182 SETTABLEKS                       R12 R11 K7 ["tag"]
      184 GETTABLEKS                       R12 R0 K33 ["name"]
      186 SETTABLEKS                       R12 R11 K51 ["Text"]
      188 CALL                             R9 2 1
      189 SETTABLEKS                       R9 R8 K51 ["Text"]
      191 CALL                             R5 3 1
      192 SETTABLEKS                       R5 R4 K36 ["InstanceName"]
      194 GETTABLEKS                       R5 R0 K2 ["depth"]
      196 LOADN                            R6 0
      197 JUMPIFNOTLT                      R6 R5 ; [+56]
      199 GETUPVAL                         R6 2
      200 GETTABLEKS                       R5 R6 K5 ["createElement"]
      202 GETUPVAL                         R6 3
      203 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
      204 MOVE                             R8 R3
      205 CALL                             R8 0 1
      206 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      208 LOADK                            R8 K55 ["col grow align-y-center"]
      209 SETTABLEKS                       R8 R7 K7 ["tag"]
      211 DUPTABLE                         R8 K57 [{"LabelContainer", "Divider"}]
      212 GETUPVAL                         R10 2
      213 GETTABLEKS                       R9 R10 K5 ["createElement"]
      215 GETUPVAL                         R10 3
      216 DUPTABLE                         R11 K8 [{"LayoutOrder", "tag"}]
      217 LOADN                            R12 1
      218 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      220 LOADK                            R12 K58 ["tree-row row align-y-center size-full-full"]
      221 SETTABLEKS                       R12 R11 K7 ["tag"]
      223 MOVE                             R12 R4
      224 CALL                             R9 3 1
      225 SETTABLEKS                       R9 R8 K56 ["LabelContainer"]
      227 GETUPVAL                         R10 2
      228 GETTABLEKS                       R9 R10 K5 ["createElement"]
      230 GETUPVAL                         R10 4
      231 DUPTABLE                         R11 K59 [{"LayoutOrder", "orientation", "tag"}]
      232 LOADN                            R12 2
      233 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      235 GETUPVAL                         R15 5
      236 GETTABLEKS                       R14 R15 K14 ["Enums"]
      238 GETTABLEKS                       R13 R14 K15 ["Orientation"]
      240 GETTABLEKS                       R12 R13 K60 ["Horizontal"]
      242 SETTABLEKS                       R12 R11 K12 ["orientation"]
      244 LOADK                            R12 K61 ["auto-x"]
      245 SETTABLEKS                       R12 R11 K7 ["tag"]
      247 CALL                             R9 2 1
      248 SETTABLEKS                       R9 R8 K10 ["Divider"]
      250 CALL                             R5 3 1
      251 SETTABLEKS                       R5 R1 K62 ["StackedInstanceLabel"]
      253 JUMP                             ; [+8]
      254 GETTABLEKS                       R5 R4 K35 ["ClassImage"]
      256 SETTABLEKS                       R5 R1 K35 ["ClassImage"]
      258 GETTABLEKS                       R5 R4 K36 ["InstanceName"]
      260 SETTABLEKS                       R5 R1 K36 ["InstanceName"]
      262 GETUPVAL                         R6 2
      263 GETTABLEKS                       R5 R6 K5 ["createElement"]
      265 GETUPVAL                         R6 3
      266 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
      267 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
      269 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      271 LOADK                            R8 K63 ["columns-tree row align-y-center tree-row"]
      272 SETTABLEKS                       R8 R7 K7 ["tag"]
      274 MOVE                             R8 R1
      275 CALL                             R5 3 -1
      276 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       32 GETTABLEKS                       R6 R3 K12 ["Image"]
       34 GETTABLEKS                       R7 R3 K13 ["View"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R11 R0 K14 ["Src"]
       40 GETTABLEKS                       R10 R11 K15 ["Hooks"]
       42 GETTABLEKS                       R9 R10 K16 ["useIcon"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R11 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Types"]
       51 CALL                             R9 1 1
       52 DUPCLOSURE                       R10 K18 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 RETURN                           R10 1
