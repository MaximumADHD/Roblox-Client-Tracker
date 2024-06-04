PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["plugin"]
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 3
  NEWTABLE R4 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["Tag"]
  LOADK R6 K3 ["X-Fill X-Column X-Top"]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K6 [UDim2.fromOffset]
  LOADN R6 69
  LOADN R7 44
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Size"]
  DUPTABLE R5 K10 [{"StyleLink", "ViewSectionControls"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K8 ["StyleLink"]
  DUPTABLE R8 K12 [{"StyleSheet"}]
  SETTABLEKS R1 R8 K11 ["StyleSheet"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["StyleLink"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  CALL R6 1 1
  SETTABLEKS R6 R5 K9 ["ViewSectionControls"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Sections"]
  GETTABLEKS R3 R4 K11 ["ViewSectionControls"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["UI"]
  GETTABLEKS R5 R4 K14 ["Pane"]
  GETTABLEKS R7 R3 K15 ["Styling"]
  GETTABLEKS R6 R7 K16 ["registerPluginStyles"]
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  DUPTABLE R8 K21 [{"name", "summary", "stories"}]
  LOADK R9 K11 ["ViewSectionControls"]
  SETTABLEKS R9 R8 K18 ["name"]
  LOADK R9 K22 ["Renders the custom controls for the 'View' section of the visualization modes plugin"]
  SETTABLEKS R9 R8 K19 ["summary"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K24 [{"name", "story"}]
  LOADK R11 K11 ["ViewSectionControls"]
  SETTABLEKS R11 R10 K18 ["name"]
  SETTABLEKS R7 R10 K23 ["story"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K20 ["stories"]
  RETURN R8 1
