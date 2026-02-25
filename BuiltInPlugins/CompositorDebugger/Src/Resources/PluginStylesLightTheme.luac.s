MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K29 [{"InactiveLayer", "ActiveLayer", "LayerHover", "ActiveTimeBar", "InactiveTimeBar", "HistoryLegend1", "HistoryLegend2", "HistoryLegend3", "AdornmentDot1", "AdornmentDot2", "AdornmentDot3", "AdornmentDot4", "AdornmentDot5", "AdornmentDot6", "AdornmentDot7", "AdornmentDot8", "AdornmentDot9", "AdornmentDot10", "AdornmentDot11"}]
       19 GETIMPORT                        R4 K32 [Color3.fromHex]
       21 LOADK                            R5 K33 ["#989898"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["InactiveLayer"]
       25 GETIMPORT                        R4 K32 [Color3.fromHex]
       27 LOADK                            R5 K34 ["#1D1D1D"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K11 ["ActiveLayer"]
       31 GETIMPORT                        R4 K32 [Color3.fromHex]
       33 LOADK                            R5 K35 ["#E4EEFE"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K12 ["LayerHover"]
       37 GETIMPORT                        R4 K32 [Color3.fromHex]
       39 LOADK                            R5 K36 ["#008BDB"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K13 ["ActiveTimeBar"]
       43 GETIMPORT                        R4 K32 [Color3.fromHex]
       45 LOADK                            R5 K33 ["#989898"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K14 ["InactiveTimeBar"]
       49 GETIMPORT                        R4 K32 [Color3.fromHex]
       51 LOADK                            R5 K37 ["#E55681"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K15 ["HistoryLegend1"]
       55 GETIMPORT                        R4 K32 [Color3.fromHex]
       57 LOADK                            R5 K38 ["#03AF52"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K16 ["HistoryLegend2"]
       61 GETIMPORT                        R4 K32 [Color3.fromHex]
       63 LOADK                            R5 K39 ["#069DD0"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K17 ["HistoryLegend3"]
       67 GETIMPORT                        R4 K32 [Color3.fromHex]
       69 LOADK                            R5 K40 ["#C5A349"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K18 ["AdornmentDot1"]
       73 GETIMPORT                        R4 K32 [Color3.fromHex]
       75 LOADK                            R5 K41 ["#D97F16"]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K19 ["AdornmentDot2"]
       79 GETIMPORT                        R4 K32 [Color3.fromHex]
       81 LOADK                            R5 K37 ["#E55681"]
       82 CALL                             R4 1 1
       83 SETTABLEKS                       R4 R3 K20 ["AdornmentDot3"]
       85 GETIMPORT                        R4 K32 [Color3.fromHex]
       87 LOADK                            R5 K42 ["#DD31BE"]
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R4 R3 K21 ["AdornmentDot4"]
       91 GETIMPORT                        R4 K32 [Color3.fromHex]
       93 LOADK                            R5 K43 ["#8E41F1"]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R4 R3 K22 ["AdornmentDot5"]
       97 GETIMPORT                        R4 K32 [Color3.fromHex]
       99 LOADK                            R5 K39 ["#069DD0"]
      100 CALL                             R4 1 1
      101 SETTABLEKS                       R4 R3 K23 ["AdornmentDot6"]
      103 GETIMPORT                        R4 K32 [Color3.fromHex]
      105 LOADK                            R5 K44 ["#16BF9B"]
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R4 R3 K24 ["AdornmentDot7"]
      109 GETIMPORT                        R4 K32 [Color3.fromHex]
      111 LOADK                            R5 K38 ["#03AF52"]
      112 CALL                             R4 1 1
      113 SETTABLEKS                       R4 R3 K25 ["AdornmentDot8"]
      115 GETIMPORT                        R4 K32 [Color3.fromHex]
      117 LOADK                            R5 K45 ["#6EB200"]
      118 CALL                             R4 1 1
      119 SETTABLEKS                       R4 R3 K26 ["AdornmentDot9"]
      121 GETIMPORT                        R4 K32 [Color3.fromHex]
      123 LOADK                            R5 K46 ["#B2BF03"]
      124 CALL                             R4 1 1
      125 SETTABLEKS                       R4 R3 K27 ["AdornmentDot10"]
      127 GETIMPORT                        R4 K32 [Color3.fromHex]
      129 LOADK                            R5 K47 ["#9E9700"]
      130 CALL                             R4 1 1
      131 SETTABLEKS                       R4 R3 K28 ["AdornmentDot11"]
      133 MOVE                             R4 R2
      134 LOADK                            R5 K48 ["CompositorDebuggerLightTheme"]
      135 NEWTABLE                         R6 0 0
      137 MOVE                             R7 R3
      138 CALL                             R4 3 -1
      139 RETURN                           R4 -1
