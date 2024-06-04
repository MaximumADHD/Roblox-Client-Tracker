PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Styling"]
  GETTABLEKS R1 R2 K1 ["registerPluginStyles"]
  GETTABLEKS R2 R0 K2 ["plugin"]
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 3
  NEWTABLE R4 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Tag"]
  LOADK R6 K5 ["X-Fill X-Column X-Top"]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K8 [UDim2.fromOffset]
  LOADN R6 69
  LOADN R7 44
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Size"]
  DUPTABLE R5 K12 [{"StyleLink", "HighlightTextLabel"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K10 ["StyleLink"]
  DUPTABLE R8 K14 [{"StyleSheet"}]
  SETTABLEKS R1 R8 K13 ["StyleSheet"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["StyleLink"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K17 [{"Text", "MatchIndexes"}]
  LOADK R9 K18 ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus laoreet"]
  SETTABLEKS R9 R8 K15 ["Text"]
  NEWTABLE R9 0 3
  LOADN R10 1
  LOADN R11 3
  LOADN R12 4
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K16 ["MatchIndexes"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["HighlightTextLabel"]
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
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["HighlightTextLabel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["UI"]
  GETTABLEKS R5 R4 K13 ["Pane"]
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  DUPTABLE R7 K18 [{"name", "summary", "stories"}]
  LOADK R8 K10 ["HighlightTextLabel"]
  SETTABLEKS R8 R7 K15 ["name"]
  LOADK R8 K19 ["This text label allows for highlighting specific parts of the text based upon a fuzzy search match."]
  SETTABLEKS R8 R7 K16 ["summary"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K21 [{"name", "story"}]
  LOADK R10 K10 ["HighlightTextLabel"]
  SETTABLEKS R10 R9 K15 ["name"]
  SETTABLEKS R6 R9 K20 ["story"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K17 ["stories"]
  RETURN R7 1
