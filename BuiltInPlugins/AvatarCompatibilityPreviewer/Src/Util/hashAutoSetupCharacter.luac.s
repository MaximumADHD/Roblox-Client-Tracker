PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["Instance"] [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["serializeInstance"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K4 ["EnumItem"] [+11]
  LOADK R2 K5 ["Enum.%*.%*"]
  GETTABLEKS R4 R0 K6 ["EnumType"]
  GETTABLEKS R5 R0 K7 ["Name"]
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K9 ["BrickColor"] [+4]
  GETTABLEKS R1 R0 K7 ["Name"]
  RETURN R1 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K10 ["Color3"] [+12]
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K11 ["R"]
  GETTABLEKS R3 R0 K12 ["G"]
  GETTABLEKS R4 R0 K13 ["B"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K14 ["CFrame"] [+9]
  NEWTABLE R1 0 1
  NAMECALL R2 R0 K15 ["GetComponents"]
  CALL R2 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K16 ["Vector3"] [+12]
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K17 ["X"]
  GETTABLEKS R3 R0 K18 ["Y"]
  GETTABLEKS R4 R0 K19 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1
  RETURN R0 1

PROTO_1:
  LOADK R3 K0 ["MeshPart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+97]
  DUPTABLE R1 K14 [{"name", "className", "meshId", "textureId", "material", "materialVariant", "transparency", "reflectance", "color", "size", "cframe", "children"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K18 ["MeshId"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["meshId"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K19 ["TextureID"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["textureId"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K20 ["Material"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["material"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K21 ["MaterialVariant"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["materialVariant"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K22 ["Transparency"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["transparency"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K23 ["Reflectance"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["reflectance"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K24 ["Color"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["color"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K25 ["Size"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["size"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K26 ["CFrame"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["cframe"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K27 ["serializeChildren"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["children"]
  RETURN R1 1
  LOADK R3 K28 ["Decal"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+34]
  DUPTABLE R1 K30 [{"name", "className", "texture", "transparency"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K31 ["Texture"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K29 ["texture"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K22 ["Transparency"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["transparency"]
  RETURN R1 1
  LOADK R3 K31 ["Texture"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+34]
  DUPTABLE R1 K30 [{"name", "className", "texture", "transparency"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K31 ["Texture"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K29 ["texture"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K22 ["Transparency"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["transparency"]
  RETURN R1 1
  LOADK R3 K32 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+73]
  DUPTABLE R1 K33 [{"name", "className", "color", "material", "materialVariant", "transparency", "reflectance", "size", "children"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K24 ["Color"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["color"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K20 ["Material"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["material"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K21 ["MaterialVariant"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["materialVariant"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K22 ["Transparency"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["transparency"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K23 ["Reflectance"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["reflectance"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K25 ["Size"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["size"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K27 ["serializeChildren"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["children"]
  RETURN R1 1
  LOADK R3 K34 ["BodyColors"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+73]
  DUPTABLE R1 K41 [{"name", "className", "headColor", "leftArmColor", "leftLegColor", "rightArmColor", "rightLegColor", "torsoColor", "children"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K42 ["HeadColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K35 ["headColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K43 ["LeftArmColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K36 ["leftArmColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K44 ["LeftLegColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K37 ["leftLegColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K45 ["RightArmColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K38 ["rightArmColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K46 ["RightLegColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K39 ["rightLegColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K47 ["TorsoColor"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K40 ["torsoColor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K27 ["serializeChildren"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["children"]
  RETURN R1 1
  LOADK R3 K48 ["SurfaceAppearance"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+65]
  DUPTABLE R1 K53 [{"name", "className", "colorMap", "normalMap", "metalnessMap", "roughnessMap", "color", "children"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K54 ["ColorMap"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K49 ["colorMap"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K55 ["NormalMap"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K50 ["normalMap"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K56 ["MetalnessMap"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K51 ["metalnessMap"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K57 ["RoughnessMap"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K52 ["roughnessMap"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K24 ["Color"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["color"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K27 ["serializeChildren"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["children"]
  RETURN R1 1
  DUPTABLE R1 K58 [{"name", "className", "children"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K16 ["Name"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["serialize"]
  GETTABLEKS R3 R0 K17 ["ClassName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["className"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K27 ["serializeChildren"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["children"]
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 0
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  MOVE R8 R1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["serializeInstance"]
  MOVE R10 R6
  CALL R9 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K4 [table.insert]
  CALL R7 -1 0
  FORGLOOP R2 2 [-11]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["model"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["Must have model"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["serialize"]
  GETTABLEKS R2 R0 K0 ["model"]
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K5 ["JSONEncode"]
  CALL R2 2 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["sha256"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K15 ["serialize"]
  DUPCLOSURE R5 K16 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K17 ["serializeInstance"]
  DUPCLOSURE R5 K18 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K19 ["serializeChildren"]
  DUPCLOSURE R5 K20 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R5 1
