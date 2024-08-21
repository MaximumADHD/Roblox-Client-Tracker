PROTO_0:
  NEWTABLE R1 128 0
  LOADK R4 K0 ["General"]
  LOADK R5 K1 ["CategoryModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["FreeModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K4 ["CategoryDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K5 ["CategoryDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K6 ["FreeDecals"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K7 ["CategoryMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K8 ["CategoryMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K9 ["FreeMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K10 ["CategoryAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K11 ["FreeAudio"]
  LOADK R4 K0 ["General"]
  LOADK R5 K12 ["CategoryFonts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K13 ["FreeFonts"]
  LOADK R4 K0 ["General"]
  LOADK R5 K14 ["CategoryPaidPlugins"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K15 ["PaidPlugins"]
  LOADK R4 K0 ["General"]
  LOADK R5 K16 ["CategoryVideos"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K17 ["FreeVideo"]
  LOADK R4 K0 ["General"]
  LOADK R5 K18 ["CategoryMyModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K19 ["MyModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K20 ["CategoryMyDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K21 ["CategoryMyDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K22 ["MyDecals"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K23 ["CategoryMyMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K24 ["CategoryMyMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["MyMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K26 ["CategoryMyAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K27 ["MyAudio"]
  LOADK R4 K0 ["General"]
  LOADK R5 K28 ["CategoryMyPlugins"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K29 ["MyPlugins"]
  LOADK R4 K0 ["General"]
  LOADK R5 K30 ["CategoryMyPackages"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K31 ["MyPackages"]
  LOADK R4 K0 ["General"]
  LOADK R5 K32 ["CategoryMyVideos"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K33 ["MyVideo"]
  LOADK R4 K0 ["General"]
  LOADK R5 K34 ["CategoryMyAnimations"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K35 ["MyAnimations"]
  LOADK R4 K0 ["General"]
  LOADK R5 K36 ["CategoryMyFonts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K37 ["MyFonts"]
  LOADK R4 K0 ["General"]
  LOADK R5 K38 ["CategoryRecentModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K39 ["RecentModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K40 ["CategoryRecentDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K41 ["CategoryRecentDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K42 ["RecentDecals"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K43 ["CategoryRecentMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K44 ["CategoryRecentMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K45 ["RecentMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K46 ["CategoryRecentAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K47 ["RecentAudio"]
  LOADK R4 K0 ["General"]
  LOADK R5 K48 ["CategoryRecentVideos"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K49 ["RecentVideo"]
  LOADK R4 K0 ["General"]
  LOADK R5 K50 ["CategoryRecentAnimations"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["RecentAnimations"]
  LOADK R4 K0 ["General"]
  LOADK R5 K52 ["CategoryRecentFonts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K53 ["RecentFonts"]
  LOADK R4 K0 ["General"]
  LOADK R5 K54 ["CategoryGroupModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K55 ["GroupModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K56 ["CategoryGroupDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K57 ["CategoryGroupDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K58 ["GroupDecals"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K59 ["CategoryGroupMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K60 ["CategoryGroupMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K61 ["GroupMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K62 ["CategoryGroupAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K63 ["GroupAudio"]
  LOADK R4 K0 ["General"]
  LOADK R5 K64 ["CategoryGroupPackages"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K65 ["GroupPackages"]
  LOADK R4 K0 ["General"]
  LOADK R5 K66 ["CategoryGroupPlugins"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K67 ["GroupPlugins"]
  LOADK R4 K0 ["General"]
  LOADK R5 K68 ["CategoryCreationsDevelopmentSectionDivider"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K69 ["CreationsDevelopmentSectionDivider"]
  LOADK R4 K0 ["General"]
  LOADK R5 K70 ["CategoryCreationsModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K71 ["CreationsModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K72 ["CategoryCreationsDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K73 ["CategoryCreationsDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K74 ["CreationsDecals"]
  LOADK R4 K0 ["General"]
  LOADK R5 K75 ["CategoryCreationsAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K76 ["CreationsAudio"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K77 ["CategoryCreationsMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K78 ["CategoryCreationsMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K79 ["CreationsMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K80 ["CategoryCreationsPlugins"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K81 ["CreationsPlugins"]
  LOADK R4 K0 ["General"]
  LOADK R5 K82 ["CategoryCreationsAnimations"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K83 ["CreationsAnimations"]
  LOADK R4 K0 ["General"]
  LOADK R5 K54 ["CategoryGroupModels"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K84 ["CreationsGroupModels"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K56 ["CategoryGroupDecalsV2"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K57 ["CategoryGroupDecals"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K85 ["CreationsGroupDecals"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  LOADK R4 K0 ["General"]
  LOADK R5 K59 ["CategoryGroupMeshParts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  JUMP [+5]
  LOADK R4 K0 ["General"]
  LOADK R5 K60 ["CategoryGroupMeshes"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K86 ["CreationsGroupMeshes"]
  LOADK R4 K0 ["General"]
  LOADK R5 K62 ["CategoryGroupAudio"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K87 ["CreationsGroupAudio"]
  LOADK R4 K0 ["General"]
  LOADK R5 K64 ["CategoryGroupPackages"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K88 ["CreationsGroupPackages"]
  LOADK R4 K0 ["General"]
  LOADK R5 K66 ["CategoryGroupPlugins"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K89 ["CreationsGroupPlugins"]
  LOADK R4 K0 ["General"]
  LOADK R5 K90 ["CategoryGroupAnimations"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K91 ["CreationsGroupAnimations"]
  LOADK R4 K0 ["General"]
  LOADK R5 K92 ["CategoryCreationsCatalogSectionDivider"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K93 ["CreationsCatalogSectionDivider"]
  LOADK R4 K0 ["General"]
  LOADK R5 K94 ["CategoryCreationsHats"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K95 ["CreationsHats"]
  LOADK R4 K0 ["General"]
  LOADK R5 K96 ["CategoryCreationsTeeShirts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K97 ["CreationsTeeShirts"]
  LOADK R4 K0 ["General"]
  LOADK R5 K98 ["CategoryCreationsShirts"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K99 ["CreationsShirts"]
  LOADK R4 K0 ["General"]
  LOADK R5 K100 ["CategoryCreationsPants"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K101 ["CreationsPants"]
  LOADK R4 K0 ["General"]
  LOADK R5 K102 ["CategoryCreationsHair"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K103 ["CreationsHair"]
  LOADK R4 K0 ["General"]
  LOADK R5 K104 ["CategoryCreationsFaceAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K105 ["CreationsFaceAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K106 ["CategoryCreationsNeckAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K107 ["CreationsNeckAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K108 ["CategoryCreationsShoulderAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K109 ["CreationsShoulderAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K110 ["CategoryCreationsFrontAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K111 ["CreationsFrontAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K112 ["CategoryCreationsBackAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K113 ["CreationsBackAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K114 ["CategoryCreationsWaistAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K115 ["CreationsWaistAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K116 ["CategoryCreationsTShirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K117 ["CreationsTShirtAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K118 ["CategoryCreationsShirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K119 ["CreationsShirtAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K120 ["CategoryCreationsPantsAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K121 ["CreationsPantsAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K122 ["CategoryCreationsJacketAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K123 ["CreationsJacketAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K124 ["CategoryCreationsSweaterAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K125 ["CreationsSweaterAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K126 ["CategoryCreationsShortsAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K127 ["CreationsShortsAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K128 ["CategoryCreationsLeftShoeAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K129 ["CreationsLeftShoeAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K130 ["CategoryCreationsRightShoeAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K131 ["CreationsRightShoeAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K132 ["CategoryCreationsDressSkirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K133 ["CreationsDressSkirtAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K134 ["CategoryCreationsGroupHats"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K135 ["CreationsGroupHats"]
  LOADK R4 K0 ["General"]
  LOADK R5 K136 ["CategoryCreationsGroupHair"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K137 ["CreationsGroupHair"]
  LOADK R4 K0 ["General"]
  LOADK R5 K138 ["CategoryCreationsGroupFaceAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K139 ["CreationsGroupFaceAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K140 ["CategoryCreationsGroupNeckAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K141 ["CreationsGroupNeckAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K142 ["CategoryCreationsGroupShoulderAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K143 ["CreationsGroupShoulderAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K144 ["CategoryCreationsGroupFrontAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K145 ["CreationsGroupFrontAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K146 ["CategoryCreationsGroupBackAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K147 ["CreationsGroupBackAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K148 ["CategoryCreationsGroupWaistAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K149 ["CreationsGroupWaistAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K150 ["CategoryCreationsGroupTShirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K151 ["CreationsGroupTShirtAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K152 ["CategoryCreationsGroupShirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K153 ["CreationsGroupShirtAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K154 ["CategoryCreationsGroupPantsAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K155 ["CreationsGroupPantsAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K156 ["CategoryCreationsGroupJacketAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K157 ["CreationsGroupJacketAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K158 ["CategoryCreationsGroupSweaterAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K159 ["CreationsGroupSweaterAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K160 ["CategoryCreationsGroupShortsAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K161 ["CreationsGroupShortsAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K162 ["CategoryCreationsGroupLeftShoeAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K163 ["CreationsGroupLeftShoeAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K164 ["CategoryCreationsGroupRightShoeAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K165 ["CreationsGroupRightShoeAccessories"]
  LOADK R4 K0 ["General"]
  LOADK R5 K166 ["CategoryCreationsGroupDressSkirtAccessory"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K167 ["CreationsGroupDressSkirtAccessories"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["SharedFlags"]
  GETTABLEKS R2 R3 K9 ["getFFlagToolboxRenameMeshAndImage"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
