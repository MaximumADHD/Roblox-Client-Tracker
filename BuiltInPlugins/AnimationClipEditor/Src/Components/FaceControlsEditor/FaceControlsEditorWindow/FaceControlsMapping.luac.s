MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  NEWTABLE R2 1 0
  NEWTABLE R3 64 0
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 98
  LOADN R8 0
  LOADN R9 27
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K17 ["ChinRaiserUpperLip"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 80
  LOADN R8 0
  LOADN R9 33
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K18 ["ChinRaiser"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 20
  LOADN R8 0
  LOADN R9 249
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 180
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 50
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K21 ["FlatPucker"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 20
  LOADN R8 0
  LOADN R9 207
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 180
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 50
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K22 ["Funneler"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 68
  LOADN R8 0
  LOADN R9 8
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 231
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K23 ["LowerLipSuck"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 71
  LOADN R8 0
  LOADN R9 229
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 90
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K24 ["LipPresser"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 93
  LOADN R8 0
  LOADN R9 220
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 90
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 35
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K25 ["LipsTogether"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 106
  LOADN R8 0
  LOADN R9 240
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 80
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K29 ["Mouth"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K30 ["MouthLeft"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 70
  LOADN R8 0
  LOADN R9 240
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 80
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K29 ["Mouth"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K31 ["MouthRight"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 20
  LOADN R8 0
  LOADN R9 227
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 180
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 50
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K32 ["Pucker"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 66
  LOADN R8 0
  LOADN R9 191
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 36
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K33 ["UpperLipSuck"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 175
  LOADN R8 0
  LOADN R9 213
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K34 ["LeftCheekPuff"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 171
  LOADN R8 0
  LOADN R9 232
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K35 ["LeftDimpler"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 146
  LOADN R8 0
  LOADN R9 24
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 55
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K36 ["LeftLipCornerDown"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 120
  LOADN R8 0
  LOADN R9 18
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 65
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K37 ["LeftLowerLipDepressor"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 138
  LOADN R8 0
  LOADN R9 216
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 206
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K38 ["LeftLipCornerPuller"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 155
  LOADN R8 0
  LOADN R9 251
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K39 ["LeftLipStretcher"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 118
  LOADN R8 0
  LOADN R9 204
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 191
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K40 ["LeftUpperLipRaiser"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 213
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 76
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K41 ["RightCheekPuff"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 3
  LOADN R8 0
  LOADN R9 232
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 180
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K42 ["RightDimpler"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 28
  LOADN R8 0
  LOADN R9 24
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 125
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K43 ["RightLipCornerDown"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 53
  LOADN R8 0
  LOADN R9 18
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 114
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K44 ["RightLowerLipDepressor"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 36
  LOADN R8 0
  LOADN R9 216
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 126
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K45 ["RightLipCornerPuller"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 24
  LOADN R8 0
  LOADN R9 251
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 76
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K46 ["RightLipStretcher"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 58
  LOADN R8 0
  LOADN R9 204
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 146
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K47 ["RightUpperLipRaiser"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 118
  LOADN R8 0
  LOADN R9 50
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 90
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 40
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K48 ["JawDrop"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 64
  LOADN R8 0
  LOADN R9 42
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 60
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K49 ["Jaw"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K50 ["JawLeft"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 80
  LOADN R8 0
  LOADN R9 72
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 60
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K49 ["Jaw"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K51 ["JawRight"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 94
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 36
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K52 ["Corrugator"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 122
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 100
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 36
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K53 ["LeftBrowLowerer"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 145
  LOADN R8 0
  LOADN R9 58
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 186
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K54 ["LeftOuterBrowRaiser"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 102
  LOADN R8 0
  LOADN R9 181
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K55 ["LeftNoseWrinkler"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 105
  LOADN R8 0
  LOADN R9 58
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K56 ["LeftInnerBrowRaiser"]
  DUPTABLE R4 K20 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 56
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 80
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 36
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K57 ["RightBrowLowerer"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 28
  LOADN R8 0
  LOADN R9 58
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 146
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K58 ["RightOuterBrowRaiser"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 69
  LOADN R8 0
  LOADN R9 58
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K59 ["RightInnerBrowRaiser"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 75
  LOADN R8 0
  LOADN R9 181
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K60 ["RightNoseWrinkler"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 169
  LOADN R8 0
  LOADN R9 171
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 141
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K61 ["LeftCheekRaiser"]
  DUPTABLE R4 K62 [{"currentValue", "defaultValue", "position", "rotation", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 111
  LOADN R8 0
  LOADN R9 125
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADK R5 K63 ["LeftEye"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K64 ["LeftEyeUpperLidRaiser"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 111
  LOADN R8 0
  LOADN R9 143
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 44
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K63 ["LeftEye"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K65 ["LeftEyeClosed"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 5
  LOADN R8 0
  LOADN R9 171
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 194
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K66 ["RightCheekRaiser"]
  DUPTABLE R4 K62 [{"currentValue", "defaultValue", "position", "rotation", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 67
  LOADN R8 0
  LOADN R9 125
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADK R5 K67 ["RightEye"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K68 ["RightEyeUpperLidRaiser"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 67
  LOADN R8 0
  LOADN R9 143
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 166
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 44
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K67 ["RightEye"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K69 ["RightEyeClosed"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 168
  LOADN R8 0
  LOADN R9 219
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 90
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 50
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K70 ["Tongue"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K71 ["TongueDown"]
  DUPTABLE R4 K27 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "Tooltip"}]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADK R5 K28 [0.5]
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 164
  LOADN R8 0
  LOADN R9 219
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 90
  SETTABLEKS R5 R4 K12 ["rotation"]
  LOADN R5 50
  SETTABLEKS R5 R4 K19 ["customWidth"]
  LOADK R5 K70 ["Tongue"]
  SETTABLEKS R5 R4 K26 ["Tooltip"]
  SETTABLEKS R4 R3 K72 ["TongueUp"]
  DUPTABLE R4 K13 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["currentValue"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 135
  LOADN R8 0
  LOADN R9 219
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 180
  SETTABLEKS R5 R4 K12 ["rotation"]
  SETTABLEKS R4 R3 K73 ["TongueOut"]
  DUPTABLE R4 K74 [{"currentValue", "defaultValue", "position", "customWidth"}]
  GETIMPORT R5 K76 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["currentValue"]
  GETIMPORT R5 K76 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["defaultValue"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 110
  LOADN R8 0
  LOADN R9 145
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["position"]
  LOADN R5 30
  SETTABLEKS R5 R4 K19 ["customWidth"]
  SETTABLEKS R4 R3 K77 ["EyesDragBox"]
  SETTABLEKS R3 R2 K78 ["FacsControlToFaceSliderInfoMap"]
  RETURN R2 1
