PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["useSystemMenuControls called without StudioCustomWindowChromeFeature engine feature"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R1 1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFeatureStudioCustomWindowChrome"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K6 ["Src"]
       25 GETTABLEKS                       R3 R3 K10 ["Resources"]
       27 GETTABLEKS                       R3 R3 K11 ["ControlDefinitions"]
       29 GETTABLEKS                       R3 R3 K12 ["SystemMenuControls"]
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R3 K13 ["FileMenu"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R3 K14 ["EditMenu"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R3 K15 ["ViewMenu"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R3 K16 ["PluginsMenu"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R3 K17 ["TestMenu"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R3 K18 ["WindowMenu"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R3 K19 ["HelpMenu"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R3 K20 ["StartPage"]
       70 GETTABLEKS                       R12 R12 K13 ["FileMenu"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R3 K20 ["StartPage"]
       77 GETTABLEKS                       R13 R13 K16 ["PluginsMenu"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R3 K20 ["StartPage"]
       84 GETTABLEKS                       R14 R14 K19 ["HelpMenu"]
       86 CALL                             R13 1 1
       87 NEWTABLE                         R14 0 7
       89 DUPTABLE                         R15 K25 [{["Id"] = "File", ["TitleKey"], ["Controls"]}]
       90 NEWTABLE                         R16 0 4
       92 LOADK                            R17 K26 ["Studio"]
       93 LOADK                            R18 K27 ["Common"]
       94 LOADK                            R19 K28 ["Action"]
       95 LOADK                            R20 K22 ["File"]
       96 SETLIST                          R16 R17 4 [1]
       98 SETTABLEKS                       R16 R15 K23 ["TitleKey"]
      100 SETTABLEKS                       R4 R15 K24 ["Controls"]
      102 DUPTABLE                         R16 K30 [{["Id"] = "Edit", ["TitleKey"], ["Controls"]}]
      103 NEWTABLE                         R17 0 4
      105 LOADK                            R18 K26 ["Studio"]
      106 LOADK                            R19 K31 ["SystemMenu"]
      107 LOADK                            R20 K32 ["Title"]
      108 LOADK                            R21 K29 ["Edit"]
      109 SETLIST                          R17 R18 4 [1]
      111 SETTABLEKS                       R17 R16 K23 ["TitleKey"]
      113 SETTABLEKS                       R5 R16 K24 ["Controls"]
      115 DUPTABLE                         R17 K34 [{["Id"] = "View", ["TitleKey"], ["Controls"]}]
      116 NEWTABLE                         R18 0 4
      118 LOADK                            R19 K26 ["Studio"]
      119 LOADK                            R20 K31 ["SystemMenu"]
      120 LOADK                            R21 K32 ["Title"]
      121 LOADK                            R22 K33 ["View"]
      122 SETLIST                          R18 R19 4 [1]
      124 SETTABLEKS                       R18 R17 K23 ["TitleKey"]
      126 SETTABLEKS                       R6 R17 K24 ["Controls"]
      128 DUPTABLE                         R18 K36 [{["Id"] = "Plugins", ["TitleKey"], ["Controls"]}]
      129 NEWTABLE                         R19 0 4
      131 LOADK                            R20 K26 ["Studio"]
      132 LOADK                            R21 K31 ["SystemMenu"]
      133 LOADK                            R22 K32 ["Title"]
      134 LOADK                            R23 K35 ["Plugins"]
      135 SETLIST                          R19 R20 4 [1]
      137 SETTABLEKS                       R19 R18 K23 ["TitleKey"]
      139 SETTABLEKS                       R7 R18 K24 ["Controls"]
      141 DUPTABLE                         R19 K38 [{["Id"] = "Test", ["TitleKey"], ["Controls"]}]
      142 NEWTABLE                         R20 0 4
      144 LOADK                            R21 K26 ["Studio"]
      145 LOADK                            R22 K31 ["SystemMenu"]
      146 LOADK                            R23 K32 ["Title"]
      147 LOADK                            R24 K37 ["Test"]
      148 SETLIST                          R20 R21 4 [1]
      150 SETTABLEKS                       R20 R19 K23 ["TitleKey"]
      152 SETTABLEKS                       R8 R19 K24 ["Controls"]
      154 DUPTABLE                         R20 K40 [{["Id"] = "Window", ["TitleKey"], ["Controls"]}]
      155 NEWTABLE                         R21 0 4
      157 LOADK                            R22 K26 ["Studio"]
      158 LOADK                            R23 K31 ["SystemMenu"]
      159 LOADK                            R24 K32 ["Title"]
      160 LOADK                            R25 K39 ["Window"]
      161 SETLIST                          R21 R22 4 [1]
      163 SETTABLEKS                       R21 R20 K23 ["TitleKey"]
      165 SETTABLEKS                       R9 R20 K24 ["Controls"]
      167 DUPTABLE                         R21 K42 [{["Id"] = "Help", ["TitleKey"], ["Controls"]}]
      168 NEWTABLE                         R22 0 4
      170 LOADK                            R23 K26 ["Studio"]
      171 LOADK                            R24 K27 ["Common"]
      172 LOADK                            R25 K28 ["Action"]
      173 LOADK                            R26 K41 ["Help"]
      174 SETLIST                          R22 R23 4 [1]
      176 SETTABLEKS                       R22 R21 K23 ["TitleKey"]
      178 SETTABLEKS                       R10 R21 K24 ["Controls"]
      180 SETLIST                          R14 R15 7 [1]
      182 NEWTABLE                         R15 0 3
      184 DUPTABLE                         R16 K25 [{["Id"] = "File", ["TitleKey"], ["Controls"]}]
      185 NEWTABLE                         R17 0 4
      187 LOADK                            R18 K26 ["Studio"]
      188 LOADK                            R19 K27 ["Common"]
      189 LOADK                            R20 K28 ["Action"]
      190 LOADK                            R21 K22 ["File"]
      191 SETLIST                          R17 R18 4 [1]
      193 SETTABLEKS                       R17 R16 K23 ["TitleKey"]
      195 SETTABLEKS                       R11 R16 K24 ["Controls"]
      197 DUPTABLE                         R17 K36 [{["Id"] = "Plugins", ["TitleKey"], ["Controls"]}]
      198 NEWTABLE                         R18 0 4
      200 LOADK                            R19 K26 ["Studio"]
      201 LOADK                            R20 K31 ["SystemMenu"]
      202 LOADK                            R21 K32 ["Title"]
      203 LOADK                            R22 K35 ["Plugins"]
      204 SETLIST                          R18 R19 4 [1]
      206 SETTABLEKS                       R18 R17 K23 ["TitleKey"]
      208 SETTABLEKS                       R12 R17 K24 ["Controls"]
      210 DUPTABLE                         R18 K42 [{["Id"] = "Help", ["TitleKey"], ["Controls"]}]
      211 NEWTABLE                         R19 0 4
      213 LOADK                            R20 K26 ["Studio"]
      214 LOADK                            R21 K27 ["Common"]
      215 LOADK                            R22 K28 ["Action"]
      216 LOADK                            R23 K41 ["Help"]
      217 SETLIST                          R19 R20 4 [1]
      219 SETTABLEKS                       R19 R18 K23 ["TitleKey"]
      221 SETTABLEKS                       R13 R18 K24 ["Controls"]
      223 SETLIST                          R15 R16 3 [1]
      225 DUPCLOSURE                       R16 K43 [PROTO_0]
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R14
      228 CAPTURE                          VAL R15
      229 RETURN                           R16 1
