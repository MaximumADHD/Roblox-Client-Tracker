PROTO_0:
        0 DUPTABLE                         R1 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R2 K6 ["Standalone"]
        2 SETTABLEKS                       R2 R1 K0 ["DataModel"]
        4 LOADK                            R2 K6 ["Standalone"]
        5 SETTABLEKS                       R2 R1 K1 ["PluginType"]
        7 LOADK                            R2 K7 ["Ribbon"]
        8 SETTABLEKS                       R2 R1 K2 ["PluginId"]
       10 LOADK                            R2 K8 ["Widgets"]
       11 SETTABLEKS                       R2 R1 K3 ["Category"]
       13 SETTABLEKS                       R0 R1 K4 ["ItemId"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 NEWTABLE                         R1 0 5
        4 DUPTABLE                         R2 K5 [{"id", "topic", "showNext", "spotlight"}]
        5 LOADK                            R3 K6 ["introduction"]
        6 SETTABLEKS                       R3 R2 K1 ["id"]
        8 LOADK                            R3 K7 ["Introduction"]
        9 SETTABLEKS                       R3 R2 K2 ["topic"]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["showNext"]
       14 DUPTABLE                         R3 K10 [{"TargetWidgetUri", "ShowHighlight"}]
       15 DUPTABLE                         R4 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       16 LOADK                            R5 K17 ["Standalone"]
       17 SETTABLEKS                       R5 R4 K11 ["DataModel"]
       19 LOADK                            R5 K17 ["Standalone"]
       20 SETTABLEKS                       R5 R4 K12 ["PluginType"]
       22 LOADK                            R5 K18 ["Ribbon"]
       23 SETTABLEKS                       R5 R4 K13 ["PluginId"]
       25 LOADK                            R5 K19 ["Widgets"]
       26 SETTABLEKS                       R5 R4 K14 ["Category"]
       28 LOADK                            R5 K18 ["Ribbon"]
       29 SETTABLEKS                       R5 R4 K15 ["ItemId"]
       31 SETTABLEKS                       R4 R3 K8 ["TargetWidgetUri"]
       33 LOADB                            R4 1
       34 SETTABLEKS                       R4 R3 K9 ["ShowHighlight"]
       36 SETTABLEKS                       R3 R2 K4 ["spotlight"]
       38 DUPTABLE                         R3 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
       39 LOADK                            R4 K22 ["playTestingControls"]
       40 SETTABLEKS                       R4 R3 K1 ["id"]
       42 LOADK                            R4 K23 ["Testing"]
       43 SETTABLEKS                       R4 R3 K2 ["topic"]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K3 ["showNext"]
       48 DUPTABLE                         R4 K10 [{"TargetWidgetUri", "ShowHighlight"}]
       49 DUPTABLE                         R5 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       50 LOADK                            R6 K17 ["Standalone"]
       51 SETTABLEKS                       R6 R5 K11 ["DataModel"]
       53 LOADK                            R6 K17 ["Standalone"]
       54 SETTABLEKS                       R6 R5 K12 ["PluginType"]
       56 LOADK                            R6 K18 ["Ribbon"]
       57 SETTABLEKS                       R6 R5 K13 ["PluginId"]
       59 LOADK                            R6 K19 ["Widgets"]
       60 SETTABLEKS                       R6 R5 K14 ["Category"]
       62 LOADK                            R6 K24 ["LeftMezzanine/TestMode_TestAndTestHere"]
       63 SETTABLEKS                       R6 R5 K15 ["ItemId"]
       65 SETTABLEKS                       R5 R4 K8 ["TargetWidgetUri"]
       67 LOADB                            R5 1
       68 SETTABLEKS                       R5 R4 K9 ["ShowHighlight"]
       70 SETTABLEKS                       R4 R3 K4 ["spotlight"]
       72 DUPTABLE                         R4 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       73 DUPTABLE                         R5 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       74 LOADK                            R6 K17 ["Standalone"]
       75 SETTABLEKS                       R6 R5 K11 ["DataModel"]
       77 LOADK                            R6 K17 ["Standalone"]
       78 SETTABLEKS                       R6 R5 K12 ["PluginType"]
       80 LOADK                            R6 K18 ["Ribbon"]
       81 SETTABLEKS                       R6 R5 K13 ["PluginId"]
       83 LOADK                            R6 K19 ["Widgets"]
       84 SETTABLEKS                       R6 R5 K14 ["Category"]
       86 LOADK                            R6 K24 ["LeftMezzanine/TestMode_TestAndTestHere"]
       87 SETTABLEKS                       R6 R5 K15 ["ItemId"]
       89 SETTABLEKS                       R5 R4 K8 ["TargetWidgetUri"]
       91 GETIMPORT                        R5 K31 [Vector2.new]
       93 LOADN                            R6 0
       94 LOADN                            R7 0
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K25 ["SubjectAnchorPoint"]
       98 GETIMPORT                        R5 K31 [Vector2.new]
      100 LOADN                            R6 0
      101 LOADN                            R7 1
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K26 ["TargetAnchorPoint"]
      105 GETIMPORT                        R5 K31 [Vector2.new]
      107 LOADN                            R6 0
      108 LOADN                            R7 10
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R4 K27 ["Offset"]
      112 SETTABLEKS                       R4 R3 K20 ["callout"]
      114 DUPTABLE                         R4 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
      115 LOADK                            R5 K32 ["interfaceControls"]
      116 SETTABLEKS                       R5 R4 K1 ["id"]
      118 LOADK                            R5 K33 ["UI"]
      119 SETTABLEKS                       R5 R4 K2 ["topic"]
      121 LOADB                            R5 1
      122 SETTABLEKS                       R5 R4 K3 ["showNext"]
      124 DUPTABLE                         R5 K10 [{"TargetWidgetUri", "ShowHighlight"}]
      125 DUPTABLE                         R6 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      126 LOADK                            R7 K17 ["Standalone"]
      127 SETTABLEKS                       R7 R6 K11 ["DataModel"]
      129 LOADK                            R7 K17 ["Standalone"]
      130 SETTABLEKS                       R7 R6 K12 ["PluginType"]
      132 LOADK                            R7 K18 ["Ribbon"]
      133 SETTABLEKS                       R7 R6 K13 ["PluginId"]
      135 LOADK                            R7 K19 ["Widgets"]
      136 SETTABLEKS                       R7 R6 K14 ["Category"]
      138 LOADK                            R7 K34 ["Tabs/BuiltIn_UITab"]
      139 SETTABLEKS                       R7 R6 K15 ["ItemId"]
      141 SETTABLEKS                       R6 R5 K8 ["TargetWidgetUri"]
      143 LOADB                            R6 1
      144 SETTABLEKS                       R6 R5 K9 ["ShowHighlight"]
      146 SETTABLEKS                       R5 R4 K4 ["spotlight"]
      148 DUPTABLE                         R5 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      149 DUPTABLE                         R6 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      150 LOADK                            R7 K17 ["Standalone"]
      151 SETTABLEKS                       R7 R6 K11 ["DataModel"]
      153 LOADK                            R7 K17 ["Standalone"]
      154 SETTABLEKS                       R7 R6 K12 ["PluginType"]
      156 LOADK                            R7 K18 ["Ribbon"]
      157 SETTABLEKS                       R7 R6 K13 ["PluginId"]
      159 LOADK                            R7 K19 ["Widgets"]
      160 SETTABLEKS                       R7 R6 K14 ["Category"]
      162 LOADK                            R7 K34 ["Tabs/BuiltIn_UITab"]
      163 SETTABLEKS                       R7 R6 K15 ["ItemId"]
      165 SETTABLEKS                       R6 R5 K8 ["TargetWidgetUri"]
      167 GETIMPORT                        R6 K31 [Vector2.new]
      169 LOADN                            R7 0
      170 LOADN                            R8 0
      171 CALL                             R6 2 1
      172 SETTABLEKS                       R6 R5 K25 ["SubjectAnchorPoint"]
      174 GETIMPORT                        R6 K31 [Vector2.new]
      176 LOADN                            R7 0
      177 LOADN                            R8 1
      178 CALL                             R6 2 1
      179 SETTABLEKS                       R6 R5 K26 ["TargetAnchorPoint"]
      181 GETIMPORT                        R6 K31 [Vector2.new]
      183 LOADN                            R7 0
      184 LOADN                            R8 10
      185 CALL                             R6 2 1
      186 SETTABLEKS                       R6 R5 K27 ["Offset"]
      188 SETTABLEKS                       R5 R4 K20 ["callout"]
      190 DUPTABLE                         R5 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
      191 LOADK                            R6 K35 ["scriptControls"]
      192 SETTABLEKS                       R6 R5 K1 ["id"]
      194 LOADK                            R6 K36 ["Script"]
      195 SETTABLEKS                       R6 R5 K2 ["topic"]
      197 LOADB                            R6 1
      198 SETTABLEKS                       R6 R5 K3 ["showNext"]
      200 DUPTABLE                         R6 K10 [{"TargetWidgetUri", "ShowHighlight"}]
      201 DUPTABLE                         R7 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      202 LOADK                            R8 K17 ["Standalone"]
      203 SETTABLEKS                       R8 R7 K11 ["DataModel"]
      205 LOADK                            R8 K17 ["Standalone"]
      206 SETTABLEKS                       R8 R7 K12 ["PluginType"]
      208 LOADK                            R8 K18 ["Ribbon"]
      209 SETTABLEKS                       R8 R7 K13 ["PluginId"]
      211 LOADK                            R8 K19 ["Widgets"]
      212 SETTABLEKS                       R8 R7 K14 ["Category"]
      214 LOADK                            R8 K37 ["Tabs/BuiltIn_ScriptTab"]
      215 SETTABLEKS                       R8 R7 K15 ["ItemId"]
      217 SETTABLEKS                       R7 R6 K8 ["TargetWidgetUri"]
      219 LOADB                            R7 1
      220 SETTABLEKS                       R7 R6 K9 ["ShowHighlight"]
      222 SETTABLEKS                       R6 R5 K4 ["spotlight"]
      224 DUPTABLE                         R6 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      225 DUPTABLE                         R7 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      226 LOADK                            R8 K17 ["Standalone"]
      227 SETTABLEKS                       R8 R7 K11 ["DataModel"]
      229 LOADK                            R8 K17 ["Standalone"]
      230 SETTABLEKS                       R8 R7 K12 ["PluginType"]
      232 LOADK                            R8 K18 ["Ribbon"]
      233 SETTABLEKS                       R8 R7 K13 ["PluginId"]
      235 LOADK                            R8 K19 ["Widgets"]
      236 SETTABLEKS                       R8 R7 K14 ["Category"]
      238 LOADK                            R8 K37 ["Tabs/BuiltIn_ScriptTab"]
      239 SETTABLEKS                       R8 R7 K15 ["ItemId"]
      241 SETTABLEKS                       R7 R6 K8 ["TargetWidgetUri"]
      243 GETIMPORT                        R7 K31 [Vector2.new]
      245 LOADN                            R8 0
      246 LOADN                            R9 0
      247 CALL                             R7 2 1
      248 SETTABLEKS                       R7 R6 K25 ["SubjectAnchorPoint"]
      250 GETIMPORT                        R7 K31 [Vector2.new]
      252 LOADN                            R8 0
      253 LOADN                            R9 1
      254 CALL                             R7 2 1
      255 SETTABLEKS                       R7 R6 K26 ["TargetAnchorPoint"]
      257 GETIMPORT                        R7 K31 [Vector2.new]
      259 LOADN                            R8 0
      260 LOADN                            R9 10
      261 CALL                             R7 2 1
      262 SETTABLEKS                       R7 R6 K27 ["Offset"]
      264 SETTABLEKS                       R6 R5 K20 ["callout"]
      266 DUPTABLE                         R6 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
      267 LOADK                            R7 K38 ["customizationControls"]
      268 SETTABLEKS                       R7 R6 K1 ["id"]
      270 LOADK                            R7 K39 ["Customization"]
      271 SETTABLEKS                       R7 R6 K2 ["topic"]
      273 LOADB                            R7 1
      274 SETTABLEKS                       R7 R6 K3 ["showNext"]
      276 DUPTABLE                         R7 K10 [{"TargetWidgetUri", "ShowHighlight"}]
      277 DUPTABLE                         R8 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      278 LOADK                            R9 K17 ["Standalone"]
      279 SETTABLEKS                       R9 R8 K11 ["DataModel"]
      281 LOADK                            R9 K17 ["Standalone"]
      282 SETTABLEKS                       R9 R8 K12 ["PluginType"]
      284 LOADK                            R9 K18 ["Ribbon"]
      285 SETTABLEKS                       R9 R8 K13 ["PluginId"]
      287 LOADK                            R9 K19 ["Widgets"]
      288 SETTABLEKS                       R9 R8 K14 ["Category"]
      290 LOADK                            R9 K40 ["Tabs/Reserved_Custom"]
      291 SETTABLEKS                       R9 R8 K15 ["ItemId"]
      293 SETTABLEKS                       R8 R7 K8 ["TargetWidgetUri"]
      295 LOADB                            R8 1
      296 SETTABLEKS                       R8 R7 K9 ["ShowHighlight"]
      298 SETTABLEKS                       R7 R6 K4 ["spotlight"]
      300 DUPTABLE                         R7 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      301 DUPTABLE                         R8 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      302 LOADK                            R9 K17 ["Standalone"]
      303 SETTABLEKS                       R9 R8 K11 ["DataModel"]
      305 LOADK                            R9 K17 ["Standalone"]
      306 SETTABLEKS                       R9 R8 K12 ["PluginType"]
      308 LOADK                            R9 K18 ["Ribbon"]
      309 SETTABLEKS                       R9 R8 K13 ["PluginId"]
      311 LOADK                            R9 K19 ["Widgets"]
      312 SETTABLEKS                       R9 R8 K14 ["Category"]
      314 LOADK                            R9 K40 ["Tabs/Reserved_Custom"]
      315 SETTABLEKS                       R9 R8 K15 ["ItemId"]
      317 SETTABLEKS                       R8 R7 K8 ["TargetWidgetUri"]
      319 GETIMPORT                        R8 K31 [Vector2.new]
      321 LOADN                            R9 0
      322 LOADN                            R10 0
      323 CALL                             R8 2 1
      324 SETTABLEKS                       R8 R7 K25 ["SubjectAnchorPoint"]
      326 GETIMPORT                        R8 K31 [Vector2.new]
      328 LOADN                            R9 0
      329 LOADN                            R10 1
      330 CALL                             R8 2 1
      331 SETTABLEKS                       R8 R7 K26 ["TargetAnchorPoint"]
      333 GETIMPORT                        R8 K31 [Vector2.new]
      335 LOADN                            R9 0
      336 LOADN                            R10 10
      337 CALL                             R8 2 1
      338 SETTABLEKS                       R8 R7 K27 ["Offset"]
      340 SETTABLEKS                       R7 R6 K20 ["callout"]
      342 SETLIST                          R1 R2 5 [1]
      344 DUPTABLE                         R2 K43 [{"id", "steps", "shouldShowCompletedDialog"}]
      345 LOADK                            R3 K44 ["RibbonWalkthrough"]
      346 SETTABLEKS                       R3 R2 K1 ["id"]
      348 SETTABLEKS                       R1 R2 K41 ["steps"]
      350 LOADB                            R3 0
      351 SETTABLEKS                       R3 R2 K42 ["shouldShowCompletedDialog"]
      353 RETURN                           R2 1
